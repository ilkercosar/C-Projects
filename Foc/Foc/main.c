#include <stdio.h>
#include <stdint.h>
#include <math.h>

#define offset 1.6
#define pole 4

struct
{
	float ia;
	float ib;
	float ic;
}current;

struct
{
	float va;
	float vb;
	float vc;
}voltage;

struct
{
	float adc1;
	float adc2;
}signal;

struct
{
	float ia;
	float ib;

	float va;
	float vb;
}clarke;

struct
{
	uint16_t angle;
}rotor;

struct
{
	float id;
	float iq;

	float vd;
	float vq;
}park;

struct
{
	float Kp;
	float Ki;
	float integral;
	float prevError;
}pid;

float PI(float ref, float measured) {
	float error = ref - measured;
	pid.integral += error;
	float output = pid.Kp * error + pid.Ki * pid.integral;
	pid.prevError = error;
	return output;
}

void SVM(float va, float vb, float vc)
{

}

int main()
{
	/* Read phase current using ADC */
	current.ia = signal.adc1 - offset;
	current.ib = signal.adc2 - offset;
	current.ic = 0 - current.ia - current.ib;

	/* Convert Iabc using Clarke transform */
	clarke.ia = current.ia;
	clarke.ib = -0.5 * current.ia + 0.8660 * current.ib;

	/* Calculate angle */
	rotor.angle = rotor.angle * (pole / 2);

	/* Convert Clarke to Park transform */
	park.id = clarke.ia * cos(rotor.angle) + clarke.ib * sin(rotor.angle);
	park.iq = -clarke.ia * sin(rotor.angle) + clarke.ib * cos(rotor.angle);

	/* Control loop to generate voltage singnals */
	park.vd = PI(0, park.id);
	park.vq = PI(10, park.iq);

	/* Convert Vdq into inverse park transform */
	clarke.va = park.vd * cos(rotor.angle) - park.vq * sin(rotor.angle);
	clarke.vb = park.vd * sin(rotor.angle) - park.vq * cos(rotor.angle);

	/* Convert into Vabc using inverse clarke transform */
	voltage.va = clarke.va;
	voltage.vb = -0.5 * clarke.va + 0.8660 * clarke.vb;
	voltage.vc = -0.5 * clarke.va - 0.8660 * clarke.vb;

	/* Convert Vabc into PWM signals using Sine Wave Modulation (SPWM) or Space Vector Modulation (SVM) */


	printf("FOC TEST");
	return 0;
}
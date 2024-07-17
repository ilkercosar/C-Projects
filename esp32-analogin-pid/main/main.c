#include <stdio.h>
#include <unistd.h>
#include "driver/gpio.h"
#include "driver/adc.h"

struct pidController
{
    float kp, ki, kd, preEr, integral;
} pidController;

void initPid()
{
    pidController.integral = 0.0;
    pidController.kd = 0.01;
    pidController.ki = 0.1;
    pidController.kp = 1.0;
    pidController.preEr = 0.0;
}

float calculatePid(float setpoint, float measured_value, float dt)
{
    float error = setpoint - measured_value;
    pidController.integral += error * dt;
    float derivative = (error - pidController.preEr) / dt;
    float output = pidController.kp * error + pidController.ki * pidController.integral + pidController.kd * derivative;
    pidController.preEr = error;
    return output;
}

void app_main(void)
{
    initPid();
    gpio_set_direction(25, GPIO_MODE_OUTPUT);
    
    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);

    float setpoint = 100.0;
    float dt = 1.0;

    while (true)
    {
        float value = adc1_get_raw(ADC1_CHANNEL_0);  
        float output = calculatePid(setpoint, value, dt);

        printf("Time: %.1f s, Setpoint: %.1f, Measured Value: %.1f, Output: %.1f\n", dt, setpoint, value, output);

        if (output > 50)	gpio_set_level(25, 1);
        else				gpio_set_level(25, 0);

        sleep((unsigned int)dt);
    }
}

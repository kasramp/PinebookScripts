#!/bin/bash

card=`cat /proc/asound/cards | grep -v 'hdmi' | grep -Po '^..' | xargs`

amixer -c $card sset 'Headphone' off
amixer -c $card sset 'Phoneout Mixer Lout_Mixer_Switch' off
amixer -c $card sset 'Phoneout Mixer MIC1 boost' off
amixer -c $card sset 'Phoneout Mixer MIC2 boost' off
amixer -c $card sset 'Phoneout Mixer Rout_Mixer_Switch' off
amixer -c $card sset 'Phoneout gain control' 0
amixer -c $card sset 'I2S HUB FUNC' off
amixer -c $card sset 'ADC input gain control' 0
amixer -c $card sset 'ADC volume' 0
amixer -c $card sset 'ADCL Mux' DMIC
amixer -c $card sset 'ADCR Mux' DMIC
amixer -c $card sset 'AIF1 AD0L Mixer ADCL' off
amixer -c $card sset 'AIF1 AD0L Mixer AIF1 DA0L' off
amixer -c $card sset 'AIF1 AD0L Mixer AIF2 DACL' off
amixer -c $card sset 'AIF1 AD0L Mixer AIF2 DACR' off
amixer -c $card sset 'AIF1 AD0R Mixer ADCR' off
amixer -c $card sset 'AIF1 AD0R Mixer AIF1 DA0R' off
amixer -c $card sset 'AIF1 AD0R Mixer AIF2 DACL' off
amixer -c $card sset 'AIF1 AD0R Mixer AIF2 DACR' off
amixer -c $card sset 'AIF1 AD1L Mixer ADCL' off
amixer -c $card sset 'AIF1 AD1L Mixer AIF2 DACL' off
amixer -c $card sset 'AIF1 AD1R Mixer ADCR' off
amixer -c $card sset 'AIF1 AD1R Mixer AIF2 DACR' off
amixer -c $card sset 'AIF1 ADC timeslot 0 mixer gain' 0
amixer -c $card sset 'AIF1 ADC timeslot 0 volume' 0
amixer -c $card sset 'AIF1 ADC timeslot 1 mixer gain' 0
amixer -c $card sset 'AIF1 ADC timeslot 1 volume' 0
amixer -c $card sset 'AIF1 DAC timeslot 0 volume' 159
amixer -c $card sset 'AIF1 DAC timeslot 1 volume' 0
amixer -c $card sset 'AIF1IN0L Mux' AIF1_DA0L
amixer -c $card sset 'AIF1IN0R Mux' AIF1_DA0R
amixer -c $card sset 'AIF1IN1L Mux' AIF1_DA1L
amixer -c $card sset 'AIF1IN1R Mux' AIF1_DA1R
amixer -c $card sset 'AIF1OUT0L Mux' AIF1_AD0L
amixer -c $card sset 'AIF1OUT0R Mux' AIF1_AD0L
amixer -c $card sset 'AIF1OUT1L Mux' AIF1_AD1L
amixer -c $card sset 'AIF1OUT1R Mux' AIF1_AD1R
amixer -c $card sset 'AIF2 ADC mixer gain' 0
amixer -c $card sset 'AIF2 ADC volume' 0
amixer -c $card sset 'AIF2 ADL Mixer ADCL' off
amixer -c $card sset 'AIF2 ADL Mixer AIF1 DA0L' off
amixer -c $card sset 'AIF2 ADL Mixer AIF1 DA1L' off
amixer -c $card sset 'AIF2 ADL Mixer AIF2 DACR' off
amixer -c $card sset 'AIF2 ADR Mixer ADCR' off
amixer -c $card sset 'AIF2 ADR Mixer AIF1 DA0R' off
amixer -c $card sset 'AIF2 ADR Mixer AIF1 DA1R' off
amixer -c $card sset 'AIF2 ADR Mixer AIF2 DACL' off
amixer -c $card sset 'AIF2 DAC volume' 0
amixer -c $card sset 'AIF2INL Mux' AIF2_DACL
amixer -c $card sset 'AIF2INL Mux VIR switch aif2inl aif3' off
amixer -c $card sset 'AIF2INL Mux switch aif2inl aif2' off
amixer -c $card sset 'AIF2INR Mux' AIF2_DACR
amixer -c $card sset 'AIF2INR Mux VIR switch aif2inr aif3' off
amixer -c $card sset 'AIF2INR Mux switch aif2inr aif2' off
amixer -c $card sset 'AIF2OUTL Mux' AIF2_ADCL
amixer -c $card sset 'AIF2OUTR Mux' AIF2_ADCR
amixer -c $card sset 'AIF3OUT Mux' 'AIF2 ADC left channel'
amixer -c $card sset 'DAC mixer gain' 100
amixer -c $card sset 'DAC volume' 160
amixer -c $card sset 'DACL Mixer ADCL' on
amixer -c $card sset 'DACL Mixer AIF1DA0L' on
amixer -c $card sset 'DACL Mixer AIF1DA1L' off
amixer -c $card sset 'DACL Mixer AIF2DACL' off
amixer -c $card sset 'DACR Mixer ADCR' on
amixer -c $card sset 'DACR Mixer AIF1DA0R' on
amixer -c $card sset 'DACR Mixer AIF1DA1R' off
amixer -c $card sset 'DACR Mixer AIF2DACR' off
amixer -c $card sset 'EAR Mux' DACR
amixer -c $card sset 'Earpiece' on
amixer -c $card sset 'External Speaker' on
amixer -c $card sset 'HP_L Mux' 'DACL HPL Switch'
amixer -c $card sset 'HP_R Mux' 'DACR HPR Switch'
amixer -c $card sset 'LADC input Mixer LINEINL' off
amixer -c $card sset 'LADC input Mixer MIC1 boost' off
amixer -c $card sset 'LADC input Mixer MIC2 boost' off
amixer -c $card sset 'LADC input Mixer PHONINP' off
amixer -c $card sset 'LADC input Mixer PHONINP-PHONINN' off
amixer -c $card sset 'LADC input Mixer l_output mixer' off
amixer -c $card sset 'LADC input Mixer r_output mixer' off
amixer -c $card sset 'LINEINL/R to L_R output mixer gain' 0
amixer -c $card sset 'Left Output Mixer DACL' on
amixer -c $card sset 'Left Output Mixer DACR' on
amixer -c $card sset 'Left Output Mixer LINEINL' off
amixer -c $card sset 'Left Output Mixer MIC1Booststage' off
amixer -c $card sset 'Left Output Mixer MIC2Booststage' off
amixer -c $card sset 'Left Output Mixer PHONEINP' off
amixer -c $card sset 'Left Output Mixer PHONEINP-PHONEINN' off
amixer -c $card sset 'MIC1 boost AMP gain control' 0
amixer -c $card sset 'MIC1_G boost stage output mixer control' 0
amixer -c $card sset 'MIC2 BST stage to L_R outp mixer gain' 0
amixer -c $card sset 'MIC2 SRC' MIC2
amixer -c $card sset 'MIC2 boost AMP gain control' 0
amixer -c $card sset 'RADC input Mixer LINEINR' off
amixer -c $card sset 'RADC input Mixer MIC1 boost' off
amixer -c $card sset 'RADC input Mixer MIC2 boost' off
amixer -c $card sset 'RADC input Mixer PHONINN' off
amixer -c $card sset 'RADC input Mixer PHONINN-PHONINP' off
amixer -c $card sset 'RADC input Mixer l_output mixer' off
amixer -c $card sset 'RADC input Mixer r_output mixer' off
amixer -c $card sset 'Right Output Mixer DACL' on
amixer -c $card sset 'Right Output Mixer DACR' on
amixer -c $card sset 'Right Output Mixer LINEINR' off
amixer -c $card sset 'Right Output Mixer MIC1Booststage' off
amixer -c $card sset 'Right Output Mixer MIC2Booststage' off
amixer -c $card sset 'Right Output Mixer PHONEINN' off
amixer -c $card sset 'Right Output Mixer PHONEINN-PHONEINP' off
amixer -c $card sset 'SPK_L Mux' 'MIXL MIXR  Switch'
amixer -c $card sset 'SPK_R Mux' 'MIXR MIXL Switch'
amixer -c $card sset 'SRC FUCTION' off
amixer -c $card sset 'digital volume' 0
amixer -c $card sset 'earpiece volume' 0
amixer -c $card sset 'headphone volume' 32
amixer -c $card sset 'speaker volume' 16

From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Wed, 4 Sep 2019 11:28:32 +0200
Message-ID: <1a167659-2eb1-d9be-c1ae-4958ac3f7929@baylibre.com>
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-yi Chiang <cychiang@chromium.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <alsa-devel@alsa-project.org>, tzungbi@chromium.org, Xing Zheng <zhengxing@rock-chips.com>, kuninori.morimoto.gx@renesas.com, Andrzej Hajda <a.hajda@samsung.com>, David Airlie <airlied@linux.ie>, kuankuan.y@gmail.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Doug Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, linux-rockchip@lists.infradead.org, =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Dylan Reid <dgreid@chromium.org>, sam@r
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 04/09/2019 11:09, Cheng-yi Chiang wrote:
> Hi,
> 
> On Tue, Sep 3, 2019 at 5:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Hi,
>>
>> On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
>>> From: Yakir Yang <ykk@rock-chips.com>
>>>
>>> When transmitting IEC60985 linear PCM audio, we configure the
>>> Audio Sample Channel Status information of all the channel
>>> status bits in the IEC60958 frame.
>>> Refer to 60958-3 page 10 for frequency, original frequency, and
>>> wordlength setting.
>>>
>>> This fix the issue that audio does not come out on some monitors
>>> (e.g. LG 22CV241)
>>>
>>> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
>>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
>>> ---
>>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
>>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
>>>  2 files changed, 79 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> index bd65d0479683..34d46e25d610 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
>>>       return n;
>>>  }
>>>
>>> +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
>>> +{
>>> +     u8 aud_schnl_samplerate;
>>> +     u8 aud_schnl_8;
>>> +
>>> +     /* These registers are on RK3288 using version 2.0a. */
>>> +     if (hdmi->version != 0x200a)
>>> +             return;
>>
>> Are these limited to the 2.0a version *in* RK3288, or 2.0a version on all
>> SoCs ?
>>
> 
> In the original patch by Yakir,
> 
> https://lore.kernel.org/patchwork/patch/539653/   (sorry, I should
> have added this link in the "after the cut" note)
> 
> The fix is limited to version 2.0.
> Since I am only testing on RK3288 with 2.0a, I change the check to 2.0a only.
> I can not test 2.0a version on other SoCs.
> The databook I have at hand is 2.0a (not specific to RK3288) so I
> think all 2.0a should have this register.
> 
> As for other version like version 1.3 on iMX6, there is no such
> register, as stated by Russell
> 
> http://lkml.iu.edu/hypermail/linux/kernel/1501.3/06268.html.

Russell assumes the registers are not present on the iMX6 IP not having
the I2S registers, but they are present on the IPs configured with I2S
at any versions.

My databook version (1.40.a) specifies :

fc_audschnls0 to fc_audschnls8

```
When transmitting IEC60958 linear PCM audio, this registers allow to configure the channel status
information of all the channel status bits in the IEC60958 frame. For the moment this configuration is only
used when the I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA (AHBAUDDMA)
interface is active (for S/PDIF interface this information comes from the stream).
```

But the databook Revision History shows these registers were present since version 1.10a.

I propose you remove the version check, but you only setup these registers when I2S is enabled:
(hdmi_readb(hdmi, HDMI_CONFIG0_ID) & HDMI_CONFIG0_I2S) until a AHBAUDDMA user needs this,
with a small comment explaining the situation.

Neil

> 
> So at least we should check the version.
> Maybe we can set the criteria as version 2.0 or above to make it a safe patch ?
> If there is the same need on other SoC with version < 2.0, it can be
> added later.
> Presumably, there will be databook of that version to help confirming
> this setting.
> 
> Thanks!
>>> +
>>> +     switch (hdmi->sample_rate) {
>>> +     case 32000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
>>> +             break;
>>> +     case 44100:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
>>> +             break;
>>> +     case 48000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
>>> +             break;
>>> +     case 88200:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
>>> +             break;
>>> +     case 96000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
>>> +             break;
>>> +     case 176400:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
>>> +             break;
>>> +     case 192000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
>>> +             break;
>>> +     case 768000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
>>> +             break;
>>> +     default:
>>> +             dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
>>> +                      hdmi->sample_rate);
>>> +             return;
>>> +     }
>>> +
>>> +     /* set channel status register */
>>> +     hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
>>> +               HDMI_FC_AUDSCHNLS7);
>>> +
>>> +     /*
>>> +      * Set original frequency to be the same as frequency.
>>> +      * Use one-complement value as stated in IEC60958-3 page 13.
>>> +      */
>>> +     aud_schnl_8 = (~aud_schnl_samplerate) <<
>>> +                     HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
>>> +
>>> +     /* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
>>> +     aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
>>> +
>>> +     hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
>>> +}
>>> +
>>>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>>>       unsigned long pixel_clk, unsigned int sample_rate)
>>>  {
>>> @@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>>>       hdmi->audio_cts = cts;
>>>       hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
>>>       spin_unlock_irq(&hdmi->audio_lock);
>>> +
>>> +     hdmi_set_schnl(hdmi);
>>>  }
>>>
>>>  static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> index 6988f12d89d9..619ebc1c8354 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> @@ -158,6 +158,17 @@
>>>  #define HDMI_FC_SPDDEVICEINF                    0x1062
>>>  #define HDMI_FC_AUDSCONF                        0x1063
>>>  #define HDMI_FC_AUDSSTAT                        0x1064
>>> +#define HDMI_FC_AUDSV                           0x1065
>>> +#define HDMI_FC_AUDSU                           0x1066
>>> +#define HDMI_FC_AUDSCHNLS0                      0x1067
>>> +#define HDMI_FC_AUDSCHNLS1                      0x1068
>>> +#define HDMI_FC_AUDSCHNLS2                      0x1069
>>> +#define HDMI_FC_AUDSCHNLS3                      0x106a
>>> +#define HDMI_FC_AUDSCHNLS4                      0x106b
>>> +#define HDMI_FC_AUDSCHNLS5                      0x106c
>>> +#define HDMI_FC_AUDSCHNLS6                      0x106d
>>> +#define HDMI_FC_AUDSCHNLS7                      0x106e
>>> +#define HDMI_FC_AUDSCHNLS8                      0x106f
>>>  #define HDMI_FC_DATACH0FILL                     0x1070
>>>  #define HDMI_FC_DATACH1FILL                     0x1071
>>>  #define HDMI_FC_DATACH2FILL                     0x1072
>>> @@ -706,6 +717,15 @@ enum {
>>>  /* HDMI_FC_AUDSCHNLS7 field values */
>>>       HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
>>>       HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
>>>
>>>  /* HDMI_FC_AUDSCHNLS8 field values */
>>>       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
>>>
>>

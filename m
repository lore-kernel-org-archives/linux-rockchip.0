From: Romain Perier <romain.perier@collabora.com>
Subject: Re: [PATCH 2/2] drm: dw-hdmi: Gate audio clock from the I2S
 enablement callbacks
Date: Fri, 7 Apr 2017 16:29:36 +0200
Message-ID: <05452cde-3048-b572-80a9-55609724ba21@collabora.com>
References: <20170407141905.14147-1-romain.perier@collabora.com>
 <20170407141905.14147-3-romain.perier@collabora.com>
 <984b7a29-81a8-8404-0c76-d632b4ae9a9d@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <984b7a29-81a8-8404-0c76-d632b4ae9a9d@baylibre.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Neil Armstrong <narmstrong@baylibre.com>, Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jose Abreu <Jose.Abreu@synopsys.com>, Russell King <linux@armlinux.org.uk>
List-Id: linux-rockchip.vger.kernel.org

Hello,


Le 07/04/2017 à 16:23, Neil Armstrong a écrit :
> On 04/07/2017 04:19 PM, Romain Perier wrote:
>> Currently, the audio sampler clock is enabled from dw_hdmi_setup() at
>> step E. and is kept enabled for later use. This clock should be enabled
>> and disabled along with the actual audio stream and not always on (that
>> is bad for PM). Futhermore, as described by the datasheet, the I2S
>> variant need to gate/ungate the clock when the stream is
>> enabled/disabled.
>>
>> This commit adds a parameter to hdmi_audio_enable_clk() that controls
>> when the audio sample clock must be enabled or disabled. Then, it adds
>> the call to this function from dw_hdmi_i2s_audio_enable() and
>> dw_hdmi_i2s_audio_disable().
>>
>> Signed-off-by: Romain Perier <romain.perier@collabora.com>
>> ---
>>  drivers/gpu/drm/bridge/dw-hdmi.c | 16 +++++++++-------
>>  1 file changed, 9 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
>> index d34e0a5..3bd0807 100644
>> --- a/drivers/gpu/drm/bridge/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/dw-hdmi.c
>> @@ -559,6 +559,12 @@ void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate)
>>  }
>>  EXPORT_SYMBOL_GPL(dw_hdmi_set_sample_rate);
>>  
>> +static void hdmi_enable_audio_clk(struct dw_hdmi *hdmi, bool enable)
>> +{
>> +	hdmi_modb(hdmi, enable ? 0 : HDMI_MC_CLKDIS_AUDCLK_DISABLE,
>> +		  HDMI_MC_CLKDIS_AUDCLK_DISABLE, HDMI_MC_CLKDIS);
>> +}
>> +
>>  void dw_hdmi_ahb_audio_enable(struct dw_hdmi *hdmi)
>>  {
>>  	hdmi_set_cts_n(hdmi, hdmi->audio_cts, hdmi->audio_n);
>> @@ -572,12 +578,13 @@ void dw_hdmi_ahb_audio_disable(struct dw_hdmi *hdmi)
>>  void dw_hdmi_i2s_audio_enable(struct dw_hdmi *hdmi)
>>  {
>>  	hdmi_set_cts_n(hdmi, hdmi->audio_cts, hdmi->audio_n);
>> +	hdmi_enable_audio_clk(hdmi, true);
>>  }
>>  
>>  
>>  void dw_hdmi_i2s_audio_disable(struct dw_hdmi *hdmi)
>>  {
>> -
>> +	hdmi_enable_audio_clk(hdmi, false);
>>  }
> I think the NULL check is still valid if you fill this function, because the IP also
> support other modes (SPDIF and GPA).

Ah, good point!

Thanks,
Romain

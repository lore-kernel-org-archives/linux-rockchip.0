From: Romain Perier <romain.perier@collabora.com>
Subject: Re: [PATCH] drm: dw_hdmi: Gate audio sampler clock from the
 enablement functions
Date: Fri, 10 Mar 2017 13:58:58 +0100
Message-ID: <4e8de49b-427f-2a7b-18c6-9224835c1f56@collabora.com>
References: <20170310093509.19044-1-romain.perier@collabora.com>
 <20170310094613.GQ21222@n2100.armlinux.org.uk>
 <7888eb1f-2781-d4ed-6f26-cb76e1ead4d2@collabora.com>
 <20170310102753.GR21222@n2100.armlinux.org.uk>
 <202cd871-eb1c-d8f4-62d6-bed479f0eece@collabora.com>
 <20170310111504.GT21222@n2100.armlinux.org.uk>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------F675341A2E2C0B617D44C4F4"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170310111504.GT21222@n2100.armlinux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--------------F675341A2E2C0B617D44C4F4
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,


Le 10/03/2017 à 12:15, Russell King - ARM Linux a écrit :
> On Fri, Mar 10, 2017 at 11:58:19AM +0100, Romain Perier wrote:
>> Hello,
>>
>> Le 10/03/2017 à 11:27, Russell King - ARM Linux a écrit :
>>> I also would not think that it's platform specific - remember that
>>> this is Designware IP, and it's likely that other platforms with
>>> exactly the same IP would suffer from the same problem.  It's
>>> probably revision specific, but we need Synopsis' input on that.
>>>
>>> However, I do believe that your patch probably doesn't have much
>>> merit in any case: on a mode set, you enable the audio clock, and
>>> it will remain enabled until the audio device is first opened and
>>> then closed.  If another mode set comes along, then exactly the
>>> same situation happens again.  So, really it isn't achieving all
>>> that much.
>> The fact is we still have sound glitches caused by this workaround on
>> Rockchip, we probably have a revision
>> of the IP without this issue. If CTS+N is not forced to zero we no
>> longer have the glitches :/ (with or without touching the clock)
> Are you sure that removing the workaround just doesn't result in the
> same bug as on iMX6 appearing?  The bug concerned is the ordering of
> the channels, so unless you're (eg0 monitoring left/right separately
> or directing audio to just one channel, you may not (with modern TVs)
> realise that the channels are swapped.  I'll include the errata
> description and impact below.
>
> There are occasional issues on iMX6 as well despite this work-around,
> but I don't clearly remember what devmem2 tweaks I've done in the past
> to get it to resolve itself, nor could I describe them from memory
> any better than "burbling audio".

Well, I have reverted locally your patch (I did it quickly by hand
because it did not work via git revert... anyway...),
And I no longer have the issue at all. It's working fine all the time
and it's truly deterministic (see attachment)

Also, I have found that the version of the IP is not exactly the same.
On Rockchip it's 0x20:0xa:0xa0:0xc1, on IMX.6 it's  0x13:0xa:0xa0:0xc1.
>
>
>   When the AHB Audio DMA is started, by setting to 1'b1 for the first
>   time the register field AHB_DMA_START.data_buffer_ready, the AHB
>   Audio DMA will request data from the AHB bus to fill its internal
>   AHB DMA FIFO. It is possible that a AHB DMA FIFO read action occurs
>   during the time window between the first sample stored on the AHB
>   DMA FIFO and when the AHB DMA FIFO has stored, at least, the number
>   of configured audio channels in samples. If this happens, the AHB
>   DMA FIFO will reply with samples that are currently on the AHB
>   Audio FIFO and will repeat the last sample after the empty condition
>   is reached.
>
>   Projected Impact:
>   This will miss-align the audio stream, causing a shift in the
>   distribution of audio on the channels on the HDMI sink side, with no
>   knowledge of the DWC_hdmi_tx enabled system.

Thanks for this, it helps!
It looks specific to AHB audio

>
>
> If you know that this definitely does not apply to your version, then
> we need to split the audio enable/disable functions between the AHB
> and I2S variants.
Mhhh, yeah both seem to work differently.

Romain


--------------F675341A2E2C0B617D44C4F4
Content-Type: text/x-patch;
 name="revert.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="revert.patch"

diff --git a/drivers/gpu/drm/bridge/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/dw-hdmi-i2s-audio.c
index aaf287d..ce589402 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/dw-hdmi-i2s-audio.c
@@ -67,8 +67,6 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
 	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
 	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
 
-	dw_hdmi_audio_enable(hdmi);
-
 	return 0;
 }
 
@@ -77,8 +75,6 @@ static void dw_hdmi_i2s_audio_shutdown(struct device *dev, void *data)
 	struct dw_hdmi_i2s_audio_data *audio = data;
 	struct dw_hdmi *hdmi = audio->hdmi;
 
-	dw_hdmi_audio_disable(hdmi);
-
 	hdmi_write(audio, HDMI_AUD_CONF0_SW_RESET, HDMI_AUD_CONF0);
 }
 
diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
index b621fc7..7529cb9 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/dw-hdmi.c
@@ -19,7 +19,6 @@
 #include <linux/hdmi.h>
 #include <linux/mutex.h>
 #include <linux/of_device.h>
-#include <linux/spinlock.h>
 
 #include <drm/drm_of.h>
 #include <drm/drmP.h>
@@ -148,12 +147,8 @@ struct dw_hdmi {
 	bool rxsense;			/* rxsense state */
 	u8 phy_mask;			/* desired phy int mask settings */
 
-	spinlock_t audio_lock;
 	struct mutex audio_mutex;
 	unsigned int sample_rate;
-	unsigned int audio_cts;
-	unsigned int audio_n;
-	bool audio_enable;
 
 	void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
 	u8 (*read)(struct dw_hdmi *hdmi, int offset);
@@ -505,11 +500,7 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 		__func__, sample_rate, ftdms / 1000000, (ftdms / 1000) % 1000,
 		n, cts);
 
-	spin_lock_irq(&hdmi->audio_lock);
-	hdmi->audio_n = n;
-	hdmi->audio_cts = cts;
-	hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
-	spin_unlock_irq(&hdmi->audio_lock);
+	hdmi_set_cts_n(hdmi, cts, n);
 }
 
 static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
@@ -537,28 +528,6 @@ void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_set_sample_rate);
 
-void dw_hdmi_audio_enable(struct dw_hdmi *hdmi)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&hdmi->audio_lock, flags);
-	hdmi->audio_enable = true;
-	hdmi_set_cts_n(hdmi, hdmi->audio_cts, hdmi->audio_n);
-	spin_unlock_irqrestore(&hdmi->audio_lock, flags);
-}
-EXPORT_SYMBOL_GPL(dw_hdmi_audio_enable);
-
-void dw_hdmi_audio_disable(struct dw_hdmi *hdmi)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&hdmi->audio_lock, flags);
-	hdmi->audio_enable = false;
-	hdmi_set_cts_n(hdmi, hdmi->audio_cts, 0);
-	spin_unlock_irqrestore(&hdmi->audio_lock, flags);
-}
-EXPORT_SYMBOL_GPL(dw_hdmi_audio_disable);
-
 /*
  * this submodule is responsible for the video data synchronization.
  * for example, for RGB 4:4:4 input, the data map is defined as
@@ -1894,7 +1863,6 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
 
 	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
-	spin_lock_init(&hdmi->audio_lock);
 
 	of_property_read_u32(np, "reg-io-width", &val);
 
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index bae79f3..f040ade 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -63,7 +63,4 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
 		 const struct dw_hdmi_plat_data *plat_data);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
-void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
-void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
-
 #endif /* __IMX_HDMI_H__ */

--------------F675341A2E2C0B617D44C4F4--

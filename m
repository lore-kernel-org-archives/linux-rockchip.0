From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH 08/12] drm: bridge/dw_hdmi: avoid enabling interface in
 mode_set
Date: Wed, 07 Oct 2015 11:50:53 +0800
Message-ID: <5614969D.7030201@rock-chips.com>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk> <E1ZO6bI-0002rG-PI@rmk-PC.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <E1ZO6bI-0002rG-PI@rmk-PC.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <rmk+kernel@arm.linux.org.uk>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Fabio Estevam <fabio.estevam@freescale.com>, Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon.nettleton@gmail.com>, David Airlie <airlied@linux.ie>
List-Id: linux-rockchip.vger.kernel.org



On 08/09/2015 12:04 AM, Russell King wrote:
> On a mode set, DRM makes the following sequence of calls:
> * for_each_encoder
> *   bridge	mode_fixup
> *   encoder	mode_fixup
> * crtc		mode_fixup
> * for_each_encoder
> *   bridge	disable
> *   encoder	prepare
> *   bridge	post_disable
> * disable unused encoders
> * crtc		prepare
> * crtc		mode_set
> * for_each_encoder
> *   encoder	mode_set
> *   bridge	mode_set
> * crtc		commit
> * for_each_encoder
> *   bridge	pre_enable
> *   encoder	commit
> *   bridge	enable
>
> dw_hdmi enables the HDMI output in both the bridge mode_set() and also
> the bridge enable() step.  This is duplicated work - we can avoid the
> setup in mode_set() and just do it in the enable() stage.  This
> simplifies the code a little.
>
> Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>

I have noticed that dw_hdmi driver have poweron/poweroff when
driver detect HPD event in irq thread, that's also duplicated works,
would you like to collect that changes into this one:

static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
{
         ......

         if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
                 if (phy_int_pol & HDMI_PHY_HPD) {
                         dev_dbg(hdmi->dev, "EVENT=plugin\n");

                         hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);

                         dw_hdmi_poweron(hdmi);    // no need here
                 } else {
                         dev_dbg(hdmi->dev, "EVENT=plugout\n");

                         hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
                                   HDMI_PHY_POL0);

                         dw_hdmi_poweroff(hdmi);    // no need here
                 }
                 drm_helper_hpd_irq_event(hdmi->connector.dev);
         }
         ......
}

Thanks,
- Yakir
> ---
>   drivers/gpu/drm/bridge/dw_hdmi.c | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
> index 578d7362cd65..fbac8386552b 100644
> --- a/drivers/gpu/drm/bridge/dw_hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw_hdmi.c
> @@ -1389,8 +1389,6 @@ static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
>   
> -	dw_hdmi_setup(hdmi, mode);
> -
>   	/* Store the display mode for plugin/DKMS poweron events */
>   	memcpy(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));
>   }

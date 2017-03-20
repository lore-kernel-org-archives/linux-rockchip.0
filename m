From: Jose Abreu <Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v2] drm: bridge: dw-hdmi: add HDMI vendor specific
 infoframe config
Date: Mon, 20 Mar 2017 13:17:58 +0000
Message-ID: <65edcbc7-54e5-5cd3-aee7-3deae007782b@synopsys.com>
References: <1490009979-21758-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1490009979-21758-1-git-send-email-nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org
Cc: Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, laurent.pinchart+renesas-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, vladimir_zapolskiy-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org, zhengyang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Nickey,


On 20-03-2017 11:39, Nickey Yang wrote:
> Vendor specific infoframe is mandatory for 4K2K resolution.
> Without this, the HDMI protocol compliance fails.
>
> Signed-off-by: Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Reviewed-by: Jose Abreu <joabreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

Best regards,
Jose Miguel Abreu

> ---
>  drivers/gpu/drm/bridge/dw-hdmi.c | 47 ++++++++++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/bridge/dw-hdmi.h |  4 ++++
>  2 files changed, 51 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
> index 9a9ec27..07a16b1 100644
> --- a/drivers/gpu/drm/bridge/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw-hdmi.c
> @@ -1195,6 +1195,52 @@ static void hdmi_config_AVI(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  	hdmi_writeb(hdmi, (frame.right_bar >> 8) & 0xff, HDMI_FC_AVISRB1);
>  }
>  
> +static void hdmi_config_vendor_specific_infoframe(struct dw_hdmi *hdmi,
> +						 struct drm_display_mode *mode)
> +{
> +	struct hdmi_vendor_infoframe frame;
> +	u8 buffer[10];
> +	ssize_t err;
> +
> +	err = drm_hdmi_vendor_infoframe_from_display_mode(&frame, mode);
> +	if (err)
> +		return;
> +
> +	err = hdmi_vendor_infoframe_pack(&frame, buffer, sizeof(buffer));
> +	if (!err) {
> +		dev_err(hdmi->dev, "Failed to pack vendor infoframe: %zd\n",
> +			err);
> +		return;
> +	}
> +	hdmi_mask_writeb(hdmi, 0, HDMI_FC_DATAUTO0, HDMI_FC_DATAUTO0_VSD_OFFSET,
> +			HDMI_FC_DATAUTO0_VSD_MASK);
> +
> +	/* Set the length of HDMI vendor specific InfoFrame payload */
> +	hdmi_writeb(hdmi, buffer[2], HDMI_FC_VSDSIZE);
> +
> +	/* Set 24bit IEEE Registration Identifier */
> +	hdmi_writeb(hdmi, buffer[4], HDMI_FC_VSDIEEEID0);
> +	hdmi_writeb(hdmi, buffer[5], HDMI_FC_VSDIEEEID1);
> +	hdmi_writeb(hdmi, buffer[6], HDMI_FC_VSDIEEEID2);
> +
> +	/* Set HDMI_Video_Format and HDMI_VIC/3D_Structure */
> +	hdmi_writeb(hdmi, buffer[7], HDMI_FC_VSDPAYLOAD0);
> +	hdmi_writeb(hdmi, buffer[8], HDMI_FC_VSDPAYLOAD1);
> +
> +	if (frame.s3d_struct >= HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF)
> +		hdmi_writeb(hdmi, buffer[9], HDMI_FC_VSDPAYLOAD2);
> +
> +	/* Packet frame interpolation */
> +	hdmi_writeb(hdmi, 1, HDMI_FC_DATAUTO1);
> +
> +	/* Auto packets per frame and line spacing */
> +	hdmi_writeb(hdmi, 0x11, HDMI_FC_DATAUTO2);
> +
> +	/* Configures the Frame Composer On RDRB mode */
> +	hdmi_mask_writeb(hdmi, 1, HDMI_FC_DATAUTO0, HDMI_FC_DATAUTO0_VSD_OFFSET,
> +			HDMI_FC_DATAUTO0_VSD_MASK);
> +}
> +
>  static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  			     const struct drm_display_mode *mode)
>  {
> @@ -1446,6 +1492,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  
>  		/* HDMI Initialization Step F - Configure AVI InfoFrame */
>  		hdmi_config_AVI(hdmi, mode);
> +		hdmi_config_vendor_specific_infoframe(hdmi, mode);
>  	} else {
>  		dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
>  	}
> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.h b/drivers/gpu/drm/bridge/dw-hdmi.h
> index 325b0b8..c59f87e 100644
> --- a/drivers/gpu/drm/bridge/dw-hdmi.h
> +++ b/drivers/gpu/drm/bridge/dw-hdmi.h
> @@ -854,6 +854,10 @@ enum {
>  	HDMI_FC_DBGFORCE_FORCEAUDIO = 0x10,
>  	HDMI_FC_DBGFORCE_FORCEVIDEO = 0x1,
>  
> +/* FC_DATAUTO0 field values */
> +	HDMI_FC_DATAUTO0_VSD_MASK = 0x08,
> +	HDMI_FC_DATAUTO0_VSD_OFFSET = 3,
> +
>  /* PHY_CONF0 field values */
>  	HDMI_PHY_CONF0_PDZ_MASK = 0x80,
>  	HDMI_PHY_CONF0_PDZ_OFFSET = 7,

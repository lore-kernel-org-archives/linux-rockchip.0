From: Sean Paul <sean-p7yTbzM4H96eqtR555YLDQ@public.gmane.org>
Subject: Re: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc
 bus
Date: Wed, 15 May 2019 14:20:38 -0400
Message-ID: <20190515182038.GV17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-2-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, May 02, 2019 at 03:53:33PM -0700, Douglas Anderson wrote:
> See the PhD thesis in the comments in this patch for details, but to
> summarize this adds a hacky "unwedge" feature to the dw_hdmi i2c bus to
> workaround what appears to be a hardware errata.  This relies on a
> pinctrl entry to help change around muxing to perform the unwedge.
> 
> NOTE that the specific TV this was tested on was the "Samsung
> UN40HU6950FXZA" and the specific port was the "STB" port.
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 116 +++++++++++++++++++---
>  1 file changed, 100 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index db761329a1e3..c66587e33813 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -19,6 +19,7 @@
>  #include <linux/hdmi.h>
>  #include <linux/mutex.h>
>  #include <linux/of_device.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/regmap.h>
>  #include <linux/spinlock.h>
>  
> @@ -169,6 +170,10 @@ struct dw_hdmi {
>  	bool sink_is_hdmi;
>  	bool sink_has_audio;
>  
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *default_state;
> +	struct pinctrl_state *unwedge_state;
> +
>  	struct mutex mutex;		/* for state below and previous_mode */
>  	enum drm_connector_force force;	/* mutex-protected force state */
>  	bool disabled;			/* DRM has disabled our bridge */
> @@ -247,11 +252,82 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
>  		    HDMI_IH_MUTE_I2CM_STAT0);
>  }
>  
> +static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
> +{
> +	/* If no unwedge state then give up */
> +	if (IS_ERR(hdmi->unwedge_state))
> +		return false;
> +
> +	dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
> +
> +	/*
> +	 * This is a huge hack to workaround a problem where the dw_hdmi i2c
> +	 * bus could sometimes get wedged.  Once wedged there doesn't appear
> +	 * to be any way to unwedge it (including the HDMI_I2CM_SOFTRSTZ)
> +	 * other than pulsing the SDA line.
> +	 *
> +	 * We appear to be able to pulse the SDA line (in the eyes of dw_hdmi)
> +	 * by:
> +	 * 1. Remux the pin as a GPIO output, driven low.
> +	 * 2. Wait a little while.  1 ms seems to work, but we'll do 10.
> +	 * 3. Immediately jump to remux the pin as dw_hdmi i2c again.
> +	 *
> +	 * At the moment of remuxing, the line will still be low due to its
> +	 * recent stint as an output, but then it will be pulled high by the
> +	 * (presumed) external pullup.  dw_hdmi seems to see this as a rising
> +	 * edge and that seems to get it out of its jam.
> +	 *
> +	 * This wedging was only ever seen on one TV, and only on one of
> +	 * its HDMI ports.  It happened when the TV was powered on while the
> +	 * device was plugged in.  A scope trace shows the TV bringing both SDA
> +	 * and SCL low, then bringing them both back up at roughly the same
> +	 * time.  Presumably this confuses dw_hdmi because it saw activity but
> +	 * no real STOP (maybe it thinks there's another master on the bus?).
> +	 * Giving it a clean rising edge of SDA while SCL is already high
> +	 * presumably makes dw_hdmi see a STOP which seems to bring dw_hdmi out
> +	 * of its stupor.
> +	 *
> +	 * Note that after coming back alive, transfers seem to immediately
> +	 * resume, so if we unwedge due to a timeout we should wait a little
> +	 * longer for our transfer to finish, since it might have just started
> +	 * now.
> +	 */
> +	pinctrl_select_state(hdmi->pinctrl, hdmi->unwedge_state);
> +	msleep(10);
> +	pinctrl_select_state(hdmi->pinctrl, hdmi->default_state);
> +
> +	return true;
> +}
> +
> +static int dw_hdmi_i2c_wait(struct dw_hdmi *hdmi)
> +{
> +	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> +	int stat;
> +
> +	stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> +	if (!stat) {
> +		/* If we can't unwedge, return timeout */
> +		if (!dw_hdmi_i2c_unwedge(hdmi))
> +			return -EAGAIN;
> +
> +		/* We tried to unwedge; give it another chance */
> +		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> +		if (!stat)
> +			return -EAGAIN;
> +	}
> +
> +	/* Check for error condition on the bus */
> +	if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> +		return -EIO;
> +
> +	return 0;
> +}
> +
>  static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  			    unsigned char *buf, unsigned int length)
>  {
>  	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> -	int stat;
> +	int ret;
>  
>  	if (!i2c->is_regaddr) {
>  		dev_dbg(hdmi->dev, "set read register address to 0\n");
> @@ -270,13 +346,9 @@ static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  			hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
>  				    HDMI_I2CM_OPERATION);
>  
> -		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> -		if (!stat)
> -			return -EAGAIN;
> -
> -		/* Check for error condition on the bus */
> -		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> -			return -EIO;
> +		ret = dw_hdmi_i2c_wait(hdmi);
> +		if (ret)
> +			return ret;
>  
>  		*buf++ = hdmi_readb(hdmi, HDMI_I2CM_DATAI);
>  	}
> @@ -289,7 +361,7 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
>  			     unsigned char *buf, unsigned int length)
>  {
>  	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> -	int stat;
> +	int ret;
>  
>  	if (!i2c->is_regaddr) {
>  		/* Use the first write byte as register address */
> @@ -307,13 +379,9 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
>  		hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_WRITE,
>  			    HDMI_I2CM_OPERATION);
>  
> -		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> -		if (!stat)
> -			return -EAGAIN;
> -
> -		/* Check for error condition on the bus */
> -		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> -			return -EIO;
> +		ret = dw_hdmi_i2c_wait(hdmi);
> +		if (ret)
> +			return ret;
>  	}
>  
>  	return 0;
> @@ -2606,6 +2674,22 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  
>  	/* If DDC bus is not specified, try to register HDMI I2C bus */
>  	if (!hdmi->ddc) {
> +		/* Look for (optional) stuff related to unwedging */
> +		hdmi->pinctrl = devm_pinctrl_get(dev);
> +		if (!IS_ERR(hdmi->pinctrl)) {
> +			hdmi->unwedge_state =
> +				pinctrl_lookup_state(hdmi->pinctrl, "unwedge");
> +			hdmi->default_state =
> +				pinctrl_lookup_state(hdmi->pinctrl, "default");
> +
> +			if (IS_ERR(hdmi->default_state) &&
> +			    !IS_ERR(hdmi->unwedge_state)) {
> +				dev_warn(dev,
> +					 "Unwedge requires default pinctrl\n");

Can you downgrade this message to info or dbg? Given how rare this issue is, we
probably don't want to spam everyone who is happily using dw-hdmi.

With that, 

Reviewed-by: Sean Paul <sean-p7yTbzM4H96eqtR555YLDQ@public.gmane.org>


Sean

> +				hdmi->unwedge_state = ERR_PTR(-ENODEV);
> +			}
> +		}
> +
>  		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
>  		if (IS_ERR(hdmi->ddc))
>  			hdmi->ddc = NULL;
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

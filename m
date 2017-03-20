From: Jose Abreu <Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v2] drm/bridge: dw_hdmi: support i2c extended read mode
Date: Mon, 20 Mar 2017 11:13:04 +0000
Message-ID: <eabc75c0-03be-1142-1ca6-f7f49e959f9e@synopsys.com>
References: <1489978651-16647-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1489978651-16647-1-git-send-email-nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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


On 20-03-2017 02:57, Nickey Yang wrote:
> "I2C Master Interface Extended Read Mode" implements a segment
> pointer-based read operation using the Special Register configuration.
>
> This patch fix https://urldefense.proofpoint.com/v2/url?u=https-3A__patchwork.kernel.org_patch_7098101_&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=yaVFU4TjGY0gVF8El1uKcisy6TPsyCl9uN7Wsis-qhY&m=cFlvlFSQCohfzkddQ6Jl6IlJ766epJ2Rsb329_KQEKo&s=4l-Ct5Bh-AZ0pzXWMJr64E8PVl56QkdSiHwxB3eHmz4&e=  mentioned
> "The current implementation does not support "I2C Master Interface
> Extended Read Mode" to read data addressed by non-zero segment
> pointer, this means that if EDID has more than 1 extension blocks"
>
> With this patch,dw-hdmi can read EDID data with 1/2/4 blocks.
>
> Signed-off-by: Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Reviewed-by: Jose Abreu <joabreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

Best regards,
Jose Miguel Abreu

> ---
>  drivers/gpu/drm/bridge/dw-hdmi.c | 38 ++++++++++++++++++++++++--------------
>  1 file changed, 24 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
> index 9a9ec27..3b93655 100644
> --- a/drivers/gpu/drm/bridge/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw-hdmi.c
> @@ -32,6 +32,7 @@
>  #include "dw-hdmi.h"
>  #include "dw-hdmi-audio.h"
>  
> +#define DDC_SEGMENT_ADDR	0x30
>  #define HDMI_EDID_LEN		512
>  
>  #define RGB			0
> @@ -111,6 +112,7 @@ struct dw_hdmi_i2c {
>  
>  	u8			slave_reg;
>  	bool			is_regaddr;
> +	bool			is_segment;
>  };
>  
>  struct dw_hdmi_phy_data {
> @@ -258,8 +260,12 @@ static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  		reinit_completion(&i2c->cmp);
>  
>  		hdmi_writeb(hdmi, i2c->slave_reg++, HDMI_I2CM_ADDRESS);
> -		hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
> -			    HDMI_I2CM_OPERATION);
> +		if (i2c->is_segment)
> +			hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ_EXT,
> +				    HDMI_I2CM_OPERATION);
> +		else
> +			hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
> +				    HDMI_I2CM_OPERATION);
>  
>  		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
>  		if (!stat)
> @@ -271,6 +277,7 @@ static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  
>  		*buf++ = hdmi_readb(hdmi, HDMI_I2CM_DATAI);
>  	}
> +	i2c->is_segment = false;
>  
>  	return 0;
>  }
> @@ -320,12 +327,6 @@ static int dw_hdmi_i2c_xfer(struct i2c_adapter *adap,
>  	dev_dbg(hdmi->dev, "xfer: num: %d, addr: %#x\n", num, addr);
>  
>  	for (i = 0; i < num; i++) {
> -		if (msgs[i].addr != addr) {
> -			dev_warn(hdmi->dev,
> -				 "unsupported transfer, changed slave address\n");
> -			return -EOPNOTSUPP;
> -		}
> -
>  		if (msgs[i].len == 0) {
>  			dev_dbg(hdmi->dev,
>  				"unsupported transfer %d/%d, no data\n",
> @@ -345,15 +346,24 @@ static int dw_hdmi_i2c_xfer(struct i2c_adapter *adap,
>  	/* Set slave device register address on transfer */
>  	i2c->is_regaddr = false;
>  
> +	/* Set segment pointer for I2C extended read mode operation */
> +	i2c->is_segment = false;
> +
>  	for (i = 0; i < num; i++) {
>  		dev_dbg(hdmi->dev, "xfer: num: %d/%d, len: %d, flags: %#x\n",
>  			i + 1, num, msgs[i].len, msgs[i].flags);
> -
> -		if (msgs[i].flags & I2C_M_RD)
> -			ret = dw_hdmi_i2c_read(hdmi, msgs[i].buf, msgs[i].len);
> -		else
> -			ret = dw_hdmi_i2c_write(hdmi, msgs[i].buf, msgs[i].len);
> -
> +		if (msgs[i].addr == DDC_SEGMENT_ADDR && msgs[i].len == 1) {
> +			i2c->is_segment = true;
> +			hdmi_writeb(hdmi, DDC_SEGMENT_ADDR, HDMI_I2CM_SEGADDR);
> +			hdmi_writeb(hdmi, *msgs[i].buf, HDMI_I2CM_SEGPTR);
> +		} else {
> +			if (msgs[i].flags & I2C_M_RD)
> +				ret = dw_hdmi_i2c_read(hdmi, msgs[i].buf,
> +						       msgs[i].len);
> +			else
> +				ret = dw_hdmi_i2c_write(hdmi, msgs[i].buf,
> +							msgs[i].len);
> +		}
>  		if (ret < 0)
>  			break;
>  	}

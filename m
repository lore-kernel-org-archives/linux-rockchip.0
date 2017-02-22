From: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: support i2c extended read mode
Date: Wed, 22 Feb 2017 09:51:18 +0000
Message-ID: <3f562fa6-886a-104f-62be-e0b1cbb8e5f7@synopsys.com>
References: <1487749545-5349-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1487749545-5349-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>, architt@codeaurora.org, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, laurent.pinchart+renesas@ideasonboard.com, Jose.Abreu@synopsys.com, andy.yan@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Nickey,


On 22-02-2017 07:45, Nickey Yang wrote:
> "I2C Master Interface Extended Read Mode" implements a segment
> pointer-based read operation using the Special Register configuration.
>
> This patch fix https://urldefense.proofpoint.com/v2/url?u=https-3A__patchwork.kernel.org_patch_7098101_&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=yaVFU4TjGY0gVF8El1uKcisy6TPsyCl9uN7Wsis-qhY&m=GO5hTo1pTsXMTs-_YDONdmAGQyk8vf0XXA5s-P77fPo&s=cy1I1t3kDvC0ihSnmEqbDx-PiPvzXaksyM9G240RSmE&e=  mentioned
> "The current implementation does not support "I2C Master Interface
> Extended Read Mode" to read data addressed by non-zero segment
> pointer, this means that if EDID has more than 1 extension blocks"
>
> With this patch,dw-hdmi can read EDID data with 1/2/4 blocks.

Can't read an EDID with 3 extension blocks? Why? (I'm not reading
the spec so I don't know if this is possible to exist. Maybe only
an even number of blocks is allowed).

>
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/dw-hdmi.c | 38 ++++++++++++++++++++++++--------------
>  1 file changed, 24 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
> index 9a9ec27..6ad7b87 100644
> --- a/drivers/gpu/drm/bridge/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw-hdmi.c
> @@ -33,6 +33,7 @@
>  #include "dw-hdmi-audio.h"
>  
>  #define HDMI_EDID_LEN		512
> +#define DDC_SEGMENT_ADDR       0x30
>  
>  #define RGB			0
>  #define YCBCR444		1
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

Hmm, this does not match what I have here internally but I may
have something wrong. You tested this using an EDID with how many
extension blocks?

Anyway, this is what I have:
    if(msgs[i].addr == DDC_SEGMENT_ADDR && msgs[i].len == 1) {
        hdmi_writeb(hdmi, msgs[i].buf[0], HDMI_I2CM_SEGADDR);
        [and segptr is 0x0]
    }

I probably may have something wrong but I remember I tested this
a long time ago using an HDMI 2.0 EDID and it worked fine. BUT, I
have special cases for other addresses (0x50 and 0x54), I can't
remember if these are for EDID or for SCDC. I can send you the
code I have if you want.

Best regards,
Jose Miguel Abreu

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

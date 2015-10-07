From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH 09/12] drm: bridge/dw_hdmi: rename
 dw_hdmi_phy_enable_power()
Date: Wed, 07 Oct 2015 12:00:09 +0800
Message-ID: <561498C9.1070907@rock-chips.com>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
 <E1ZO6bN-0002uc-UE@rmk-PC.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0780154676=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <E1ZO6bN-0002uc-UE@rmk-PC.arm.linux.org.uk>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King <rmk+kernel@arm.linux.org.uk>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============0780154676==
Content-Type: multipart/alternative;
 boundary="------------070001030101020607040201"

This is a multi-part message in MIME format.
--------------070001030101020607040201
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 08/09/2015 12:04 AM, Russell King wrote:
> dw_hdmi_phy_enable_power() is not about enabling and disabling power.
> It is about allowing or preventing power-down mode being entered - the
> register is documented as "Power-down enable (active low 0b)."

Same as rockchip hdmi document, great clean, wish I have the
qualification to share review. (If no, that's fine :) )
Reviewed-by: Yakir Yang <ykk@rock-chips.com>

- Yakir
> This can be seen as the bit has no effect when the HDMI phy is
> operational on iMX6 hardware.
>
> Rename the function to dw_hdmi_phy_enable_powerdown() to reflect the
> documentation, make it take a bool for the 'enable' argument, and invert
> the value to be written.
>
> Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> ---
>   drivers/gpu/drm/bridge/dw_hdmi.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
> index fbac8386552b..7b8a4e942a71 100644
> --- a/drivers/gpu/drm/bridge/dw_hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw_hdmi.c
> @@ -737,9 +737,9 @@ static int hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
>   	return 0;
>   }
>   
> -static void dw_hdmi_phy_enable_power(struct dw_hdmi *hdmi, u8 enable)
> +static void dw_hdmi_phy_enable_powerdown(struct dw_hdmi *hdmi, bool enable)
>   {
> -	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
> +	hdmi_mask_writeb(hdmi, !enable, HDMI_PHY_CONF0,
>   			 HDMI_PHY_CONF0_PDZ_OFFSET,
>   			 HDMI_PHY_CONF0_PDZ_MASK);
>   }
> @@ -879,7 +879,7 @@ static int hdmi_phy_configure(struct dw_hdmi *hdmi, unsigned char prep,
>   	/* REMOVE CLK TERM */
>   	hdmi_phy_i2c_write(hdmi, 0x8000, 0x05);  /* CKCALCTRL */
>   
> -	dw_hdmi_phy_enable_power(hdmi, 1);
> +	dw_hdmi_phy_enable_powerdown(hdmi, false);
>   
>   	/* toggle TMDS enable */
>   	dw_hdmi_phy_enable_tmds(hdmi, 0);
> @@ -924,7 +924,7 @@ static int dw_hdmi_phy_init(struct dw_hdmi *hdmi)
>   		dw_hdmi_phy_sel_data_en_pol(hdmi, 1);
>   		dw_hdmi_phy_sel_interface_control(hdmi, 0);
>   		dw_hdmi_phy_enable_tmds(hdmi, 0);
> -		dw_hdmi_phy_enable_power(hdmi, 0);
> +		dw_hdmi_phy_enable_powerdown(hdmi, true);
>   
>   		/* Enable CSC */
>   		ret = hdmi_phy_configure(hdmi, 0, 8, cscon);
> @@ -1155,7 +1155,7 @@ static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi)
>   		return;
>   
>   	dw_hdmi_phy_enable_tmds(hdmi, 0);
> -	dw_hdmi_phy_enable_power(hdmi, 0);
> +	dw_hdmi_phy_enable_powerdown(hdmi, true);
>   
>   	hdmi->phy_enabled = false;
>   }


--------------070001030101020607040201
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 08/09/2015 12:04 AM, Russell King
      wrote:<br>
    </div>
    <blockquote cite="mid:E1ZO6bN-0002uc-UE@rmk-PC.arm.linux.org.uk"
      type="cite">
      <pre wrap="">dw_hdmi_phy_enable_power() is not about enabling and disabling power.
It is about allowing or preventing power-down mode being entered - the
register is documented as "Power-down enable (active low 0b)."
</pre>
    </blockquote>
    <br>
    Same as rockchip hdmi document, great clean, wish I have the<br>
    qualification to share review. (If no, that's fine :) )<br>
    Reviewed-by: Yakir Yang <a class="moz-txt-link-rfc2396E" href="mailto:ykk@rock-chips.com">&lt;ykk@rock-chips.com&gt;</a><br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <br>
    - Yakir<br>
    <blockquote cite="mid:E1ZO6bN-0002uc-UE@rmk-PC.arm.linux.org.uk"
      type="cite">
      <pre wrap="">
This can be seen as the bit has no effect when the HDMI phy is
operational on iMX6 hardware.

Rename the function to dw_hdmi_phy_enable_powerdown() to reflect the
documentation, make it take a bool for the 'enable' argument, and invert
the value to be written.

Signed-off-by: Russell King <a class="moz-txt-link-rfc2396E" href="mailto:rmk+kernel@arm.linux.org.uk">&lt;rmk+kernel@arm.linux.org.uk&gt;</a>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index fbac8386552b..7b8a4e942a71 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -737,9 +737,9 @@ static int hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
 	return 0;
 }
 
-static void dw_hdmi_phy_enable_power(struct dw_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_enable_powerdown(struct dw_hdmi *hdmi, bool enable)
 {
-	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+	hdmi_mask_writeb(hdmi, !enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_PDZ_OFFSET,
 			 HDMI_PHY_CONF0_PDZ_MASK);
 }
@@ -879,7 +879,7 @@ static int hdmi_phy_configure(struct dw_hdmi *hdmi, unsigned char prep,
 	/* REMOVE CLK TERM */
 	hdmi_phy_i2c_write(hdmi, 0x8000, 0x05);  /* CKCALCTRL */
 
-	dw_hdmi_phy_enable_power(hdmi, 1);
+	dw_hdmi_phy_enable_powerdown(hdmi, false);
 
 	/* toggle TMDS enable */
 	dw_hdmi_phy_enable_tmds(hdmi, 0);
@@ -924,7 +924,7 @@ static int dw_hdmi_phy_init(struct dw_hdmi *hdmi)
 		dw_hdmi_phy_sel_data_en_pol(hdmi, 1);
 		dw_hdmi_phy_sel_interface_control(hdmi, 0);
 		dw_hdmi_phy_enable_tmds(hdmi, 0);
-		dw_hdmi_phy_enable_power(hdmi, 0);
+		dw_hdmi_phy_enable_powerdown(hdmi, true);
 
 		/* Enable CSC */
 		ret = hdmi_phy_configure(hdmi, 0, 8, cscon);
@@ -1155,7 +1155,7 @@ static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi)
 		return;
 
 	dw_hdmi_phy_enable_tmds(hdmi, 0);
-	dw_hdmi_phy_enable_power(hdmi, 0);
+	dw_hdmi_phy_enable_powerdown(hdmi, true);
 
 	hdmi-&gt;phy_enabled = false;
 }
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070001030101020607040201--


--===============0780154676==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0780154676==--

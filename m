From: "sandy.huang" <hjc@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_09/12=5d_drm/rockchip=3a_lvds=3a_Add_PX30_?=
 =?UTF-8?B?c3VwcG9ydOOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlwLWJv?=
 =?UTF-8?Q?unces+sandy=2ehuang=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
Date: Wed, 18 Dec 2019 11:17:03 +0800
Message-ID: <64f6c582-8ffd-1082-f161-1e8c1a8dda44@rock-chips.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-10-miquel.raynal@bootlin.com>
 <20191216105827.rxkfbwemkqw446jx@gilmour.lan> <20191216120312.4aa478da@xps13>
 <20191216111436.wzoq33gvt42w6gqj@gilmour.lan>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1470670556=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191216111436.wzoq33gvt42w6gqj@gilmour.lan>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Maxime Ripard <maxime@cerno.tech>, Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1470670556==
Content-Type: multipart/alternative;
 boundary="------------2C99C271BEE0B7DA862D9FC7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2C99C271BEE0B7DA862D9FC7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Maxime & Miquel,

在 2019/12/16 下午7:14, Maxime Ripard 写道:
> On Mon, Dec 16, 2019 at 12:03:12PM +0100, Miquel Raynal wrote:
>> Maxime Ripard <maxime@cerno.tech> wrote on Mon, 16 Dec 2019 11:58:27 +0100:
>>> Hi,
>>>
>>> On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
>>>> +static int px30_lvds_grf_config(struct drm_encoder *encoder,
>>>> +				struct drm_display_mode *mode)
>>>> +{
>>>> +	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
>>>> +	u8 nhsync = !(mode->flags & DRM_MODE_FLAG_PHSYNC);
>>>> +	u8 nvsync = !(mode->flags & DRM_MODE_FLAG_PVSYNC);
>>>> +	u8 ndclk = !(mode->flags & DRM_MODE_FLAG_PCSYNC);
>>>> +	int ret;
>>>> +
>>>> +	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
>>>> +		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
>>>> +			      lvds->output);
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	if (nhsync ^ nvsync) {
>>>> +		DRM_DEV_ERROR(lvds->dev, "Unsupported Hsync/Vsync polarity\n");
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	/* Set format */
>>>> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
>>>> +				 PX30_LVDS_FORMAT(lvds->format),
>>>> +				 PX30_LVDS_FORMAT(lvds->format));
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	/* Control Hsync/Vsync polarity */
>>>> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
>>>> +				 PX30_LVDS_TIE_CLKS(1),
>>>> +				 PX30_LVDS_TIE_CLKS(1));
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	/* Set Hsync/Vsync polarity */
>>>> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
>>>> +				 PX30_LVDS_INVERT_CLKS(1),
>>>> +				 PX30_LVDS_INVERT_CLKS(nhsync));
>>>> +	if (ret)
>>>> +		return ret;
>>> I don't know the hardware but it seems pretty weird to me. hsync and
>>> vsync in LVDS are not clocks (or even signals), they're a bit in the
>>> payload. Is there any explanation in the datasheet (or even a
>>> datasheet in the first place)?
>> There is no explanation about this in the PX30 TRM part 1 (public). But
>> you are right the naming is weird. Could the "tie clocks" thing above
>> mean something to you/people knowing the LVDS world?
> I have no idea what that could mean :)

This two bit(GRF_CON0[9,8]) is not for hsync/vsync polarity config, the 
polarity is done at vop_crtc_atomic_enable@rockchip_drm_vop.c.

Before px30, all rockchip platform lvds output payload is include 
hsync,vsync and den clock signal. About years ago, we meet a lvds panel 
can't work normally at rk3288,  from the panel spec we know the panel 
need lvds work den mode only, the hsync/vsync need to set 0 at blank 
time, so we add this two bit(GRF_CON0[9,8]) for this mode.

but now we can't get in touch with the customer and get the panel to 
test this function, so we can't verify the panel work unnormally is 
because of  the den mode only and the hsync vsync signal level at blank 
time.

I recommend not including this part of configuration before we test this 
funcion at den mode only lvds panel,thanks.

>
> Maxime
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

--------------2C99C271BEE0B7DA862D9FC7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Maxime &amp; Miquel,<br>
    </p>
    <div class="moz-cite-prefix">在 2019/12/16 下午7:14, Maxime Ripard 写道:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20191216111436.wzoq33gvt42w6gqj@gilmour.lan">
      <pre class="moz-quote-pre" wrap="">On Mon, Dec 16, 2019 at 12:03:12PM +0100, Miquel Raynal wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Maxime Ripard <a class="moz-txt-link-rfc2396E" href="mailto:maxime@cerno.tech">&lt;maxime@cerno.tech&gt;</a> wrote on Mon, 16 Dec 2019 11:58:27 +0100:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Hi,

On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">+static int px30_lvds_grf_config(struct drm_encoder *encoder,
+				struct drm_display_mode *mode)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+	u8 nhsync = !(mode-&gt;flags &amp; DRM_MODE_FLAG_PHSYNC);
+	u8 nvsync = !(mode-&gt;flags &amp; DRM_MODE_FLAG_PVSYNC);
+	u8 ndclk = !(mode-&gt;flags &amp; DRM_MODE_FLAG_PCSYNC);
+	int ret;
+
+	if (lvds-&gt;output != DISPLAY_OUTPUT_LVDS) {
+		DRM_DEV_ERROR(lvds-&gt;dev, "Unsupported display output %d\n",
+			      lvds-&gt;output);
+		return -EINVAL;
+	}
+
+	if (nhsync ^ nvsync) {
+		DRM_DEV_ERROR(lvds-&gt;dev, "Unsupported Hsync/Vsync polarity\n");
+		return -EINVAL;
+	}
+
+	/* Set format */
+	ret = regmap_update_bits(lvds-&gt;grf, PX30_LVDS_GRF_PD_VO_CON1,
+				 PX30_LVDS_FORMAT(lvds-&gt;format),
+				 PX30_LVDS_FORMAT(lvds-&gt;format));
+	if (ret)
+		return ret;
+
+	/* Control Hsync/Vsync polarity */
+	ret = regmap_update_bits(lvds-&gt;grf, PX30_LVDS_GRF_PD_VO_CON0,
+				 PX30_LVDS_TIE_CLKS(1),
+				 PX30_LVDS_TIE_CLKS(1));
+	if (ret)
+		return ret;
+
+	/* Set Hsync/Vsync polarity */
+	ret = regmap_update_bits(lvds-&gt;grf, PX30_LVDS_GRF_PD_VO_CON0,
+				 PX30_LVDS_INVERT_CLKS(1),
+				 PX30_LVDS_INVERT_CLKS(nhsync));
+	if (ret)
+		return ret;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">
I don't know the hardware but it seems pretty weird to me. hsync and
vsync in LVDS are not clocks (or even signals), they're a bit in the
payload. Is there any explanation in the datasheet (or even a
datasheet in the first place)?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
There is no explanation about this in the PX30 TRM part 1 (public). But
you are right the naming is weird. Could the "tie clocks" thing above
mean something to you/people knowing the LVDS world?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I have no idea what that could mean :)</pre>
    </blockquote>
    <p>This two bit(GRF_CON0[9,8]) is not for hsync/vsync polarity
      config, the polarity is done at
      <a class="moz-txt-link-abbreviated" href="mailto:vop_crtc_atomic_enable@rockchip_drm_vop.c">vop_crtc_atomic_enable@rockchip_drm_vop.c</a>.</p>
    <p>Before px30, all rockchip platform lvds output payload is include
      hsync,vsync and den clock signal. About years ago, we meet a lvds
      panel can't work normally at rk3288,  from the panel spec we know
      the panel need lvds work den mode only, the hsync/vsync need to
      set 0 at blank time, so we add this two bit(GRF_CON0[9,8]) for
      this mode.<br>
    </p>
    <p>but now we can't get in touch with the customer and get the panel
      to test this function, so we can't verify the panel work
      unnormally is because of  the den mode only and the hsync vsync
      signal level at blank time.</p>
    <p>I recommend not including this part of configuration before we
      test this funcion at den mode only lvds panel,thanks.<br>
    </p>
    <blockquote type="cite"
      cite="mid:20191216111436.wzoq33gvt42w6gqj@gilmour.lan">
      <pre class="moz-quote-pre" wrap="">

Maxime
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
Linux-rockchip mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Linux-rockchip@lists.infradead.org">Linux-rockchip@lists.infradead.org</a>
<a class="moz-txt-link-freetext" href="http://lists.infradead.org/mailman/listinfo/linux-rockchip">http://lists.infradead.org/mailman/listinfo/linux-rockchip</a>
</pre>
    </blockquote>
  </body>
</html>

--------------2C99C271BEE0B7DA862D9FC7--



--===============1470670556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
dri-devel mailing list
dri-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/dri-devel

--===============1470670556==--

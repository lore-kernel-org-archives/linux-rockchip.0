From: =?UTF-8?B?5aea5pm65oOF?= <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: add PINCTRL dependency for LVDS
Date: Fri, 06 Oct 2017 11:17:42 +0000
Message-ID: <CACdtKFhNJ_ACYJ9ra9_zyZ=5yC0ykF8+EpkNziONZF9X=wHd8Q@mail.gmail.com>
References: <20171005120957.485433-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1750826898=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171005120957.485433-1-arnd@arndb.de>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Arnd Bergmann <arnd@arndb.de>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Guenter Roeck <groeck@chromium.org>, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--===============1750826898==
Content-Type: multipart/alternative; boundary="001a1147a74cec5a92055adefde0"

--001a1147a74cec5a92055adefde0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Acked-by: Mark Yao <mark.yao@rock-chips.com>

Thanks for the fix, and sorry for that, I'm in holidays now=EF=BC=8Ccurrent=
ly has
no environment to do the patch pushed.

I'll be back next week and do this patch push.

Thanks
Mark.
On 2017=E5=B9=B410=E6=9C=885=E6=97=A5=E5=91=A8=E5=9B=9B 19:10 Arnd Bergmann=
 <arnd@arndb.de> wrote:

> The new driver fails to build when CONFIG_PINCTRL is disabled:
>
> drivers/gpu/drm/rockchip/rockchip_lvds.c: In function
> 'rockchip_lvds_grf_config':
> drivers/gpu/drm/rockchip/rockchip_lvds.c:229:39: error: dereferencing
> pointer to incomplete type 'struct dev_pin_info'
>    if (lvds->pins && !IS_ERR(lvds->pins->default_state))
>
> This adds the respective Kconfig dependency.
>
> Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/rockchip/Kconfig
> b/drivers/gpu/drm/rockchip/Kconfig
> index 0c31f0a27b9c..3c70c6224bd2 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -60,6 +60,7 @@ config ROCKCHIP_INNO_HDMI
>  config ROCKCHIP_LVDS
>         bool "Rockchip LVDS support"
>         depends on DRM_ROCKCHIP
> +       depends on PINCTRL
>         help
>           Choose this option to enable support for Rockchip LVDS
> controllers.
>           Rockchip rk3288 SoC has LVDS TX Controller can be used, and it
> --
> 2.9.0
>
>
>
>
> --

=EF=BC=ADark Yao =E5=A7=9A=E6=99=BA=E6=83=85

Rockchip =E7=A6=8F=E5=B7=9E=E7=91=9E=E8=8A=AF=E5=BE=AE=E7=94=B5=E5=AD=90=E6=
=9C=89=E9=99=90=E5=85=AC=E5=8F=B8

Fuzhou Headquarters

Addr:No.21 Building, A District, Fuzhou

Software Park, 89 Soft Avenue, Tongpan Road,

Gulou District, Fuzhou (350003)

=E5=9C=B0=E5=9D=80:=E7=A6=8F=E5=BB=BA=E7=9C=81=E7=A6=8F=E5=B7=9E=E5=B8=82=
=E9=93=9C=E7=9B=98=E8=B7=AF=E8=BD=AF=E4=BB=B6=E5=A4=A7=E9=81=9389=E5=8F=B7=
=E8=BD=AF=E4=BB=B6=E5=9B=ADA=E5=8C=BA21=E5=8F=B7=E6=A5=BC (350003)

Tel:=EF=BC=8886-0591=EF=BC=8983991906 - 8296
E-mail:mark.yao@rock-chips.com

--001a1147a74cec5a92055adefde0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Acked-by: Mark Yao &lt;<a href=3D"mailto:mark.yao@rock-chi=
ps.com">mark.yao@rock-chips.com</a>&gt;</div><span>
</span><div><br></div><span>Thanks for the fix, and sorry for that, I&#39;m=
 in holidays now=EF=BC=8Ccurrently has no environment to do the patch pushe=
d.</span><div><br></div><div>I&#39;ll be back next week and do this patch p=
ush.</div><div><br></div><div>Thanks</div><div>Mark.<br><div class=3D"gmail=
_quote"><div dir=3D"ltr">On 2017=E5=B9=B410=E6=9C=885=E6=97=A5=E5=91=A8=E5=
=9B=9B 19:10 Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de">arnd@arndb.=
de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The new driver fa=
ils to build when CONFIG_PINCTRL is disabled:<br>
<br>
drivers/gpu/drm/rockchip/rockchip_lvds.c: In function &#39;rockchip_lvds_gr=
f_config&#39;:<br>
drivers/gpu/drm/rockchip/rockchip_lvds.c:229:39: error: dereferencing point=
er to incomplete type &#39;struct dev_pin_info&#39;<br>
=C2=A0 =C2=A0if (lvds-&gt;pins &amp;&amp; !IS_ERR(lvds-&gt;pins-&gt;default=
_state))<br>
<br>
This adds the respective Kconfig dependency.<br>
<br>
Fixes: 34cc0aa25456 (&quot;drm/rockchip: Add support for Rockchip Soc LVDS&=
quot;)<br>
Signed-off-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D=
"_blank">arnd@arndb.de</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/rockchip/Kconfig | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kc=
onfig<br>
index 0c31f0a27b9c..3c70c6224bd2 100644<br>
--- a/drivers/gpu/drm/rockchip/Kconfig<br>
+++ b/drivers/gpu/drm/rockchip/Kconfig<br>
@@ -60,6 +60,7 @@ config ROCKCHIP_INNO_HDMI<br>
=C2=A0config ROCKCHIP_LVDS<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Rockchip LVDS support&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on DRM_ROCKCHIP<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on PINCTRL<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 help<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Choose this option to enable support for=
 Rockchip LVDS controllers.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Rockchip rk3288 SoC has LVDS TX Controll=
er can be used, and it<br>
--<br>
2.9.0<br>
<br>
<br>
<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><pre class=
=3D"inbox-inbox-inbox-inbox-inbox-moz-signature" cols=3D"72">=EF=BC=ADark Y=
ao =E5=A7=9A=E6=99=BA=E6=83=85  =20

Rockchip =E7=A6=8F=E5=B7=9E=E7=91=9E=E8=8A=AF=E5=BE=AE=E7=94=B5=E5=AD=90=E6=
=9C=89=E9=99=90=E5=85=AC=E5=8F=B8

Fuzhou Headquarters

Addr:No.21 Building, A District, Fuzhou

Software Park, 89 Soft Avenue, Tongpan Road,=20

Gulou District, Fuzhou (350003)

=E5=9C=B0=E5=9D=80:=E7=A6=8F=E5=BB=BA=E7=9C=81=E7=A6=8F=E5=B7=9E=E5=B8=82=
=E9=93=9C=E7=9B=98=E8=B7=AF=E8=BD=AF=E4=BB=B6=E5=A4=A7=E9=81=9389=E5=8F=B7=
=E8=BD=AF=E4=BB=B6=E5=9B=ADA=E5=8C=BA21=E5=8F=B7=E6=A5=BC (350003)

Tel:=EF=BC=8886-0591=EF=BC=8983991906 - 8296=20

<a class=3D"inbox-inbox-inbox-inbox-inbox-moz-txt-link-abbreviated" href=3D=
"mailto:E-mail:mark.yao@rock-chips.com">E-mail:mark.yao@rock-chips.com</a> =
</pre></div></div>

--001a1147a74cec5a92055adefde0--


--===============1750826898==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1750826898==--

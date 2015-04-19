From: Daniel Kurtz <djkurtz@chromium.org>
Subject: Re: [PATCH 2/2] drm/rockchip: make irq variable signed
Date: Mon, 20 Apr 2015 03:08:07 +0800
Message-ID: <CAGS+omDGGqXVT=EYjPs9ow7gjYk89QS8srmmh2g1rxmE=+MmdA@mail.gmail.com>
References: <10285799.2mSMxzijmr@diego> <6744862.JhM2B9tICl@diego>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0305392376=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <6744862.JhM2B9tICl@diego>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, David Binderman <dcb314@hotmail.com>, dri-devel <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org

--===============0305392376==
Content-Type: multipart/alternative; boundary=047d7b414d40d383c60514188979

--047d7b414d40d383c60514188979
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Sun, Apr 19, 2015 at 12:30 AM, Heiko St=C3=BCbner <heiko@sntech.de> wrot=
e:

> platform_get_irq() can return negative error values and we already test f=
or
> these. Therefore the variable holding this value should be signed to not
> loose error values.
>
> Reported-by: David Binderman <dcb314@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index ccb0ce0..bde1c1e 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -104,7 +104,7 @@ struct vop {
>         /* lock vop irq reg */
>         spinlock_t irq_lock;
>
> -       unsigned int irq;
> +       int irq;
>

Hmm.  Both enable_irq() and disable_irq(), etc) want irq as an unsigned int=
.
The thing we want here is to detect a negative return value from
platform_get_irq().
So, I'd slightly prefer changing to vop_bind() to something like this:

 int irq;
...
 irq =3D platform_get_irq()
 If (irq < 0)
   return irq;
 vop->irq =3D (unsigned int)irq;


-Dan



>
>         /* vop AHP clk */
>         struct clk *hclk;
> --
> 2.1.4
>
>
>

--047d7b414d40d383c60514188979
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Heiko,<br><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Sun, Apr 19, 2015 at 12:30 AM, Heiko St=C3=BCbner <span dir=
=3D"ltr">&lt;<a href=3D"mailto:heiko@sntech.de" target=3D"_blank">heiko@snt=
ech.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex">platform_get_irq() can ret=
urn negative error values and we already test for<br>
these. Therefore the variable holding this value should be signed to not<br=
>
loose error values.<br>
<br>
Reported-by: David Binderman &lt;<a href=3D"mailto:dcb314@hotmail.com">dcb3=
14@hotmail.com</a>&gt;<br>
Signed-off-by: Heiko Stuebner &lt;<a href=3D"mailto:heiko@sntech.de">heiko@=
sntech.de</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/=
rockchip/rockchip_drm_vop.c<br>
index ccb0ce0..bde1c1e 100644<br>
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c<br>
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c<br>
@@ -104,7 +104,7 @@ struct vop {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* lock vop irq reg */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 spinlock_t irq_lock;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int irq;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int irq;<br></blockquote><div><br></div><div>Hm=
m.=C2=A0 Both enable_irq() and disable_irq(), etc) want irq as an unsigned =
int.</div><div>The thing we want here is to detect a negative return value =
from platform_get_irq().</div><div>So, I&#39;d slightly prefer changing to =
vop_bind() to something like this:</div><div><br></div><div>=C2=A0int irq;<=
/div><div>...</div><div>=C2=A0irq =3D platform_get_irq()</div><div>=C2=A0If=
 (irq &lt; 0)</div><div>=C2=A0 =C2=A0return irq;</div><div>=C2=A0vop-&gt;ir=
q =3D (unsigned int)irq;</div><div><br></div><div><br></div><div>-Dan</div>=
<div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex">
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* vop AHP clk */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct clk *hclk;<br>
<span class=3D""><font color=3D"#888888">--<br>
2.1.4<br>
<br>
<br>
</font></span></blockquote></div><br></div></div>

--047d7b414d40d383c60514188979--

--===============0305392376==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0305392376==--

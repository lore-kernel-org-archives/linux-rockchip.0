From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: add simple-panel-dsi and simple-panel
Date: Tue, 26 Jul 2016 11:02:26 +0200
Message-ID: <20160726090226.GB2433@ulmo.ba.sec>
References: <1468984730-23186-1-git-send-email-mark.yao@rock-chips.com>
 <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
 <20160725152125.GS21170@ulmo.ba.sec>
 <5796C47C.5040208@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1784173112=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5796C47C.5040208@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Mark Rutland <mark.rutland@arm.com>, =?utf-8?B?6buE5rab?= <huangtao@rock-chips.com>, =?utf-8?B?5bqE5paH6b6Z?= <zwl@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1784173112==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline


--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 26, 2016 at 10:01:32AM +0800, Mark yao wrote:
> On 2016=E5=B9=B407=E6=9C=8825=E6=97=A5 23:21, Thierry Reding wrote:
>=20
>     On Wed, Jul 20, 2016 at 11:18:50AM +0800, Mark Yao wrote:
>=20
>         Allow user add display timing on device tree with simple-panel-dsi
>         or simple-panel.
>=20
>         Cc: Thierry Reding <thierry.reding@gmail.com>
>         Cc: Rob Herring <robh+dt@kernel.org>
>         Cc: Mark Rutland <mark.rutland@arm.com>
>=20
>         Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
>         ---
>          .../bindings/display/panel/simple-panel.txt        | 48 ++++++++=
++++++++++++++
>          1 file changed, 48 insertions(+)
>=20
>     Sorry, not going to happen. Read this for an explanation of why not:
>=20
>             https://sietch-tagr.blogspot.de/2016/04/display-panels-are-no=
t-special.html
>=20
>     Thierry
>=20
>=20
> Hi Thierry
>=20
> The blog actually not persuade me why can't use display timing on
> device tree.

Okay, perhaps read it again, it addresses most of your points below.

> 1, Binding panel as a simple string on device tree seems simple on device=
 tree,
> but it's complex on kernel code, and kernel code would became bigger and
> bigger.

I don't think the video timings in the simple-panel driver are very
complex. They also don't use very much space. And if you're really
concerned about space you can always use conditional compilation and
Kconfig symbols to remove timings for panels that you don't use.

Also, panels are characterized by much more than just video timings.
There were attempts, way back, to fully describe panels in device tree
and that failed. What you propose here is a partial solution to a much
more complex problem.

This is all explained in the blog post.

> 2, Our customer always ask me, where is the display timing? They only fin=
d a
> simple panel string on device tree,=C2=A0 need search the kernel code to =
find the
> actually timing. They are used to find all device info on device tree, but
> panel timing info is not, this would confuse them. They don't want to kno=
w how
> code work, just want a easier interface.

That's not a very good argument. There's plenty of data that's not in
device tree for other devices, why should panels be different? Also, I
would hope that any customer of yours knows their way around kernel
code and can therefore easily add video timings for new panels. It's
quite trivial to do, and there are many examples on how to do it.

> 3, I think device tree not only can use for kernel, other module also can=
 use
> it. on our project, we use uboot + kernel, the uboot support fdt, that fu=
nction
> can parsing device tree. So if describe the display timing on device tree=
, both
> uboot and kernel can share same display timing, not need to describe twic=
e, it
> would save work and not easy to make mistake.

That's a bit of a stretch. Video timings is fairly straightforward data
and can be easily added to any other piece of code that you want to run.
Yes you will have to duplicate the data, but how is that different from
duplicating all the driver code?

> 4, For differentiation product, we face many different panel, every once =
in a
> while, need to add a new panel, we can't convert all the panel , code the=
 panel
> on kernel seems too bad, and the kernel image became bigger and bigger.

Why can't you convert all the panels? We already support a bunch of them
and haven't yet run into any problems. If you do encounter any issues
trying to port panels to the DRM panel infrastructure, please let me
know and I can help sort them out.

The kernel image size isn't a problem either. In any modern kernel the
video timing data in the panel driver is tiny compared to the rest.

> Generally, Our customer don't want to do any modify on kernel, they just =
modify
> device tree to bring up their device. Describe the panel timing on device=
 tree,
> would make customer easy to use and reuse it.

Yes, that would perhaps make it easier for them to bring up the device.
But soon after they'll notice that there are glitches when turning the
panel on and off, and then they'll realize that they can't fix that
using their simple device tree.

All of that said, if you do think this is valuable to your customers,
please feel free to ship these patches in your downstream tree.

Also, though this is a bit off topic, I'm sure that your customers'
customers would be very happy to get all the security and bug fixes that
would automatically be delivered with the frequent kernel updates that
bring in support for new panels.

Thierry

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXlycfAAoJEN0jrNd/PrOhBtcQAJuEGtJbbJp90BDmPbL67YG2
nMh7JDDXofEr0IZK20ajQHvM8+O+UqUDJZlDxanred0fHirlfr0id1DUa/KPcUKV
7asQkl8WpRsXwQqsWF1EHyTnlrg3FgQt1oDw74y2fBJXdw3GbQsvLfQeN0mO2XmF
bZTMmPIU6+Gj0LXeSRC+zvsJeeBKbjYfF3b7tn6vT0C5995DT0Ohuat3kPyJJ3bO
/tggPYPPnRJEKabaw8nQDceVsbQpYHPqidvyroMGT0/hDGSLduKeqxPXV8/PJzcZ
6BXwYwNf3CH8SoMXUYXFalo2l9SvWwhwHbD8CFd5YuTR3xIVbRL0SVaSgu+7DaI2
MzwIv9dl87fli8TOYOVNhfI9XKHRvpZy9UsTTkR7JgKpU6wRRLyw0GZGlWWP1+DC
Zrp6nke4rPryYs+aPvA13OoRgI/DaFDI+ExTqZUAJxWU78P73D3Gw/8SU8uSETcO
sOHbajG9ARHUBQESvezAH38SMW4Sz79WxN0hhBLM7fKF1j4StB7gZYHQAK8C0fAm
u0c0sQ/+ij4BTN02bIuu+dHuzheToj1hINweY+rkIQUBkXAf2gbL2jfSiOjneGwT
WXc3wKS9qiW2jGTRTI5ktUAgtH4rNbIV7mkSCnfqWg/zkhpQ/z3SRqx+F+LaWlQp
1IhD6eFb5m9NoGKza06T
=u3Fo
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--

--===============1784173112==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1784173112==--

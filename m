From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: add simple-panel-dsi and simple-panel
Date: Thu, 28 Jul 2016 16:13:25 +0200
Message-ID: <20160728141325.GB28342@ulmo.ba.sec>
References: <1468984730-23186-1-git-send-email-mark.yao@rock-chips.com>
 <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
 <20160725152125.GS21170@ulmo.ba.sec>
 <5796C47C.5040208@rock-chips.com>
 <20160726090226.GB2433@ulmo.ba.sec>
 <57982469.6030201@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1572525734=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57982469.6030201@rock-chips.com>
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


--===============1572525734==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline


--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 27, 2016 at 11:03:05AM +0800, Mark yao wrote:
> On 2016=E5=B9=B407=E6=9C=8826=E6=97=A5 17:02, Thierry Reding wrote:
> > On Tue, Jul 26, 2016 at 10:01:32AM +0800, Mark yao wrote:
> > > On 2016=E5=B9=B407=E6=9C=8825=E6=97=A5 23:21, Thierry Reding wrote:
> > >=20
> > >      On Wed, Jul 20, 2016 at 11:18:50AM +0800, Mark Yao wrote:
> > >=20
> > >          Allow user add display timing on device tree with simple-pan=
el-dsi
> > >          or simple-panel.
> > >=20
> > >          Cc: Thierry Reding <thierry.reding@gmail.com>
> > >          Cc: Rob Herring <robh+dt@kernel.org>
> > >          Cc: Mark Rutland <mark.rutland@arm.com>
> > >=20
> > >          Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> > >          ---
> > >           .../bindings/display/panel/simple-panel.txt        | 48 +++=
+++++++++++++++++++
> > >           1 file changed, 48 insertions(+)
> > >=20
> > >      Sorry, not going to happen. Read this for an explanation of why =
not:
> > >=20
> > >              https://sietch-tagr.blogspot.de/2016/04/display-panels-a=
re-not-special.html
> > >=20
> > >      Thierry
> > >=20
> > >=20
> > > Hi Thierry
> > >=20
> > > The blog actually not persuade me why can't use display timing on
> > > device tree.
> > Okay, perhaps read it again, it addresses most of your points below.
> >=20
> > > 1, Binding panel as a simple string on device tree seems simple on de=
vice tree,
> > > but it's complex on kernel code, and kernel code would became bigger =
and
> > > bigger.
> > I don't think the video timings in the simple-panel driver are very
> > complex. They also don't use very much space. And if you're really
> > concerned about space you can always use conditional compilation and
> > Kconfig symbols to remove timings for panels that you don't use.
> >=20
> > Also, panels are characterized by much more than just video timings.
> > There were attempts, way back, to fully describe panels in device tree
> > and that failed. What you propose here is a partial solution to a much
> > more complex problem.
> >=20
> > This is all explained in the blog post.
> >=20
> > > 2, Our customer always ask me, where is the display timing? They only=
 find a
> > > simple panel string on device tree,  need search the kernel code to f=
ind the
> > > actually timing. They are used to find all device info on device tree=
, but
> > > panel timing info is not, this would confuse them. They don't want to=
 know how
> > > code work, just want a easier interface.
> > That's not a very good argument. There's plenty of data that's not in
> > device tree for other devices, why should panels be different? Also, I
> > would hope that any customer of yours knows their way around kernel
> > code and can therefore easily add video timings for new panels. It's
> > quite trivial to do, and there are many examples on how to do it.
> >=20
> > > 3, I think device tree not only can use for kernel, other module also=
 can use
> > > it. on our project, we use uboot + kernel, the uboot support fdt, tha=
t function
> > > can parsing device tree. So if describe the display timing on device =
tree, both
> > > uboot and kernel can share same display timing, not need to describe =
twice, it
> > > would save work and not easy to make mistake.
> > That's a bit of a stretch. Video timings is fairly straightforward data
> > and can be easily added to any other piece of code that you want to run.
> > Yes you will have to duplicate the data, but how is that different from
> > duplicating all the driver code?
> >=20
> > > 4, For differentiation product, we face many different panel, every o=
nce in a
> > > while, need to add a new panel, we can't convert all the panel , code=
 the panel
> > > on kernel seems too bad, and the kernel image became bigger and bigge=
r.
> > Why can't you convert all the panels? We already support a bunch of them
> > and haven't yet run into any problems. If you do encounter any issues
> > trying to port panels to the DRM panel infrastructure, please let me
> > know and I can help sort them out.
> >=20
> > The kernel image size isn't a problem either. In any modern kernel the
> > video timing data in the panel driver is tiny compared to the rest.
> >=20
> > > Generally, Our customer don't want to do any modify on kernel, they j=
ust modify
> > > device tree to bring up their device. Describe the panel timing on de=
vice tree,
> > > would make customer easy to use and reuse it.
> > Yes, that would perhaps make it easier for them to bring up the device.
> > But soon after they'll notice that there are glitches when turning the
> > panel on and off, and then they'll realize that they can't fix that
> > using their simple device tree.
> About the panel on and off, I don't think the panel-simple do the good
> enough.
>=20
> panel-simple only have one gpio and one regulator, and their sequence is
> hard code, Why not a panel have two gpio or two regulator? On our project,
> we find many customer don't use the RC to do panel reset, they directly u=
se
> gpio reset, so they need a gpio to do panel reset.

The driver is called panel-simple for a reason. It's not meant to cover
all possible use-cases, only the simple ones.

> the device tree panel's on and off function is what the next step I want =
to
> upstream, on our downstream kernel, we do like that:
>=20
> panel {
>     power_ctrl {
>           power0 {
>                   gpios =3D <xxx>;
>                   delay,ms =3D <3>;
>           }
>           power1 {
>                   regulator =3D <xxx>;
>                   delay,ms =3D <3>;
>           }
>           power2 {
>                   backlight =3D <xxx>;
>                   delay,ms =3D <3>;
>           }
>     }
> }
> and on driver, power on sequence with power0->power1->power2, power down
> with power2->power1->power0.
> if user want to swap the power, can easy do that by  adjust dts power
> sequence.
>=20
> this method can easy order the gpio, regulator, backlight sequence, judge
> the delay time and add new regulator or gpio.
> I think this panel power on and off method is better than panel-simple
> driver currently using.

That's almost exactly like the power sequences that Alex Courbot had
proposed about three years ago. The concept of such a thing was rejected
by device tree binding maintainers, which is why we ended up with what
we have now. I'm sure you can find a link to the discussion if you want
the details about why it got rejected.

All of that's described in the blog, by the way.

Thierry

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXmhMFAAoJEN0jrNd/PrOhNPwP/1lMS+khm9jfD/lBPGlAfdH3
LjOLCT6EacNxct9S291mXEdJG9FEkMp3TbKKrzKGKDrJ6GNnIHm1HjVOu1s/7TsQ
Sz9SFEme/uWmsTnbUc0vE8lcNFPyNxNgC+Il5VDC5iDyyvhrN7antWEM29aa5sNS
K4RF+KogPxj9d7+wtuFFfnSMWMBlF60o0BkmxHvv//FsQtJABCNJSUA+UdHxzsH0
e4Hira8s0WAe0r042leOrpup5qVKdrBlhZMmFz+mV0arHwKzCuvYfOWTEMPpI1fM
b+xOmcaO/UaaiDE3mJH7pAojkXpKQLUv3AuNGudCYVvgoh6gkpPA96mkqTK50ZK7
NSMciZmzHJx0zAUoG5tFNWNLYVaTsKsd5sMJZ8b4HJtmOfS0jyM1e7GmIuBTJhqX
CMBnMnbWvMww6lQxB4MejB9TBT+4sJJjGIOLiMbKi5zQu+HeolzBl2eoZWHo9qEH
lYUcW3/idzIbTdz2ZYKlt+AY21MT96Mx5ulZdBoED4Nvw4V+hCmYCkOJ9Zhbmccd
1z67dDdDxgwcGQr4ihqQKiLKmVnz+/f3epdb+JNrq/TDDIWI2uGYMSLIznIoePGB
ARseQS9tGF97jwmcf4XzI+8JESTxAvN9JZ+2PXagEBQ0kNAbckwKa5mnJDGiBMnE
7telt1zfoTLqUtcm6ZS5
=SJ1R
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--

--===============1572525734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1572525734==--

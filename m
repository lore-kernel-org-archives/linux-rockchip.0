From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: add simple-panel-dsi and simple-panel
Date: Fri, 29 Jul 2016 16:24:27 +0200
Message-ID: <20160729142427.GB3864@ulmo.ba.sec>
References: <1468984730-23186-1-git-send-email-mark.yao@rock-chips.com>
 <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
 <20160725152125.GS21170@ulmo.ba.sec>
 <5796C47C.5040208@rock-chips.com>
 <20160726090226.GB2433@ulmo.ba.sec>
 <CAL_JsqL8D3OK_JQcY+dLTcqcvmgB2Vuc0Tknf1zsR=8Pa3F4jw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0287436397=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAL_JsqL8D3OK_JQcY+dLTcqcvmgB2Vuc0Tknf1zsR=8Pa3F4jw@mail.gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, =?utf-8?B?6buE5rab?= <huangtao@rock-chips.com>, =?utf-8?B?5bqE5paH6b6Z?= <zwl@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org


--===============0287436397==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QKdGvSO+nmPlgiQ/"
Content-Disposition: inline


--QKdGvSO+nmPlgiQ/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 28, 2016 at 02:00:21PM -0500, Rob Herring wrote:
> On Tue, Jul 26, 2016 at 4:02 AM, Thierry Reding
> <thierry.reding@gmail.com> wrote:
> > On Tue, Jul 26, 2016 at 10:01:32AM +0800, Mark yao wrote:
> >> On 2016=E5=B9=B407=E6=9C=8825=E6=97=A5 23:21, Thierry Reding wrote:
> >>
> >>     On Wed, Jul 20, 2016 at 11:18:50AM +0800, Mark Yao wrote:
> >>
> >>         Allow user add display timing on device tree with simple-panel=
-dsi
> >>         or simple-panel.
> >>
> >>         Cc: Thierry Reding <thierry.reding@gmail.com>
> >>         Cc: Rob Herring <robh+dt@kernel.org>
> >>         Cc: Mark Rutland <mark.rutland@arm.com>
> >>
> >>         Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> >>         ---
> >>          .../bindings/display/panel/simple-panel.txt        | 48 +++++=
+++++++++++++++++
> >>          1 file changed, 48 insertions(+)
> >>
> >>     Sorry, not going to happen. Read this for an explanation of why no=
t:
> >>
> >>             https://sietch-tagr.blogspot.de/2016/04/display-panels-are=
-not-special.html
> >>
> >>     Thierry
> >>
> >>
> >> Hi Thierry
> >>
> >> The blog actually not persuade me why can't use display timing on
> >> device tree.
> >
> > Okay, perhaps read it again, it addresses most of your points below.
> >
> >> 1, Binding panel as a simple string on device tree seems simple on dev=
ice tree,
> >> but it's complex on kernel code, and kernel code would became bigger a=
nd
> >> bigger.
> >
> > I don't think the video timings in the simple-panel driver are very
> > complex. They also don't use very much space. And if you're really
> > concerned about space you can always use conditional compilation and
> > Kconfig symbols to remove timings for panels that you don't use.
> >
> > Also, panels are characterized by much more than just video timings.
> > There were attempts, way back, to fully describe panels in device tree
> > and that failed. What you propose here is a partial solution to a much
> > more complex problem.
> >
> > This is all explained in the blog post.
>=20
> While I agree with everything Thierry has said in this thread, there
> is an argument to be made for timing information in DT.
>=20
> Maybe most vendors have now learned that flexible clock frequencies
> are needed to generate the correct timings, but I have worked on parts
> without fine resolution (i.e. a dedicated pll). Even HiKey with HDMI
> suffers from this. In that case you can be tuning the timings
> (increasing the h and/or v blanks) to get the desired refresh rates.
> So in that case, the panel compatible would not determine the display
> timings and you could have the same panel with different timings on
> different boards. That's maybe rare enough that putting timing info in
> DT still wouldn't make sense.

There's another mechanism, though not very popular (possibly because it
is indeed a very rare usecase), that we introduced a while ago. The idea
is that we don't specify the mode per panel, as we do now, but rather a
range of values that are valid for the various video timing parameters.
These set can usually be copied from some datasheet and are represented
by (minimum, typical, maximum) triplets. So drivers for display hardware
would query the timings in this way, try to establish a working mode
=66rom the typical values and tweak as necessary by adjusting the values
within the limits given by (minimum, maximum).

One disadvantage of this is that it becomes somewhat more complicated to
write the display driver, but I think that's an easy problem to solve by
adding some common helpers (I'm thinking one that takes as input the
target clock frequency and the timing ranges and outputs a mode with the
porches adjusted to match the target clock frequency as closely as
possible).

The big advantage is, of course, that device trees become trivial to
write and people don't have to manually stitch together timings to get
to the desired result.

Thierry

--QKdGvSO+nmPlgiQ/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXm2cZAAoJEN0jrNd/PrOh6PUQAJCgwl9GtLu6d67a1jLbAbbU
46Y0rJDVmhfNy7XOqK3d5vQvx/hKJl4o9VXQpg6H2ItH04ZJmkps+9m0RXBOXGU+
F8Ai9fnWBgun9/yvqHtxsmFzOJTrgUtLcqVOD0GLkdBcrC+o/IGY+Sp/BU69ySJb
1vNxgdhOxlW16L3WZQzIVFhIRWWqXa03qbq1hq2X3wKsjtrCXdiM86hqUxp4jn7h
eyBA9m/4FiVOKxAqC/72hJRGleHjfif+5y1lbegw+VrSuceQfXGqh2fEqguvKEmt
Je/6BCjUx3Jd+Gxfam3yIYPr2GBKBA1pOgYbrSaCaPhlqiB8boja94BPOZWFKhgy
m1doSrNvw6jp+d2F5U30n0+RbHyDiroAyfkhFbqFzMIQ20z+LwxqkMR1s/kr5Ro8
dkhHIEKKNejbIKxN1ZUD9KX9vYMJJ4RL85E+H18oGf8VpMVlkw5QpCRZz88n9jIr
qL6KtYkvzDwVlnHlcqsJK6j2bjiUPNFfzvzNaTES7/m6eYNEL7tgLIQmiTMq6AJ+
Xb4wH6K6AmIGnu7XE3XQ23r/S1tcv3qFT/DNKyDI8HF1xBSBWDhNT5Fq1odayCc4
+kq4bmsLT0MAJUp1SQl7JVGk1hG5lJaydvHf5EVCAwiAMCvbpnNR0JG7r2k6G0h1
Z6FLvmwhdg0elSnI0IZa
=N8H1
-----END PGP SIGNATURE-----

--QKdGvSO+nmPlgiQ/--

--===============0287436397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0287436397==--

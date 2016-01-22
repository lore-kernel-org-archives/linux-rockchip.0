From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/9] ASoC: rockchip: i2s: add support for grabbing
 output clock to codec
Date: Fri, 22 Jan 2016 17:18:15 +0000
Message-ID: <20160122171815.GD6588@sirena.org.uk>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com>
 <1452865796-23527-4-git-send-email-wxt@rock-chips.com>
 <20160115174623.GZ6588@sirena.org.uk>
 <CAPz6YkWt-iXS6P4QBBoq3v3i7ZAGGu6=_9AHw4qgevEwDwbdTA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0X5AUaifkWPNnJg2"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAPz6YkWt-iXS6P4QBBoq3v3i7ZAGGu6=_9AHw4qgevEwDwbdTA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sonny Rao <sonnyrao@chromium.org>
Cc: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, leozwang@google.com, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Kees Cook <keescook@google.com>, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org


--0X5AUaifkWPNnJg2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 15, 2016 at 01:48:04PM -0800, Sonny Rao wrote:
> On Fri, Jan 15, 2016 at 9:46 AM, Mark Brown <broonie@kernel.org> wrote:

> > If the I2S block is providing a clock to the CODEC then that's what the
> > software should do so that the CODEC can gate and ungate the clock as
> > required.  This patch has the I2S block using a clock, not providing
> > one.

> From my read of the clock diagram for RK3288  there is a single clock
> signal (labeled "clk_i2s0") that comes out of a fractional divider,
> and it is split such that one path gets sent to the I2S block and the
> second path is sent to a mux after which that signal is sent to an
> external pin that goes to the codec.

> There are separate clock gates for the two paths: one for the I2S
> block and one after that mux before the external pin.

> I'm not sure if it's being modeled that way in the Linux code or not,
> but at least physically I don't think this clock signal actually goes
> through the I2S block before being sent to the codec.

That's not really the issue here, the issue is that it's not the I2S
controller that is consuming the clock so it should not be the I2S
controller driver that ensures that the clock is enabled.  The driver
that manages the clock should be the one that uses it, like I say this
means you should add the code to enable the clock to the CODEC driver if
the CODEC driver needs the clock enabled.

> Does that help clarify?

The problem here isn't a lack of clarity in the situation.

--0X5AUaifkWPNnJg2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWomRWAAoJECTWi3JdVIfQrHoH/0sT/vkxLuO2qCJ7LnZUWuS+
ALnGdYuKSu8661DwWSgJBxjeZMeso+m/mlgiUTI8KxDyRkE2tNj3Q/W29OvoC2PZ
+7B3sgtRxDdkW7kx0QN7kgHMciixZY5ud4g4WnNf5gx61U83fpnzPZ8TV3o2MPR2
B+Luetgno4jykJwnbL/2J/NwOGD2JBnQJweeyli95zfQnGCnyuhjEQdz8mettrYD
i3h4VEJlojluMFlwhnr84+6pgwvMm38ufNmJbd+Ftufl30y6mAx24BCpaz4iy0GS
48g60apIuhpDIHzf+3Io2Fd5CD+N+Ves7DfU0lRPHnueq/eGPNihVOUgghi+xtU=
=9en3
-----END PGP SIGNATURE-----

--0X5AUaifkWPNnJg2--

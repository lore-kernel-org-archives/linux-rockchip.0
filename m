From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/9] ASoC: rockchip: i2s: add support for grabbing
 output clock to codec
Date: Fri, 15 Jan 2016 17:46:23 +0000
Message-ID: <20160115174623.GZ6588@sirena.org.uk>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com>
 <1452865796-23527-4-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0mrGdROycKaeLXMw"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1452865796-23527-4-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, leozwang@google.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com, Sonny Rao <sonnyrao@chromium.org>, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org


--0mrGdROycKaeLXMw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 15, 2016 at 09:49:50PM +0800, Caesar Wang wrote:

> We need to claim the clock which is driving the codec so that when we
> enable clock gating, we continue to clock the codec when needed.
> I make this an optional clock since there might be some applications
> where we don't need it but can still use the I2S block.

> - As the perious discuss on https://patchwork.kernel.org/patch/5427131/,
>   I think Mark likes do it in codec driver, I have to say I agree this
>   patch in here since that's the i2s block output. I don't know if the
>   Mark has changed his mind.

If the I2S block is providing a clock to the CODEC then that's what the
software should do so that the CODEC can gate and ungate the clock as
required.  This patch has the I2S block using a clock, not providing
one.

--0mrGdROycKaeLXMw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWmTBuAAoJECTWi3JdVIfQxzYH/RAMDGJxEqdk+Z7ifUNw/RMW
VX40ruh59hW9RrB3pSu+W2Sb5Yc+AVKaejtsQaj0413Gd62jM4zqfP/oerelX6VL
WV4HQm/s8c6ZsgQSHAo6cQxrIz+y0CggUrNhqMAlKcHKmFPV7WIHwDspxPVk/KxJ
h1hVmOrc07Rj7Y9lbSqWyMSuEkb6Y8ohYqCZ5PITx2bw/mSJl3saQ04g78gxO17I
2/muwHtnBhT4eAyn1Lw0OgBU0kDWqmglMgEx9ahX+cjHgq8R4bKB+G6HccetgYle
cdwTeeg+Sl5A7yXnRgV8yEAcc4EcnV0poCElL/SKz0QdzyxRffyIi3IacKjPJPQ=
=eVRq
-----END PGP SIGNATURE-----

--0mrGdROycKaeLXMw--

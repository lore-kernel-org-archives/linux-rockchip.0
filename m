From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 1/2] ASoC: codec: Inno codec driver for RK3036 SoC
Date: Fri, 6 Nov 2015 10:45:41 +0000
Message-ID: <20151106104541.GC18409@sirena.org.uk>
References: <1446799162-15635-1-git-send-email-zhengsq@rock-chips.com>
 <1446799162-15635-2-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="56p9wBiXEyg+KhLM"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1446799162-15635-2-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shunqian Zheng <zhengsq@rock-chips.com>
Cc: robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, heiko@sntech.de, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, benzh@chromium.org, benchan@google.com, kmixter@google.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--56p9wBiXEyg+KhLM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 06, 2015 at 04:39:21PM +0800, Shunqian Zheng wrote:

> +	SOC_ENUM("Anti-pop", rk3036_codec_antipop_enum),

As discussed this shouldn't be an enum.

--56p9wBiXEyg+KhLM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWPITVAAoJECTWi3JdVIfQ2gEH/3Fmaq1/nVRIFy9NmGbKR9+q
egiPKl/RFQeoXq+A01IQ4Nhw+3ARsDv95DyLjrG29q+VAt4lrX7CeVYB9gPRXcW5
7OcHkCLkQTY/MZ4j/rzgeFXy5XqFq19jXzDy+aYnBlkOK3qrLF81GEuNbYygfNLE
EpLkWbkwYvcbalF2NvV7kq0pf9FdMjlbEoz2xcftXRDRq9LahCJyt/gaRJ2yh2Z+
2eDYBU7q01Sb/y3focPBbm0EPVx32YGRJFhr8kN9AQJmNdtCoYbT1RCvN8FxJxP+
yfug4cN8Gal5xek6JAzEoOm85a0GnjSgrRRzi3wDKYMKfriLvD0HXa3wLEzpx7g=
=33ss
-----END PGP SIGNATURE-----

--56p9wBiXEyg+KhLM--

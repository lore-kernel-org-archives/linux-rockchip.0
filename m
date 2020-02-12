From: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 6/7] ARM: sunxi: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 18:15:55 +0100
Message-ID: <20200212171555.rhglnhhfxljd2ktb@gilmour.lan>
References: <20200212100830.446-1-geert+renesas@glider.be>
 <20200212100830.446-7-geert+renesas@glider.be>
 <158152739647.121156.16877229572128607400@swboyd.mtv.corp.google.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ww2rdwwsu4sgynif"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <158152739647.121156.16877229572128607400@swboyd.mtv.corp.google.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Lubomir Rintel <lkundrak@v3.sk>, Magnus Damm <magnus.damm@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <michal.simek@xilinx.com>, Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--ww2rdwwsu4sgynif
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 12, 2020 at 09:09:56AM -0800, Stephen Boyd wrote:
> Quoting Geert Uytterhoeven (2020-02-12 02:08:29)
> > The Allwinner platform code is not a clock provider, and just needs to
> > call of_clk_init().
> >
> > Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Applied, thanks!
Maxime

--ww2rdwwsu4sgynif
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkQyywAKCRDj7w1vZxhR
xVAyAP44cXhjx/0CW1CFNAKxhdKU4gzpGWXvxPJibw12XvM6WQD/a/OTdlgu8Ofs
1nDzz3yzF/+ciyJSn/Q0Gv9vy5DD3Qs=
=bEj4
-----END PGP SIGNATURE-----

--ww2rdwwsu4sgynif--

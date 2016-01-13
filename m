From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 3/6] rockchip: rk3036: Bind GPIO banks
Date: Wed, 13 Jan 2016 10:28:00 -0500
Message-ID: <20160113152800.GA3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-4-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1695446091=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1452675200-15941-4-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1695446091==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="g//L+7dVdyCocock"
Content-Disposition: inline


--g//L+7dVdyCocock
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:17PM +0800, Jeffy Chen wrote:

> Call dm_scan_fdt_node() in rk3036 pinctrl uclass binding.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Acked-by: Simon Glass <sjg@chromium.org>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--g//L+7dVdyCocock
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlm0AAAoJEIRElH1W1v7NuWUP/jRrGnjqQyE24BCmwuVma+FI
HNw2/5mXp/v5ov6kuG5l1v3D9iOFmXM2G8Xg1Zvu0cHirnLTovbSS0LMeokIvV/U
HzU1LCxlMQ3Oj3vDin9w5ETH02PxXoNgUujjRtzvN9rtfbfxysUPiXiRo+GVoCHA
MYblcHgQkXcIKTw7PO93b7TNZLr4xxYzc3Yh68DcsJmbQexCG5U2Icgs4ph8MyzL
g7wJreoYoRWEIMB5SPQdny0oihBJhFz9Igln7O1juCvpeSTUMbZT1NNggBOjeC5g
b/+M1tNtDcYHbq83mXi6ruS4N9wvHd+g6ZIVX7UgGra4BOVtoEbUJs/HX+zstFtP
zgzmOoQKEegVnUzwuOn7s+ZfOm6w4DVpPxgRiCy2tnTVG5Vr9tWDWjZU4gSuFpFQ
N3NxnPEekr5BEhFuVoJnEP2mLtD/AuoNdFCar+DaRjvpQVWJIEs8lU83yjuAIbFY
PKp0z2ZIIVmHc8T/m4h5aqnyEeyLhuMwX4QVKWXW4Qu3LLW9ZIJDJnZEpubzKSQQ
RqxjwaVqepZK9NerfjQpjxiuW7G0vLiPhDasr+PKhI90ux9447WD1VDyumRV0+6G
HAoElq2TwNUtIfDH/Pql9gHsmAuJPqRUXLo4GUehNSyhx2d8sFCRMYoozg49nOvb
y3AlGbUj85fNsOahSgKO
=v2/g
-----END PGP SIGNATURE-----

--g//L+7dVdyCocock--

--===============1695446091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1695446091==--

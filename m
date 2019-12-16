From: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 02/12] dt-bindings: display: rockchip-lvds: Document PX30
 PHY
Date: Mon, 16 Dec 2019 11:48:16 +0100
Message-ID: <20191216104816.zttjrgck3rdr54ok@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-3-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============5855270811887742891=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191213181051.25983-3-miquel.raynal@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============5855270811887742891==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="inqcuz5g7xh4n5en"
Content-Disposition: inline


--inqcuz5g7xh4n5en
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 13, 2019 at 07:10:41PM +0100, Miquel Raynal wrote:
> PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
> and LVDS. In the case of the LVDS IP, document the possibility to fill
> a PHY handle.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> index aa5663a6fd42..ec7b4341cfd2 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> @@ -19,6 +19,9 @@ Required properties:
>  - rockchip,grf: phandle to the general register files syscon
>  - rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
>
> +- phys: LVDS/DSI DPHY (px30 only)
> +- phy-names: name of the PHY, should be "dphy"

Should or must?

Also, phy-names is optional only for px30

Maxime

--inqcuz5g7xh4n5en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdg8AAKCRDj7w1vZxhR
xel0AP9MqWCTdMxRsTUEkW3yY3dbF1oX5qWpR8bMcDtuj70uRwEA57+6MTtKXQt5
k9opFOaTXgz5rq8ptFWDC/kAy5Z8/Ao=
=SRme
-----END PGP SIGNATURE-----

--inqcuz5g7xh4n5en--


--===============5855270811887742891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5855270811887742891==--

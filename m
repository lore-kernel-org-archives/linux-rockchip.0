Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EDAC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 15:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmmp/r9Qj+UWCEMfwvF1hneg7pPGm0IFGeQK06gUiYI=; b=4Og+n5QXUlQpbRdrUAmSjX/PDO
	o2kz+5+QE++xdGqk41FT8ym48SfGeLVustIOIQpZPvZ43MQFutMVzFdE5x6tdboltg3rravq64ShW
	H6q3KVReMr4zcvQqbnQ06OJPd/1euwir/BDbToNvFc5H79mLuVG8EtW8rj61F6s5NbJa/bwJ90Jh/
	rjMwqGZTAC7HQYPnqVvjyqTInORvHnmSbLCHCoXhTucKgOSVk7srbPvFs7XY0uFrM67VA5Vnm8HUE
	FsoDH6qTfUkywg9nb7URyBpFJZLgKmpHEuMWqcuX6jfJN3ovxrYfQ+XWPF8JjHIt5nvcUDIzdYOnE
	5KmySqEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUZW-00GJio-1p;
	Mon, 31 Jul 2023 15:12:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUZT-00GJhw-0W;
	Mon, 31 Jul 2023 15:12:32 +0000
Received: from mercury (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 94B60660709D;
	Mon, 31 Jul 2023 16:12:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690816346;
	bh=3XhcVaBAyFWjCc129KgVjm+Ns/bjapharaVEYpGJmdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nbPN5Co+R/you8H8WeD81T/ZpCF6pqoj74zF26G53CDHpiuvRN16kiJmypPRDhx3B
	 x3qJIj716Kzl90j8yKx+cznY10CjmgC8nKlMWmCPbPtbWpG9gMmgcO3Tf4y4WTQ73n
	 oS7WItLgDUz1IjJxwoRBTaUsQX5I94rQURdA2dA1KeWKoNnHso7YLTyXWurBMze5a2
	 iIbRloHVjOziiNxVDxcN7bjYAeek8H4/YML6gxN1C9yhQdF1QppcdGb61mgL4+Xw0h
	 9JRLMp/Y5R7KRbM1cRwxxNmwvdPxPZhqhVGEdHN1sAPnvX5em6HLjl5WqB6XGYsJF9
	 1jpH799snTe2Q==
Received: by mercury (Postfix, from userid 1000)
	id 3ABB71061FAC; Mon, 31 Jul 2023 17:12:24 +0200 (CEST)
Date: Mon, 31 Jul 2023 17:12:24 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/3] dt-bindings: usb: add rk3588 compatible to
 rockchip,dwc3
Message-ID: <20230731151224.2vlk7bnabrqhz3pr@mercury.elektranox.org>
References: <20230720173643.69553-1-sebastian.reichel@collabora.com>
 <20230720173643.69553-2-sebastian.reichel@collabora.com>
 <20230722-coleslaw-breeder-40827e23f717@spud>
MIME-Version: 1.0
In-Reply-To: <20230722-coleslaw-breeder-40827e23f717@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_081231_507869_C34C427B 
X-CRM114-Status: GOOD (  27.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8987930851841269347=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8987930851841269347==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m6dzip35wy4zbmme"
Content-Disposition: inline


--m6dzip35wy4zbmme
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jul 22, 2023 at 12:42:09PM +0100, Conor Dooley wrote:
> On Thu, Jul 20, 2023 at 07:36:41PM +0200, Sebastian Reichel wrote:
> > RK3588 has three DWC3 controllers. Two of them are fully functional in
> > host, device and OTG mode including USB2 support. They are connected to
> > dedicated PHYs, that also support USB-C's DisplayPort alternate mode.
> >=20
> > The third controller is connected to one of the combphy's shared
> > with PCIe and SATA. It can only be used in host mode and does not
> > support USB2. Compared to the other controllers this one needs
> > some extra clocks.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> I feel like I say it a bunch for some of these Rockchip bindings
> patches, but if you're adding more clocks for some SoCs, should some
> per-SoC constraints not also be added?

The extra clocks are not actually needed by all the USB3 controllers
in the SoC. Only one of three USB3 controllers needs them. In v1 I
used different compatible values to narrow the clock binding down
and Krzysztof asked to remove that. So please tell me what it should
look like.

Greetings,

-- Sebastian

> > ---
> >  .../devicetree/bindings/usb/rockchip,dwc3.yaml        | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b=
/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > index 291844c8f3e1..cbc3e55e05e1 100644
> > --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > @@ -30,6 +30,7 @@ select:
> >          enum:
> >            - rockchip,rk3328-dwc3
> >            - rockchip,rk3568-dwc3
> > +          - rockchip,rk3588-dwc3
> >    required:
> >      - compatible
> > =20
> > @@ -39,6 +40,7 @@ properties:
> >        - enum:
> >            - rockchip,rk3328-dwc3
> >            - rockchip,rk3568-dwc3
> > +          - rockchip,rk3588-dwc3
> >        - const: snps,dwc3
> > =20
> >    reg:
> > @@ -58,7 +60,9 @@ properties:
> >            Master/Core clock, must to be >=3D 62.5 MHz for SS
> >            operation and >=3D 30MHz for HS operation
> >        - description:
> > -          Controller grf clock
> > +          Controller grf clock OR UTMI clock
> > +      - description:
> > +          PIPE clock
> > =20
> >    clock-names:
> >      minItems: 3
> > @@ -66,7 +70,10 @@ properties:
> >        - const: ref_clk
> >        - const: suspend_clk
> >        - const: bus_clk
> > -      - const: grf_clk
> > +      - enum:
> > +          - grf_clk
> > +          - utmi
> > +      - const: pipe
> > =20
> >    power-domains:
> >      maxItems: 1
> > --=20
> > 2.40.1
> >=20



--m6dzip35wy4zbmme
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmTHz0AACgkQ2O7X88g7
+pqKjg/+OYBPYuk3hSKFWkamZHuGn2rDB7jeHnXzTF7PG/ehiqqifOqn2ro376hZ
Ays6PKMQR+4a+te/CSgLYvH5jc0AB+4v6tA5olENnyRF8XfMaUB6LGPv/HDBWU1v
yhmleCXSeBGcJwpoxsB8UMhhUdzaXlLJ3tRfrtsJJnSOL2Hu8FHif/5RQ8BIoZg/
Q89X9a2zYUlevNHiK63HIjih60/FagN7FvfuPRxz0OpZYewsFIJVfX6SltPuUUNa
p6HuuEcbVzWklTshBax2IKSfT/DHEZAtdcuRaUhZ/7Xiy0BPvOHQQIunh8oKzLde
MquuX8YesnPH/VQzWIElIUOej2RsOMNYE/o/Fw8jRL/j2jQtvUWYHr/dbQy940BW
Pvci2+YO5TQtscLPIAngEqD65VGco9pzbZo9C2cMNXik/LmE+AGomcAFt/Ea4o3l
Cq3UL87xcO/nIuj/wsaNfH0o9CZSbl6tOx4QTgt4EouXDk4kh3prLslOEnhhBGT+
zB4Zbk7ZwH6Q8gWZdo5ED7JiXRsVx6W2NHdFAAkZMq2B/NCKykV/MI2hDDoO6AXC
wd6cGFMCQKrmNO1bWtPBL3jBwwQadZf3M4wtBagB3AsE5UUhc+5JwjZEKWIKfnd3
pRKq0qyv6KC/QaySyXYf1d3094JZL3Ks4rvKAlOHlKuHYesdzWU=
=qk2b
-----END PGP SIGNATURE-----

--m6dzip35wy4zbmme--


--===============8987930851841269347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8987930851841269347==--


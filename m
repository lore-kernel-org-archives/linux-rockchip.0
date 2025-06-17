Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9AF5C7115B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 15:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIwhTP140btppoVqSls8frECD1znpSKapI19dRx0jCY=; b=WkTi5dbkaB72JSDv9uJj9HfxEz
	qyCDI3eaQzgdi4ZNEA4hKPWXlL4/iNSscpul71kJnjYyaRrgSyLJYkDvDPqdG20Sij2A1K0P6F1Eo
	8UHkBGE8e3iiAPGfwiViLqpGL03Z3w5P++xik7WREgyWz1BWRFIqOXszJB8b0QM8saUJhJIyacPsN
	iqljMXD/hubqFA9U69x1FDqom0uFvAYXRGiEqqs27b6ITbrsawAKWOwForDkDL5jAEmBxU9GF9mrw
	ZJks3xwBoIr9bSNaw2hcOAf0zD+oWCYk2zzwiJ9znT+Cs1XRFgR8H1uEIBL0VWrTV9JotNdP+SaHg
	87O8CK4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXu6-00000007hNA-0HJp;
	Tue, 17 Jun 2025 15:07:14 +0000
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRX3Q-00000007VFi-3OFK;
	Tue, 17 Jun 2025 14:12:50 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750169555;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=EU6wYxxis5OVyKQeXPeKsMgd/+hFjCLFtAdHnU0fngg=;
	b=csKXF/NLXzJ1s3RyHE5JxoPiKYUNxWkDu+UfyYwZ3JsUfASSP3vLk3Zsb6mNCI3RBcEF7w
	nhncl6wMcDAQSbqNOE0tAH/CrmjlrlE7J4robyP6OJajpgPPGjnpG7F2T26uMfR39Pd5/Z
	Rpk/XjD5wJHpJIS9avPxV1sIPR9SubcSzccGWeKvOFGRzskyqBy0ua51kmVZrB3yRzKkqO
	XTsBvHplABC7+GGbHWrBsSc3wuHflwWEFnZBciaKvapVA5QJ64cSs4UCqloJ8Bm9BYTxJI
	9iDDoRMPsupSFLiXbWzNPHvvU3PvaelbsXcGJ6i+5Xh6hJtuD9PjKxrMA/8xUQ==
Date: Tue, 17 Jun 2025 16:12:23 +0200
Message-Id: <DAOVBOKLXLS2.S9MXDD29X68J@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 2/5] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3588 variant
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: <michael.riesch@collabora.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Jagan Teki" <jagan@amarulasolutions.com>,
 "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Collabora Kernel
 Team" <kernel@collabora.com>
References: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
 <20250616-rk3588-csi-dphy-v1-2-84eb3b2a736c@collabora.com>
In-Reply-To: <20250616-rk3588-csi-dphy-v1-2-84eb3b2a736c@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_071249_118659_17F007B4 
X-CRM114-Status: GOOD (  16.82  )
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
Content-Type: multipart/mixed; boundary="===============5008161320118657706=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5008161320118657706==
Content-Type: multipart/signed;
 boundary=cdab7635ac7d132188f79799f8586cac554d0abe4ed63d598f1e12607abe;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--cdab7635ac7d132188f79799f8586cac554d0abe4ed63d598f1e12607abe
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

I'm (unfortunately) not seeing any @rock-chips.com recipients ...

On Tue Jun 17, 2025 at 10:54 AM CEST, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
>
> The Rockchip RK3588 variant of the CSI-2 DPHY features two reset lines.
> Add the variant and allow for the additional reset.
>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../bindings/phy/rockchip-inno-csi-dphy.yaml       | 60 ++++++++++++++++=
++++--
>  1 file changed, 55 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy=
.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 5ac994b3c0aa..6755738b13ee 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -21,6 +21,7 @@ properties:
>        - rockchip,rk3326-csi-dphy
>        - rockchip,rk3368-csi-dphy
>        - rockchip,rk3568-csi-dphy
> +      - rockchip,rk3588-csi-dphy
> =20
>    reg:
>      maxItems: 1
> @@ -39,18 +40,49 @@ properties:
>      maxItems: 1
> =20
>    resets:
> -    items:
> -      - description: exclusive PHY reset line
> +    minItems: 1
> +    maxItems: 2
> =20
>    reset-names:
> -    items:
> -      - const: apb
> +    minItems: 1
> +    maxItems: 2
> =20
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Some additional phy settings are access through GRF regs.
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-csi-dphy
> +              - rockchip,rk1808-csi-dphy
> +              - rockchip,rk3326-csi-dphy
> +              - rockchip,rk3368-csi-dphy
> +              - rockchip,rk3568-csi-dphy
> +    then:
> +      properties:
> +        resets:
> +          items:
> +            - description: exclusive PHY reset line
> +
> +        reset-names:
> +          items:
> +            - const: apb
> +
> +      required:
> +        - reset-names
> +    else:
> +      properties:
> +        resets:
> +          minItems: 2
> +
> +        reset-names:
> +          minItems: 2
> +
>  required:
>    - compatible
>    - reg
> @@ -59,7 +91,6 @@ required:
>    - '#phy-cells'
>    - power-domains
>    - resets
> -  - reset-names
>    - rockchip,grf
> =20
>  additionalProperties: false
> @@ -78,3 +109,22 @@ examples:
>          reset-names =3D "apb";
>          rockchip,grf =3D <&grf>;
>      };
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        csi_dphy0: phy@fedc0000 {
> +            compatible =3D "rockchip,rk3588-csi-dphy";
> +            reg =3D <0x0 0xfedc0000 0x0 0x8000>;
> +            clocks =3D <&cru PCLK_CSIPHY0>;
> +            clock-names =3D "pclk";
> +            #phy-cells =3D <0>;
> +            resets =3D <&cru SRST_CSIPHY0>, <&cru SRST_P_CSIPHY0>;
> +            rockchip,grf =3D <&csidphy0_grf>;
> +            status =3D "disabled";
> +        };
> +    };

... which could hopefully tell us what the value is/should be for the
*required* 'power-domains' property, which is missing in this example.
IOW: the binding example is invalid according to its own binding.
(btw: you can drop the 'csi_dphy0' label)

And hopefully also for rk3568 so we can add it to rk356x-base.dtsi and
you can add it in patch 5 where it's also missing.

Grepping for "csi-dphy" in arch/arm*/boot/dts/rockchip returns:
- px30.dtsi
- rk356x-base.dtsi

With this patch set applied, we'd have a 3rd result: rk3588-base.dtsi

For all the listed compatibles, it's only actually defined in px30.dtsi.

Cheers (and sorry),
  Diederik

--cdab7635ac7d132188f79799f8586cac554d0abe4ed63d598f1e12607abe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFF3zAAKCRDXblvOeH7b
bhpEAPwJIALkzS4QIOY/nXMwYzCnZR2In2099ChPU4fsvOLbagEAnx8/aQHAXAqa
LU1To43ksWlQApoJuHYhWu28pXyU/wo=
=w/02
-----END PGP SIGNATURE-----

--cdab7635ac7d132188f79799f8586cac554d0abe4ed63d598f1e12607abe--


--===============5008161320118657706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5008161320118657706==--


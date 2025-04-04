Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41155C36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 19:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xWcomwjoxlDj7vamY1Dk9YE8UmX70mwMvzM7J5tqeJI=; b=lZ/1O0ISERP7Bo6l18cE0k1lq+
	hAxV4BjvNA53mQOwASDaBDLV9yiI7XK1X9NtdDOPiykkJIymNBlUi6rcIvrEAPmwfKeDk/dayPelS
	eAR0pM2U4jJDby6CdM3x2t1iVVFoL8WjwnHpncMLezDjqLc2smXknYkRVIFFDuX9a9zvBliyJdB8I
	KX5TfWfXi2zbrOUoWVXdgrMipCYTzQtuHUDhiVmfLkizLaVUl8RoC3+9souPU+foZmloK+k7T97Tl
	+6l+B6XVZG6XgxwaTnGGyHChmEpZK76tlR1kuojBnUYFPNr5AbcdIwwI0Z7A10YviAjQPuuhpFA/E
	dtily/1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0mqr-0000000Ce9h-22p0;
	Fri, 04 Apr 2025 19:37:17 +0000
Received: from out-189.mta1.migadu.com ([2001:41d0:203:375::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0mqn-0000000Ce7k-3eFx
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 19:37:16 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1743795430;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=j5iIDPsMyXuzJK77wAJ/JXOO40jyIXq/LxkNUBl62XQ=;
	b=DQXOMEElFWKrqzc82mZ22U473YVAh7jYVz30PuKpuDL7ShqgdxTy23hx+dHmzeji0rxpqu
	aMHDmf+1Gfg336iJLkjDx2PPPwPr7Qr0rhYThNk4b/UyCCXDLDx047eJDNsTSpawOLZlP/
	FWj2tWol/jaD1Q3lh/y5Ff7w4LId2FIeXgC8UayYsJIDdBIN90bRvk/E6ZWHbgaKbgMXdD
	CEfS7wmw0TRJ80J80ZOOWHRVFLrwBuvbe9rGwAqU344CLe6jq90KOZtF3QVr6KnJG+ORCq
	D7K6TYOblr5rnCLYQyTxejqUpQmTe8bj6iBcQrgGg86b7V8tgGBh8YZe7ByPYw==
Date: Fri, 04 Apr 2025 21:36:58 +0200
Message-Id: <D8Y3VW5489RZ.3IXJX79M1ZK8O@cknow.org>
Cc: <neil.armstrong@linaro.org>, <sebastian.reichel@collabora.com>,
 <stephen@radxa.com>, <dri-devel@lists.freedesktop.org>,
 <hjc@rock-chips.com>, <mripard@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <yubing.zhang@rock-chips.com>, <naoki@radxa.com>,
 <Laurent.pinchart@ideasonboard.com>, "Andy Yan" <andy.yan@rock-chips.com>,
 <krzk+dt@kernel.org>, <robh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: display: rockchip: Add schema for
 RK3588 DPTX Controller
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Andy Yan" <andyshrk@163.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <heiko@sntech.de>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-2-andyshrk@163.com>
In-Reply-To: <20250403033748.245007-2-andyshrk@163.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_123714_524763_76CE2C42 
X-CRM114-Status: GOOD (  15.09  )
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
Content-Type: multipart/mixed; boundary="===============3110453167164897867=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3110453167164897867==
Content-Type: multipart/signed;
 boundary=1d0b1c9b765b5909805ad66ccb19fe973b8f7f377113664bb82b4c67afb6;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--1d0b1c9b765b5909805ad66ccb19fe973b8f7f377113664bb82b4c67afb6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Apr 3, 2025 at 5:37 AM CEST, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>
> The Rockchip RK3588 SoC integrates the Synopsys DesignWare DPTX
> controller. And this DPTX controller need share a USBDP PHY with
> the USB 3.0 OTG controller during operation.
>
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>
> ---
>
> (no changes since v2)
>
> Changes in v2:
> - Link to V1: https://lore.kernel.org/linux-rockchip/20250223113036.74252=
-1-andyshrk@163.com/
> - Fix a character encoding issue
>
>  .../display/rockchip/rockchip,dw-dp.yaml      | 150 ++++++++++++++++++
>  1 file changed, 150 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/ro=
ckchip,dw-dp.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw=
-dp.yaml
> new file mode 100644
> index 0000000000000..a8a0087179972
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.y=
aml
> @@ -0,0 +1,150 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DW DisplayPort Transmitter
> +
> +maintainers:
> +  - Andy Yan <andy.yan@rock-chips.com>
> +
> +description: |
> +  The Rockchip RK3588 SoC integrates the Synopsys DesignWare DPTX contro=
ller
> +  which is compliant with the DisplayPort Specification Version 1.4 with=
 the
> +  following features:
> +
> +  * DisplayPort 1.4a
> +  * Main Link: 1/2/4 lanes
> +  * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> +  * AUX channel 1Mbps
> +  * Single Stream Transport(SST)
> +  * Multistream Transport (MST)
> +  * Type-C support (alternate mode)
> +  * HDCP 2.2, HDCP 1.3
> +  * Supports up to 8/10 bits per color component
> +  * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> +  * Pixel clock up to 594MHz
> +  * I2S, SPDIF audio interface
> +
> +allOf:
> +  - $ref: /schemas/sound/dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-dp
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Peripheral/APB bus clock
> +      - description: DisplayPort AUX clock
> +      - description: HDCP clock
> +      - description: I2S interface clock
> +      - description: SPDIF interfce clock

s/interfce/interface/

Cheers,
  Diederik

> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: aux
> +      - const: hdcp
> +      - const: i2s
> +      - const: spdif

--1d0b1c9b765b5909805ad66ccb19fe973b8f7f377113664bb82b4c67afb6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ/A03gAKCRDXblvOeH7b
bpJBAQDvx5djc7YfaKYs4IcJeoXUVMwHtmKxjI+9dTI+U5l82wD/TCM5+lKSSL8X
Ub8SCGu2YvEfoUy58ySWw+QHY8eQfwE=
=IJxa
-----END PGP SIGNATURE-----

--1d0b1c9b765b5909805ad66ccb19fe973b8f7f377113664bb82b4c67afb6--


--===============3110453167164897867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3110453167164897867==--


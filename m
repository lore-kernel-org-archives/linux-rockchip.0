Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A293C27C5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 13:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T2z14Vk3nyFVI0aPBuwVax3wuqQ7Dza8TiJitIQdwWo=; b=sp+o6mhlTOPaTrB9s4H+uOvFUE
	wNBxXmR2NFOrxnQci8m16BRr95sT8pFE0mrw8gJi2OQYeelbgM5/9EOIBbSRonL2u6IBYS8fhrJCl
	s49R42AzxGuhDCDaeqHiuSRkD3TE3CXn3zKRlf8ikDyomAQ+zVsH6Wmf0qJihec+w68aSc961HnD8
	a6I2uckPTmCLxcfBSJdcXJ9AHzmdJ0AGin4cnFUXbY+MWRGNpWI43XPXTKLbmdPFDtZxD69TKrevE
	4FatdAj66Lem/ONd3DWP3aaK6j4+MTbYnzagFv3VFdKvd6j3bF/t+ToP+AskL/scyQDXz/xkD6hHA
	Z778o8kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1c4-0000000900t-2kF7;
	Tue, 11 Jun 2024 13:32:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1bl-00000008ztU-38OI;
	Tue, 11 Jun 2024 13:32:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 62119CE1BF6;
	Tue, 11 Jun 2024 13:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C01EBC3277B;
	Tue, 11 Jun 2024 13:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718112730;
	bh=auRaKNvx/voptdJZcs/+I0St7hUhKeq7sqbXPrw3k+k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=kl9sam2q7uiL9cUx3MZrd3xsXoGNAWm4cbdIgnouxMWA1VPjQk40fod8xAdky4YW6
	 fP2y60Pqlt8sXeJPIhzRzU6jC0UT+hzDN1zwPDBjYzsQuFNA1c+bygoWZS2g0174RD
	 c9/JXHe+B2hBx8t9LIGLkJDQciINgo0m7HKxqCahFI/9d/lKgVDpP/9JawV8YsjMjd
	 pNtoHFESJX65H1RFPYKz8o/CX8Zr0JJDa/1bNuaigoHkMv11BMPB1dpDYToeefCl53
	 nPgSq4VePPPF5uGMJAbdhGrRnJaxwYLTM2mrZkDKiCcc5TpGOuiFLO27sSVdwJyr38
	 vDeHnitwe0jEw==
Date: Tue, 11 Jun 2024 07:32:08 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peter Rosin <peda@axentia.se>
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-2-08d26a28e001@cherry.de>
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
 <20240611-dev-mule-i2c-mux-v3-2-08d26a28e001@cherry.de>
Message-Id: <171811272875.1782775.2673232019553624734.robh@kernel.org>
Subject: Re: [PATCH v3 2/7] dt-bindings: i2c: mux: mule: add dt-bindings
 for mule i2c multiplexer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_063218_895981_1859F46E 
X-CRM114-Status: GOOD (  13.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 11 Jun 2024 13:43:53 +0200, Farouk Bouabid wrote:
> Mule is an MCU that emulates a set of I2C devices which are reachable
> through an I2C-mux.
> 
> The emulated devices share a single I2C address with the mux itself
> where the requested register is what determines which logic is executed
> (mux logic or device logic).
> 
> Add support for the Mule I2C multiplexer bindings.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.example.dtb: fan@18: '#cooling-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240611-dev-mule-i2c-mux-v3-2-08d26a28e001@cherry.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

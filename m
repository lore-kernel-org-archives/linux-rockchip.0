Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B9DC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 20:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oPj2VI2k7eWfkKqGhoHT7bzC0DgBTu8VjguAaK974Bw=; b=AVcPLUmmP6SRbVrbmTE7M1kGz6
	+xXjGsDv2jcDFnz+hP0bXabA82o9SmKXtuiwzd2LUF/AApQtmA3Nyb6lCFM2G9uam2lLY4TCNXZnn
	fa6gc3BLHvSzv3HVm98LC9vsFb8U0Ch596sSCN4H2sJhvpnB7jd0wiAmjt0EmMSWrCb12mjPcuILI
	J+DqOMVOlceyijS0fkoh4f+ekoo8ZXa6fUX0QLQlZSnTxE+IiyVX27zEjASsE/W1dIlxO/OrDLsWt
	Uaz8USuWJ/Xh1D/DdbfpbsHCLKwfPI3l56PZ/WxIRDFibtJ1WN8mEyCkqb7uI1tm0/yRlfeiIvQcd
	R5PXOY4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44uw-00000008fRt-0wtJ;
	Mon, 06 May 2024 20:26:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44us-00000008fQf-3IzN;
	Mon, 06 May 2024 20:26:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2E79361458;
	Mon,  6 May 2024 20:26:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 283A0C3277B;
	Mon,  6 May 2024 20:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715027188;
	bh=iPhiz4umi131UrJgZazOVWc0VpO7pipi62CDJOV7Yw8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Gdj/Wm9QSyDgIvZiTnoVOcOHQ9lleZ85g29zVSHjM5G4ljViI+X+FR6lufsyFFMTV
	 bN1DONDwwVGV16KbCCOtZ5rSJEljzFsnhVnhxGr7K+sJLzFMs0OEO3ZyPGwTAHCbfZ
	 tj/TTcTOin3mlG0Si64jz1yzDkZmOVSn3Rr1id6+q7ywRm7+Z60+/qS6ra5LqT+Sjg
	 rMWXIC1UWKpYhRsGLOA1dQ4M64+3c8/wbG4HiU3rBx3x3wx5XUZXdglE1CJLQYGDRv
	 UuyWXeNEgOPz/Umw8AXqe/lDfoOx/cFDtA2Ft4vRcDndY41v3/oDo1GXkJqW8ag4OM
	 IgStE22x8bUVg==
Date: Mon, 06 May 2024 15:26:24 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Peter Rosin <peda@axentia.se>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20240506-dev-mule-i2c-mux-v2-2-a91c954f65d7@cherry.de>
References: <20240506-dev-mule-i2c-mux-v2-0-a91c954f65d7@cherry.de>
 <20240506-dev-mule-i2c-mux-v2-2-a91c954f65d7@cherry.de>
Message-Id: <171502718333.3555.5534178605435468851.robh@kernel.org>
Subject: Re: [PATCH v2 2/7] dt-bindings: i2c: mux: mule: add dt-bindings
 for mule i2c multiplexer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_132631_009572_790AAAA3 
X-CRM114-Status: GOOD (  13.15  )
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


On Mon, 06 May 2024 13:37:53 +0200, Farouk Bouabid wrote:
> Mule is an MCU that emulates a set of i2c devices which are reachable
> through an i2c-mux.
> 
> The emulated devices share a single i2c address with the mux core itself
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240506-dev-mule-i2c-mux-v2-2-a91c954f65d7@cherry.de

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

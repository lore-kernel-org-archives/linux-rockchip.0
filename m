Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B22C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 23:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4yI54w9d8eS4D7S15ms1jHLPpIuhXS2Qwv2xRYbEdk=; b=JXGqXy4sHB3oI3
	jbjgp16jVpSrXbN2Y6qX9qD1x3usJbGa8pJpJ9oFUdncUp5JO9oJjjOGfFueLYfW16CLX2Ev1BVj/
	QM4aSKHeZZmfLnmB0drPdbErZ6BVxVL1NGYZ5IWUP2QkjdCRO9NRb6OWUlGkf9BH++LGyfT8DaXFe
	t5OKW5/MrrZoj90blUGVH0OrpTNiWgNPX2rORviTe9JSmchXi3BZmUx8vcqvVKg9AOIWG8SbMWPnr
	2b33pjRRnx9f8X4Z3UOLSpHJ7fDsoPUSp+jSCk3DrFKR0/Dkjki0fERj6OqB1gT1nq0yR6oD4NN2j
	P4wytw7xWXa2jrlrB+yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFjHK-00Ff2c-2g;
	Tue, 19 Dec 2023 23:13:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFjHH-00Ff1y-0j;
	Tue, 19 Dec 2023 23:13:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 180C0614B1;
	Tue, 19 Dec 2023 23:13:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AAEEC433C7;
	Tue, 19 Dec 2023 23:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703027608;
	bh=yXicCXSWH5EUUBda6scEiKgMhU/r4oYSFT679x7VNPY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aHRhp2O4EdVLAoyV/ApY8QUYV5FPZkfNj2W4CU8A0ZKgSuP3F0xx+X6Gtd5fNm/Fc
	 c27q85gkNqomuj+Szm2j9c2ih2je6nDr+xSn11zjz2FJYDin/T+silexxeUSeVBSJ1
	 yRQdFs+rDg3KOC2UKjA25Rd6nutGVeUU1om/S7IvrSanpQBR8YqDcW4WIumQYCmf9W
	 7V3zr8mHxnU0Ibm5h8VmZoXPpvgzWWZV2P2toDFyIcJT07lJmMsd4H5HfgSHc5ZfwI
	 LcKzA++q14dUNHQVn0gJe1xPBghZv5yBd8fxIGewwvxjdznfOC4t5Jf7zw5ZZyCeji
	 Zaj7ejGEyUbkQ==
Received: (nullmailer pid 2025101 invoked by uid 1000);
	Tue, 19 Dec 2023 23:13:26 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-rockchip@lists.infradead.org, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20231219-rk3308-audio-codec-v2-2-c70d06021946@bootlin.com>
References: <20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com>
 <20231219-rk3308-audio-codec-v2-2-c70d06021946@bootlin.com>
Message-Id: <170302760623.2025074.2958729782154314139.robh@kernel.org>
Subject: Re: [PATCH v2 2/6] ASoC: dt-bindings: Add Rockchip RK3308 internal
 audio codec
Date: Tue, 19 Dec 2023 17:13:26 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_151331_372723_94E340ED 
X-CRM114-Status: GOOD (  15.53  )
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


On Tue, 19 Dec 2023 15:54:17 +0100, Luca Ceresoli wrote:
> Add device tree bindings document for the internal audio codec of the
> Rockchip RK3308 SoC.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> ---
> 
> Changed in v2:
>  - reword commit title
>  - add maxItems to resets
>  - remove quotes from reset-names
>  - use percent values for rockchip,micbias-avdd-multiplier
>  - use name compliant to the docs in the example
> ---
>  .../bindings/sound/rockchip,rk3308-codec.yaml      | 98 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 103 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.example.dts:20.20-21 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1424: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231219-rk3308-audio-codec-v2-2-c70d06021946@bootlin.com

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

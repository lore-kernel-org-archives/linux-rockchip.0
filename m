Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE719CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 10:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Zh7GuTWrNay+CW/CcUTY8lHqMgwGeWUumyXd+ODusg=; b=uPxHxDI0s/UaU/tgCm/cZ3psVf
	cjKxJHjoynYKr+fZqvHFZjFlTIKAbkbuT1lc7d+cGXDl3T/q1tRtSoroAyTHTZ2WxtxUOOoBkEYLW
	sMNPSqS9g5L8YOTGi9/PP2iE/PGHeNuLt3U2p0jsz7YRUCme8PgSU/+l/dQbaoUNcmL8QTmnmruXl
	B8rvGBIDbGi7f+60ZwCTn2QXx0J63ESeW2MLIy9yMBiTHN6hKoRP7Tx/Y6wCxujJczifoT8TNdowN
	1mYTqiEKi7wT8QFVdN12ZU0xcXI2IdEzlMRedzEzhDd97APHQsvbCrAQFn3dDKm5FdsvpaASd/aC0
	385nnksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yuW-00000001Ir8-1tk7;
	Wed, 15 Oct 2025 10:39:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yuU-00000001Iqu-3x3Z;
	Wed, 15 Oct 2025 10:39:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 46C9463C73;
	Wed, 15 Oct 2025 10:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D136AC4CEF8;
	Wed, 15 Oct 2025 10:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760524750;
	bh=fkV88xzNOBxhiJYAzo+vp0/1S65ulX6h08+Utw4UAHY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=r1kbWUUTOfxyTdTPwOXpt39Rpr8e7g1k8pMwRkH/8bBKDHa484BEmKPOB9VengnP3
	 NeS4SFddmrPG/QoJT+QgM7+3MeA+MkssTYBKum/xlh86P4T8kPaFkvqLu57S5BrA7/
	 TNNcd6rXOIPuj6tvTXizxjjtkmH6XNyA3PtSBfp66sQkcY+WowJMWwA2Z2AAwnqu7q
	 ZKqsKyLrj+tG/Vni9KON3tR0GmyvuAp7PPn7lFRhEkqDTlMNxSq7noeisouuPY1CVJ
	 jIAXSEDUUM8Pta6qec8WdaUs5TZIOs/jzhoK7itDGZqd0f6WxHJxTiYAu7X05u/pRz
	 pfEloxPhWVd6A==
Date: Wed, 15 Oct 2025 05:39:08 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: huangtao@rock-chips.com, mturquette@baylibre.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, 
 sboyd@kernel.org, linux-rockchip@lists.infradead.org, 
 sugar.zhang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
In-Reply-To: <20251015091325.71333-5-zhangqing@rock-chips.com>
References: <20251015091325.71333-1-zhangqing@rock-chips.com>
 <20251015091325.71333-5-zhangqing@rock-chips.com>
Message-Id: <176052474812.2747948.16094630687510808403.robh@kernel.org>
Subject: Re: [PATCH v1 4/5] dt-bindings: clock: Add support for rockchip
 pvtpll
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


On Wed, 15 Oct 2025 17:13:24 +0800, Elaine Zhang wrote:
> Add pvtpll documentation for rockchip.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/clock/rockchip,clk-pvtpll.yaml   | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,clk-pvtpll.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Lexical error: Documentation/devicetree/bindings/clock/rockchip,clk-pvtpll.example.dts:21.26-32 Unexpected 'ARMCLK'
Lexical error: Documentation/devicetree/bindings/clock/rockchip,clk-pvtpll.example.dts:117.26-35 Unexpected 'ACLK_RKNN'
FATAL ERROR: Syntax error parsing input tree
make[2]: *** [scripts/Makefile.dtbs:132: Documentation/devicetree/bindings/clock/rockchip,clk-pvtpll.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1525: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251015091325.71333-5-zhangqing@rock-chips.com

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

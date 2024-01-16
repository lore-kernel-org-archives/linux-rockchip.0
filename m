Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E20C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 11:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GJVmxdEKiERhem72oIhnF0p2SPrVZQJc893Uec73oBQ=; b=vPcFuUpOQKkDjOXE0LcLoNlii4
	sm6wTV9ERDPJpbdKmrSbiga/odXBAuXtzhzAUf0oEeW4GYVzadL4O9d4NgzSIlNIZ7/zkIxFb+wwv
	swSEToUsbQwSE8qjK3O0sZDXVJjL1FltfujLoi8Klsttnc5djh+Ltm+QYmytBKuSVHzRJlNK57T6I
	QytWPf2O2P89vJ5EZnZR1DmqNwoq9f/m4GDoCmBDS0GHhS249WIJnZr8aLnoCKvKBMtlPAZOd3EnD
	zDOgFkkTvSid+jUZeLwSS+zyUx+8/kx1zpn4QKspDuLcHnDv0Ml0sjBbtb3uvSu+OILXY71VtOnpR
	3FLEq2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhJR-00BkyE-02;
	Tue, 16 Jan 2024 11:08:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhJM-00Bkv7-01;
	Tue, 16 Jan 2024 11:08:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 62F47B80DDD;
	Tue, 16 Jan 2024 11:08:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F047C43390;
	Tue, 16 Jan 2024 11:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705403329;
	bh=UBxcbAnXiks5IiAwgVqn56UX+EH62CTPUKLNeWoIi7w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=VQUkAm9A2QilJX7x2yVaKl/d9/RSzntd55pS7Xev/oZ17pR4WvPvX3Y+E47jGx8Xr
	 eBO/wp4+0fsP5LgE2NV0bvlck439YvZTva/CZUQOH08csOTb7M0uGefH7ocNUZHkrP
	 VaVFADSpZAqGD9dkz8gMFLlulmrTkDNH9c/6w67Z1T6bFmmOIjiokSIrk645mLtLIh
	 h7mPj5rVy1g+/VqE5XzrT2FUzsTp/4pzdTQ9m7UI4qb/D/HONMuAbNpHCUuQRC+Yy3
	 s6n39AFDMwazRYSaDygMtstg8GkAfEDBYFi5cmecdWEBwz4MXgjvbkQgRAcThdPG/F
	 mZdeCJHTKGscA==
Date: Tue, 16 Jan 2024 05:08:48 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Qing <zhangqing@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 devicetree@vger.kernel.org
In-Reply-To: <20240116084618.3112410-4-tim@feathertop.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-4-tim@feathertop.org>
Message-Id: <170540332496.3326672.17840639764491593170.robh@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: rockchip: Update rk809 example with
 audio codec properties
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_030852_218615_A00BED3F 
X-CRM114-Status: GOOD (  12.45  )
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


On Tue, 16 Jan 2024 19:46:18 +1100, Tim Lunn wrote:
> Update the example provided to include the properties for using
> rk817 audio codec.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/mfd/rockchip,rk809.example.dts:39.32-33 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/mfd/rockchip,rk809.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1424: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240116084618.3112410-4-tim@feathertop.org

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

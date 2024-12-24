Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E8FE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 13:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qSi6FD1IFTqTa+TXuwHHNqTlYbW5k1EJoA5l6BxCwG8=; b=0UKN4m/NMY6SNwpoT+MlJiwBLm
	ypfB6OTkhTJEce6PGKOqgAlktCqhczcsj//RNkm1B8HZ6QqwSQIFb/5Zi8sjH4tQ+qIMHaK/Jmg7c
	QIMcx32RBedkvVK3laaPc8fPZOsZoogt+p4NzmoWZHqhimgUnbWoSdbW+Xk4CKWd9YghPu2CqAI7e
	R3AeFCdWpgGHTDTnR7w5xDz67Y8X3d8FgTf9PMObHhzoG+4oRSz6RMrlMNYdGt/RE4ycHRyLjsN7p
	NMQJA60Z4CTBDY1zW50aEk7OCmORGBy+TVZJ8TO05eqGlMMevJkyvxiJKEoBQvzH24PvnN3aqmEs7
	lMQdZ8uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5ML-0000000C5QZ-1HJ0;
	Tue, 24 Dec 2024 13:54:05 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5MH-0000000C5Q6-433w
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 13:54:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A210AA41570;
	Tue, 24 Dec 2024 13:52:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F3E5C4CED0;
	Tue, 24 Dec 2024 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735048440;
	bh=BDmqn2yg0LljaDjaUOqEaPKMjrMz9JxF1qpU4+qpxvA=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=J8Spp0aFx420ef5Z5lKvAmfRAJeUW5yi09ehDwgO8ioa/7blWWlPmWmGjjeRdU5IO
	 ZtSaU03NOM3h82UDM6nD0aA1H1CRvg7UjxfXxGjaXesmU/V+JqbqMOdsmQmXAHze2w
	 ygBX+rHondbbLjWqSW23I0mJPKXhZmB3L+nWSQJUTZkWFKvgdBtWZ4Ff9HtcmUO99L
	 aLlm27G0fIGQJJL67NscCvk1f49fTTqWZvHfghjE7zlFvXX0em4aPErrjUeM2tof46
	 Bno85QYJEy69mVZhkloBZcJbxyOXF9cigOlTFDOvuFa+RqRegHH3nDMle9afTZpiZh
	 ZEngmtsuGeJHA==
Date: Tue, 24 Dec 2024 07:53:58 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, heiko@sntech.de, 
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, linux-rockchip@lists.infradead.org, 
 Jisheng Zhang <jszhang@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20241224094920.3821861-3-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-3-kever.yang@rock-chips.com>
Message-Id: <173504843871.166750.7360390752630982498.robh@kernel.org>
Subject: Re: [PATCH v2 02/17] dt-bindings: mmc: Add support for rk3562 eMMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_055402_076103_5F715503 
X-CRM114-Status: GOOD (  11.92  )
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


On Tue, 24 Dec 2024 17:49:05 +0800, Kever Yang wrote:
> rk3562 is using the same controller as rk3588.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml      | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.example.dtb: mmc@fe310000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3568-dwcmshc'] is too short
	'rockchip,rk3568-dwcmshc' is not one of ['snps,dwcmshc-sdhci', 'sophgo,cv1800b-dwcmshc', 'sophgo,sg2002-dwcmshc', 'sophgo,sg2042-dwcmshc', 'thead,th1520-dwcmshc']
	'rockchip,rk3568-dwcmshc' is not one of ['rockchip,rk3562-dwcmshc', 'rockchip,rk3576-dwcmshc']
	from schema $id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.example.dtb: mmc@fe310000: Unevaluated properties are not allowed ('compatible' was unexpected)
	from schema $id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241224094920.3821861-3-kever.yang@rock-chips.com

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

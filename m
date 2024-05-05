Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23893C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 14:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nzzcrOeNLh+rraEEBO+MBaQNmRjSJnVXSSBVlS1vS9w=; b=AgM5AMF6d84JDSXbFLPwxXSCbd
	spTBpRVo95T7GrilxNhTUTCuwB3xGBlXLcyu0Z263oZGObsVhey1xOFvIaelzfA54AEUsIe/opDb7
	uT2pwUUVjhrbSQb4JnLbbSA/fHvmW+YjH0sQZefNui6NtJfDrDTU9UUNpti2B9jmgN7Meu7KPIszF
	iCEirjyvsvd/xJ/mLDhEuGVShl1tM/Z4MPZY4f9pR5gdrAQIf0Vw5CfOyBfHeFSAl0ydJtwPUw3dA
	unTgNSVtv9pUfP9A4TtpEqaCAsTbwXAVeT3hzMJ53bDDf4UMKDb4t46FF+fiO8IA3tVvNVvh37YEf
	Jg2wXKig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3ckD-00000004RCu-3bRK;
	Sun, 05 May 2024 14:21:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3ck9-00000004RB5-3znK;
	Sun, 05 May 2024 14:21:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DE86BCE08CB;
	Sun,  5 May 2024 14:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44082C113CC;
	Sun,  5 May 2024 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714918887;
	bh=vcX2OvZvu6X9DYQ6XWaLEsIDPp42KwZN4oit/W4BZU4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=WAamZeO2xqGI0kJ0UF5QCCiw4nVDRIssQZhnnNTJZVz5NxfLYeNBP5LTQ9EGYIZtd
	 IoHP5nNydCGIuoCvqt9ITRaFwI/WMrfKNpqKQVFNkPBYUCIjWvN/yoMlvFYqx7JUGW
	 HpuEc8f4XzHUb2AWg1QfbhVuvNgvam/tDCJZBDSsy1r3XGNjcZRXVG3qr+hTPtzyE8
	 zJqf6yLd5KBUoqheixL3Yhu+kDbj+g5ZMsdbsExbptuZVByq2TTdc77zCHlNTofAQ5
	 PXEkWVesDKM5HwMNytCfZPGuB+hWfzDOyWsQLHNHyx6o9MoQ4l7RWHozBN62GkLM2W
	 8UZok0eh2ZHiw==
Date: Sun, 05 May 2024 09:21:26 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, 
 Zhang Qing <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 Chris Zhong <zyw@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 devicetree@vger.kernel.org
In-Reply-To: <20240505134120.2828885-3-jonas@kwiboo.se>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
Message-Id: <171491888618.1725063.9283518594556057694.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec
 properties
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_072134_197881_4E254F7B 
X-CRM114-Status: GOOD (  10.72  )
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


On Sun, 05 May 2024 13:41:12 +0000, Jonas Karlman wrote:
> Similar to RK817 the RK809 also integrates a complete audio system.
> 
> Add audio codec properties to binding to reflect this.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  .../bindings/mfd/rockchip,rk809.yaml          | 34 ++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/rockchip,rk809.example.dtb: pmic@1b: 'codec' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk808.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240505134120.2828885-3-jonas@kwiboo.se

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

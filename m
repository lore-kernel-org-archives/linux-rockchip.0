Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04AA9C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xZDq8iL1/4/8WysKu1Y9K6HzMc7yQElF0MJhhp5ujfs=; b=LuRN5lRK627efJXOiG3ZTCcAJC
	cwiv5ncdDcphlcFu4MbN4nL3fr3onQiZNDls7PJKLK5+2i7oYvn/xWJrnbgmwJBQjfgB2bFpIxTKv
	cR/o6XP9JOm4WzqqHoOnP6koMPHg7vtxkjE0/3desQUvuTloegU3cpzMDP5hHvZ/NTHg2qBbsjHZ4
	UTHfImpJhHGIeTLHe/Jsx0s43yjc04ytCCviBvDZ0saI6kUW7RrIdjcyyNWS/IeuZ560fDbToIvQJ
	xG+jhuT+n4nh/EK4A2NdhXpmB/KKg/zixMk8bUdQuiRqUaMyuZOQtUOmypIYXc7q02T41ZozLTp6C
	KtoO7Qyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfBg-00000003QUj-1Uq3;
	Sat, 13 Apr 2024 15:21:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfBd-00000003QTT-2PKA;
	Sat, 13 Apr 2024 15:21:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A4657CE0200;
	Sat, 13 Apr 2024 15:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49BCFC113CD;
	Sat, 13 Apr 2024 15:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713021651;
	bh=e9sE+dyxMVm/wZqrlIHJYPdoNQMkHpKh3LVnji1NKjI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=UPqPPQGsT44tnV1v64hDHxQL7MTvJtHYutVf0Z1GXK2weBYVXMUZFeq9DyZ6nZ7wv
	 YqUH3CMUsWktkQrCtRpzOsQmp9Zytyn0bmgShOf4zdyCVKVLaM0IwOrY8yuttHwAZ3
	 ejXiwByZgKTxL4q/ivOBrfhzuDKczp9qyhGUzkXbdP2msWtPRVE6n7gONhbRlEXvXx
	 Wi8bHE6xLBBD8BZ6piTuvV8rD2I3BgAzIbRu0Oycg4zqv33qJlzE3wsGV+KYlpmSK8
	 A/O9u+ifMeM/9Ndk2TRZ0X5CdyFW7Uik/1JS4RVSZmq4zXkge0ovdFBjJzrHN4pAiq
	 mcQRc+/T1KuUg==
Date: Sat, 13 Apr 2024 10:20:50 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Etienne Buira <etienne.buira@free.fr>
Cc: Johan Jonker <jbx6244@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
 Dragan Simic <dsimic@manjaro.org>, shironeko <shironeko@tesaguri.club>, 
 Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 linux-gpio@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
Message-Id: <171302164916.1347779.204678982671031418.robh@kernel.org>
Subject: Re: [PATCH] Avoid error message on rk3328 use
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_082101_804032_01D6B72D 
X-CRM114-Status: GOOD (  10.90  )
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


On Sat, 13 Apr 2024 15:56:08 +0200, Etienne Buira wrote:
> rockchip,rk3328-grf-gpio is handled as syscon, but syscon mandates
> presence of gpio,syscon-dev node (or it will call dev_err() when probed).
> Correct rk3328.dtsi and related documentation to follow syscon's
> expectations.
> 
> Signed-off-by: Etienne Buira <etienne.buira@free.fr>
> ---
>  .../devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml      | 2 ++
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi                        | 1 +
>  2 files changed, 3 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.example.dtb: gpio: 'gpio,syscon-dev' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6

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

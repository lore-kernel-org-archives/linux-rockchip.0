Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04191C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 16:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zXLKHqlQacJorj8lFVyrc3qfTA/GpPPQRlGIiJFddnE=; b=mrMbdQoz+oNqZzprs33EZNL2ed
	EBfYDT9NpayxZMk+8wx7qlFcqYoLsjf+Kbwraol2kThgMxfM2L4JOaCLLDytSB4rMQqFU2uPZG0En
	k9Yvk47Z6JHEr335KlNFMdfPPEJrSaczf0curflfi3z6lFZxWl4V5jPpEF3b/XFcNyTEFA7fpC8Bm
	lxtNOBojk0QuWmAH26SrRe/Ei/NhfULw7RAbZAOLc+fvVwb5yq7jal1MvisF5KcrmRwqImhtgfV6B
	yRo0c+gTuuJCzQXYfaTeUgnNMtKdHGb8N6AvXGzroGfYkLKOLjsnIHTY7Bd1QnFetzezWxzwR1dVL
	1MK+KZ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDQkR-00000004JjT-3dGR;
	Fri, 09 May 2025 16:38:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDOXF-00000003v6Z-3yCW;
	Fri, 09 May 2025 14:17:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A96954362D;
	Fri,  9 May 2025 14:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0CE7C4CEE4;
	Fri,  9 May 2025 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800229;
	bh=C2itz+S6tPrdRTXNErSUQmD0CIJnv+xn5PWfAWtHGgA=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=tGRcYZSpxo55IxBJrhfzT9uplJbSWhfz+KHCY3evtuJz8Y5j1YJLDL8cr9x3XcL8w
	 FheP+ALCKZZh4DaaNwi5R6gpCpVZc2HSXoNn0XkozhtpZzenIlrbm1nWMV+eNQZydJ
	 HhJuvGnsjNdymeaIalQrDvtKQFtFxZq71e6tL7aGpIW88IwwQl9aYX37qkMESjaCsP
	 wwr5mggIiFNr+0w/+PV0uExN3v8+CAt6e0lak7VeRDF3nazivlti3Pefa3WNktYOmd
	 3CZotQPcxpNUCvQdxmXJ9/OyIZ0P106KmMpN3My0xLcfNsRIY0LXSIeQv6+SQUqqYp
	 kUYqb02LfjYmA==
Date: Fri, 09 May 2025 09:17:07 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
In-Reply-To: <20250509-add-rock5t-v1-0-cff1de74eced@collabora.com>
References: <20250509-add-rock5t-v1-0-cff1de74eced@collabora.com>
Message-Id: <174679985488.3369444.8126092781297328766.robh@kernel.org>
Subject: Re: [PATCH 0/3] Add RADXA ROCK 5T support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_071710_026569_9EE78694 
X-CRM114-Status: GOOD (  17.95  )
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


On Fri, 09 May 2025 14:31:40 +0200, Nicolas Frattaroli wrote:
> This is a small series, depending on Sebastian Reichel's ROCK 5B+
> series[1], to also add support for the ROCK 5T.
> 
> The ROCK 5T is quite similar to the ROCK 5B+ and the ROCK 5B, so to
> share as much DT boilerplate between them as we can, this series
> reorganises things a bit and then adds the ROCK 5T .dts.
> 
> Link: https://lore.kernel.org/linux-rockchip/20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org/T/ [1]
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
> Nicolas Frattaroli (3):
>       dt-bindings: arm: rockchip: add RADXA ROCK 5T
>       arm64: dts: rockchip: reorganise common rock5* nodes
>       arm64: dts: rockchip: add ROCK 5T device tree
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile              |    1 +
>  .../boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi   | 1012 ++++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi   | 1012 +-------------------
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts    |  105 ++
>  5 files changed, 1131 insertions(+), 1004 deletions(-)
> ---
> base-commit: 19c541fe872387798a25df947f56a26212aa9a97
> change-id: 20250509-add-rock5t-fde5927de36b
> prerequisite-message-id: <20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org>
> prerequisite-patch-id: 02bf159533bb53d2cb1b6c8c7caf1d3fcfbfa4ea
> prerequisite-patch-id: fc153d1d48f19d63520086a6eaadfec2db960470
> prerequisite-patch-id: f445b893edf31ccf3311e146a53e5d24861c2475
> prerequisite-patch-id: 5dc410a438ad5a7aa8962e380d2733782f5d7d18
> prerequisite-patch-id: c70ae0e30be2a3385d2f2a09f474ff2b76293843
> 
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: using specified base-commit 19c541fe872387798a25df947f56a26212aa9a97
 Deps: looking for dependencies matching 5 patch-ids
 Deps: Applying prerequisite patch: [PATCH v2 1/5] arm64: dts: rockchip: move rock 5b to include file
 Deps: Applying prerequisite patch: [PATCH v2 2/5] arm64: dts: rockchip: move rock 5b to include file
 Deps: Applying prerequisite patch: [PATCH v2 3/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
 Deps: Applying prerequisite patch: [PATCH v2 4/5] arm64: dts: rockchip: add Rock 5B+
 Deps: Applying prerequisite patch: [PATCH v2 5/5] arm64: dts: rockchip: add USB-C support for ROCK 5B+

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250509-add-rock5t-v1-0-cff1de74eced@collabora.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: edp@fded0000 (rockchip,rk3588-edp): clock-names:2: 'grf' was expected
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dtb: edp@fded0000 (rockchip,rk3588-edp): clock-names:2: 'grf' was expected
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

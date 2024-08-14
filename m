Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29241C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 15:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d9duENKMevTTzIPgXUwUiT7y/enXWzftZFPmk/0Gwjo=; b=nJN5qXPeJNP5bNXyySMxXCs+t6
	gTzkKvMzwkHM07PVq5f58QpLx/LiDNc+iMYkcB+LXksHnVu5kRl2kJGWMByF2Ablvz/lEIQgiULBf
	r+Q6bUg1yRp4Bh5baAp8BJ2FJjt+IK/6dXY6dboBZMbX2w4Rhdd6gxdB9BKrFBrVE5K2BFq6ZsEX6
	v6E+SpS8Cn6tIy6L+Jw+ME3EOB4Uti9ACDtjlzzSuIffxQCPY5VFvmMDkljB1/s1rmkQxjFDgrxcY
	0Y/rQ50ZZC6iC5wqcwfqg+bVJB+4F9nzFL7q5d27Tfa8ToapC1FuFG2Vc7jRfEa6skia5mqmtj67D
	aCGpaDtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGFe-00000007XWh-0Vax;
	Wed, 14 Aug 2024 15:49:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGEL-00000007XBn-1anZ
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 15:48:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1732861AD8;
	Wed, 14 Aug 2024 15:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D44FC4AF0F;
	Wed, 14 Aug 2024 15:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723650485;
	bh=6Fp5R5GA9ImgtseA1YQkWyI7ugw4FOB2zpNPHuLaTZc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=AfoWNAgTIfBxNR8ziRq5QcKOvRlPDvprKuq48am8dx6/4JH7w9V+r++7P8hoUKQd8
	 H5Wo+PnRVJwrKJaAp3GnjJhtK7wlARFVe9GOdG1tehv0c+kWA5B7hojI5IO9b6EGOw
	 6AKvWphCFlT5NZJQlfMMUaSaoq7GbnQaRwxC2z0mUR4sOMwmrsjpMyHDNLjL2wOWtw
	 5fRSIz033+ltyrOOOna/0Tb9xpbHk8PM7oVMpNU7pke/sexNU1NDXv/LQ50v9OBFgm
	 5wq9xspQQlT6AbuCtavh7mNXkFXqprRmgrCDI/H7ZC8J9m8UYGgIoyxYamB7U1U5x+
	 +JleI14PPj6uw==
Date: Wed, 14 Aug 2024 09:48:04 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 heiko@sntech.de, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20240814095727.1662908-1-naoki@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com>
Message-Id: <172365034737.2714484.13216385355869923576.robh@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_084809_496090_B7487AB0 
X-CRM114-Status: GOOD (  11.98  )
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


On Wed, 14 Aug 2024 18:57:26 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - update compatible string for OpenWrt
> - drop A-b tag
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240814095727.1662908-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

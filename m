Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ECFCC3DA4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7THeYV/GTfT256AoNVp3d6qOMTuJG07KNOwTljY2ulU=; b=mwnwsoK4ypQXb3HKWFWbTPmDaB
	42i0j4BFhrXiywHX+ITABjlucG/WsOoEbNZFYNvQD/n0OBq/vBIaASFZlTsdztJ6tpDOZQ+LeGr90
	NvqJRV7H94NJzZLcIqAjl8wMnAKF70/NzPPBZseWGJO0tApffeT3JYRCavvMj6u1NDHo22buADkZQ
	1Qq1JCv9BwVZRYH7HB+riO7UnIQ6PEppXJHHvrzY3x2Z1j+MHmebc/14RwDaj4D/CnFk8TVMtBQs7
	6ZYM8XRned2kTFVhfbygYGD8c3jNq4TJtZ5QuPhU1trFIY7jGe6cIQKPTb+qFZwGBDxuou5Aatrw3
	Lf7ejI9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKZs-00000006yrb-0peo;
	Mon, 15 Jul 2024 12:13:12 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKZU-00000006yiP-1tv4
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jul 2024 12:12:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7CF27CE0F9C;
	Mon, 15 Jul 2024 12:12:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44BB3C4AF1B;
	Mon, 15 Jul 2024 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721045565;
	bh=eSRyMi/rWxbizFibd+EiCGWMUiUN42/Uz6PKhxUBSco=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=S3+BXvZfFWDpHpU111bKMQS+25S2lsBw8d3TJOfdG5wXJVtm4BZyOvzvim87CTDIc
	 i351FmIfObKVakC/xPVkfh30UOvDxwwNV3gNDTwLA8fHdrZQ7k/ieJDBuFq0myPAdx
	 LST7g4QWD9x0nexmCBy0slFP/OSgxON3lpYItdysaiVre6p0xpJcVTPc0s6O4Roo51
	 xOnPlbsVowwANQ2yKMmkwN/WGuOE/7EWai0hrmARC5p7AST/svBhaY+9qjQQCioalY
	 uymWrd6ZYLPsb8YYp6fruABGDTH3ta5NKaSWK55dzy6qEoC6ax1VDkMocOfkhxc1tv
	 UmN5IreTEIt6A==
Date: Mon, 15 Jul 2024 06:12:43 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20240712215300.720113-1-naoki@radxa.com>
References: <20240712215300.720113-1-naoki@radxa.com>
Message-Id: <172104541069.3725239.3048756738341305722.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_051248_893615_FBF3C996 
X-CRM114-Status: GOOD (  11.40  )
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


On Sat, 13 Jul 2024 06:52:59 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240712215300.720113-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

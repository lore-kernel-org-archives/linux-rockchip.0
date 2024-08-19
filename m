Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9354AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0RzjVQaLb1db6GZNJWmOeBw1x6W86PCBUaSgMGoySLw=; b=gX9jKZkYli5Q2EJVY67CjWXMMm
	oz49PfZSpA5TYISrCCQCP2GhhQPGjxALqc1Ewu/HCcGrCJEDdPkq+H/fX+QyjZ02E+y8QDj+MWD0S
	s4dC+lGY7x13ez6zJ+l72xd74mIWosu6xdGH25Lop1HEPK9w5HJ9+uWgKPa8TPpSrMx112jOW+thL
	8QfLrEN7jM/HFK1f9mWvrKcTtYoIvw2XjvWGU1WK45DFNDCaMSMhifdh/VbM60pTfXkzDnFBIFjPP
	QHKyPVrPzATXexllprn1ib1FrRpB4RXtCgzzEe8GebsiIKTMBe+rM7cMiiz7esZbXiLLv8zBsi2qJ
	NKjVuMVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5qX-00000002K0P-0eum;
	Mon, 19 Aug 2024 17:07:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5mJ-00000002IlV-3ars
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Aug 2024 17:02:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E2CFDCE0AD0;
	Mon, 19 Aug 2024 17:02:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB0B9C32782;
	Mon, 19 Aug 2024 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724086965;
	bh=Q1xW/0nBXIW/86VsGilfh+HMuH2E4QdrIJgAob+KTVE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=nj1CWxvlBRYiNVii5vPO/kdnZO/7ga67Q5mk00xptcXTV6SPxYeQpyScNFEED+DA/
	 81xXlYENgmyUK73KHwv4Org1LvOO5z/muerXrHc4zLDKdF8mYy6ENq0uhT7dRmUsQh
	 cPgPT3bFVidZ4WmLtMU5wMRXyZzyL2osU1dgTbRoEjz9Gw9z073XxlVsMvIvjRh5K5
	 w6QScWrHXc+d+Jj9bA6tjcpVMaOvAv3TNXVV3LJDUKHby2NSAN6SgtWfNPLYieyEDp
	 hrF6khnPUGgKDFzicM4qbEyVQ+V8cDW6X5r4ib92mI87pnFVFpjlNOIynv/te1y0Mu
	 fZd0kJ/GoiObQ==
Date: Mon, 19 Aug 2024 11:02:43 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
In-Reply-To: <20240816213429.1093-1-naoki@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
Message-Id: <172408433165.1619643.7928785825448507704.robh@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_100248_090701_482945D6 
X-CRM114-Status: GOOD (  12.86  )
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


On Sat, 17 Aug 2024 06:34:28 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v5:
> - revert compatible string
> - describe rockchip.yaml properly
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
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240816213429.1093-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

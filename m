Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAC2CC021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 22:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=chgYHEMBHQ/JL1acrZPg0SDdAE1mC1dm4sJHqDCoshk=; b=CJvusFCIcO4rKHxYs2TCfPKgV7
	2/IOpJrKXul3mGtLdR1Pjnq8lCka9Vlja5fqcRZJDOTXn1Woekj8OzSrJNIcUopsx3y2oMBQLX3g1
	F5EsGqaxZVXD1B8XBHeiUS01svvqrx2P/wCo0yxaq11sYmvJjIPs5LhZDuxJWNOIypkb1DApjLkoa
	tcXcuVVSR4s7Ucip4r9dJu4SeoMyJB/DNE3/SzMOEzn8EBT4cpAHT1IH00NTnEJduK2h0qhXeHdzW
	cvlHU7r8Shc6BPnSfOKFVyQ/FFdoukZ6s9KC4KXj7AgOv5NXB5uTi+3U2UaQEHgGtpwdeZGhyEvBh
	8dl9XEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnPu1-00000005buY-0GxT;
	Wed, 26 Feb 2025 22:29:17 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnPsN-00000005bZD-0bcP;
	Wed, 26 Feb 2025 22:27:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 446CA6129B;
	Wed, 26 Feb 2025 22:27:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1805C4CEE8;
	Wed, 26 Feb 2025 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740608853;
	bh=AMx61XALp2FEuAdeMecmgRnxgBFCljzPkNPpDr86dSY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ZbuFegJumpqOvGH2jx67wwB3Wfh7G2SlGqP1HRwp59P8fEjY3ZBwOg2trBPtaHFwt
	 1IBDa/ggIr3A7hFw4yCfR10XtjrtTo30i8zORcJsXnDggtM2LDG3Y4LAxbiKYbnm9Z
	 VFdZIXcaYIZH1Gtzbm9cjtYy9zAwj1cC3SuV3q9Z1K2fYh94uNEnczm84mKR8N6nPL
	 CrbRVsz8A/VIpbv0I+XuPpQHbIdJsq34l90ZxraA7ghHbNGxebocn2OvrUxMOzLNV4
	 c60gN+TT+JewJ862zNsa9do5TVTSxSdLeV+Ezp505jVI5PjKXByjHwfATn2ZeoL+wH
	 jqo81rsFhH6Xw==
Date: Wed, 26 Feb 2025 16:27:32 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dse@thaumatec.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 quentin.schulz@cherry.de
To: Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20250226140942.3825223-1-heiko@sntech.de>
References: <20250226140942.3825223-1-heiko@sntech.de>
Message-Id: <174060863425.3856982.10076124904973654575.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: add and enable DSI2 on
 rk3588
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


On Wed, 26 Feb 2025 15:09:39 +0100, Heiko Stuebner wrote:
> This adds the dcphy and dsi2 controller nodes and adds an overlay
> for the Tiger-Haikou Video-Demo adapter that provides a DSI display.
> 
> changes in v3:
> - rebase on newly added overlay-test-infrastructure
> - add reset-gpio to gpio expander
> 
> changes in v2:
> - adapt to changed dcphy binding (phy-cells = 1)
> - tiger-overlay changes (Quentin):
>   - drop forgotten hdmi-connector node
>   - improve description
>   - fix node sorting
>   - drop unnecessary pwm-pinctrl (set in tiger.dtsi)
> 
> Heiko Stuebner (3):
>   arm64: dts: rockchip: add mipi dcphy nodes to rk3588
>   arm64: dts: rockchip: add dsi controller nodes on rk3588
>   arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   5 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  99 ++++++++++++
>  .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso
> 
> --
> 2.47.2
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250226140942.3825223-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

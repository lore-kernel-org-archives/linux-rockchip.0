Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACAB0C54F54
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMoU/lGm8KRNdLf5Nl32SE8MxNCdmJvJuZn53t1cbYE=; b=zuTV6ltgm8KFpr
	aBR6Z82qHyu+Wvbbe+SX0iSrXCIJ08r5kgLB8wBHtd/duK3afs5Zukb9mcQxVXJX/KuDmTTjw9+DD
	BSwsWLowfdwAFZ5B0vgY5/KjSXbewEpn+tMLA0AciRVzhNVJZuv2thFlGJuaoK7VMINdoTX533CUg
	Gbo0cZwVTeYYr+Bi/1NfexkilO1RQ8zqsbfV5vuktVHP91JUDLJBu1btsjmWybZKTlIgMeu5o+fPi
	XVkOTd3+Tz2P7e3JxLthdrOI8PThRJ8h2d2z0F+444ff2g1weE2YO5ONWRFGyRHF6eJ1IE0b+NwJL
	Ha9u4pLnWmVKEkLVQHWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIV-000000067sq-1Vo9;
	Tue, 28 Jul 2026 19:17:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIC-000000067cT-2X0N;
	Tue, 28 Jul 2026 19:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=k/OibEZQ9hPIHLYPL4MyyZBX8Z5atnq/wmS2oE46q4w=; b=1CVnMMTxlNzj0OJXouLgQ++8ay
	7OzH4qCIG0KVj06YxY4gggMgajfEIFa/sS9Fj32V9VDpjDGZWf2Ql2M7JlIuIO3t7XJgL57PEs/GU
	hWxMx7cz0jC8a7x/b2ZanC4pb3OH9pWSK/MLgopiZ8Omqhj+lcNNE2QWfDUnNOJ7L22jF3fHR8s+t
	ksGX602+hSj2eIC0fXZ8Sj2Dyafo1biBx2iMFauSWdyWWWsVicn73s4dABK9bTerL1ZJmGAWmg6KV
	244KBJL8y2q7oce8kx+5u/IPjrskaKyHZL2rcJvIXQYPTfSmhe7+R9itUAgVbVgpNHCCJY37o1Kwl
	buU4ZbRQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
Date: Tue, 28 Jul 2026 21:16:31 +0200
Message-ID: <178526609483.300371.1972096741019410847.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260719034611.3623066-1-gahing@gahingwoo.com>
References: <20260719034611.3623066-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_121644_639425_788A0A73 
X-CRM114-Status: GOOD (  12.52  )
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


On Sun, 19 Jul 2026 15:46:09 +1200, Jiaxing Hu wrote:
> Add mainline support for the ArmSoM CM5, an RK3576 compute module, and
> its CM5-IO carrier board.
> 
> Patch 1 adds the binding, patch 2 the module dtsi and the carrier dts.
> 
> The on-module YT8531 PHY has no crystal and takes its 25 MHz reference
> from the SoC. Following review of v4, the reference is now handled the
> way Andrew Lunn and Maxime Chevallier asked for: the PHY is the consumer
> and enables the clock itself. That needs a small motorcomm change sent
> to netdev [1]; the clock is optional so this DTS still applies without
> it. The earlier dwmac-rk MAC-side patch is dropped.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
      commit: f60f44c24b10fe7fd1fa76b360646def1bea193a
[2/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
      commit: 44a48a23974b86d2c551afbabee15ad70b249df5

Adapted the styling a bit, fixed some dt-checker warnings including the
2nd ethernet-phy compatible - I left the most specific one.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

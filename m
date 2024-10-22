Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C795D2C55B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLXl9e49vUH46T07DuFgX1hn1xsJ1h7WKx23dbJ3vzM=; b=TTn8UEfrM5tay8
	+cfOBKMwltd3wBch0Q1LohUYcgCb0VmWs+E+hxCot6SGupkCIkUyIWOIB3NwNxCfcktWGCKWzmQVl
	Tobpjftv+hWhTvCHvs263Dm6CVrdLhIf9eEBT/VrUaFOvT6wxb1XiiyVJ87Ozs4Z5zXJ7SQ6HTCY+
	W9xJ1cTZRrotA8um/gSawv+TWrWdHuazW85BxGyXYIZcFAUnN7AU6tixyp0/+0wj2R7ND0AjPzkXd
	bs/X7DGxG0v7DJUzjaMgwdpspzGSS3yUcmxNQMTXXbhqy480zkgHv4b1X5gBqTQEgfP+DAHc9Ft4v
	7L8XkPDCUpsOGF8ry8Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fco-0000000B3p1-3WQn;
	Tue, 22 Oct 2024 14:12:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcm-0000000B3o4-2Fwz;
	Tue, 22 Oct 2024 14:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LezvWnWGKGyqhDcrdClbh41XudRaVGk+oWiAlwvi5L8=; b=zpYd6N6ozETNiVEDN1prD5fmUk
	yOMqog6Cd0fFNHl7P7DPH0xULNsEnJ1JyJEI6w1qm9x5n7XBsiSWp2v6S6paCyqyDhXFni3OHB7I7
	5F3Kd4Cde3381e/gGFGonBEFeiwAzF+GOMmQ9aR79QcAK0MHA98RBpGiOpzGAqLRD75mvr9bZekFi
	YWLZIv11upJM7VhAMDoj20N3/nrFmPRc4wbHWQfdei6+dJEiXiKvn+iQ5Znb8Vu4NulWls33KJ2EF
	284V5glHAmP3z/rMLhlVQFfIR/tEBKf23j06ytpmdb/s+xwg3V0TXkj2bPNgvvvJNhILlVoh9bQ6Y
	9oaHp2Zw==;
Received: from [213.70.40.217] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Fck-0005eb-Tg; Tue, 22 Oct 2024 16:12:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Convert dts files used as parents to dtsi files
Date: Tue, 22 Oct 2024 16:12:26 +0200
Message-ID: <172960632904.1476617.16706194914239388318.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <f3d789c14fe34a53327cac03cd3837e530e21f5c.1728937091.git.dsimic@manjaro.org>
References: <f3d789c14fe34a53327cac03cd3837e530e21f5c.1728937091.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_071240_598372_0F28D2CE 
X-CRM114-Status: GOOD (  14.34  )
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

On Mon, 14 Oct 2024 22:21:57 +0200, Dragan Simic wrote:
> Including a board dts file is not the right way to represent the hierarchical
> nature of the board dts files and to create a dts file for another variant of
> an ancestor board.  However, a few boards and their variants (ab)used this
> approach, so let's clean that up by converting the common ancestors into dtsi
> files, and by adding separate board-variant dts files.
> 
> No functional changes are introduced, which was validated by decompiling and
> comparing all affected board dtb files before and after these changes.  In
> more detail, the affected dtb files have some of their blocks shuffled around
> a bit and some of their phandles have different values, as a result of the
> changes to the order in which the building blocks from the parent dtsi files
> are included, but they effectively remain the same as the originals.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Convert dts files used as parents to dtsi files
      commit: f3c6526d6fb25b9627cb39cc63fec8f88ecf17b5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

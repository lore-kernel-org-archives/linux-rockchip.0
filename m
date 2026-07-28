Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCCEC54F54
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 19:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDTQGpIef/5SmcB47TeRuU91T2Dt79hc9sc993miNR0=; b=V4RExk6tEG9uCO
	JXACUTAxrUvl3IotZ5GzV/Kn3m/mt4CrAtsbfm0ToW3GHmW26FiNNUpZj00oeYsa6KRE7YQdQsu+R
	HapDbAWuzIA4jnVUCkJCyUmeLVWnimA80IIN/BfGYdoKaSQXfIaDr+KSTuQRW5ct9U2QEjpJw8QL5
	gxUI90YYxyKVeCTO/R8vZXW6hVXYsIgPZdnkOfwPcZcFb79LJ6cb7AkczBTBexHRzz0FfBJIhJwPY
	OHJBvUSnrKBUZQSI0+lEOCakVPfRAaYW/TUqiUKutnNBncgdKq7mmRYHTNsca7oj6cwb4WNrVNKq6
	IqEbogB/yVUXnRKiiE5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIE-000000067el-2NAq;
	Tue, 28 Jul 2026 19:16:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIB-000000067cJ-3aoh;
	Tue, 28 Jul 2026 19:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YMdC5OLdtmiOOau9BgRbCPEDWqt/ahOGgghr1EDyiXY=; b=YQudPMPeq9W2ExjxJJkOP6tE2l
	H5WGZMKRcb5ynaCnDPK8xUYbwyYfdN7zYhLQ0KNQgTltCu8pCIh+Y58qhdv/0BecJQsthc1YO/y5N
	r33QEwXqlNdskiDD1/dLiW6flWSGPcZCptxKUxFwvlPsMQVVNdrqSlfI/G9bm/gsxuulzXmebXbaP
	8msP/wXjSLzVMEWWRFtXYkSBprBfIUJuFnDbwBx01qcKdwyXYI4KZU5nILm9h4Y6AOIjLP9hVFUNK
	KItBEyTEXunH/Jx60FkX6Cz6Sr+apyw0Ov8Ef5WzdH3zq2AT9Hs2BXCM2Ew90a2cDTqvzOTOVSDLG
	Fm3384oA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Tue, 28 Jul 2026 21:16:32 +0200
Message-ID: <178526609456.300371.2885999135285384351.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714054653.266842-1-hrushirajg23@gmail.com>
References: <20260714054653.266842-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_121644_049462_A6ECA864 
X-CRM114-Status: GOOD (  10.76  )
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


On Tue, 14 Jul 2026 11:16:51 +0530, Hrushiraj Gandhi wrote:
> This patch series adds device tree support for the Vicharak Vaaman2,
> a single-board computer based on the Rockchip RK3588 SoC.
> 
> The Vaaman2 board features include:
>   - RK3588 SoC
>   - eMMC storage and microSD support
>   - RK806 PMIC and multiple RK8602/RK8603 regulators
>   - Real-time clock and status LED
>   - UART serial console and SARADC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
      commit: 89be7a07156c0b4109d07644664474cb20782f43
[2/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board
      commit: 896e4c4508b66f9b4c9ff12b536bd1a031621aa5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

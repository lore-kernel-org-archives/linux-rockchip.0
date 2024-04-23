Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FD3C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnv86yukUbwUSuhU2ekBT1EIS/OAcq4lT4hrH2cC6Gk=; b=3LRQL4AYJBt8ke
	9KUj+wiCDRnim1fzZxW80y5/k6GRZhdmjMdILzKkbRNryxRsIMCc5WSg7g2OsIv14s829SFa7YUlU
	xIfVwNl2WWeiBKE8yfIgk5GwhSKuVsrqfChaRhPXsal/tCkBYQtL6dutRjJgZZkli+3dLAPabnpnW
	ZmaiScwG13kHAOKtu+4dMuy6iZHjPaFSzLOcpLNyXfSPh0+5iazziSeBucuUbpejO829C6jISug4+
	xY0douf86a0GEVIvMOrxYuLp/yhztNyMRz0+4yxBV38hZummGYzGm/lzxw6nAlX5tc2cQFpr+PvPS
	A90nKnBiG39UVTMoVE/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHsr-00000000Tdo-16Vv;
	Tue, 23 Apr 2024 15:16:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHry-00000000SzP-2p8X;
	Tue, 23 Apr 2024 15:15:45 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrx-0007PZ-6b; Tue, 23 Apr 2024 17:15:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jonas@kwiboo.se,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v4] arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
Date: Tue, 23 Apr 2024 17:15:35 +0200
Message-Id: <171388532516.2652222.6525742292784507990.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240423074956.2622318-1-heiko@sntech.de>
References: <20240423074956.2622318-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081542_850180_E9F7B6FE 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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

On Tue, 23 Apr 2024 09:49:56 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The Jaguar SBC provides an M.2 slot connected to the pcie3 controller.
> In contrast to a number of other boards the pcie-refclk is gpio-controlled,
> so the necessary clock and is added to the list of pcie3 clocks.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
      commit: 0ec7e1096332bc2b9bc881c21cfd234058f747b3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

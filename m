Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4698ECD4F23
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apiHxCwCzc0MOixWlh8yN9A1B3UKz018cAXzQdF0YmY=; b=D7OrFDOs2rFMnh
	W4k94rZNYubcYI5ANQu051ngfcHfsOze/3cWzyx11nhUOfWScIJy/ehvsNonXkkJ6mpUyAl5cxOM3
	ZUTWPBJK5aICOe5AVDG8ZxFnwn49p8l5z2KeePQFrbSqULKgobrqeNBxhpB2FNAmdIEI3Rwc7ewY0
	9AJd8q/dtJE57oURO1UODVMUXZDzuVReJMCTbR5KPHCR3+CPglCSuj/vy21a9LQMh8avysUqyiL7R
	3zEQj8OBv4QSY67CkH+rRfEaOi8gDGFCoafKDpODpqW33y0yvJr4omIYJn589r/B4zjY2gizIEaXC
	9AOh9J9LGHJreXci2bkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvNe-00000005kpH-15Tt;
	Wed, 04 Sep 2024 19:09:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLd-00000005k35-3tPZ;
	Wed, 04 Sep 2024 19:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4XezWaCV84WdKJFB+54y5YGzywF1p0XJ2FAk+PMsynk=; b=M+j9RdErBG3+5j3xb/cG8Szesi
	bghsNLbbwd6+UU7dQX84aozxznnxKSCCkQYZaFj2AQYdjeBjAJqezwJyAGcuQhC2/PNr59x7jsa7t
	Hg5vPHdRvikMmW/2es2oXSQ6wqaVtfy+a5M8SmHfKprTnLKrGHeoklO/QGMH2XS7tL4FUrktT7pFn
	AMyD5wFgumc2dxhzaCR9zYG8Aer1160aZGBHdEggBWf7W7PNNcMO0CfzSgciKtFSBZJh8xOuDh3fB
	QQa57erRpGpr/kzvRvCmND+Q1UeEATjM8jbpq7z5cZP0ue3SKRwwTI+YM4eOOIRMu528zALaXMdVX
	TTzGEXZA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLX-0002Po-T1; Wed, 04 Sep 2024 21:07:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Dongjin Kim <tobetter@gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Hardkernel ODROID-M2
Date: Wed,  4 Sep 2024 21:07:00 +0200
Message-ID: <172547678274.2721598.7278836830235171235.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901112020.3224704-1-jonas@kwiboo.se>
References: <20240901112020.3224704-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120721_984712_29A1B28E 
X-CRM114-Status: GOOD (  11.69  )
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

On Sun, 1 Sep 2024 11:20:13 +0000, Jonas Karlman wrote:
> This series add initial support for the Hardkernel ODROID-M2 board.
> 
> The Hardkernel ODROID-M2 is a single-board computer based on Rockchip
> RK3588S2 SoC. It features e.g. 8/16 GB LPDDR5 RAM, 64 GB eMMC, SD-card,
> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0/Type-C.
> 
> Schematics for ODROID-M2 can be found at:
> https://wiki.odroid.com/_media/odroid-m2/hardware/m2_main_rev1.0_240611.pdf
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M2
      commit: f1f348158813f64cd772d6ff4a3df0704285c14c
[2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M2
      commit: ce48b8c976ce439c336def6e06bf8224a8ff9125

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

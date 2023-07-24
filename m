Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7887C0015E
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zKRCQgctZokd38WS0P0AKZxXiNo5zHzrsDsr7gX5Ks=; b=l8DKc7vDyM8xT4
	gix+OKvzROnBKG7+Qz6JBC+8GOBJtuEI3esNDDccF2Vbuxgiz7/CiZwAhubGOjbFfau173rEqDwqL
	SH0eP4PXE/ikjw/btaPrNHhcSdgDepMJ07yZYSlqeZf4jPNpQiUSwfRR0Ao1pr7bx5VRukl6+mOdL
	vOg/yOQ9MsBGM2g8Xem6M4dooVIWiK/f0pNrjMdO/3EY2H7KcddgbJJQuIUJcYe/qBztM2nrnvaCK
	1PvcSWZfU8GNsWT7YmEtxJwMzOJ1EKX6OBtpSssPo9S2PeBY46zoQ1oRrKS2oGbixA+LiQaaBL25a
	yT+zJl+zBc3WOQKqi9Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0fq-005F15-28;
	Mon, 24 Jul 2023 18:52:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0fn-005Eza-31;
	Mon, 24 Jul 2023 18:52:49 +0000
Received: from [193.138.155.172] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qO0fg-0008OD-EO; Mon, 24 Jul 2023 20:52:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yogesh Hegde <yogi.kernel@gmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	ivan.orlov0322@gmail.com,
	skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards
Date: Mon, 24 Jul 2023 20:52:37 +0200
Message-Id: <169022470428.2905604.14514573882052237409.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <ZLbATQRjOl09aLAp@zephyrusG14>
References: <ZLbATQRjOl09aLAp@zephyrusG14>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_115247_977364_E9421078 
X-CRM114-Status: GOOD (  11.31  )
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

On Tue, 18 Jul 2023 22:09:41 +0530, Yogesh Hegde wrote:
> This patch fixes an issue affecting the Wifi/Bluetooth connectivity on
> ROCK Pi 4 boards. Commit f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth
> on ROCK Pi 4 boards") introduced a problem with the clock configuration.
> Specifically, the clock-names property of the sdio-pwrseq node was not
> updated to 'lpo', causing the driver to wait indefinitely for the wrong clock
> signal 'ext_clock' instead of the expected one 'lpo'. This prevented the proper
> initialization of Wifi/Bluetooth chip on ROCK Pi 4 boards.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards
      commit: ebceec271e552a2b05e47d8ef0597052b1a39449

and added the "Cc: stable@vger.kernel.org"

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE6FC6FA89
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 17:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e41a8ZflTz8R9gC6hXypOVjkafDDrcu5TObyyQF33Xw=; b=UDVl95CzvHnymT
	kbmca2bxCHPGuCJROfUzN6JGHVoFiVlPKKXJxjI029wAF4sxzr+poNZBR7o0xGAqrXzQcXdiOL6aI
	e1ju34e1XN7L/+xDkOVzRWX9/4dYevGg60vgHUNhvEVIsTKnyhT/Bq+5kuEoVYWNjd4H8fmwWqnUP
	FAHqZcmRZv3sUEoKbtiKUk046fyZi7rZiifCi2YnUTQpioIZ5Im4rB/NWRwTQHr/nL/IVyyCEiedE
	tJ1GxkaNurMAr1wahv4V3texbdvhUrfXGVAqEJ0pGcceGfB7ms+JfZXr0sdOJZ5RXKK2LzNRs2Aoq
	0WVjo/ueKDIEijydJRDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKG-008TrD-Gc; Sun, 04 Sep 2022 17:22:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKE-008TnJ-Ev; Sun, 04 Sep 2022 17:22:27 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKB-0000tW-HW; Sun, 04 Sep 2022 19:22:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zain wang <wzz@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Lin Huang <hl@rock-chips.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
Date: Sun,  4 Sep 2022 19:22:17 +0200
Message-Id: <166231195330.2423948.14822467158233209548.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830131212.v2.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
References: <20220830131212.v2.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102226_526187_5DA90AD1 
X-CRM114-Status: UNSURE (   8.63  )
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

On Tue, 30 Aug 2022 13:16:17 -0700, Brian Norris wrote:
> We've found the AUX channel to be less reliable with PCLK_EDP at a
> higher rate (typically 25 MHz). This is especially important on systems
> with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
> use of AUX.
> 
> According to Rockchip, using any rate other than 24 MHz can cause
> "problems between syncing the PHY an PCLK", which leads to all sorts of
> unreliabilities around register operations.

Applied, thanks!

[1/1] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
      commit: 8123437cf46ea5a0f6ca5cb3c528d8b6db97b9c2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

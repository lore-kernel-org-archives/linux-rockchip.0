Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980FACD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 12:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qoyP+YrDk+BafDWZ2BZIPfgLzgx0YIrGX+yiFubYH4E=; b=biZlKcSbvkOrLk
	p+mSLYA5v86jnBfoB6EwyzoskYognMqgiIczK+l7Xqs0syIqQqO1AFH0BEkpPPDMPKuKEuMA+3CdV
	8MZl65RmifUWSy+LlwlP5wu0f8ni0ulJ0WYjC3JeYc11a6GMi499GJITY3y7V7qbyLjh2c1c4ZJFX
	NxxvckAJSx5MTWR6I54dHUCjnNZHpzZJ8JmdMKosHLBosqbWjxQe4L13lfIHR7owjtApYofiJCK2C
	1cT+tmZ21ZiL/vlzUQ/rReDRBx2aenOibg1xzdtk0uTcCYY87zNS5GXNrMiGCGPoMBcGwQYBVM7Me
	oLMeohhR9CMoeYz+YKfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1se-0000000B95i-172y;
	Mon, 01 Jun 2026 12:36:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1sc-0000000B94v-1GMa
	for linux-rockchip@bombadil.infradead.org;
	Mon, 01 Jun 2026 12:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ulq7zD4ctN0+5WRFW+oZ1/qxY6rbHFNEsFrgeGiPH/c=; b=bGuDwHDjb7BReDVQT5eMofpCAj
	a+6Oj+aAyMDYsSOCmBc1G26lxFwbF3HxUfIkPRS8HuhoWiIo33Wo2ciktviQ2ABApXi6o7e8PAf5R
	1c6oR2jAipE5f+pOr4eYjLW3Xpr/LGHdOLSP0c8G2+82gWPiyJilgNiJEibpoGktfTHlU7/PBYt/d
	hqcN+2C5m3vF6WQrempneqykPNyMWZr8/BRKzWMMoPtMkoyVSJktrAxFwFsyBpyvhZUOFyhULBDNL
	G0WI8QzfUzHRnRaaIah9qCAt9amxAYAKjV1onGEGcqaSbuMdib0j0HGnRoUIYVH9K1MwxDJHJazjF
	y0m9XD0g==;
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1sY-00000006hUa-3xq3
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 12:36:28 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8422c327755so723515b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 05:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780317384; x=1780922184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ulq7zD4ctN0+5WRFW+oZ1/qxY6rbHFNEsFrgeGiPH/c=;
        b=VL235ipEAdyoamaxmOMItG24hzmYhrGqZDa31yzQrZU8jXBOslqODFp0CaTwaEgn56
         8eFt4wOa7C2LbMQtinE13TBElwu1efHFammIJWblZA8uSq4L8WSN++d11aSPikhEhr06
         og00vLx7P+AEnEYnkyP5CsGgRk9VMNF75N30skSs6JEG7VcTx4wKsrM2D5plaauiD/JY
         3D7ocuLdp0rj51e4AgfqCox4rAbGwg1kcRO1btr/cplMUqekvvjp1ttnpG8WBFcNc3He
         i5cMuAnEHg0ioTDRwuTGl4cqXXd5KnOF6ep9akTaYLqGpmbJBRqu3IYXZvZC8c8Q6x38
         lC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780317384; x=1780922184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulq7zD4ctN0+5WRFW+oZ1/qxY6rbHFNEsFrgeGiPH/c=;
        b=OFRPbv9xM0Pwghwk9/UOe2UJAqNwlnn9CMTaE6jbMo+z6+wcK/OD+3TQ08coMCHnRN
         hDWlXz5kwDZ9KDjXhBKCQ3oh5UmuEv9DQFrE2Ss7zbIZ4NlguHCqwJdYj6j+QlrETc6+
         HntZpVYOPhdTVAuCck1sTyhWQJ6DUdi7gIZKaKGWknc+2TOuxgj6enKqL5ybaXOv+oUI
         JrTNTybaR978yzpnl3YejueFv6HXkidre2zCbwWmqi/AkLhyBbDScWt1b9kr5E8MUj9h
         92erQW++bYtqWSA6/Y6nQv5jgn3gOL5uo3lulMejFAMTg76oo22GPlqN40lSeqENPwA5
         iNJg==
X-Forwarded-Encrypted: i=1; AFNElJ//CfueX8q7pxKt21+o+hkq/R81M4HLyQ6DOZcF8vwbp0b913g7vC3eRMkz4e40aRZL+Vc/eJ7QgcM91xjOFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0ro/YCtbz3PMdpnhghtjsFskYjETMkbnXCC4KA2HoTpM/vMfH
	Xd9y9kHfKDDyv2u3KTg1HxcftPqkIf7YcgwXrinuCEdEsSMts+bOgRZ+
X-Gm-Gg: Acq92OFA+rCsmKF9ScZk1Z+fgzHH7Wg8VrIHIminpY35TCWKxzgRneOREk/3mytGBM0
	cxO/5jirJ/evTucRxnO71zQcd/tE+ZFyZavwbWrGzGRDAOfpaJdLGYuqRYY9VwBwMFAbkDjMbQy
	lUBsgyzJHxVnF+ma3ZN2Be7hJsGuRU1W6yEeBATALVPDV8sFGSfJ4ldNNT/MgDhfBTBRhnW8jku
	DvDKPE4K3yb52u+vYyhy/eUZwIPu4sp3lgnnKjAKorNouocq5VlRo4hHT3kfdlvduQaBcOE/SMZ
	Tm8g2G9oBv7EX+JihNGQWlH68rJ1AzOss5Ljw7dUcFdIUBbfWO73JrE0+k/Fp8kZZM7u5Vncpdu
	nZrVgoufcqTvBde2nm3GjcwP7PV7GWJ++vzPbXXOoGuDiyPZorjF73aP+Ry8PZr86W+C2KvjhqZ
	DUPOjkXSqPiBIpLmF3TT74Hn+IT3dlLK/PwRovofa05oAwETtgHh0=
X-Received: by 2002:a05:6a00:4296:b0:82f:5726:be23 with SMTP id d2e1a72fcca58-8422575fed2mr10037266b3a.49.1780317384389;
        Mon, 01 Jun 2026 05:36:24 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8424defc024sm3765997b3a.47.2026.06.01.05.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 05:36:21 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/1] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  1 Jun 2026 18:06:02 +0530
Message-ID: <20260601123603.129679-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_133627_438895_7F553B81 
X-CRM114-Status: GOOD (  10.33  )
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

This series adds initial device tree support for the Vicharak Axon
single-board computer, which is based on the Rockchip RK3588 SoC.

The Vicharak Axon is a feature-rich SBC targeting developer and embedded
use cases. It ships with:

  - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
  - RK806 PMIC providing all SoC power domains
  - eMMC 5.1 (on-board) and microSD slot
  - Gigabit Ethernet via RGMII (RTL8211F)
  - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
  - PCIe 3.0 x4 and two PCIe 2.0 slots
  - SATA 3.0
  - SDIO Wi-Fi
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

This patch adds the DTS file and wires it into the Makefile. Binding
documentation for the vendor prefix "vicharak" and the compatible string
"vicharak,axon" will be submitted as a follow-up to this series.

Hrushiraj Gandhi (1):
  arm64: dts: rockchip: add Vicharak Axon board

 arch/arm64/boot/dts/rockchip/Makefile        |    1 +
 arch/arm64/boot/dts/rockchip/rk3588-axon.dts | 1069 ++++++++++++++++++
 2 files changed, 1070 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

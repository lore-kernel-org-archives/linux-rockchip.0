Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 370BCCCFA1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kngl3yxxUzAVxR5IhJAx2Ot8jHjJH7cCIf7AvFcCCOA=; b=zj+hZbWiLLOOWV
	toKJGqmAgp7kRNVn9C9e+UqvkL2Yat3iWyHLTXZWOLQJN4wnXFyNZLdzF/Wsa2VUAQWe1orIZHUNv
	Hn2s/0OjkYCWJAd0AE9wkAG3z8D3+HuETzbAayQqvxkj4ifxIkWWjPV0+McRLWd2VBbojYlQ8r2+U
	nLYE7/7RXFS0D+0KMfyUkbdWBqAWlq4drechu3IaM29gWAFyYLtrKLbAone7xYecSw9vay6G1c62B
	/ATwI4YZZGZMeXUaFYOmW4U/4S8fz2kWUuqv+fKHsKaS7wSHwyGft/4LnVlY94ec6YiNrXGbyjd/A
	GPW+58ZwTSa+MtEUu0tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdk-00000006XUW-49NQ;
	Tue, 11 Nov 2025 05:10:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdg-00000006XSH-2hCO
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:09:59 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuT021826;
	Tue, 11 Nov 2025 14:09:28 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/4] arm64: dts: rockchip: Fix eeprom description for Radxa ROCK 3C/5A/5C
Date: Tue, 11 Nov 2025 05:09:19 +0000
Message-ID: <20251111050924.54880-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_210956_914223_83B5DF3E 
X-CRM114-Status: UNSURE (   5.70  )
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

This patch series fixes incorrect or missing entries related to the
eeprom on the Radxa ROCK 3C, 5A, and 5C.

FUKAUMI Naoki (4):
  arm64: dts: rockchip: Move eeprom correct bus for Radxa ROCK 5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
  arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C

 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 16 +++++++++-------
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts |  1 +
 3 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

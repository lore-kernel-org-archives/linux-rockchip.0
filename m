Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 231E4C44507
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 01:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEi+nIXl+qrtqwzPy9vdp4H4zpS6YCrvMsfbs42XUbA=; b=ReOYja6x5QKiqr
	4T5qsMCaSddRFSs3UUOVnDf3AYLpF9zSHLX4B5IItgIzIIcPY5NZaJELfPOmgDFxOIn5/h5Ak0TH2
	ocku6BTAJGL1Zc5Gw31bvbl0hu84Ijz/FNRZoGFK4/sOKQUxBkTgIJIh0mDSGym/2EL4eewcza8pr
	Aa+b5jWLewXw90mMbOC3CKAtqUZPEsGnWUuYgGWggDqy4qmW3TuZRRwY+rp55XpolzyEyrMhVE2EM
	HLKF7tK18vr7E4TEorG39WWZGm5ZdA/YtOSEaKTGlZXCqmbp91GpycZv8piUAW6jMkxic35rmE3Mc
	a0t9Sn+iRFrhx/aM6OfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAuB-0000000GCBF-0sAB;
	Thu, 16 Jul 2026 01:28:51 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAu8-0000000GCAJ-3go2
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 01:28:50 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c9486571b64so3238634a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 18:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784165327; x=1784770127; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=D1GzXJ02dC6eKcnmPc9kbjsM1/1xWfof1/6ku+zNwhw=;
        b=lC4cM+96+Xb6wrLKlfnNrb3A6u/Kob/tRgoCWfksCSiFmozHKOnJ/NN3VMt2p+nqyy
         kIx2bhtVyC3fLOTq9mFumIszK19bJ82gGfN5MCwEGHLVhTUwx1T8d0HAEv3hRIBMY3iO
         J9nmVwNFiJC89sRw0KkCaDc19FbGCWs0yNLH28e8D2RcjutGx4Ltf/VFeNeopu0Cm2jf
         JRv3vaxDg9csgkpV3/KZUFCxifIoHgqfjbrQFylPRxnr6FgZUEPHn93Q8Dh9GgrqAWAt
         tyqBUtgBPbKmnaavS6LT/fG8cuDALR5O+TN7j4stP7iNG3at5sXUldXcTU27kiyCKJE+
         rx+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784165327; x=1784770127;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D1GzXJ02dC6eKcnmPc9kbjsM1/1xWfof1/6ku+zNwhw=;
        b=OjOqvSwC4K0p1OZicvduRsd66D5eX5kisnMXXOnUblnO8FK6wYfMdpwMzTSMdF6xd0
         J0hmeDXMYofpTPFPE2yzGch9Ed0Dk0EBfSx0zMvfzGjFG5v3FvWZjvY3FUfmxsKiaL5Z
         USCrRjLm6Ry68LYGM6mb6z7ch1tm6egjpTUOyaIgG+VSGkk0Ww0tkrdXYx1T4HvXAAGl
         29+cen8q5my9dBocnZKK0yxJedT2c+/pa6OIBHSNZNnk5z2eI56+/93ZxscoLTlNTKo6
         t5HlleOOpyrsmdKaBNV+9KJ4GR7qeKpeZDnBSoHE677Wt+oIh0V33gubsww1lBC09oHr
         skgg==
X-Gm-Message-State: AOJu0YyEyHQBLXHQNpzW4iwn698suVwkwR3glBORBkEGoQlD820I+47d
	4+B6dAG0w41QLBH5flYFtB2Y1JmBvNmaAkvK2Qnj4yRXFyRb7sNUS5qF95M/pnMY3BM=
X-Gm-Gg: AfdE7cn8YXb67zbDfgkY4Dnl1Uxb0M9gxrhPuDDsN6e55fwJ+9i2uLLcQZESUaBBj3M
	58vlhiQnJFwIX866a3Wf5FpL0AwyRVpBcwXQrgSGK43HYSSRjvNoYMhLfxrwKC/pZKS5ybjjoRE
	yT6IoinfMsPVGWQTKyS2/LO39dOdsGDJzMC6HbghzTBWeSOTxQsfiVn7ny/XwG8ZAmncabNcfic
	rE0tLvacp9LyjAkdumnwwrahR8+3iYbjJkE+XhfbP6P3rSwPkwSYXzYNaL/1MaUMv6Me8TzFQD0
	MF8Blt2bHTuasDxeNsSTBHcW/wEABzSDE7uFpRWqp+ryA0gDHnNrb2GseMrSViHPFPZCSH0oMjp
	Zie+ykE6B2DHxF4Z2ywPs4ZwL4cQQ6q20Dd/iTJO6OwFklDxrDxWtT/fR11PflWmfZE0z2wH07a
	jGW5F/s4/bBgDRrZCnUJcD40H2HNAdpkswnTiaU1A+/ZMVpw8lsqFzXaacQOeTaWDcT62QmQ==
X-Received: by 2002:a05:6a00:181e:b0:848:587f:8ac7 with SMTP id d2e1a72fcca58-84a559b116cmr8011830b3a.52.1784165327355;
        Wed, 15 Jul 2026 18:28:47 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:3ca8:26ce:2345:363])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84a4ff2ea4csm3901362b3a.23.2026.07.15.18.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 18:28:46 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
Date: Thu, 16 Jul 2026 13:28:36 +1200
Message-ID: <20260716012838.2353939-1-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_182848_915791_CF074EEA 
X-CRM114-Status: GOOD (  10.75  )
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

Add mainline support for the ArmSoM CM5, an RK3576 compute module, and
its CM5-IO carrier board.

Patch 1 adds the binding, patch 2 the module dtsi and the carrier dts.

The on-module YT8531 PHY has no crystal and needs the SoC 25 MHz
reference clock (clk_mac_refout). Enabling it for RGMII needs a small
dwmac-rk change sent separately to netdev [1]; the clock is optional so
this DTS applies without it.

Tested on a CM5-IO: the YT8531 link comes up at 1Gbps, and RK806,
HYM8563, eMMC, microSD, the USB3 hub and PCIe all probe.

[1] net: stmmac: dwmac-rk: enable the reference clock for output mode

Jiaxing Hu (2):
  dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
  arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-armsom-cm5-io.dts     | 414 +++++++++++++
 .../boot/dts/rockchip/rk3576-armsom-cm5.dtsi  | 576 ++++++++++++++++++
 4 files changed, 998 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

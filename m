Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA55CCA0EC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 20:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jW8BHPJ2e3QCfjGFXY9R1gjPBhrwavNEU+JEnZ20Tm0=; b=u/2ITYIXAw80eA
	33UjAewBBjumsDqn+A1O6Tq8erpYaWM0m4rDi34ZDBKEd/RFLevq16jdmwZXx6n4TPj3lhxVIlY8N
	VDd3aOQKgqHqpdbNsTLSsxyJ/0HpCSqAUoqSboUUadrCzxSLrmmJNIJvK2n2VwgLXQ6qN0fGKeuqU
	KVDfrCrdEEb5+ZsxbpEF4MdeZ6w+FqhvWz/dlBlmbcIp5r9AOTLDSAs9/beu1Z9rdTg97vyUrxVP9
	wezBDJKCHY78JcyuUoMsxKgpURUePqwUnBMNiZw/d8k5NTSeMtKh3iLBwJ5V2yYS6w5hJYKaIbUpS
	qt0u8NWCWs/gJ1lzgquw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3V-00000003as5-1684;
	Thu, 29 Aug 2024 20:47:45 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3R-00000003aqS-2uNq
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 20:47:43 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3df0a54623dso560268b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964460; x=1725569260; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ueInwXLwaIVKZNglMY0IfI5rgEO3spGMWCSk2L/UpmM=;
        b=JHiSLxCBDWYF6239YQBHaCHRnh+e6yMaPCBT/zCyrSMTwH/nfFDEZjADo6XeczkLw0
         1FPhjBGJbTcKjgh7bWZ2PYUcrTU4ZOWZqPuKrgqVmHh9HTyxRkeaN/v5UKQ3+RxyLhhi
         518DMRPf1VnMHRrKrZ3RXzbFNUqoQy4SJMAoNyzl8eDeFuOenAhh45jNToUjUoIogo6Q
         CTxRJV4lzF77kZDMKddzRvsqNeeeO8pWe1kKhT1Q9FLWA1q7qay/iFvErMdkMJYY62c4
         lqqNR0kKo0/Df1LT93sEq7EVA58h0wnR/u8cALODFr5nthRkBW0eQK70/Yr+OsBR6ng8
         Bg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964460; x=1725569260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueInwXLwaIVKZNglMY0IfI5rgEO3spGMWCSk2L/UpmM=;
        b=XgB70wg6iALJ6KB1z0L2jFbYMoyS+UsYccPl7aZ+0/xzG0ZnuVeqpBi7frVG44AR/I
         KlEg7Dnok2WwnefeaMzC5UDZ7bfRb/5SmdyoyfLLtK86UN/nUBZjGFoVvOnNmfhkgrgl
         dAHK/Yqi4/3755N1m0Y3A8nmfRU+B0KCUJgpgXORNYsCBL+46y6ivFOL0i4ToZUIdf9R
         RhqHlP+UTZYvWuKyqLbZbbldcDK7U3jHuXqHXUcVNwy9pRmxaZkqAtyJBKj5vGnY+I30
         8TVI1z8dgTqTrjY3MyCETwtAOI4tLeAeOS2FDyVaCjp327JtYauadJWvEPbZfRG6A/u5
         uesQ==
X-Gm-Message-State: AOJu0Yz78G1Sdt57ywCQq/eefFvYPrIjNJM4H4M08GTfDM8ES7mjGI+O
	MCzf0h+wJnBdR0xVVmq00E3yZ1cESNCd/3599FY1anSrCjApKfk9YVESxw==
X-Google-Smtp-Source: AGHT+IF+/KZ2OOiicKDPsbZHDFTQdU5PAg7CFiPMVkO5XDpdO5vdnXMFrTSuCplFSqO8VQuJrqMoRw==
X-Received: by 2002:a05:6870:a34e:b0:270:463e:4b72 with SMTP id 586e51a60fabf-2779013aa77mr4568889fac.20.1724964460256;
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Add GameForce Ace
Date: Thu, 29 Aug 2024 15:45:14 -0500
Message-Id: <20240829204517.398669-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_134741_762693_C96BEEFB 
X-CRM114-Status: GOOD (  11.02  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the GameForce Ace. The GameForce Ace is an RK3588s
based gaming device with a 1080p display, touchscreen, hall effect
joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
and support for a 2242 NVME.

Changes since V1:
 - Update eMMC changes to note proper authorship.
 - Removed cw2015 changes for dual cell configuration. For the moment
   it's just cosmetic (aside from voltage_now reading incorrectly, no
   other issues were observed).
 - Removed USB bindings because vbus regulator isn't ready yet.

Alex Zhao (1):
  arm64: dts: rockchip: rk3588s fix sdio pins to pull up

Chris Morgan (2):
  dt-bindings: arm: rockchip: Add GameForce Ace
  arm64: dts: rockchip: Add GameForce Ace

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
 4 files changed, 1248 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9D9C3DA7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 19:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aCAPPKQB1TTmCOvht3B+OJYDb8XxSYlcsCxhCBDQsNE=; b=Ok6/x4zCVC8gGE
	D3wFG/cjRofI3SKtPojRnDSkQxEs6ziuaiLDSSTVliJ5p/C6oyQWMiWUYvO9xadPVMrLwnMrimcpD
	hXRuO1Zqyz/wZbHaVXmT8o16ySij+xqNhU4eq2n8fV9MSUgmTn40/S8xthawXPTKXbJXKr5mk2PKV
	RBSf28NOeES/w4ul7hYxKCfOLOYAfMvSQSGI5fAbt61kF9zoX7R8le3UkqrcV1dJpJwQCaNMSb3IR
	d/HGwb0NDTTy1KiFlD72UMQndkYdJErk4B5flm/5DQyzgv06qDEm21mz+DvcGDV6Kz6xICd5kJho5
	JXHHamc2ahnort/xbm3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzG-00000004pCj-1bb3;
	Fri, 26 Jul 2024 19:52:22 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzD-00000004pAm-1SdL
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 19:52:20 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-5d5b1e33fa8so739193eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722023537; x=1722628337; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kWiKfDpsEABMzVt5RHgv/hUtn6hfH5Uv0J2xoacck4Q=;
        b=PCyEFmLYt6wZuAVE8Ah8WXvfci6VTdE+IUqhFVZLMIHwDgvMLYgrSNN0Ibto99cBvy
         rCJeI6Bx934f0/e+6tgI+fO+4whwoxS9BVEgqOu4oVgZnQRZf+bOzOVuAOl91NDCJbTp
         PXBZ7B0paYANUZsql9xN6ZDj8U+HbY3r+6hrpo/J0ExhFG79c5SPlmCX+3us6SYjVQTG
         r07GgOkrM4WuIUtdmhcvkCYsrAX7JAzsGjAtyI4Ji71tM/KfF2zGM5kgyDbqq9kAwGdi
         rbz1527rvv0W2pF0/G2dWLreqMCdgtzPopy8uXz7CKPJvUw2Kb4c/sp8/vCVVtOpdz+4
         1kJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722023537; x=1722628337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kWiKfDpsEABMzVt5RHgv/hUtn6hfH5Uv0J2xoacck4Q=;
        b=osteh/3RMvNF+Asy+SpcM8TeK8g+9nFyv6hh9VI2orC7C3+0pG7O9Sv0HJNzQ9/jXw
         gKbFZ9vGB2WOJX+H1VmZdg4KbDLkFcWl/knkWkWNagq9EU9zrNVuuk/P1ZItsdhEhobm
         USB5BwjCiRV25eT7i/JlM3IjaesFxiJtog+i1s9GCSfCjOZHOw8be5PXzvP9/EY8e0++
         1X5zSdBadzt6ysmKXrrM+SCvUI7BT606hH0OF/kJ7cmUSZ2oHpveCsgKXgs1tzAzuP/L
         qMvVpwPTWHh9pGk4/BqN085nNv7DnETd3WOPsSwE44Gk1Tu6Y1JWe2FUjslxjJIjrCOb
         t9Ow==
X-Gm-Message-State: AOJu0YwDPu60fAntxt2I8wxHInnlxDiuuVAoON2ZBSkyea9TInrSw630
	FxnzRWxbEe/1y2h17zZtVkFALyBEL9TaU6hx6IFb21v3iz8VbtOUJZQj5A==
X-Google-Smtp-Source: AGHT+IFzGQYFYc+Wq2ICN64+syjNPm+CWB1f4WLsLxrXrXbZo1HnBb5N2Gu1PudJix1u9maC2OxFiw==
X-Received: by 2002:a05:6820:1688:b0:5c6:9320:4f1e with SMTP id 006d021491bc7-5d5d0eb8144mr830440eaf.6.1722023537324;
        Fri, 26 Jul 2024 12:52:17 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:c1f3:7caa:bc8b:ab10])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70930778069sm889972a34.59.2024.07.26.12.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 12:52:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	andyshrk@163.com,
	jonas@kwiboo.se,
	sre@kernel.org,
	t.schramm@manjaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Add GameForce Ace
Date: Fri, 26 Jul 2024 14:49:43 -0500
Message-Id: <20240726194948.109326-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_125219_412699_DB4023C9 
X-CRM114-Status: UNSURE (   9.79  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the GameForce Ace. The GameForce Ace is an RK3588s
based gaming device with a 1080p display, touchscreen, hall effect
joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
and support for a 2242 NVME.

Chris Morgan (5):
  dt-bindings: power: supply: add dual-cell for cw2015
  power: supply: cw2015: Add support for dual-cell configurations
  arm64: dts: rockchip: Pull up sdio pins on RK3588
  dt-bindings: arm: rockchip: Add GameForce Ace
  arm64: dts: rockchip: Add GameForce Ace

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/power/supply/cw2015_battery.yaml |    6 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1315 +++++++++++++++++
 drivers/power/supply/cw2015_battery.c         |    7 +
 6 files changed, 1339 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

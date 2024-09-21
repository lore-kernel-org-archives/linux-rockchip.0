Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 998F8CF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 18:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93ws40zCCYze8PRB/oCD7JtMdSh8/jWQ2YrcyJ/1wIY=; b=tkUVmONroZcs7G
	0vo2H7dyGxHqs8uiQhAqwTLKTkrT7euDbJ23Dg6G0IzNBO9FyCK/MNV5vlqs+QIfob8+AUSJeOijM
	jlv3hRjsv+xrKcGj3mLxrxIMXoKrYwKAcx2dQkflst+8lfWKSiPE3BRfIvo4f0t7pmsWMafumlyu2
	w/KQZp4Al8Z2hfyVjxjMZODFeszEpnHJj7OZqML/s1D/j1wmcMaaXAMYPN0CQGtmhwStcHjLEBxuj
	JcfTbx/yb8f/2wd0HsaDs7rvblAiv0SbhDp8QJfzwYByawhPF83y+1eywGRaVt7v6nkrTNUr+qL1y
	HmI1QlyqTVFfaXiu4dMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss4rS-0000000E0cn-29SD;
	Sat, 21 Sep 2024 18:29:38 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss4rQ-0000000E0cG-2sX9;
	Sat, 21 Sep 2024 18:29:38 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-718e25d8b67so312337b3a.3;
        Sat, 21 Sep 2024 11:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726943375; x=1727548175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8TcNRX8wnBu48viABh6ZeaYXEnGmE6WjPDz8bISbR8g=;
        b=nf0g0bI5AeJCyxd5/3jDIxf5eWj6AiV95AYm/soBDMP0XIQ7aI9vCuwRSh3ZoAIVFf
         5dUd4AEZuwzmiOi3MQNU4RoAkbFex+N/IMjSIoJ3OdX0JK46UkG1PI6nnT7sCkn8avut
         TpAWOMsEbh+mey9GF64+Y0201MuukqQ/ubg5eUzha2QX9twtniHd7p70UpgArdOjYP4K
         gHp7e6ZTC9mJHTm+Jsvwmv7Eo9KNj/JRr6jCVkJ3ijsyNelpinDdgbmUIE210XMVwld0
         zOCCQgokSwYBvgO44pHKPEkaMtr3PquLjpJ14VV/8eGRN8hr/5IRzs4oOjYMLJB6s+qC
         dvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726943375; x=1727548175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8TcNRX8wnBu48viABh6ZeaYXEnGmE6WjPDz8bISbR8g=;
        b=LQIDoYdxl8ApdkneTszqklpdbEnJ/MUZpziJILAsDIxiX03Yymf9Dr1+IoEWq6L+Vn
         KhX6DaN6FZ0Ix/vnXGJpSI+mw4g0kindAUsOk1LyeFNNN60wzDAdv3XmkJ4cOhBjlEWk
         kHkd6ttLzxXkVrZLPA3lToH7YQW3f8DL4I+Hf373xBbh2SxqpeRfbcI7MsiKVK/ZJRKm
         o5srz+RtRFTFnIjwl6f/TCmDuJXe+Fayu/QDEbuIdEEpBrEqCec5a40PvVXo+dGEgnUD
         ehc73lB6ApINE5R3hi0TAmoZ99ZuFPlssuZIoKF6wPTJNwCwLaBMdsJHbqETYHv+KgZW
         IQHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTlvOxJLQ4z+Gw3tcwtxVLeS2YSDM4swHJDYalAfhzoY6ZKcpAGPhvnAAQRmmWFx1d8UevlAVgBevT4TlV4ZQ1@lists.infradead.org
X-Gm-Message-State: AOJu0YzBxTS+Gja9lw3SXRAW28FW2CqRuRrD20ouWG7moVY//h6z2frL
	Mtg5wnho5H/G9RLuhpjHFQw7FZptRcfzcPC86AUFemweYNq/GsN1vywbVnyG
X-Google-Smtp-Source: AGHT+IF5qI6LDNQNtrOi0Q7hZlGTxrLdAfRYHAj57CP8bB/4CvbSwXv75n4YF229X24pky075M3HsQ==
X-Received: by 2002:a05:6a00:3d49:b0:710:51cd:ed43 with SMTP id d2e1a72fcca58-7199c973aa1mr4170927b3a.1.1726943375045;
        Sat, 21 Sep 2024 11:29:35 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db4998b96csm11080441a12.59.2024.09.21.11.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 11:29:34 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Add support for ArmSoM LM7 SoM
Date: Sun, 22 Sep 2024 02:28:52 +0800
Message-ID: <20240921182917.64756-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_112936_748521_3474CF55 
X-CRM114-Status: GOOD (  12.18  )
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

This series add support for ArmSoM RK3588 based SoM and carrier board.
Devicetree is split into .dtsi (LM7 SoM) and .dts (W3 Board).

Info of SoM and carrier board can be found at:
https://docs.armsom.org/armsom-lm7
https://docs.armsom.org/armsom-w3

Changes in v2:
- Change name of led nodes to fix underscores in node names.
- Remove property "pinctrl-names" and "pinctrl-0" from pcie2x1l0,
  pcie2x1l2 and pcie3x4. PCIE works fine without these properties.
- Link to v1: https://lore.kernel.org/all/20240918165008.169917-1-liujianfeng1994@gmail.com/

Jianfeng Liu (3):
  dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
  arm64: dts: rockchip: Add ArmSoM LM7 SoM
  arm64: dts: rockchip: Add ArmSoM W3 board

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-armsom-lm7.dtsi  | 459 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-armsom-w3.dts    | 390 +++++++++++++++
 4 files changed, 857 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-lm7.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

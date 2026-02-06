Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F709EE6B43
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FKmdoyYAPSK/Rd9H0kq30fKwmDSIhLhRVibDlxEvbiA=; b=vu7jS9o2Kq3+bn
	6r6WDb6flr6oqOU6j/lMs8GK+uHikxQYUKQuNjxdDau4Qjv6Xh90MsR4aFtiVwiuT1bEQMUhTqnng
	Pq3Z8zz8oVcJR9xEwLpqtgMjokxZ6JKF0fweasxaiVTDTTozBSGGXMLRnjLvKjH299Gicp7qb3vXD
	L9MQ1puK/cUHd2R36HP8UxShtTCMv748UKh/vHZy6OAR0fCJvVp8VNWYTQR+Yzw7aQxba003FX+aY
	WOD3dp8Z1JvxupC+cLeMYTwrEueP8J5yq2xDsFcDuN3niyxQQ0fKGeAMrkJ+o7YJtYVu7K5BXFuKo
	yvjhbtHtaVJi55oiZLAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKa-0000000Behk-0wMj;
	Fri, 06 Feb 2026 18:13:24 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKY-0000000Beh6-1WN8
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:23 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-1249b9f5703so1321702c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401601; x=1771006401; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wt243DaEXQsr8P+AufdGik9IHnyievMbf7evNvSL7pc=;
        b=NBLKiTdz+zxlEuAF6YGxmuzbKntcjLGuP1zSu/QADYfX8bvT3clLa7qRSl/GRhLYjn
         NFp1rsK/pQ75bHA/wUCMPet0ZBJSpK8dFYG/nJ4Y+dPIRLdxpw0bl7V6ruvqjGIVXS+0
         0YMGg3cxzRrBsBW2csS2phc2qfHoRpiwrtYYkoZDyI2RYNd7YCaW2KVQupio3mmPKd4Z
         y3DEibB9MYbuKY2VsQbefBFDW9iuTaPE1p9KQ680BcBFWJfJ0vahYZ7dfpX8IyBozf98
         2X0cihHzLlsSIP3bhSf/1399BouKCqQSC7rZjfuokW03pKpfdT3eO4ie96O0IbxlbUBN
         0eXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401601; x=1771006401;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wt243DaEXQsr8P+AufdGik9IHnyievMbf7evNvSL7pc=;
        b=lyx7IkTHNdyamZKGs20r9bIln5vLnqDs38nJq50PZH8GnqwyaKbfodlbBmrw02IwnP
         Gny6ETosXzX7fA6S5078bj6mzirnNK4hU/WQBFQyd9fcuAswANu+XjeOg54XYWyiGopt
         sbtOjIjg8vpt+XLMhnf1QICZRP6LtDxQy249+Nb2BqMBD103lsCN0KKxzlodrm4CNP6r
         gT//D+KCdVs34Fgukk/LlusOlCjV1SGuur8U2EqqHaK2WIxt7+H8tQErsO2u7/cG9Mah
         WrLeED2ShEVFm0uczWee7Zody2TJmAx6mdZpnd/+dRgDl/nCyixdBDZxLQhyQOJFmnWG
         bVHw==
X-Forwarded-Encrypted: i=1; AJvYcCXJUmfg7S2L3oANk2zkB2gTzs7UqFcKdBFcExO4zSCTQLdKotXQTJLDA2gHiyHan6I2D7lV5RD8D+mkbjpPAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQmpmDfcHGVHVIq2RH9FXgB6JX7O+dSk3S4J4Yb4+z32eHRp7z
	+P0N+yg5aJR+wzjjNTdLl+dKU5jOh1whp1VJiRZVJuY10FIeA55uYB+o
X-Gm-Gg: AZuq6aKVzbM2al35dcUyJAxXN6WSvMm8q440mRM8U+1BgHAF/5thn6YWi9hti1aWjGz
	WXEKvE0iEKNgHhekwokEkAeBEx52vMAJCrxQNnluNYZJ7wjdzQ2YXKYHwrww1uYrhV2LZrpErGP
	TDcHwpBiSM2aLylGX7Nfv5jk0yYqSCYmwyc7HIegy/KaeHe0q7SWl6PZ3O0oEy/7GZKmRl+G1lD
	vijruMdtXVuttnNWPCRTiAgziLMqG3rFhJa2meyo5Cgl1BRq8lDQm4VyboajlRyPpgcdEjF8cJE
	lu4lvZlS/fY4oWJFsm8CD1bZwu6YeM+T5unH5A2VFn8Khx1S95Jt2PYn/OjwjqS758rWiFkmOp1
	5ZOTLUUbMtEVvSrp237Sl2Dg2q4A16EIFiqqe/nvey1S8ZA/Rklapq68mD3e+ygdLpp7JEpnqlW
	WyOFeQVEKa77zul7xacfCSirFR
X-Received: by 2002:a05:7022:622:b0:124:b11f:67ec with SMTP id a92af1059eb24-12703fec508mr1446023c88.39.1770401600840;
        Fri, 06 Feb 2026 10:13:20 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:20 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 00/11] ARM: rockchip: Add initial RV1103B and Omega4 board support
Date: Fri,  6 Feb 2026 15:12:58 -0300
Message-Id: <20260206181309.2696095-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101322_427253_D06B8F61 
X-CRM114-Status: GOOD (  12.99  )
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

From: Fabio Estevam <festevam@nabladev.com>

This series adds initial support for the Rockchip RV1103B SoC and
the Omega4 board.

The goal of this series is to provide the minimal device tree and
platform support required to boot the Omega4 board into Linux
userspace with the root filesystem located on SPI NAND.

The series includes:

  - Base RV1103B SoC device tree description
  - Omega4 board device tree
  - Required pinctrl and clock definitions
  - Basic peripheral enablement required for boot

With this series applied, the Omega4 board is able to:

  - Initialize DRAM
  - Boot the kernel
  - Access SPI NAND
  - Mount the root filesystem from SPI NAND
  - Reach userspace successfully

This submission intentionally focuses on minimal bring-up support.
Additional peripheral enablement and feature support will be
submitted separately.

Tested on Omega4 hardware based on the RV1103B SoC.

Boot verified with root filesystem stored on SPI NAND.

Fabio Estevam (11):
  dt-bindings: clock: rockchip: Add RV1103B clock and reset unit
  dt-bindings: clk: rockchip: Add RV1103B clock header
  clk: rockchip: Add clock controller for the RV1103B
  dt-bindings: pinctrl: Add RV1103B pinctrl support
  pinctrl: rockchip: Add RV1103B pinctrl support
  dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for R1103B
  dt-bindings: serial: snps-dw-apb-uart: Add support for RV1103B
  dt-bindings: soc: rockchip: Add RV1103B IOC and GRF entries
  ARM: dts: rockchip: Add support for RV1103B
  dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
  ARM: dts: rockchip: Add Onion RV1103B Omega4

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/clock/rockchip,rv1103b-cru.yaml  |  63 ++
 .../bindings/mmc/rockchip-dw-mshc.yaml        |   1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts |  92 ++
 .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 831 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 266 ++++++
 drivers/clk/rockchip/Kconfig                  |   7 +
 drivers/clk/rockchip/Makefile                 |   1 +
 drivers/clk/rockchip/clk-rv1103b.c            | 670 ++++++++++++++
 drivers/clk/rockchip/clk.h                    |  49 ++
 drivers/pinctrl/pinctrl-rockchip.c            | 313 ++++++-
 drivers/pinctrl/pinctrl-rockchip.h            |   1 +
 .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 488 ++++++++++
 17 files changed, 2791 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1103b.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

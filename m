Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6CEECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 16:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JR8KsYVU/pagyfRbkauz20gI+0wHCaEiH2nmTbjH8so=; b=3nLgjMWXsmb9W4
	Aq0TaxtkJzgbYbcPyCAmcN9LwLdBfDm4ZUWXr+iZtDrA7yMRfxtSnn5PA4QKNajjGnmg2p6zgURP3
	yqGX6credgfWE+7t+9CLOE5D5trB/Y7BJxSQXTNXv1eJx2SDfl3gubx4kKPiZxfnBEyssQbv825o1
	J4fCfpCcO1twszlVYB0YQKPQ2wL7YN4SwdhyJTwNW8U5ZumNpIwnvGS8jqf/JrOhmwJ/QNhh6DRJm
	B+SkTwv/H44kFpFELNSQOnVWa4f+c1SXQiKPwrzg6XUnTNdgvdJVOrkMH02dvktVSdMTaVHTLRIF8
	TTNBcV34xOU7jpO8zKSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYruE-00DbO1-AN; Thu, 15 Sep 2022 16:40:02 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYruB-00DbMK-H4
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 16:40:01 +0000
Received: by mail-pg1-x52c.google.com with SMTP id c24so17800214pgg.11
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=RkWGT9yQHWHTXXm5E5ctM+LbterE/dY2uqCbfyonKt8=;
        b=gumQQAFlGYvN9ynL/A+akjjufry3KtQo+pgN9JFbxSOCca2trA+55rKFztsyTHWXp+
         Q/ZYiWAjIfkrV9xuonsyLrqgO/IfIIBNuEEF+6N2U94VkkyCkh2ZerlcUHW/IYsXwS15
         gJOtRTgF32jkGnBySGruPhD05QGwg3XZHCP695yxkHljm+E4BOOsz7oAH3TZ4x0pFNjj
         bUIiu5mcdYpK67zVBMeQGTsUAMg+x8tdziBDMWz+ZUiLREzFle5JFGa/9aORWVraGIdL
         KsPxYVV1pvOjzYY/RJXuIV/AbAknbo/uAKWWFWBHH3UE+rQHnpuK2788Y1fw+yCb1poe
         +RBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=RkWGT9yQHWHTXXm5E5ctM+LbterE/dY2uqCbfyonKt8=;
        b=QmBuv6bG88NApV4tZJ7Chtf4xfg1ZEWFdt06KUga7PO/k48WZb+wC+UUotUHEf4cXi
         QtWl59cvUjZr0gh1Ejc2YByNeOSlN0XuN9ghZhk48eyRzkleB9fAqbbuCLkInAvaBmt+
         tMbwyam4lsOcDAmTFJaFQ3AexSxmXTkudgS3kylV84/B6PeAUQa8defXNMhdvCfaO+zd
         L2uLZGepM2jJ+QsoA+xFRBJ+6jlbE/p7zyUXJ08now9pBeAXKJ6OQFc05PjtvmUbJzyp
         QldiXxFmnSAQ12DMFyuFJIckBxZVYPuCILd+k78sGwy6Y1wkJXxlkkllORF3veZhreyS
         kMQg==
X-Gm-Message-State: ACrzQf2sLuudmJ89/Fz4A145bosUqlbafaE94qfNT52hqbGtQN3f4gvO
	OEncNFU0ifGvv8gRZzUo5tkQ5A==
X-Google-Smtp-Source: AMsMyM6s2WDMJGPu8tV/Wn9Y9tLoRGIUCm5iTpZGgft29tWl675ANncBYsC09zQCOspfPZ+hKqyrPg==
X-Received: by 2002:a63:564b:0:b0:42c:414a:95fd with SMTP id g11-20020a63564b000000b0042c414a95fdmr623215pgm.5.1663259997496;
        Thu, 15 Sep 2022 09:39:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f820:a732:fc7f:74df])
        by smtp.gmail.com with ESMTPSA id x21-20020aa78f15000000b00540f3ac5fb8sm12841652pfr.69.2022.09.15.09.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 09:39:57 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v5 0/6] ARM: Add Rockchip RV1126 support
Date: Thu, 15 Sep 2022 22:09:41 +0530
Message-Id: <20220915163947.1922183-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_093959_571411_7A2E7D16 
X-CRM114-Status: GOOD (  11.75  )
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

From: Jagan Teki <jagan@amarulasolutions.com>

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

This series add left over patches from v4 [1]. The dts patches
will send in another series as we have some naming convention
updates.

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220907160207.3845791-1-jagan@edgeble.ai/

Any inputs?
Jagan.

Jagan Teki (6):
  i2c: rk3x: Add rv1126 support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add clock controller support for RV1126 SoC.
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC

 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  212 +++
 arch/arm/boot/dts/rv1126.dtsi                 |  430 ++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1156 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   19 +
 drivers/i2c/busses/i2c-rk3x.c                 |    9 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 +++++++++
 10 files changed, 2529 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

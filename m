Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91274ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Sep 2022 04:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mu3sZ5b/Iuj2nhnT6Wf/vEkwEKE0JDXDo4V3ULV8vLI=; b=NW2uExvuGooOLq
	jDg0Y81QXh18UfC0iKFgPyFKT0TxUzgpCQ4sFGD3HPjIsbWcAgrUr6jf1MIr/Va2OFquwWRc19eKS
	lsO0RxQEGe0foK+/pXj4HYWouV+3hl1ZUn79bZJ0+Lp873LTZMSJ7x4LL7VEBnXduE91RkBdc0Rxw
	n1y8lEhboyPyqeKbW/B/WaoSLFzWuU15ps0rQ8puaWhmYMN6b2YRMn0IpWIFxBTlpxf9+k7cE2FRD
	VYJF69lnnReG1Cm7D2fiMlXAumfP68nCbX8FEKd+5icJ9eXmPMYDMRqMc4GA0T+2tWPb0gCC9qYSO
	6fIa+/IiTw6uLXB/IYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXEFA-00FqgL-Na; Sun, 11 Sep 2022 04:06:52 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXEEy-00Fqd4-Jc; Sun, 11 Sep 2022 04:06:41 +0000
Received: by mail-qv1-xf30.google.com with SMTP id l5so4375797qvs.13;
        Sat, 10 Sep 2022 21:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=mnufVPIaWa860PrqWW20aPuK+AZA/lbKd9aS/sEntN4=;
        b=PLb2wHbQ25Ejf1mcoH7bdgd1mbh0yf6VzcsfAcE6SOaaO+slxLzn3eLfi4Q3fCIFEX
         970nwzJb3JKgxW8l8+h2Rb5ICJ68UbBORBhv4kTGdECunisI6QtYXlK8U0M6jyvwI821
         jEJe79gej8kfPvxFoCRUY4nbN0svYZMKtN66rMdTROqnW0JJHcr8jBp5CEGpP/Hq+Tbw
         jDh3DeBzIlHiEr7owrYWdCLQqJsrAuMXNwoKPVNjRmIcpB8gFYnjwOcgRKbR7/WG6IPY
         gPip3jQiCZcZvStT0Q2DAm3T3IfORF/2mOwjLFv80YYKE1lcWafks2oscqi+fNgZYYpV
         Xh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=mnufVPIaWa860PrqWW20aPuK+AZA/lbKd9aS/sEntN4=;
        b=Or7YEY9GmeP7pwPf2qFJzGnL0S6GGn5RoTnN9rGkEamNUZNewYSpIiG4Uqi/KQmMF+
         buf1jRzQB9u5eJTJx/u1uOitcwUYkslJZDnxz6CrPlfd92rL3O43Ucjkfh2r0rCbvLei
         8RLi93qPFeW+LZGJdLWe2Liocl9ZRxFDSuM3+yylCd6pPkGrHW5Ly/RfUxIYokwJlzpL
         FgDYV63OySXUJKCBqYYYyheKSXcXycSrhpXknL85vavrXi3E7oiCbqpRdeOBN4tEXagY
         TK+0yO7zt9flng8l6NlMQfdlytRgsLQaOSXmEaDFMPBl8kPIARTuzY/fV4j5km8qr1oL
         E+Mw==
X-Gm-Message-State: ACgBeo0maxeYTs7bXZm1tOyoylNBjAcmwSb+EIURDhRVTW3QhjX3qiXM
	glLX8AMlddTgCfEFfqw8/4w=
X-Google-Smtp-Source: AA6agR46meu1WJI6gR+abO8aQh7nqYJ2PVDkjHurgdsbC26t61U8oE/7WCF5eASLd1gkGN9CSF35CQ==
X-Received: by 2002:a05:6214:2468:b0:4ac:8786:f20e with SMTP id im8-20020a056214246800b004ac8786f20emr9060109qvb.50.1662869194791;
        Sat, 10 Sep 2022 21:06:34 -0700 (PDT)
Received: from localhost.localdomain (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
        by smtp.googlemail.com with ESMTPSA id i2-20020a05620a248200b006bba46e5eeasm4569299qkn.37.2022.09.10.21.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 21:06:34 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Sun, 11 Sep 2022 12:06:28 +0800
Message-Id: <20220911040628.13774-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_210640_665084_3DFE671D 
X-CRM114-Status: GOOD (  12.93  )
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

NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
stores the MAC address.

FriendlyElec ship two versions of the R4S [1]: The standard as well
as the enterprise edition with only the enterprise edition including
the EEPROM chip that stores the unique MAC address.

1. https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R4S#Differences_Between_R4S_Standard_Version_.26_R4S_Enterprise_Version

Changes in v4:
- Removed `mac-address` cell as it breaks the standard edition

Changes in v3:
- Added address-cells and size-cells

Changes in v2:
- Added the size of EEPROM
- Added `mac-address` cell to pass the MAC address to kernel
- Removed `read-only` property in EEPROM node

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fe5b52610010..42c99573ab27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -68,6 +68,17 @@ &emmc_phy {
 	status = "disabled";
 };
 
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		size = <256>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
 &i2c4 {
 	status = "disabled";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

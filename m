Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95679C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 03:45:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61B83601FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 03:45:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61B83601FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z/aLoAP4jCcVTrtKbkD3Sjr2MN1u8gQ5pkG0iwIweSY=; b=nGEqDYplCW9gsg
	n6xXn7luuEJWmyaPQUOehDaJLvZIafG6ASrFa6b8OXikit2D2j2o7nVNlFy4kO5wjVtWjkBTw5Pt2
	MIwgzANMqcfpi94iorZ/kdr4opPZi0fovOOWHtj0YxvSdwJz6NhW5OOJoZ/ZrLfojGUn4AVfgImbc
	+bj9JG1BazqFodegq4d0w5VSfZ56Ntc+Oi56kxUjJNPuc1iQ5Hvd4GFeYjGf6CmCQJ+BfptGEL2Cj
	T5aCNOirk6TABrWG9Z4DwfXxzsqIXX/W8N8HCiwtnuimFygZ8r1bSRB5O15XxALmvbST6Aq9c17Nb
	UHC8PoJdyYA/QOMl3ODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvXLr-005Y6z-Ch; Tue, 22 Jun 2021 03:45:27 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvXLd-005Y1L-0S; Tue, 22 Jun 2021 03:45:14 +0000
Received: by mail-io1-xd35.google.com with SMTP id f10so12665881iok.6;
 Mon, 21 Jun 2021 20:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T5uuQnSP9UxYJq3+6Mm+ZaoiUY1KfaxszzM+7JAhhJE=;
 b=UQja5nwsSQGYrlIHxyde4FGTx5YZcwWXh/aJSgi4mfgV9g5IqiN99E2YoMfw6WLOYF
 U2LISx0h2pplGn8HtN26stT4Z1s78kHGaJ+Ln463TwoWimN0U0VUKAqmujteUuBHaV4P
 fTFUYoxctuxN+LewHammG26IeU3WoVtv2VV5e5GqlEAFf2VmPb7qsb3MKzfm3/RM4yaZ
 rdQsHDdlLZrzoNdRtMx64ZWJ8JNRmWRca0bDHZ6xDbzczhYk3cHj2riLwNxoMtWd/Wul
 wlvNKUKYp0JDRd0kfyozUgDaSLn2maYuGMbsy3olaU7GSaEKzx0tCBXx8VqhwP+rPGkZ
 DhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T5uuQnSP9UxYJq3+6Mm+ZaoiUY1KfaxszzM+7JAhhJE=;
 b=FnZpxgZ8ehxAwSZTusrT1gWhagpd1QvmH0JRXafR91kNK56kxIg/lz1Q3wXaToFqmB
 aZkLQnvDT2ZVRMByQ5/N6BpQbCmTl+umn/KyYUDq7VoHnhWlcjsrXZSeXhTUiiK/B+47
 3OlOCbJvZ8Fv8r2hZZl2PCUHgEviEELos5e8DNMCHAEp2V32m76BJioD2PayLFoLPbPD
 CiOOdp6VZKpTbBvThq45CAdYs+X4nKlp3LMa1VPr68Cvs5DqbxRYfSD2jPFT5b87cg7z
 Kj4kDyBaWzH4qK5aXfJL+EkXU0Ey44A0GGluK7thPW4L6v3LYzzHSv9wtTzGXw3ccnq2
 sQXQ==
X-Gm-Message-State: AOAM533Ks3STNdb/3PCTPfBOcJGiM7wBMOesv05eVN559PGzwGbFCc83
 xnmzD+ksMwHCFWpsmAFSbeU=
X-Google-Smtp-Source: ABdhPJxiNOtNjtuER6Rvq9RhV2/1tkUyrPvC/FngOqmT83PJmaETDEhgkjWY1xu1/Bno/ChlJ8rqtw==
X-Received: by 2002:a5e:8513:: with SMTP id i19mr1120380ioj.50.1624333511502; 
 Mon, 21 Jun 2021 20:45:11 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id t15sm7042329ile.28.2021.06.21.20.45.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 20:45:11 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Chen-Yu Tsai <wens@csie.org>,
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Tue, 22 Jun 2021 11:45:05 +0800
Message-Id: <20210622034505.18824-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_204513_130304_6E6C1078 
X-CRM114-Status: GOOD (  12.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Changes in v4:
- Fixed typo error: `nvmem-cells-names` -> `nvmem-cell-names`

Changes in v3:
- Added address-cells and size-cells

Changes in v2:
- Added the size of EEPROM
- Added `mac-address` cell to pass the MAC address to kernel
- Removed `read-only` property in EEPROM node

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index cef4d18b599d..cd5541971170 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -68,6 +68,26 @@
 	status = "disabled";
 };
 
+&gmac {
+	nvmem-cells = <&mac_address>;
+	nvmem-cell-names = "mac-address";
+};
+
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		size = <256>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mac_address: mac-address@fa {
+			reg = <0xfa 0x06>;
+		};
+	};
+};
+
 &i2c4 {
 	status = "disabled";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0517C48BE5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 09:49:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F602613C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 09:49:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F602613C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r8T4o2ie4GEe6+GrkcY7kXjcgLXA06bv4syIBE4ajtY=; b=4EpXwhLjsvh2ZG
	kr8O4NHy+n9pOq0fxVT4Pu3GXsDmiywnF2OP6qglsUNkI+6Aor4I9igd9pM+SshCYFiQKXFgU+km9
	CCuIY5sFJ3jblPUcN9KjntreR7jSum88/Och8bF60jaMAvQeGYZnUblx2KmMdkdoQyD9SRe2rTg+b
	FXky5xUHs8QXxjT8Mc3VU0wi98ZTW3DbY3zSXLJllb8hPvTvo+siZuQh5J0Odah4vXpXpOcvo3Yk6
	KTR290tBMVgwCDXElSe5FSIhJky75V55XQbhIQ0JxVUpTp6xRjG0w0OPsxTRKGBVemKB+tr8vtx5w
	VYwZLhktwNNOTBhrGpYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrHJM-000IAU-Ho; Thu, 10 Jun 2021 09:49:16 +0000
Received: from mail-il1-f172.google.com ([209.85.166.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrGmL-0008bf-EM; Thu, 10 Jun 2021 09:15:11 +0000
Received: by mail-il1-f172.google.com with SMTP id v13so1135189ilh.13;
 Thu, 10 Jun 2021 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S/78X0f7LqdRdmPi/tp9TPrXzFkLBCtxmrNk3TI2dNQ=;
 b=W2Jm6lywEn6eiUCl9Zb+34ejPk2vXPHjqkTN6IqUT09FJpJmNUPd0NfZzqphFg75sG
 472bLe5QXynhuYVpUIEWi7fiooWU+xfgJlX7IrZ7C5PY+Uu3shpgyhOt/Rz/IEjckAWL
 9wvjCSru43LYaEXN4TblGDcR9RGq9xBRiqT75ywHBX1+HpAJFq1vAPZLnwwAmK45yCVz
 Wfum08TntgRmlpslTBnDoSTaAN9fVIyma07r4dqFA+8NjCCPP8PswOfcwxRE629qFko0
 G4y1Y6dzSDH1DxB+xa8Et6hmIueD2l6e7NlgqVnfy2D+jaYNL9SSFdMICunh5QFeq8+B
 wLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S/78X0f7LqdRdmPi/tp9TPrXzFkLBCtxmrNk3TI2dNQ=;
 b=a4Zkm/HKsoVvLEI5J3v7XZcnMdxYeFE6sqhH8ftRSXQzVakueaQ4WK2Aam9g2l7h6P
 tDJy1ZR1NHD3fHyA53SG608yrqzQAh8QDfyvwGNYrffvoCLp4jWZ1r/8c90INsBlX/vk
 HbgfwT2LBuhTYROX9lk0381ihcOEK30vD3DpU8DkM8a3/FIEXaS8756kCPcak5oIUxTA
 Pt0+nl5Rhn3SU+qRa7AnVQyrxcMK2R9ReUwWIPFfARRx2N+MHoDq9deGWA4rtWAhX37r
 zfZhfmBQn0t1n47tnu7aA+AQGSoSN0XW+LuOiwuRSUi8tecaI+7GyOacIE+HwnTMsD9x
 tQgg==
X-Gm-Message-State: AOAM5333Nue3so5ybjLYfs91JXliQEXsCSkdPSCfGg2EyY7OHpByYJBo
 FdZNV5CfC3SdYIYqh7RsRsY=
X-Google-Smtp-Source: ABdhPJzYSfbe3hWJjYplEeAqz67k/aL8GarfKYOygb1YS3OgVA/VJNIHW2BrKjAJ6NQPA8jI4HE8Ug==
X-Received: by 2002:a92:cf0a:: with SMTP id c10mr3094498ilo.97.1623316446966; 
 Thu, 10 Jun 2021 02:14:06 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id e14sm1398266ile.2.2021.06.10.02.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 02:14:06 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Chen-Yu Tsai <wens@csie.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Thu, 10 Jun 2021 17:13:57 +0800
Message-Id: <20210610091357.6780-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_021509_533944_5D49434C 
X-CRM114-Status: GOOD (  12.58  )
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

Changes in v2:
- Added the size of EEPROM
- Added `mac-address` cell to pass the MAC address to kernel
- Removed `read-only` property in EEPROM node

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index cef4d18b599d..50d3b11eb925 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -68,6 +68,24 @@
 	status = "disabled";
 };
 
+&gmac {
+	nvmem-cells = <&mac_address>;
+	nvmem-cells-names = "mac-address";
+};
+
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		size = <256>;
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

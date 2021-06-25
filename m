Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C89C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 16:19:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C8BF619A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 16:19:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C8BF619A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U3bV9rv/46rf6zaSrjWj2Ej6oAm91CXwv+FzgazD65U=; b=WOvPIEPzVS6owE
	MZsxcqGp5g2byrM2HK+2qL7n4dNU3UDEb7ri7mP6oz1ZY8WX4MtzLH870iBZ3NwnpRDVcAaV7nXop
	tWeNeF8jtNDqJ88T0A6eSQWyxVkeHF4fZ/3Z0PBzPTDRYY0j+cvj3dEpwkq/ZYioSBNPg5y2/xCFv
	TkISIwNUe4cvgTtQI7cTdzXZ7pSl47TpS1SARqglEeZp/Fge4YtdL81IJ7e+f+/+FHL1LBeP6HGlr
	pF0Icv+aWPDuyXBgGznNwx6h2aL0OTQz45ZXpy90B5qctwRKYrH5cedXmQWWs31iqfSAAed634a6T
	fXmZ7J4DP6lKIwRNUbMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwoXg-002HEB-R5; Fri, 25 Jun 2021 16:18:56 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwoXe-002HCz-F4
 for linux-rockchip@lists.infradead.org; Fri, 25 Jun 2021 16:18:55 +0000
Received: by mail-lf1-x136.google.com with SMTP id x24so17070855lfr.10
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Jun 2021 09:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyyoCvAs4IqMEjStIn6e1vyX++EF879EwODalbTY+g4=;
 b=vCH9G20TxhCuly7rw5NaQAtWpMbxL+MTQfVwheLlRpW7v4sWc9llz8EWyjaltYWvI/
 Wnnj/XvUMJzAa69N1QJ8Q+XoakBdgDYa/0W/t5zjYeyK1ZpfVqoMhKOYswzkp5nDr7Si
 gfljVtvpntPZhJzdv+Ml+7BVhdg95qJp+f0SoDdmfao4YIHNulX4Knjb0taBOwVStDDG
 Ei5cRcSfbMsMTmuedGM9up58AtSnvHJpY67Ye8AavgFvWfNtOVTBakVMdLGgLqXYdKM5
 xD28QYQ15GTCn01MdqThWTBa6NxJiYwSwCSorNJUPIS6FmGHpK4YJ0FCIBD/yk++Fzvk
 OY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyyoCvAs4IqMEjStIn6e1vyX++EF879EwODalbTY+g4=;
 b=X4eXAKIm5GSt8L2NhgCNxYwRBGKrU+NG+j4ztKUZ/ob6WhxIS7wKaaYttgATjMktOK
 ZTNcH5pqpifCNvWmCMftsvPJoNhm/edYEUkHRJhzj3Noudezzt5h7zore3oN5sUv1NJ8
 s22/LeEPswA9BO+YmjKMFUO4HFG8aocI055YEcD905bTX2Q+642rIHhsLkDagLwIoXIb
 Z1OnHbpiB2rfx5H6Dv5UoSJN7t50uPlIOTMu8ouLDRxWlmJVEj7cQA4P9W+ZmC19Xil7
 4RTram+QKYbfGUTOs5zoqOQQcv1uy2As/U2IV320azLq8d1uA3mmkXI72SDmJhigulH7
 2eNw==
X-Gm-Message-State: AOAM531qeE/45HAFiSx8VJRi+g5rIsDX3IqpLpzGyTQ0mJE12HHrp3pI
 BYOnZRBMxqt1YzBhjoOU0bNkqZHNPdzOsg==
X-Google-Smtp-Source: ABdhPJwCgHj2z9avBE+IH2xZ5Wlx1W9V12C/EghT7cOQsFjKp6OqQk08AX3uyEyT0HdqFkRjvMbQuQ==
X-Received: by 2002:a19:4805:: with SMTP id v5mr8837865lfa.338.1624637932050; 
 Fri, 25 Jun 2021 09:18:52 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a31a:4240:8000:225:90ff:fe02:db0b])
 by smtp.gmail.com with ESMTPSA id bp34sm548782lfb.125.2021.06.25.09.18.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Jun 2021 09:18:51 -0700 (PDT)
From: Maccraft123 <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org, heiko@sntech.de, macromorgan@hotmail.com,
 Maciej Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH] Add 520MHz opp node to RK3326's dtsi
Date: Fri, 25 Jun 2021 18:18:44 +0200
Message-Id: <20210625161844.650303-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_091854_546572_9BEABFCF 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
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

From: Maciej Matuszczyk <maccraft123mc@gmail.com>

According to Rockchip's BSP, RK3326's GPU can go faster than 480MHz
This was missed when gpu_opp_table node was added in
commit f43e351c9630 ("arm64: dts: rockchip: Add gpu opp nodes to px30 dtsi")

The values in rk3326.dtsi match Rockchip's kernel,
but Odroid-GO Advance's kernel sources point at different microvolt
value, that has to be overridden in board dts.

Signed-off-by: Maciej Matuszczyk <maccraft123mc@gmail.com>

---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 13 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk3326.dtsi           |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 49c97f76df77..ee898cb12080 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -258,6 +258,13 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_opp_table {
+	opp-520000000 {
+		opp-microvolt = <1150000>;
+	};
+};
+
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <16>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3326.dtsi b/arch/arm64/boot/dts/rockchip/rk3326.dtsi
index 2ba6da125137..19de275d05a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326.dtsi
@@ -5,7 +5,13 @@
 
 #include "px30.dtsi"
 
+&gpu_opp_table {
+	opp-520000000 {
+		opp-hz = /bits/ 64 <520000000>;
+		opp-microvolt = <1175000>;
+	};
+};
+
 &display_subsystem {
 	ports = <&vopb_out>;
 };
-- 
2.32.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

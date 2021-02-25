Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E57C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 08:20:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBC6564EDB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 08:20:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EBC6564EDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fomIpYfZxGhus0RnYr1dKMrbUKYfHfZSMFa87vs3eRk=; b=JKt01fRyoYMTHAamPJpCyCzT/t
	WhVCvWKFnc0ZOyC8CNoxptqOw5vx6Fs9h3FyyutDscNAMzL/6GOH0jSomNzUOrk2p9BZHd0BfDqeS
	rE5U6mUNORFPSAmXaIG2h/CGzfHCJDNYWu0Jr7yw1Y3i2LUGHl1CMtEp+0DwWOgeV1Hi9WWYi93/k
	UEZZRQbNpQuCnekAfBNhQOI8pqyWu9LLbCXugsmzX/QnYxwzGP5lChDNk7s2X+0pR82UI/yPwQ2KL
	xxvC32TkP+d/sTmafSuMi4AlzZ3CKs8XrSgR00V1q20ogD2eGaGxylAFrvu4iLPmwwLrbVNO+/X5A
	jVvCA3XA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFBsg-0000DV-3s; Thu, 25 Feb 2021 08:20:18 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFBse-0000D6-Hp
 for linux-rockchip@lists.infradead.org; Thu, 25 Feb 2021 08:20:17 +0000
Received: by mail-lj1-x22a.google.com with SMTP id u4so5496439lja.3
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Feb 2021 00:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bVgkKmDOJctQH3otujX9JB1Xjbr7KeI7AJ4JMl2s8BA=;
 b=UbNqlH2ttpldU2K3meSC3qRC5XfmqKcBXZhY0fW4Advycnss385laNwFBHb04qql5y
 h8pR9SAMENNAAYYe0DD+d2Y50RaGbdv3VJjtTvrQp8SosqtH+AispUy6Xe7Nx6XPL9q1
 S5XdDPQpK3gNxvJ44O6/754mB9z80qyGGaL/Owx1WR4fbKnkakf7ZrpYCh4O5ueEVTnW
 uds1e/+j9Ih1+lM/wEJ9l7rfkCoe9EXw5syrBszoQO1aGSI5bGHPSmRMR6FmK52knx3T
 Hpr8fHyfjIrmhfCBoZBinR6WMoNobqXVuFZqZCUT1ZKRKLrwAOFgPBi9MBZgN+oK4xRu
 rnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bVgkKmDOJctQH3otujX9JB1Xjbr7KeI7AJ4JMl2s8BA=;
 b=Rc14N3w7+ip/ySlbKKP9I3fUCfRzpKtMKLs+b3NUg/JW5T2ZUX0ndX3aMaBSR8IPpF
 49K4wXmOPDYo4IrE5HgUxaLvI1ZGsgadbsGAi2By0tYugwi6EotgegFPwuZzyMOC62AX
 kYzLHNwqQ9kZZ5DCOXIjSoq1NXAgyYWoR7cj6o0ZW5XMDih56A1xB8FUCYF4aNOYtQHc
 xzfJshYZZXjYVen0MPl1+nrfztXIQNpxlN6lk+Ht+lOSvSmtfyLL/8QZnlY/ZIYhA3Zj
 g2TXB347HBd/HX7BioK6d+m+LBaMpsIeruQYa5reKlbPpI1UFaFPYEgEiIV7hrwxAKMT
 dR+Q==
X-Gm-Message-State: AOAM530dW170HCPBATIG1YN8BzB9PQNThjCRthq2u7+jDx3CXn7sYlDb
 InxTFRFE0+6n/MxqoN3IJ6k=
X-Google-Smtp-Source: ABdhPJwoLzma4ewTbqHGpBbZo15gbt9BhPpM21jSVDHCQ0aKfDx3LMwly+V/SRm1/iK3EC8CV2h/Ng==
X-Received: by 2002:a2e:9158:: with SMTP id q24mr604668ljg.389.1614241212760; 
 Thu, 25 Feb 2021 00:20:12 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a31a:4240:8000:564f:461f:3bb7:c60a])
 by smtp.gmail.com with ESMTPSA id r8sm1017006lfc.207.2021.02.25.00.20.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 00:20:12 -0800 (PST)
From: Maciej Matuszczyk <maccraft123mc@gmail.com>
To: robh+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Add gpu opp nodes to px30 dtsi
Date: Thu, 25 Feb 2021 08:19:44 +0000
Message-Id: <20210225081943.127714-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_032016_734458_BAB85F69 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c45b0cfcae09..235338927a10 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -984,6 +984,27 @@ nfc: nand-controller@ff3b0000 {
 		status = "disabled";
 	};
 
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <975000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1050000>;
+		};
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			opp-microvolt = <1125000>;
+		};
+	};
+
 	gpu: gpu@ff400000 {
 		compatible = "rockchip,px30-mali", "arm,mali-bifrost";
 		reg = <0x0 0xff400000 0x0 0x4000>;
@@ -994,6 +1015,7 @@ gpu: gpu@ff400000 {
 		clocks = <&cru SCLK_GPU>;
 		#cooling-cells = <2>;
 		power-domains = <&power PX30_PD_GPU>;
+		operating-points-v2 = <&gpu_opp_table>;
 		status = "disabled";
 	};
 
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

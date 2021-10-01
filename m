Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E31C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 16:17:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99F706138F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 16:17:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 99F706138F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XoEJnbxsUdM2rPf0TNG5ezjasdlx0YDWW1/7ZnZKtEo=; b=qKWfz4hRsaJS/b
	L/t+vsY3Ix1pnTfMo2ywlynZJfi6BWeAUXz3uIJla35vtVES5RTvU4+JWR0C3meda+Qkbxc4i24fp
	ZhlcGa/wEu0RfJJ8w3AFuuuQXHoBSZr1SJAkww9tppzSum3zdafh8uqqTDo8ck0D5KvOZNXBYRRu9
	snNlFYXzf1qD4U2d1ZpcmiR/UHfOs7F7bHRTbzM97R1IbeDrtAUOPCOQCUnR35sj0U4mNOBL5EEVe
	TJROoWvk2VVXoF025WNn6wHjq1DJiB7hPlLPIaYiyH69eT24jNceb/adSIThkn2csz7UKCfsTvHis
	UPCpmosk8mBTXL1khdAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWLEF-000pYc-T0; Fri, 01 Oct 2021 16:17:43 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWLEC-000pWm-O0
 for linux-rockchip@lists.infradead.org; Fri, 01 Oct 2021 16:17:42 +0000
Received: by mail-wr1-x42b.google.com with SMTP id h15so14692966wrc.3
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Oct 2021 09:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EzWy2nvLFCIuBba5ki21B6r/rdWPB3y7nLXxAimeS4w=;
 b=b2lLhCxu6V++Sis/mzcbImRUwTxDNoulIsuf3Sczqqkb3P62Hf51DBU/V8Y3dCY3HN
 rAmHWI7x8HxoS1AXDAOFpohrtioMc5sxKrjF2RRS21tl0Q0LxeED13VDEl3Vvo8frIai
 BlIbUZwOO//b4X2b+byOgLkAukKJtKa9Xk1MxDXLHsdr/Zo06R772bxPkEq3aF9qGBuR
 4pbDWJPO3Z6OXFcI3PV0P7g6fjuamXz0lGxqjXqyeqIukxKfoWOPY77DiZPPnRTiNDQS
 EFEaiN1U2lXaefXvFwMwxYdcTAJpXGyK8Xr0B+VmMShKQwaHAu2fP2MGxb8Et8Lq2m4R
 56WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EzWy2nvLFCIuBba5ki21B6r/rdWPB3y7nLXxAimeS4w=;
 b=hOXBIiIb9Y+uM5f8kGZDnUK33J3Ga0i2HVmacSDPfFE/y6Ev1zaE4gjSxug1EHsYNo
 vigrT2a5/eI5UMckMZ9XoCsxzIjqf+PwoljzyFrVHBvkoVQLXCiYn6k00RMCo1nISzMo
 UJ3mKOmdZgRD1q6haBFkYFxMrzti35v68DhiBVTAhpoZ9sRzRz4mfX5IpeSKqJHx0r9s
 qO9/TQyvBmkQoyJEWcSf3hF4gBPQBemp9wOPZnr95ewHPx9OJaQRiXZMmg9ckvl241aN
 gkxj0HfyPZBPAODV+NtyBs2NQ0jzlHDtDhvUxLiHSu4ZhPrv4KJu8NRjbN7k2XLPlUEY
 NkNQ==
X-Gm-Message-State: AOAM533DHS8C/ehuvJLykoJ5deB4bt4nP0O8r1DEjntw8uHelOCOgxh4
 8wTTVReDqpHDuJHZpTlzIthfFw==
X-Google-Smtp-Source: ABdhPJwgdmNt4q6CM1GJcIjHlayiUH7mjwfnFg2ReVmLQ9E++96gykDFNpXlrlKThqqyafXizNYSsg==
X-Received: by 2002:adf:a3c7:: with SMTP id m7mr13417466wrb.339.1633105057911; 
 Fri, 01 Oct 2021 09:17:37 -0700 (PDT)
Received: from localhost.localdomain ([82.142.20.44])
 by smtp.gmail.com with ESMTPSA id d7sm6168206wrh.13.2021.10.01.09.17.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 09:17:37 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add idle cooling devices
Date: Fri,  1 Oct 2021 18:17:28 +0200
Message-Id: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_091740_837582_4E7EEA43 
X-CRM114-Status: GOOD (  10.92  )
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

The thermal framework accepts now the cpu idle cooling device as an
alternative when the cpufreq cooling device fails.

Add the node in the DT so the cooling devices will be present and the
platforms can extend the thermal zone definition to add them.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..9ac232ffd284 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -124,6 +124,11 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <10000>;
+				exit-latency-us = <500>;
+			};
 		};
 
 		cpu_b1: cpu@101 {
@@ -136,6 +141,11 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <10000>;
+				exit-latency-us = <500>;
+			};
 		};
 
 		idle-states {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

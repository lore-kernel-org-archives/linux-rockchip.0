Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC6C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:46:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FEAF60E97
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:46:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4FEAF60E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AqZLZYd7v2H6wfdoLCoxCsoCZcRbVNF6VCuG8uUkMI0=; b=M33jhQuK8UMZar
	ekkLh7l1jKbQo4LROMGpaJiX/Tp7KjuUOlL1wc4spJObIL226KG4ci/xuPp4ZT1fhiJk1FGgx7ww8
	yW6kwjGTJv8aqdFmWPyaAxNdqusgmNKz4NFR2F13PbeuemPYsnzJ69m6dioWcWRSWO6F9is3lc5/U
	ot/HlZjvV5CBhpowPd8LklE4yKzy0STnIEL7OH/uHT0/JS7zaLX2EWt7L5YJG1ChogFFOiGrRbv+I
	B5aMRoAB3uLX6HfovXbdCnmuZF+6Xat07sZbB8ZQ1u8VYnGg1ZzKb5T2vDTJQWoVs2sZCMQcykm1a
	NcLnKfclcJQ7t4fSK/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mblt3-00AtOg-7T; Sat, 16 Oct 2021 15:46:17 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mblsr-00AtM5-1G; Sat, 16 Oct 2021 15:46:06 +0000
Received: by mail-qt1-x834.google.com with SMTP id c20so11586047qtb.2;
 Sat, 16 Oct 2021 08:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxKkdzMBTPnwglERy6orEJxvMW5PnT3lhdonviWbxrA=;
 b=jxAQLXRtafzAK2KPr8cXtf7HWx+MOpOfHAqdaFpBrvpRbFa6gmcD1nO7Rde/qXkcuq
 6+7laDGEiCNZJ1N/tdjHoyMlF7Mv+V2P8LqUT4hHYgWUQO/Fpr/0sWlTIQBTc8b02fC0
 JY8tzTZjsBEGK6OUzb/01ra4NfypDVJAbBN3Fd+o18iYDvr7x3+xpEWB0brozXHlMq3k
 KKGL1LCxcuMel0u7mQz8zHgCtEttsXQzJG0u9ayT9VyxNQHyL7677oyewGRRxkw4OikX
 mZHzrX7vHKS75AW34mOM6mNbmjZs5O7eEh8b0gXbwU7nwf+q4vUYw7Q9oF05Gn+vQZnk
 AyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxKkdzMBTPnwglERy6orEJxvMW5PnT3lhdonviWbxrA=;
 b=4toE+BaIIpjpIj0fWpwFWa9lXLXYIB2bSNUNMn0Ez2PLEFIlGa1f5Ua8iwG891tGcr
 TkSC5zacyAUlcTGxFPqF5Sq+a5gJX9wV9uyBMT8vL5/RTKJIgcTt3HOos9XTm5U0GGzU
 vFabekgu/O8NXbCybUzFjK+UvWEFZekTgFG01syAg7zmx1ELvknP6IU5lJdG+E4Sfd+W
 HBlzTVsGUA0JowtFg5iUlSltjwAejOCgG4ULpE7kHwQZD6BaTkAGmweppNKk3O/JlhEx
 Wh9c0qw7jzrG4fRcQhEgEfcUyTuTHk04pV/fT+XqUq9eP1q4uzR66nUqeyp2TIJXTKjk
 n8ow==
X-Gm-Message-State: AOAM533QXcaZOV4dLcnL/RMGv38csLL33dBZFgwgH2ULsuBlqeo2uhxg
 ojcbUXYgz9eYsr0KRnq8o5A=
X-Google-Smtp-Source: ABdhPJwKvMVm20Ye1VKw6BXYU2GSQWOw8DtwpsyBUc49NqOoOizAZ5LoeP1JiQEFvAzhy2VJvCx1Sg==
X-Received: by 2002:a05:622a:20d:: with SMTP id
 b13mr10337813qtx.117.1634399163014; 
 Sat, 16 Oct 2021 08:46:03 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
 by smtp.gmail.com with ESMTPSA id i13sm4047978qtp.87.2021.10.16.08.46.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 08:46:02 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 David Wu <david.wu@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Cameron Nemo <cnemo@tutanota.com>, Robin Murphy <robin.murphy@arm.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH 1/2] arm64: dts: rk3328: add gpu opp table
Date: Sat, 16 Oct 2021 11:45:44 -0400
Message-Id: <20211016154548.29555-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_084605_115042_6DABB548 
X-CRM114-Status: GOOD (  11.12  )
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

Add an operating-points table and cooling entry to the GPU on the
RK3328 SoC to improve its performance. According to its datasheet[1]
the maximum frequency of the Mali-450 MP2 GPU found on the RK3328 SoC
is 500MHz.

On my rock64 device, under x11, glmark2-es2 performance increased from
around 60 to just over 100. Same device running glmark2-es2 under
wayland/weston improved from just over 100 to just over 200.

[1] https://rockchip.fr/RK3328%20datasheet%20V1.2.pdf

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 26 +++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 8c821acb21ff..5e1dcf71e414 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -532,7 +532,8 @@ map0 {
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 					contribution = <4096>;
 				};
 			};
@@ -617,6 +618,29 @@ gpu: gpu@ff300000 {
 		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
 		clock-names = "bus", "core";
 		resets = <&cru SRST_GPU_A>;
+		operating-points-v2 = <&gpu_opp_table>;
+		#cooling-cells = <2>;
+	};
+
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <1100000>;
+		};
 	};
 
 	h265e_mmu: iommu@ff330200 {
-- 
2.30.0.rc0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

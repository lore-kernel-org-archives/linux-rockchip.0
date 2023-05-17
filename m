Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB2D1C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 07:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h7/Aidcan1rH6zrLBeUU9qEf6QwDmzRF0OrNNPD1ehA=; b=30Hxz0aIsSDpDK
	W4Bwt+vYOroGYGHTUF0VrgN5BQIBKbBRFXFiNUUwkEz+9tMxF82hrI+GS6gHZI7vsg9s75FH8t2tW
	I0WmHexgpnNqYH2qZCGvo4I1vH/zKgNkA0aswTFBiL5F8dlsjlyyZMx4nxl0bcQUJmm/ivWSTLwkG
	9XJMrJTPvUB27ll0YyZj8Eeg9TxmeejsL8WkciBtjuSNqAniC51+uKP/outIHASoY0IrhvEf094Yd
	nIEZMhBKwb7aXm6YKdWvQ5no2+y9YkO/fkQFCLZQrMBxTc3FQ75/GvBf3BlE6X1a+fdzREhwBwUV6
	C0HpxiARnGi1rzpbZ5nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzBJx-008cX4-1q;
	Wed, 17 May 2023 07:11:37 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzBJu-008cVM-0r
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 07:11:35 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6436e004954so396871b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 May 2023 00:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684307491; x=1686899491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7oK29RZHN7it85m4EHoF9o4UcQ4H/jNaV1pPQQFADSE=;
        b=oPpMFPBtvVd3xbXDyk3I0IGZWgWL+CXo1F0AMY9Z/o3rmDTG5Z57pN+rgapY9+kfH/
         1URBBgdg7T7WKJGS4l88mFjBGpdVvkW6sGeSz+KkQlDmpuLP/pcNGipvk1NsivOpzwNh
         d+XiWTaicGB8zF+SiJXuabzJnsT9Y9q129cKePZUNnLEuuBmGbXVMkq0Llzy3RDi3IVE
         hhd/wW52IZciubbhsg+5pbfFy55TnGzEhDyRnerHUDF8pSY20t1ZfZ/wioAuwz9w/8EP
         imz4wmvNtAQG3cU9jZUzLXC5ow9Krh0rP5VwYsjuoWCL7PI7Y4THxlgCW1yc//ynnwjK
         Qbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684307491; x=1686899491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7oK29RZHN7it85m4EHoF9o4UcQ4H/jNaV1pPQQFADSE=;
        b=TmpExqopNKWxvXi8OZmlYRcx+f6qggLmKwGnajQUOszYmamfEbZ0CE7qKwzxryMXUs
         926T/5xaSd6yodsY2tYefsORfzO6vrsYl/lb6ofmhDhHshJ9bhdo57K76EuQVOlEwmGr
         PhsEQIjIB1Ffxta/F2gZiO26YH9QqZ05YdznXlNrn6Wdi81bRWRTI+1dPWufXlxBI84u
         7HInaXo0jbMSizIR1YEMhAYV5tIPdVRPS1AAOY/yg8KghgmDH0Q7yHfoQ3Czvftn+7wL
         gLcRgZeO9VKNZyMCsujQTAjpCx/zoG2vxZjpdXD0je21cQZ44kguVWIuVT+48/u2fuou
         9JHA==
X-Gm-Message-State: AC+VfDzZ+rlhEdXX6iPLkGAvwNg5egTJYZn4iFbUer7xbI08Kgm0mKZF
	xFOQKU/lXwrryl0hyyw3PbMdkIS+WmrevQ==
X-Google-Smtp-Source: ACHHUZ7WZZwbkkbhabYBqlb2nh1WJiBBLKPAvr0N+AcrYBnQLAMZcDetG3A6Q8zkAKJGPc5E+pz1Lg==
X-Received: by 2002:a05:6a00:16d3:b0:63d:3f74:9df7 with SMTP id l19-20020a056a0016d300b0063d3f749df7mr46916607pfc.34.1684307491545;
        Wed, 17 May 2023 00:11:31 -0700 (PDT)
Received: from galactos.. ([2405:201:200d:90f4:9e80:3fd5:760d:6730])
        by smtp.gmail.com with ESMTPSA id j19-20020a62e913000000b0063b7c42a070sm14459527pfh.68.2023.05.17.00.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 00:11:30 -0700 (PDT)
From: UtsavBalar1231 <utsavbalar1231@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: UtsavBalar1231 <utsavbalar1231@gmail.com>
Subject: [PATCH 1/2] ARM64: dts: rk3399: Fix USB dwc3 nodes unit names
Date: Wed, 17 May 2023 12:41:15 +0530
Message-Id: <20230517071116.1743679-1-utsavbalar1231@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_001134_303293_F1F2FC1C 
X-CRM114-Status: GOOD (  10.35  )
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

Not every parent node is required to have register addresses,
but if a parent node includes the register address in its node name
without specifying a "reg" property in its body,
it will result in the generation of following warning messages:

Warning (unit_address_vs_reg): Node /usb@fe800000 has a unit name, but no reg property
Warning (unit_address_vs_reg): Node /usb@fe900000 has a unit name, but no reg property

Fixes: 7144224f2c2b ("arm64: dts: rockchip: support dwc3 USB for rk3399")

Signed-off-by: UtsavBalar1231 <utsavbalar1231@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 928948e7c7bb..bae257fa957a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -430,7 +430,7 @@ debug@fe710000 {
 		cpu = <&cpu_b1>;
 	};
 
-	usbdrd3_0: usb@fe800000 {
+	usbdrd3_0: usbdrd3-0 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -466,7 +466,7 @@ usbdrd_dwc3_0: usb@fe800000 {
 		};
 	};
 
-	usbdrd3_1: usb@fe900000 {
+	usbdrd3_1: usbdrd3-1 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

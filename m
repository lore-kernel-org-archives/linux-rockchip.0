Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9928CF6495
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 06:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36SDnh6a/1kdc45tjo0T6GmOycC8yjeAHXHR2Q5CAIw=; b=CR62EdZMIq82eL
	+iPGTWsqPAC4BHR4OGAyjh/xh0TSrLgeOaeo/AzYv29MYL+CnLVUQXuxU221mzELP5iUUndYL5n3F
	vj4Np6ViwI3+W+6RZvwAh9DvlvBkg6G5cCudBkKTySk8NJTT07X24B8AOuvonaZU3XPMQZWDlqPKh
	G8nowkNT+zVE1S2K9AStnGEvGCbAak2QE+azwNwc5ipYnAdLEQeGhp4ttgnJUt4MvBfDsErcByQZ3
	UpYEiiTEvF9EqDKiP4guzs3aX4nsme6gR6C+BSe+dHOqdZ5bXxr/9eJxYG+n9kflR+Yv9ST3USspd
	f/iT/G6a04wkr8Ul8MTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sunEO-0000000EGWT-2kD9;
	Sun, 29 Sep 2024 06:16:32 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sun8h-0000000EFT3-0TTP;
	Sun, 29 Sep 2024 06:10:40 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2e07d87adc2so713983a91.3;
        Sat, 28 Sep 2024 23:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727590238; x=1728195038; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKZkhBzFBP4JhC5YWwmTbC/Q9z4TwAHwN6I2TQdXXDc=;
        b=Gcpl2ib+8nNoN2hY5y/FtHDF04qF98rSoQP3k1OFGg5mq07oVAykp93bQULfC9AUNG
         Iw2nneU6i63xmtjVaTbIQSGuYnhSYIWPNuMG6kbq2O1b53dothby/WK5NNpow1qeanfW
         mXUuPY0P0R6kFdk4cJt28UK01GCLEcjx9io4CllC/ghESCONvsOS9UCSDtyYiZEWx86Y
         MSVqeqIXxZor4s+77occt9nfVZm38rF7KgXz4MRKWurmrfRrVGbMSE6m0hsyU2xphJC1
         bwWT7Wcru1wAMO1kLzBy209gmgXTLHoTsFJY7b6d4KkeQiLgCmgXjM04diT0wsepJf4F
         eHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727590238; x=1728195038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKZkhBzFBP4JhC5YWwmTbC/Q9z4TwAHwN6I2TQdXXDc=;
        b=R3SY1OtgGfoHU9RWt1vb2UhuEkwoSwUMYvBpzDCAMp4yWwTPOg+QbXev2D7OHlS8H7
         ZuuuYLK55WplN8/d5TPmMK+Egeoej5kj1fdyRTvAwsFDBU5HRJywOl/4TrQ9cI2XYKAM
         N3AHFG2qXJrnshseZCA8XLIABE4+MheLlqa10a3b2BG4aid3lfixZPURqVDbj4M6ytP3
         GR2YYXbybIR0AdRfi/BLTWwBwuTvXBBO5cAKasorgOD+4jDgy26ovahGDSZ7vU3j3/A8
         Fr6ZN88wjxYn8x90YLXpHnRqAmutrCahBag019Uo06f6wfVTBOGkncRhsrQJZ3ws0pMu
         yuJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTv4exAHBAaDsNjfWCWmlFuM/xNrbn61g1Jk8i/Qbx5xvl8ToK2yjmmNTuRLGrtSs2AkuDRcZF3tU4vRijBdhR@lists.infradead.org, AJvYcCWEDyGCahr98uR8sNrUgKGDhJmWnfPLqRKwhO8+inv7Ql3BfJoyanWpevUNicXlhk8ZBymq7aM3FjFdudVf+WM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfPc4nmSOhfdHH2PXAz28su77SaGfhGj+9pRy6ybZGng1oa5L6
	+3rtEYx06GWNyqqcUyUGXB4QXWAY+xh0jst47KKCKepKrFNC0eRZ
X-Google-Smtp-Source: AGHT+IE/hAsWcepkQrvYbUPM/E44kL/wr6eljuSNfdhzQXdTFpjJ6T8n0NU2RcJpW1S49Y+mbmcuAw==
X-Received: by 2002:a05:6a21:6da1:b0:1cf:3130:9966 with SMTP id adf61e73a8af0-1d509b1c253mr2953358637.3.1727590238089;
        Sat, 28 Sep 2024 23:10:38 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6db2b974bsm4269584a12.34.2024.09.28.23.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Sep 2024 23:10:37 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	frank.wang@rock-chips.com
Subject: [PATCH v4 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Sun, 29 Sep 2024 14:10:24 +0800
Message-ID: <20240929061025.3704-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240929061025.3704-1-frawang.cn@gmail.com>
References: <20240929061025.3704-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_231039_179463_EAEFD91E 
X-CRM114-Status: GOOD (  11.13  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

This change also refactor the clocks list as there are new clocks
adding used for the USB MMU in RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v4:
 - refactor the clocks list used if:then:

v3:
 - narrowed rk3576 clocks by compatible property.

v2:
 - Categorize clock names by oneOf keyword.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/

 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 46 ++++++++++++++++++-
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c6..fc2c03d01a20 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -34,10 +35,12 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clock-names:
-    const: phyclk
+    minItems: 1
+    maxItems: 3
 
   assigned-clocks:
     description:
@@ -172,6 +175,45 @@ allOf:
             - interrupts
             - interrupt-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-usb2phy
+              - rockchip,rk3128-usb2phy
+              - rockchip,rk3228-usb2phy
+              - rockchip,rk3308-usb2phy
+              - rockchip,rk3328-usb2phy
+              - rockchip,rk3366-usb2phy
+              - rockchip,rk3399-usb2phy
+              - rockchip,rk3568-usb2phy
+              - rockchip,rk3588-usb2phy
+              - rockchip,rv1108-usb2phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: phyclk
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-usb2phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: phyclk
+            - const: aclk
+            - const: aclk_slv
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

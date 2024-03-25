Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B570ECD11BF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrxUvz4y5l/0mGQglHeCunc5Sk2X9t+VD5ko6pHlq3k=; b=OEaSBPjZ3+qd95
	eyRzCEJoFBtPB9eXWKTa13M3iy/eP6kgz+XEtXY/ZbxdLBpHs6KjUAeZyTjHAsIW3gK1d1VdbWf8z
	bE8FGd+GtslUeuPqHSeEfCV3LgbKU+Id+d9rXr4rNX7vGvhBxlOiv3gjOwNF7uYbki/8wu6vXO285
	lXEfZhFuZRd0D4xbeh+F2ZG2SUgryKHMcYXq7zdxeO9De9uSAqLf4MYzFgaSNAnABjNqq0IuTM4zV
	Uw+Oj3jk4SoBuGOgTcAVvH0om5c3q4s0+JvDVQzKYLlI1weyLJT+MRhdy8oA4ls/GbqvZTLPryJ/z
	EJxhfop3xr3VVmnelywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSS-00000000Guv-1edK;
	Mon, 25 Mar 2024 14:37:52 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSJ-00000000Gn4-1y1n
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 14:37:45 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-22988692021so1875860fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377455; x=1711982255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aCswsN7FdkVodfTM0bhOmSxk9PJOmJSqCfqeMtR+9hA=;
        b=mBywuWC5DaBfAkjg0WS3i6FfHAw1jdlbalTC9xQZH5JOePiLevO2VFEiF9lRrzoS4P
         jexQ0Bmh2r7QZvE9Bf1EKk0BI4H7HYTXO037dClb8+4sMPOiLQ+YzY61fMHHpFBnDGN7
         oCH0jHKHuMfolTF0Q9LL7XvJvh/ADci2hK5SxXlyPdTFbjunQvMMyIgd2uxPhQY93ekk
         FbsXvOuRpPws62Lta623mQeLFMJNrlEMfxurZo5J9fMI3znYlbpIGZ6z/X6h02d4qSOE
         DLKKWhKLlEir+hi4qXSfm0/Cl7+VBgPEX0ax90KbVP973nBZcNDapOH/BKcTVAyFiIK+
         Kakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377455; x=1711982255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCswsN7FdkVodfTM0bhOmSxk9PJOmJSqCfqeMtR+9hA=;
        b=sfoqZGP8Azd+TYblIKUNo0ACOl2AN3IuV3HzCh6jg5icAOoAzOPVDFOQNx41QEZ/HA
         iSlVEVjSdxSzN0getmhqCvLyfoY90ngxnbkokJtRx/HI9Qu9Tn+vg7QJl0YZ8jmt3UEk
         1TFCkeayEwBMv8kzKIJOz/lElIMuDqt6GPyZfJdR4emoQ9DAXOawBEcPGJUDhN3Hh8cL
         ptJVHJQY8tUMx/MNAFOo3BK+CYYSZVhlksCFk+YuEnaBkGOrLjm2gcbp9GIGazi/iYc9
         I9oGXfO3IqfZq6mK0i9uJr+AZcXwuVUl5teceICaFXyGier46Ge33Tuxu49UhXvhIuo+
         JTfg==
X-Gm-Message-State: AOJu0YwWW1en1cha6umKFalN4VOb+bNmB8UrY4fyrrhvvOqaCkUYCSqS
	hclRXEcse3XWlQ5R8kH3yxtUEUEqotZhyZ69VQ+/uiu2E7r92Q6/nypdHqLd
X-Google-Smtp-Source: AGHT+IF15hJ/tYtP/YPhos0TSN5AF90nlbwnLe+gFG5FFOw3TAp2QzxMRddVXxnIHduPKnzh0crI5Q==
X-Received: by 2002:a05:6870:702c:b0:221:9cf3:8ae5 with SMTP id u44-20020a056870702c00b002219cf38ae5mr2674242oae.24.1711377455394;
        Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
Date: Mon, 25 Mar 2024 09:37:29 -0500
Message-Id: <20240325143729.83852-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_073743_814734_4AA8E76C 
X-CRM114-Status: GOOD (  11.06  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Some Anbernic model names begin with the company "Anbernic" and others
simply list the model number. Make this consistent across the device
lineup by including the manufacturer in the model name.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 94c678c44d3a..0df1254f89af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353P";
+	model = "Anbernic RG353P";
 	compatible = "anbernic,rg353p", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
index 25edd81ce26b..b1fd2b0f6719 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353PS";
+	model = "Anbernic RG353PS";
 	compatible = "anbernic,rg353ps", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index 5354c5958df2..9fa68cc53015 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353V";
+	model = "Anbernic RG353V";
 	compatible = "anbernic,rg353v", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
index 02653b59f6c2..78adac9fff58 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353VS";
+	model = "Anbernic RG353VS";
 	compatible = "anbernic,rg353vs", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index e7161a86a9f1..b7e029a7039a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rgxx3.dtsi"
 
 / {
-	model = "RG503";
+	model = "Anbernic RG503";
 	compatible = "anbernic,rg503", "rockchip,rk3566";
 
 	adc-joystick {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

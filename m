Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A7DCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9wyA8uQS/ghHf4M8zzK4OcM3aTFm08eMxzCNk2ZzY9M=; b=Hkbhj3buVhL+jh
	/9d+Ik1Igoam98anblcd5xm4eIZtyeh1dp+ua4Z1aFOo2+CJLT2QkhTX70SCsdBVFbsg/Yooa2W34
	ncKzBk55oShllYEeND/L8RmgvUJp76Q2YKslm1zGw4J+ZimfNfnSPQLEFumxXDjvrIN7hPCe+rrDd
	QDP9sdUM3rUrKynDICbC3XJy/gvxEuDpQnnmEw0Fs3N8AriuCTGSjxdlMoljBlPu8Y34k+4c1Tk0+
	E7TXuN6fJHU9fyqmWhPfVwTU7eZBJJCQQ4huTvrvCgzAwD3e961BlqXkNeFctiOz7QMsoQ5PurOZs
	gxAr22X0jV/RdWYOtdMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stlpd-000000084q2-21vU;
	Thu, 26 Sep 2024 10:34:45 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stlnV-000000084Rr-3vXl;
	Thu, 26 Sep 2024 10:32:35 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2e06cac1d53so161608a91.2;
        Thu, 26 Sep 2024 03:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727346752; x=1727951552; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yplOqESzYqLDvQmwdZgALdv94fRWUFq6dl6xc+7Ckb8=;
        b=lhBp2TW4xk2So9fjhymuhDQThSHLkbndmVEGekKwbwryRfTYnh1dehSQjy/78vSeXj
         e2sFdV9yLbFFtYFLjQmt8ZhrdLRHzSn/tc8oOHSIFA2lj1W7YWotFnsw1pozQ1P1Pi7S
         WNAoNBcNRAe5qsQzMWsLQML6YrNsEUrbTFeCr0VzvRycS2joPu4m+FHapkxHcq9qI2zO
         splvVI9RcAfpe3bdJ8SdQrndmhjsucCRCq5As2263KqzvcEjU5Z5XD3DNGZJFqWCuzmb
         iLQ4g0XxR8N8iEA2JU1b4iP0GAHBvegCcouii5fAYqQBtlAlNVyHPHkq3bNiWKXjIcvq
         mbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727346752; x=1727951552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yplOqESzYqLDvQmwdZgALdv94fRWUFq6dl6xc+7Ckb8=;
        b=AtKuEE8/GKASonJwsZOh04uFrMdudzAlaua4mPE12HmKHusK5Uib8XHkxIQTzPaEjJ
         NZchZ07z+/XKt4OFU1DMIAMtGk8h91wS162gdxAebox0KCYc+1zt6+knO2GkwuYZBmd0
         UFgKna+OTlRTCYYGWTuNdwYNj4AUuQUQpvcTrczMjO9a9+wazSJs3GaBUy7aoOECT+0L
         LVugYURjsXfPJ79Gmb2Z25NznOAZBNOV/NMX3t/DQHTYq4WO3ZjF6fXNUljz8/jsYEFc
         kDW1iQU+YFPNX9hBElV+tJRbtysFz/TPn09YnsnRPoX96PP2HnOa52WP7CfCD5rOV12o
         pcvQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9MmJP8nIZXvRGMmGAHQkL7mZkwjZ4KKlkMKGVDvHuQc+fnHA3SWXQiqiBdyLPNiaPSmRcTeIPLVNbZFYL+K8=@lists.infradead.org, AJvYcCWIj7uggRk1vFOip0TPJ9Ach5dkCSXhZ36YrcH+6Ve05asN9ISdzj9JdCZ/WZrznpeOb+bDIBfDykgHX9qsOPq1@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/LbF1el+uEA3x1LgCmrx7CvmJBLyND5j0R975JGYIXUxx+iMG
	a3RV6WP113oUZZr4zkfK6IHVYoUjiTcgsynnwt/Ppo6x3tgME2xtJ8KWllaL
X-Google-Smtp-Source: AGHT+IEFSkZQ25a/ZxAw8mKQA+KcnhyJc9/yGZ1kvTCmns89prNEmc17sfecAtsdnCz6aT9GxWyt5A==
X-Received: by 2002:a17:903:183:b0:207:14b3:11a7 with SMTP id d9443c01a7336-20afc6a1d36mr37790185ad.14.1727346752184;
        Thu, 26 Sep 2024 03:32:32 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b002aaa8fsm22109335ad.240.2024.09.26.03.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 03:32:31 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Thu, 26 Sep 2024 18:32:22 +0800
Message-ID: <20240926103223.29538-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_033234_043091_06C33464 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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

In addition, since the RK3576 introduced the USB MMU, this change
also add the related clock properties for it.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v3:
 - narrowed rk3576 clocks by compatible property.

v2:
 - Categorize clock names by oneOf keyword.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/

 .../bindings/phy/rockchip,inno-usb2phy.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c6..d286753bd53f 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -143,6 +144,7 @@ allOf:
           contains:
             enum:
               - rockchip,rk3568-usb2phy
+              - rockchip,rk3576-usb2phy
               - rockchip,rk3588-usb2phy
 
     then:
@@ -171,6 +173,22 @@ allOf:
           required:
             - interrupts
             - interrupt-names
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
 
 additionalProperties: false
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

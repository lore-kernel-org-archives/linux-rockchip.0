Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6150C48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 20:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlJ7OPhw0UJnC9/fLE9XGjUvcFFMK6rEbBhwqGP5SIY=; b=mNqWLN4Z3wEvgE
	559+JKpBg42yWTW1WKUke7aTMckjH5JsdzDzciYe2tXym/aauTw57aYZ2+3BXOoV3na/gMzCybw09
	YbtX44bdHw4mZgdfx2OLooFBXI9+GsrJwNzYYvD6vZ6AAbYSIpN3ucLvk8MmIiBgzQC2ss9aF30ZA
	REqZhb+zeUaARxtIdzpDxsQAEgyG/JsKm8A4fzs339WIFxx+HGcZz1kuc3/JLzLgnCfcbPJXWqHgQ
	JbKhGf1kAZE4gvpWB+yY/wghf++Jhbjkq3QfRaNPbfxhSrvQbhglpGXrQoOgCX35lrT7xf3any3wl
	Q+WCDQhLaIv5AfmO5X9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6Cc-00000001l6P-2IFt;
	Thu, 25 Jan 2024 20:19:58 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6CX-00000001l2z-1kEc
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 20:19:55 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6dc36e501e1so5819705a34.1
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Jan 2024 12:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213991; x=1706818791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gxb5q9ZaK2oTMRN1Pge7GiOfzLVjAQ8vFNMvz6BjbIU=;
        b=hVoDZ6ahFpDoQ8Waq4GhHijlH03R8tZrRYFgxnb+U0KMy0Zl2n1Dns3NJO2AAbxQlX
         q7/Olr0Ymr06l3aLUM4J7DbwTMinn0fK9Z125j/ZGyrmQ4CX1uc4I8ptfZpWX9nSciT1
         4AHXIM2gua2nZ4MrgIT2xNu+ZIvz9sIpzlEHaWjESzLOQTfEtKme673Z/UWm1piuLJof
         W1pJbo6pnfJrqZxxMSr88/9cfn+AMizSvmfN9evdx7xbAxY3kKTni6q9ZWgmyvzLR6VF
         V7tsGUBCDXK76hcbJ+PbrUXcuNUb1Y+/ghQgtr5lHXL0rrBUAFSafYlYVDkMNr5/yJUE
         DyqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213991; x=1706818791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gxb5q9ZaK2oTMRN1Pge7GiOfzLVjAQ8vFNMvz6BjbIU=;
        b=Ho5BrKksFrz2BmWr6oHVqYs++UhAabbfRgF+LDXl7tts7aexlFrOWJBvBJYIf11SIW
         ayAUI/eKrtmjbtOo/qn2EGUjgId5RSFxKH95+7zzXs+prbzrkMB833KeYSTaFotYza4J
         7TREz7TKJ4BdxlJiO9+MisNCF2x9UmRS7DNy922B0ADKrTDGXSJzYKbVPxRK/dZx50YN
         jD685LRUDcSlo2c9E3c06EDmhCN3GBcTquMsKxVHMLGU8kvXV1tfZGud4jGdH2gO5YXd
         CFLb5ERnRTkqGDdN1Nl2bdSITIOAJh61+SG5AmTVaFC8YIiYMlX4adAaHmIALHt36+Od
         0vYQ==
X-Gm-Message-State: AOJu0YzIiuAe+HSEZo6h/tETzHjPo48jo0QQivfvwaRqhqq9AbelyUbR
	bWy+JM/3fj0ONEN+xH3AVkhKcYOcJRp0HYY9Se1OZS7gVqkKk/49UQq1j559
X-Google-Smtp-Source: AGHT+IEk+sZmhs0pDCMQ/LJPMTzHvJWLeWPtzylBD5ALA4kCwvSu7Ou0uxt9n7XHVZCYyR44SNcDOQ==
X-Received: by 2002:a05:6870:96a8:b0:210:bc4e:f0a7 with SMTP id o40-20020a05687096a800b00210bc4ef0a7mr93839oaq.10.1706213990979;
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Correct Indiedroid GPIO Names
Date: Thu, 25 Jan 2024 14:19:42 -0600
Message-Id: <20240125201943.90476-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_121953_502091_DFE094FE 
X-CRM114-Status: GOOD (  11.01  )
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

Correct the names given to a few of the GPIO pins. The original names
were unknowingly based on the header from a pre-production board. The
production board has a slightly different pin assignment for the 40-pin
GPIO header.

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index dc677f29a9c7..3c2278886851 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -195,13 +195,13 @@ &gpio0 {
 
 &gpio1 {
 	gpio-line-names = /* GPIO1 A0-A7 */
-			  "HEADER_27_3v3", "HEADER_28_3v3", "", "",
+			  "HEADER_27_3v3", "", "", "",
 			  "HEADER_29_1v8", "", "HEADER_7_1v8", "",
 			  /* GPIO1 B0-B7 */
 			  "", "HEADER_31_1v8", "HEADER_33_1v8", "",
 			  "HEADER_11_1v8", "HEADER_13_1v8", "", "",
 			  /* GPIO1 C0-C7 */
-			  "", "", "", "",
+			  "", "HEADER_28_3v3", "", "",
 			  "", "", "", "",
 			  /* GPIO1 D0-D7 */
 			  "", "", "", "",
@@ -225,11 +225,11 @@ &gpio3 {
 
 &gpio4 {
 	gpio-line-names = /* GPIO4 A0-A7 */
-			  "", "", "HEADER_37_3v3", "HEADER_32_3v3",
-			  "HEADER_36_3v3", "", "HEADER_35_3v3", "HEADER_38_3v3",
+			  "", "", "HEADER_37_3v3", "HEADER_8_3v3",
+			  "HEADER_10_3v3", "", "HEADER_32_3v3", "HEADER_35_3v3",
 			  /* GPIO4 B0-B7 */
 			  "", "", "", "HEADER_40_3v3",
-			  "HEADER_8_3v3", "HEADER_10_3v3", "", "",
+			  "HEADER_38_3v3", "HEADER_36_3v3", "", "",
 			  /* GPIO4 C0-C7 */
 			  "", "", "", "",
 			  "", "", "", "",
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

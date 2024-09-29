Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F05ACF6499
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 15:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7InVWVoOxtMtIsHRYUaixwu+emH/Jy5BX/LdKylAcLc=; b=WIiwKStgq0Rxpo
	zydGsnBdoPK6/62A0P+QxmCDcDYxJ+hao2Lgl5mJoQkes8kQ8RjKrmCxC4dz3ECGkG5jgj584Z67C
	z34N93mG5/TiryJWtKMYd9aM2yySFIR+AzFu6Xu3RqCmx9gnx4aXXhGqhQyE3WfBpyhr9uA8bt4Kx
	XaJMV4fQxzWPXTUT7Y8hdhdMNVhCY0cuDt3bGp1Hi1dxQLVV3ebGzZTo7ZXNe4huh5aT71+px1R0V
	R1QtyU6jIKLwjqQLBCTAIJQhsw7GR5nzC+pU8822T3LAWoSJDPAbUw0Iqe7lf4c2rArqaHEZ5trvW
	GbcMTDCHpq8Z6xRjSbzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suvZ6-0000000EwGC-0mY2;
	Sun, 29 Sep 2024 15:10:28 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suvZ3-0000000EwFa-04RJ
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Sep 2024 15:10:26 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3e28ac7b12bso2046541b6e.3
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Sep 2024 08:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727622623; x=1728227423; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KirO6KcBCtlfmhBdjuXRWb+1hvXrVIbMRsyi4X/HbLU=;
        b=O0QZ0yreN1JW4t8I1h6iHs9nPNrz2iXEi1omWShXRGXw9EMx5ADm2uRw/l65Q/06Oz
         Lnbw5kTNJV119kejJ+2+QLC/t8MetIpTwcaqOJDCrnjtULjnDAZUjB3rDrR9AFS3haP1
         OdRJH7v3/fkbwri9xmtPUaY2vPi8+to9F2lvJ3T0y7udIGRrbfkkPsK+xG0erZ9oXMiH
         41tn70KVYOzQHQvkBL6QdRYTVXKiWxpDdvepo282UQHA0FqKLbMgXyr7sJO5GajPt+1V
         b9swb/+e6so/8serUK5jupxXFzkyu91ae69VvFH8NqFrBEX7DoV8v2OXm1DNuODqvNr7
         BFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727622623; x=1728227423;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KirO6KcBCtlfmhBdjuXRWb+1hvXrVIbMRsyi4X/HbLU=;
        b=tzOPudjtncr3wsOILZrpQVY/HRWdbMf61c2v6+2VxZqfiy0ZSTX7uqKo9o7O70j8Y+
         XTanNBZh/nGG9rft4B4q6P0a18NjQlLiG66pd02fxnkKoACYIuHCMwvq+VB+Dmw0Ily9
         o5P56J9Yyb2sen5WrpOFD4YbcccQcw3XZU06sNx/qjPyIGsaowMazD90Osd6GvEzRbtm
         NLXFPPOa3E9UinmSRnd12LEX+gTVQeyMup2YrtDanMSSI2EQsRj6BDC14GmtBPq5k4jb
         xRQDQMRCeiWT9RgAQxu14aVjO9/pJAOJqUkK9mq6PDEaCWZkmGYrMv/NzJtDtXWZ4JAF
         qjvg==
X-Gm-Message-State: AOJu0Ywz/xtf9CS7zrK8p2U0YQs2+BLV8/WnMQYjS2/089kZt6DtBw2F
	iNOZnem+e870Wp9yiObRhLW4bf6cAFprrSfxkY4r81y2QSVlaTtnqNH1Q4co8HaKceXSDI/6WIr
	xzofVkEGIRqC4g00LkPTTdfrUU5ZBK8kZ
X-Google-Smtp-Source: AGHT+IGX2IhFCrHFrXS6c1e1kM2ZZhU89JMrH7SiEnEpaFICQCZtwmI064c1goWe8sgL1nDazyN51BRaTkHLNzQZF3s=
X-Received: by 2002:a05:6870:55cc:b0:261:2072:7b5d with SMTP id
 586e51a60fabf-28710b9dfaamr4729161fac.29.1727622623048; Sun, 29 Sep 2024
 08:10:23 -0700 (PDT)
MIME-Version: 1.0
From: DRL Studio <nebclllo0444@gmail.com>
Date: Sun, 29 Sep 2024 23:10:12 +0800
Message-ID: <CAF8-0pvndRH4W2c9n8bn2gqEjbFQUu-JRCd8BqY=Vb0fSHoWng@mail.gmail.com>
Subject: [PATCH] clk: rockchip: use better help text in Kconfig
To: linux-rockchip@lists.infradead.org
Cc: ziyao@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_081025_081564_E653E404 
X-CRM114-Status: UNSURE (   7.18  )
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

Original help does not mean much.

Signed-off-by: Weiji Wang <nebclllo0444@gmail.com>
---
 drivers/clk/rockchip/Kconfig | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 570ad90835d3..32d57a09a392 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -14,104 +14,104 @@ config CLK_PX30
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for PX30 Clock Driver.
+      Build the driver for PX30 Clock Controller.

 config CLK_RV110X
     bool "Rockchip RV110x clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RV110x Clock Driver.
+      Build the driver for RV110x Clock Controller.

 config CLK_RV1126
     bool "Rockchip RV1126 clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RV1126 Clock Driver.
+      Build the driver for RV1126 Clock Controller.

 config CLK_RK3036
     bool "Rockchip RK3036 clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RK3036 Clock Driver.
+      Build the driver for RK3036 Clock Controller.

 config CLK_RK312X
     bool "Rockchip RK312x clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RK312x Clock Driver.
+      Build the driver for RK312x Clock Controller.

 config CLK_RK3188
     bool "Rockchip RK3188 clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RK3188 Clock Driver.
+      Build the driver for RK3188 Clock Controller.

 config CLK_RK322X
     bool "Rockchip RK322x clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RK322x Clock Driver.
+      Build the driver for RK322x Clock Controller.

 config CLK_RK3288
     bool "Rockchip RK3288 clock controller support"
     depends on ARM || COMPILE_TEST
     default y
     help
-      Build the driver for RK3288 Clock Driver.
+      Build the driver for RK3288 Clock Controller.

 config CLK_RK3308
     bool "Rockchip RK3308 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3308 Clock Driver.
+      Build the driver for RK3308 Clock Controller.

 config CLK_RK3328
     bool "Rockchip RK3328 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3328 Clock Driver.
+      Build the driver for RK3328 Clock Controller.

 config CLK_RK3368
     bool "Rockchip RK3368 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3368 Clock Driver.
+      Build the driver for RK3368 Clock Controller.

 config CLK_RK3399
     bool "Rockchip RK3399 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3399 Clock Driver.
+      Build the driver for RK3399 Clock Controller.

 config CLK_RK3568
     bool "Rockchip RK3568 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3568 Clock Driver.
+      Build the driver for RK3568 Clock Controller.

 config CLK_RK3576
     bool "Rockchip RK3576 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3576 Clock Driver.
+      Build the driver for RK3576 Clock Controller.

 config CLK_RK3588
     bool "Rockchip RK3588 clock controller support"
     depends on ARM64 || COMPILE_TEST
     default y
     help
-      Build the driver for RK3588 Clock Driver.
+      Build the driver for RK3588 Clock Controller.

 endif
--
2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

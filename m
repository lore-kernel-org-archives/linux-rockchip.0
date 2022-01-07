Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21C0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 05:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHUbsrkXoAhuzSRTbi7vQZVqnJ8vAYmz4s8KqrxjsjI=; b=P1Ky+fdvZibZp3
	+GxkO1BjXdAHbHT/Bw6jyCsr2YgCdEeVBbcxg1/sQP8m+ESiCkBE8O8KZXznPI0k7LIF1vZJ4Yfi4
	16ZYun0yPkasBI797VxLKR5J90uDwGNyw+FTJMR5PTkS/NPw5wPEEa2eaTcCdMQa1GP5Qq6AoF3LG
	qUU/ZiBm+DCHbxA6m/fycT1JMJ/6angi0H+I9tlbz1iKhP33/uXvAGhHlXM+th4Uquf5u9hIJhYGt
	8YKElt44+KCAM45yCIIlQP9NxRH9ENLUrCmRxrRYc3J7Mmd+moHMQGTaRj0hd0rHutZxOuRQavhPy
	6SP0YauZHKUbiavsRUQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5hZv-002LCX-CC; Fri, 07 Jan 2022 05:14:15 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5hZR-002L15-59; Fri, 07 Jan 2022 05:13:46 +0000
Received: by mail-qk1-x734.google.com with SMTP id i130so4947235qke.3;
 Thu, 06 Jan 2022 21:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZnX2c/AivJPvE3M4KgpGz9qCvVjWTtRZpCLeFLJb/64=;
 b=jhcH33f2rPJdslRUlsnQb/mI5egx3yjh1XRyMm1WHG3iNkzWWKLPWiwt1LvxANMrm6
 +wuTlRzzaEJAHEnGVYo66bULDqob6E+XP08ruvluHzgCCyA9uaGV6lcQNpSkZcxPmHjC
 laOvrBhyfeqEQW3rMlEiVYEWA49a6HrO+2RoScWGyP0sOK4A41q8iuW009sz8vN6oqNY
 RGc5zybzvtgFd4MxIhYKAWU5RsjqqThBSNxNdHqW4nRrEv/l9re1/JyFT8Mk0t27stSa
 nMZiHyg3qsS44wioLnKqSpvb1w72tzbUvOUzDp/c4Q8rTI47dNCm3BhEASgiYLrmLGpW
 hJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZnX2c/AivJPvE3M4KgpGz9qCvVjWTtRZpCLeFLJb/64=;
 b=QDF/s18T0oxKATZOVAjDtyvrnFEpAArx7QGMKkLi8VdN4ymRX9rTR6lFHVSe0XwXOY
 gSU16lQsincKJGSrDFtO2wCM6B2/FI4kZgAr58+vmeVzGXuKUylvGOprThMjVicIy75k
 mRDIlV0jhJgGztASmDEkJ5bMMqja+WYoOpKRetGyKgZy35NY48gG9XLzGUJDdiWeHocs
 fK6griFWTSxPoHGF/Q1lSZg6FjyDE+F/3JR8gm96EP/wDnXwNsjIB1BVFaDAgQEEn7n6
 qknHeBkgZWO19AvtGNB6nG6xiAkVffREIdtcTZqMLpoKCxTdTJvANJ8/6gxfZYj1QNfA
 /1Ow==
X-Gm-Message-State: AOAM5334qouST0TAzz2CJJNqOYW6SUZUZYfXVFrv4WyftssMFiSxTcwE
 1x5NbGf0VOPWubUTdeQ2yco=
X-Google-Smtp-Source: ABdhPJyxvYrqYFDlkIi0IZIQpBfxEsFe8ZBlx2sEOe9KCyROC7cqYGRV1dzISY18pXdzDCCbz24+YA==
X-Received: by 2002:a05:620a:25c8:: with SMTP id
 y8mr44783504qko.455.1641532421366; 
 Thu, 06 Jan 2022 21:13:41 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id d15sm1651461qka.3.2022.01.06.21.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jan 2022 21:13:41 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: enable the pine64 touch screen on
 rockpro64
Date: Fri,  7 Jan 2022 00:13:35 -0500
Message-Id: <20220107051335.3812535-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107051335.3812535-1-pgwipeout@gmail.com>
References: <20220107051335.3812535-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_211345_239594_0277BAE6 
X-CRM114-Status: GOOD (  11.63  )
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

Enable the touch screen, backlight, and dsi nodes for the Pine64 touch panel
attached to the rockpro64.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 158befb9a48c..f6c36fcd6db3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -26,7 +26,7 @@ backlight: backlight {
 		pwms = <&pwm0 0 1000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <5>;
-		status = "disabled";
+		status = "okay";
 	};
 
 	clkin_gmac: external-gmac-clock {
@@ -594,7 +594,7 @@ touch: touchscreen@5d {
 		interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
 		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
-		status = "disabled";
+		status = "okay";
 	};
 };
 
@@ -633,7 +633,7 @@ &io_domains {
 
 /* enable for pine64 panel display support */
 &mipi_dsi {
-	status = "disabled";
+	status = "okay";
 	clock-master;
 
 	ports {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

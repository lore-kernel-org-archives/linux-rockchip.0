Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE4BCAC598
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 08:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=266DlzNKtJKt6CLkJdoJDxbkFc6y2a+YTprwDxN33wk=; b=B0iXkOyE5aMvhT
	stoYxs0TgZtSO22lFIHDTKth3IZGcqd1UxU7BWUiUxtA8Z9vr9zBcgdwzkpLXR+LpFOuopfWc65eF
	Y46+zgW5CnKqQ8EK14GRqk0zlM8ec6+lwQwwardo4WD3PJudExjnb6I8shS0WKs8OrhN6wVUT/QOI
	pVk8s6yi+FKMMmAIVS2pYcSZwfGdCCGECLDxomEsxI/qET4mfDCxPHwd4Pf6ZMYTkJwpXxtdSc3hM
	voA5NzvmaouFXYoir0Hw3HCmt0VTFy1//iMIvanr+oV2IK7+wDJeFWy9jwKkmkUrPPGoG0YH+tNDI
	cBE6jkDV2ypbYDqPfkWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4ek-00000003EGU-3Bsn;
	Mon, 15 Sep 2025 08:33:50 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4eg-00000003EB2-44ky
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 08:33:48 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-55f7c0fb972so3787972e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 01:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757925225; x=1758530025; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qUTD8uROnoCtAqaX/Ri9iIJ3aP0OlkHXH5AZacDoiM=;
        b=I/4/WTJeytJVwhW5A38W0xRQkRKWYleaRMIZlGlKbWSSbbC6ZeawumKeaHXyXf8d/s
         xGyX55rOimczlitRPzLqMyhm2J/yDrCx680degljHlH7sMOItYVHZvXZSeaKPhX4uDAl
         HoARdWsV671yO4bVzowkmsltEw+Nl+5m78RF6AZOqBla48X3iCl2BLEEngE45pdtBVWB
         tBQPkv6VlsJYuZATDCMFVRVNapqwiNu19lDKhO2ZPjHTR6VdY241Yt7Xwcx9Qep2U8kD
         ScJRRYIKWRO+ea/lFkL5pUJmBm+bY0PZCgqSVO2dA92aW7vZG1Bp7P1jC8dFKSDxew8M
         1/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757925225; x=1758530025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qUTD8uROnoCtAqaX/Ri9iIJ3aP0OlkHXH5AZacDoiM=;
        b=meuNH7cchc3DNr0XYS3edizC0UQi69oqnzk8VomK8VsHpBq597MJvomGfyGyq36x1x
         0Qr99n1CSt/nUpRS/0+Vaezyjlm5igAAkcYE8HbHbw2j/ePiMPAVqhkNEUItn0N8JxDy
         0qz6ziXuAXzqljwL0IQEuoqR2XMi1ZKG9DdxbXNES2O5QYnXdjFCKk7v1swq9wUFm2Hu
         M54uEQyHheGM4DZeLjMzK5aiC8IUnd71Rya5CbvfkstyXx7BwAv+5dfDTLoECsSOH/ds
         XRBas0T4O5lLcbaPWB4xRE4dVs4t5U3Xc27u39AHhw9T1mVRkQDUD3DmwFB2Umz3ojyE
         p9Ug==
X-Forwarded-Encrypted: i=1; AJvYcCXnorjj6a9YxYQ0oW3+PCqv0vIqD9mTeneycds7jcrN0yiEcI+qeHiBtpA9CJPWXye4syAXO6YZqM+ZSMyr3w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4YXiKUuC9jp96pnUVLhQwF25QbKChc8eBbL0pqp/DsN+Ro4hD
	0D94lg+JoQBgQwIRPttEVQZNFuFqojwi6LLayUWsVkcKy17zywjae4ai/LEDxlRh5rY=
X-Gm-Gg: ASbGncuQjYmce+QFkLcJHgLG04gnWIyAySWvdicOyYskITvkJvjlVNp9PNK/orh/o47
	Fml4/E9KRWZxm8LPUvpwJXPzbq8uH73bwMOglzwF56Zd5P6UfuFKa4ZnOtT7HyQkhjQ7VM5zTxk
	Grm+t5dXYtU1JhV3PUGc2jYXTDIJehncOfh/AlEOPdVrSkMIlg9d9KyyjxipVWBNZCbjX0jP0pW
	WFdGftw9sOoICp+8HdiBEY7Kjm4SM6A0EUXmNSEfG9ewJfUIKI5bnKqO4LOAd5elGj5vG/1CItu
	nt/KD59nZuKdIjNEAKstDCXlbkA1+Avw4RDMUPUMP/90sHWe8EODN3UydNkJvTTd3NuBjInPrzH
	LlGh+Hl/wDcY4J/5tqqJ1uFternjWirJa9pceCHPusGOw4kNnoLMtVtk=
X-Google-Smtp-Source: AGHT+IFCaOIerdSvA+z61cnaMnc6f4/AxdvboyLIWVzD2Istbx7t/KAwnGHxWdDUQK//4BQjlegbXg==
X-Received: by 2002:a05:6512:3f05:b0:55f:3e4d:fb3b with SMTP id 2adb3069b0e04-5704d0071c6mr4042367e87.30.1757925224185;
        Mon, 15 Sep 2025 01:33:44 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm2335142e87.46.2025.09.15.01.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:33:43 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v4 4/4] ARM: rockchip: remove REGULATOR conditional to PM
Date: Mon, 15 Sep 2025 11:33:17 +0300
Message-ID: <20250915083317.2885761-5-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
References: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013347_007352_C2F599C6 
X-CRM114-Status: GOOD (  10.27  )
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

PM is explicitly enabled in lines just below so
REGULATOR can be too.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 arch/arm/mach-rockchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b7855cc665e94..c90193dd39283 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -13,7 +13,7 @@ config ARCH_ROCKCHIP
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
 	select DW_APB_TIMER_OF
-	select REGULATOR if PM
+	select REGULATOR
 	select ROCKCHIP_TIMER
 	select ARM_GLOBAL_TIMER
 	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

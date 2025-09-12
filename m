Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2A33CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=266DlzNKtJKt6CLkJdoJDxbkFc6y2a+YTprwDxN33wk=; b=f+c6JniMISmqxD
	Gfo1JVmoqxIO8zvHIPJwfxkZ50sJIamGb2NgD4M71Socbw5p2mwY96MJuIMAzn2LRkCIU+nucc8LU
	B5rxStZAgC0levjqFTPxCmwKMYFoJPs/4JgYG1EaMBbVdupCu0sQf1htZM14wUyqEytDXWePDeHgI
	xn5Y0VLF/00mWkkVVjYoG4qKLoiMUAXxcV6W9j47z1YQwJeS+9kVbw8Mtx/2ldibf9K1/NqLUt8B4
	sVPqLU/zAceZvc3hKwYMk38ohDuZN5maJ7xlvMRakZjGeBcBOMvGlYTzYppm75Se7nINupmWDuGCJ
	Bn2W/wMeaiuIRAVxlXSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4nl-00000009uOE-2RMh;
	Fri, 12 Sep 2025 14:31:01 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4nj-00000009uLH-0mk9
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 14:31:00 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-352323388b6so4684321fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 07:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757687456; x=1758292256; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/qUTD8uROnoCtAqaX/Ri9iIJ3aP0OlkHXH5AZacDoiM=;
        b=H8SUt9XoI7An36iW59ROP/cN3mKoWnhkznguRDVtxU/Fz5uU4KyzgcOgxj3OKNUulx
         nqFBBtJ2r3dDVtBP+Hpa2y5s9Vzzn756vNvhDj8M9ugworOciIQTo63Sf2hfQBn1ov+k
         uscIAnosYqWbtOqLXEYaYhg3Wg1geJ/N/PxHlK5VnFi233uaEmk/Rech/6PohqDJZXN+
         oOC2b7QbboyvPVpU7GbZLAwUVZSJWLeaMeY2cfAhwwOvIjKgmqRZxd1eDvpopgfzt/0/
         6stAgCX4OdbTyFEbcLIRTZc7l3+N6kS0Skfh9yNrLo6plzSHhZNpMF/MJoC7tvyaue7f
         jl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757687456; x=1758292256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qUTD8uROnoCtAqaX/Ri9iIJ3aP0OlkHXH5AZacDoiM=;
        b=qiZakndKCrosaqPlwLdeg5NyLhsMd/j2fWP1uPQj5JMTL1qGnIxIPPmfEt3xayRK+7
         sO0EwsEcNQ8uVD4Syxk9og2YhICb+n4JjJwruFz07uHGzSKu5Ijqn9328kutWJUMn/vf
         XBhZhCiEyv0QffZo9PxQsoCV78v6kCIcg0YTshpA3P0qJerxU0xjI4aK1baP4+O1agtm
         qMpctUbqO/wfoXxMdFdktx29Sw2TTfsycMt0ALK4xhA1xxhHlT4Nkygj/qY7zwWqn25O
         l9YZ51GdY+bgCcWV606k91jvzjME762xfA/CF+Sb1CU1CXSHMx5Cw0NqovRAVgVwX2Ti
         9JSA==
X-Forwarded-Encrypted: i=1; AJvYcCX9hlB1P27/cx4NMdSBXSmgY5PQ2/ar6b+jts8SwFghlOyUgcvvVodICpRKo+jbihq5t+UzragAeFWBYV5U9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOivtIrHyqxZr6bk77jxgz1oa+VPz1yEP00ib3b2ExbtL2cwRC
	9LRykk5a+Fz7EBAEBybCOsASFfjRIb8AUGHEa6REg1GBbxSwAm5AuoC8jP/Bq72bzY4=
X-Gm-Gg: ASbGnctiPsFXvUz2zY6rV/U1tM0zSlhB6hndgSE25MYCVukPUwPYXcG9JR1nQ0JPUQN
	rmwymr3zKMvqnFkzaNsKPoBMOMlEZbi4tZ77hBFHjLrOUVeENZytZeldXhthqMJQircxkua82lt
	jm7i4WoUgK4BmvEO30BeiWsg2VKGVGX5w5cDEF9McTtIrUuH3YHt7oUnGr+wzp5CA4FkuqvXB2H
	CnszpRDLN5/Cu08elYjhGKdPg03VszriP6/8wIraCLkU9f/VGsVHCZAMuFeUMRwICquI1nmYt4n
	vne7yR+Qu+wYJFS2CSjghq8lYKjguNIlvyFrFYiV2jWQe7VD0cp+ri3XoCBVhtUcAwUBnTG4e5l
	d+uWAbHldS+FgOubaXuNIs6R66vt3DmyPoEAbINZQxK5PxbN6OCvFny6lhXadVWmCPA==
X-Google-Smtp-Source: AGHT+IEVbatrp/SxHPXDJ7XzOlydV9X5r4NdpCXVehaL+u52W8sQ2+DoFuN3K9k4u9FvHmP6U/Ibmg==
X-Received: by 2002:a2e:bea6:0:b0:335:4d0e:9493 with SMTP id 38308e7fff4ca-3513fc380f1mr9860391fa.28.1757687455991;
        Fri, 12 Sep 2025 07:30:55 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c6ca914sm8495711fa.67.2025.09.12.07.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:30:55 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 4/4] ARM: rockchip: remove REGULATOR conditional to PM
Date: Fri, 12 Sep 2025 17:30:36 +0300
Message-ID: <20250912143036.2844523-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_073059_229582_977126D4 
X-CRM114-Status: GOOD (  10.05  )
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

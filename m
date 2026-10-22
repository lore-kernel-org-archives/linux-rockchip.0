Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22131606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 12:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nNb33JQ+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=nN+JA6RE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+dcV9zcUeUPK1xkxyvHq/JZwjYI9cbZL4nAap7O7sMQ=; b=nNb33JQ+M9BcohxWNBJDsinXGB
	LxqF/PQPhKATgaKgnWwD8onZxpTGJhhwIKXyqWg3sDizzTFUgLHuek1hezZE/eVIIVpZ1VT7SMZcs
	f/RNwxFg2tB9ii64OMvtLGUxro4RRC5+Wspb0keBiCbvnd0M6URQF9sD5oNNWQf2ZR+Q1m23RE530
	q56ZK7obJaaYcEUYq/ADDJECU8d/i42QKgQb+ImtVcpchJoMK5KHb/ttUS1+0GYEuuP3TtLed8McJ
	swl6IplKq4zTxvop5rlEPCdx02g6ifFVkrnkc+TjCYol+xRICGNottOsuptCnlFxyUyCz9Ng5pSNS
	nvp8j9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsJH-0000000E6yl-2MRJ;
	Thu, 22 Oct 2026 12:54:19 +0000
Received: from mail-pf1-f170.google.com ([209.85.210.170])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsJD-0000000E6vq-3t4a
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 12:54:18 +0000
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-870e8b21121so169555b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792673655; x=1793278455; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6/5wXgO+LxtHjUK045USqfI3dlUW80LCQmKUkVA8okc=;
        b=nN+JA6REeMuzACcWa+sA7fGvIT0sCA2w82a2Z8PHB0nX3wjYTd465eeHGXSSutzcZR
         uNLI2+aUamvV2nvJV+E9HEZPnN6soTa+J5weoFcWtYuAiWVU2iRAwufGi8hCF1h7Md9p
         zTo2PSyNSuPbE2q9LQ5fZysTld1Tbk61pEW0qJ6VrNGZZP6KiDSgibZn9b/dPJg/ATRj
         d/dg72LVsVTxvdrtHcnpbfuKVwGRnVLrgHK/zwjYpMeXtT48SV/irUQavNr3elSBjVR/
         NycyybEOvxzriXVuTyk87vGKNtVpSQXG8tb8hQ4KsRiZvRLKWAfg9kk1g4hEvaubQ4TG
         aJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792673655; x=1793278455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6/5wXgO+LxtHjUK045USqfI3dlUW80LCQmKUkVA8okc=;
        b=AegBmx4b4F7R0XpwUq5newSc7CHxcYtBC1C4cjZ7+vJJuR9mgqHSygahcBgp9p1mi2
         lQLTJ+5enKPI0UIApPRdYMPHJrH5136Kz6YJZLMscdhWvH+xJqIPVS8C0iihvPIEXv7z
         27QAuSRdWzeLZVeUSaE6qY6OBj5tIYREIvIeo+je9W3hwFHePVUJgTKBjVwmr0KarYP0
         wlDPbUZCnIunVYsVEJXZmtHfEtZysriXcS1f9PlNgfWaB7huwcxPUxEd0Z7zb8qC6GIX
         h9hEEO9pO/n3shMqgPG9CAiuOAWU/I/xnbPJy5O3+50WuJM3H/sGmfrrj8ux12UrAQeV
         iRqw==
X-Gm-Message-State: AFq9FYKG4OCniSmBpisvB9wt9IxFUAZxZsKIDjKMDA8Y+yG+mBAP7d+Y
	/E7i2B8lf136aTFK1YOSoM2JE51Lf7pdP62pV3hKRgux+1vhw4YN3xpLazLyCUIczwawdw==
X-Gm-Gg: AYBFou02iQSoQb3hKvuA49NuXXKlBf1FHPdDv/WJ2T1cmFDV6Mzvlnl15+Uz+fg/LMY
	arKFSHFVVoyBefwW9bQ6kq5aXVjv1leOAiCoGbABEMLRHEFqn7ItQTPZ7eiT+WpHl3ERpDg/l6l
	HDZUoUvA+0vuwleRui4BjM0Mp4ldjE1x7CiKiTnQO3HLxfEC1EIQozrGLsvKCFfjPm+rtZNkX0o
	YT3Q9bR2cwrX9BTSbcLkONYlp2nLXJiFD6MrIcADYaz251oTv/YDw5FYZHzNHczPVd+gZqopV/r
	xwEVxW6m0o4OfM9NUeM9vtZfinIMX42NrC8EGXx7R9AKMWBTLVaiMiVuMpS82YFAnntC8YMN9zH
	cDHswewxjcwx+qz2/f2RedLH3VxSRtiPIrgI0Lwg9nW3ZHNxThQGWgqcsNXjSuqDY6A7B0glpjp
	OEOD6jXbn+8Tensb7t78AuNhSqYlMbGxZqQptMhfL768JrpvwQ3fORXX/4DtKKgzpVOhqTM6cOR
	SLFwZr0r6aaBXE1dUrOmLTwrgwy6X74VOloUwYqhcKNFGeJXqnhBTteWpI=
X-Received: by 2002:a17:902:c94d:b0:2df:8ab7:fe3a with SMTP id d9443c01a7336-2ea43d9222dmr65190615ad.4.1792673654906;
        Thu, 22 Oct 2026 05:54:14 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b435243sm23704165ad.31.2026.10.22.05.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 05:54:14 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add ArmSoM Sige7s board
Date: Thu, 22 Oct 2026 20:52:54 +0800
Message-ID: <20261022125339.82746-4-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261022125339.82746-1-liujianfeng1994@gmail.com>
References: <20261022125339.82746-1-liujianfeng1994@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_055415_963209_4DCFA601 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Hrushiraj Gandhi <hrushirajg23@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Rob Herring <robh@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The ArmSoM Sige7s shares its hardware design with the CoolPi 4B.

Add a board DTS that includes the shared CoolPi 4B description and
provides the ArmSoM model and board compatible. Retain coolpi,pi-4b
as a fallback compatible and register the new DTB in the Makefile.

Link: https://docs.armsom.org/armsom-sige7s

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 arch/arm64/boot/dts/rockchip/Makefile                  |  1 +
 arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts | 10 ++++++++++
 2 files changed, 11 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 442d322a20cf7..c8a5a88a0e46a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -231,6 +231,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-vicharak-axon.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-vicharak-vaaman2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-youyeetoo-yy3588.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-armsom-sige7s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-coolpi-4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-gameforce-ace.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts
new file mode 100644
index 0000000000000..f17f0d632b1d1
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-coolpi-4b.dtsi"
+
+/ {
+	model = "ArmSoM Sige7s";
+	compatible = "armsom,sige7s", "coolpi,pi-4b", "rockchip,rk3588s";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

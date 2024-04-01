Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81224CD1283
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 08:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WpdbG7QpqC1pt3vo7q+lirrMg8qg76ao2T5iMWvcsV0=; b=DqRQ+Nd+2Chd0l
	bHjp2ThQ6KaZMyxdwf7L0VurIMEnJAzNxcW5EPJ9ebR1aGIxHqm4hVWz+VeamYq6m/EXPitBQ9deO
	al+oJRp5jFsU3F6pG1TkoUmo6gdE6IS+bdYZ6ihDa2jgOB+Qa+8GUkWT4Kt8I/tfDXGpCg2D2ui1V
	amH/57uOzqjRNSnhipiKG7upS6V1C+EWP6u40/9ybGabah28xPtRcoevZYoOID7lLHiyEBHC5BAlW
	FnSAYN/HO5wvDZddG6fDaqFa7T87xdBLQYXwsDmD7RDdD21DmIs3e7crJSF8z0INrRnpR5TnJHr6I
	vO9jWdGHvRUIuVCiuapA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrCnk-00000007CZK-36Ky;
	Mon, 01 Apr 2024 08:13:56 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrCnd-00000007CY2-2Vz3;
	Mon, 01 Apr 2024 08:13:52 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3c397193878so2414030b6e.3;
        Mon, 01 Apr 2024 01:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711959226; x=1712564026; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cej9zpiWpk2htv89hye5Ck+sNEHdHBz2DKWSX4aWhq4=;
        b=W3FSniclEelKtO5UMKcj2hApONKgYNY7Yb1MycZdNdkeYRxqMiicZ98s2Uzkq8dIqf
         CX8ScN3W56ARgNu9F7MHZ4RKXJzMGneixwbtmybgCCV9gHIgWNNArtMvbaeLTIGINVVX
         OxwVclmO62OgN+ZZBfvxDkS38gZcruMifUoecmO919d0iRWqnJ/WQnAd7UUbs59rlsPw
         dBMrtC7ikkRxCzjfSr983eDhEd/21euDxuHi2PuPtrzFhrsH/qBsBKHG/NwKKWBabhmy
         BcDqGymGu2Cok4sS7oqG8cGcUz0Zn3L8CueT2/fmi7zttEYQBJ8mXEcEY1LUk2CBpy0C
         +d+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711959226; x=1712564026;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cej9zpiWpk2htv89hye5Ck+sNEHdHBz2DKWSX4aWhq4=;
        b=VYCx42GBmUJYkIrMbUNRmGq4136qlT8KXdngvwn2bG9r7iBcu2L4o9SH4lfXki8U9P
         VtV7T32gU5z9Pj34nl5gibHhzg4tZAYNDCzhwcxgMCERoGRSYFbRiTYbsvAZuC/60RIJ
         gD1yBysVg/vajqxJ9d9WOJPkhbPzbZ3yk0yUMv1QSuaSK0soK+s+Gdk7XVDP2VeueQZ/
         WxfnmDnI0kAmuD4P08SeZY5xHt0fz7pT3yPJbEbEvTs2R2f/Ss8LcHTSfmBKUMaPEuM/
         P+nUU4k69VnSdnb4CdcIvUisdVn0Nhp1Q6b6Q0EjjSUSeKFx3zib+n/8/VwHvT8YoBqL
         vNmA==
X-Forwarded-Encrypted: i=1; AJvYcCX0xT9zhkxzgcX20Mb3Usg89tbwWCzEgqnJUWR65EdxPbJXRBn1E77Ldhk4Z4zdcMa2mEQUi/UkKZOFonM/uwwjytnCvdUdMbowL01dmEDMDLbHn0GPGDivpsZyNdfyue17vElrIPrlCPIU/D5g+1icKex+Q6qGC/E=
X-Gm-Message-State: AOJu0YyrNdd7WRbSrPaWmYZR89h8T24RCvgZMM7w9lgPGosCFIAKsoRd
	BLoIyQYnd5mOPJg90k74NFxSS51crsAjkBlYA0043YNr4RIw8H9qiDeGfjEhxk7ntQ==
X-Google-Smtp-Source: AGHT+IHT7Kfi3nG9Qctt4Fkkm+M8SUzv6s58mZxn7nhIPocD64H3r6VAmceDyGR2xHIKzH3DHuqwAw==
X-Received: by 2002:a05:6870:6e17:b0:229:f7fc:54aa with SMTP id qt23-20020a0568706e1700b00229f7fc54aamr10183931oab.5.1711959226268;
        Mon, 01 Apr 2024 01:13:46 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id r1-20020aa78441000000b006e69a142458sm7262817pfn.213.2024.04.01.01.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 01:13:45 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au,
	liujianfeng1994@gmail.com
Subject: [PATCH] arm64: dts: rockchip: remove startup-delay-us from vcc3v3_pcie2x1l0 on rock-5b
Date: Mon,  1 Apr 2024 16:13:02 +0800
Message-Id: <20240401081302.942742-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_011349_684910_F87B06BA 
X-CRM114-Status: GOOD (  11.57  )
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

Property startup-delay-us is copied from vendor dts and it will
make kernel not detect pcie wifi device. If I run command:
"echo 1 > /sys/bus/pci/rescan", pcie wifi device is detected, but
my wifi device RTL8822CE failed to load driver. Another device
RTL8723BE can load driver but no wifi signal is detected.

Removing this property will fix issues above.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d6bf2ee07..a9af654a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -76,7 +76,6 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};

--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=bc75=QC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E48AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 08:33:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4F2862F90
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 08:33:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E4F2862F90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dlx0ayjHeYqGUVhZueP/um6Fd1GVelQy5xC7mOIyvnU=; b=a/eKvuvAYbWwQr
	PIVctKKYjWaYjMQYLxb8kfdPi+GFuMCTIhVTYNYjLUZcquhm+nx7V8fxmue9Om3fbQrjFdEGNdtt8
	TqPDcR4JoGtqouTN8LFFoBI8wney2q9x52DrKVLfmTDoYMdV3VxB/Tt/tZExQUtLZSYnj7aCrQtdk
	cVEjgRbxMesM+ZYNCh/lN+pOCoD0+xDRXsbSGkUX+Ynr6vaL0AVVl2To7xLCXRkJ0b8PUgC/6fnLb
	93y2aLw9lYnGHy5c6Ouu5pzQOlov40E0MWrOhmthZjMzYa6SUj0PAgcLMhsN8QmGXJSND9t6dMAI0
	kjL1VXghi4xNhc8C7Sbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmXQp-00EhiJ-Hf; Mon, 15 Nov 2021 08:33:39 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmXQm-00EhhO-NM; Mon, 15 Nov 2021 08:33:38 +0000
Received: by mail-pg1-x530.google.com with SMTP id 200so13965270pga.1;
 Mon, 15 Nov 2021 00:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/gMkQZauTwd6OuO+QfItqAhCFoiNfC1xEu6hFg/h1EE=;
 b=Lc+JSpSqLP1ALI/lFuAfnHgbQxisllh8DaVDwop4LsuY+kOWf8vo54WttCBSXunw2A
 k218zUvtfUz3+NA047StSxSQdWJFoz5B4VKSpja3Td0TqKovIt83ifxRvkqULY8ejI2I
 b/JXWRvVdrqW32ncDADLxILBVzDNX4OE5GAHo2uAzqDQP46Rr0jlvEN3DRxRxENP7EDt
 wQU2neAjydJyBMZ3zxqOlc3WV571xt4dSh7ZrUv/t0itMDQ5haZDfDu74UcpcblraOVO
 uidfOGSUJ510TAMdQoctTINeb7aURAR4vgN6DoD1La9TShKjpVzUvl39Ch0dEMbf4yTC
 Nxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/gMkQZauTwd6OuO+QfItqAhCFoiNfC1xEu6hFg/h1EE=;
 b=4Pz0Em5TgDQFWN8M9d/wibFtt9OK6/VW5A9UaDCSXtphRHF2I+Tvgv5/V64dsQTipd
 iyOWQV+ZC8bNNC4zMxwT8EE2CExbakwhlx7ZflGdT3d4Zl4f3E17D2/VnGLFzlejhRAx
 R4kXeFUeXeNmjWPjlmH/JQXw4rhmEDHZIMOdBG8Ku+8OPnj+V9NBQq6n50Yp75fgjYfk
 Yy0fdfFLfdkQZFAmbG8DC1UK5Rp9AGpwNP4c6T8FXXnLVgxxNEqtoDqaJuxuiaRBiaSa
 AlM1A6SgHrubCrOBniMw7omuENhVCsFXHaInzDS7YkbQR9IpbRp/TDCJ86UXzCUo3oJN
 8VOw==
X-Gm-Message-State: AOAM532iQR2DuyuinVGLIT3MIAsRc2X+BWWW2FLlVBytg4Cy38jPYY9a
 LugRMn0nq6Iatp4Or9cbLOA=
X-Google-Smtp-Source: ABdhPJx/d1+XqlXqsJgHJV4tgEC0br4TKdZQ71lEr0uj1XQOpofUk6AA2eG9uVqze1Eb8JJvgmuFLw==
X-Received: by 2002:a05:6a00:15c1:b0:49f:d21f:1d63 with SMTP id
 o1-20020a056a0015c100b0049fd21f1d63mr30936426pfu.18.1636965210524; 
 Mon, 15 Nov 2021 00:33:30 -0800 (PST)
Received: from localhost.localdomain (104.194.74.249.16clouds.com.
 [104.194.74.249])
 by smtp.gmail.com with ESMTPSA id n20sm11012537pgc.10.2021.11.15.00.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 00:33:30 -0800 (PST)
From: Artem Lapkin <email2tema@gmail.com>
X-Google-Original-From: Artem Lapkin <art@khadas.com>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org, jbx6244@gmail.com, wenst@chromium.org,
 christianshewitt@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 art@khadas.com, nick@khadas.com, gouwa@khadas.com
Subject: [PATCH v2] arm64: dts: rockchip: remove mmc-hs400-enhanced-strobe
 from rk3399-khadas-edge
Date: Mon, 15 Nov 2021 16:33:21 +0800
Message-Id: <20211115083321.2627461-1-art@khadas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_003336_807175_BF1474E2 
X-CRM114-Status: GOOD (  10.13  )
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

Remove mmc-hs400-enhanced-strobe from the rk3399-khadas-edge dts to
improve compatibility with a wider range of eMMC chips.

Before (BJTD4R 29.1 GiB):

[    7.001493] mmc2: CQHCI version 5.10
[    7.027971] mmc2: SDHCI controller on fe330000.mmc [fe330000.mmc] using ADMA
.......
[    7.207086] mmc2: mmc_select_hs400es failed, error -110
[    7.207129] mmc2: error -110 whilst initialising MMC card
[    7.308893] mmc2: mmc_select_hs400es failed, error -110
[    7.308921] mmc2: error -110 whilst initialising MMC card
[    7.427524] mmc2: mmc_select_hs400es failed, error -110
[    7.427546] mmc2: error -110 whilst initialising MMC card
[    7.590993] mmc2: mmc_select_hs400es failed, error -110
[    7.591012] mmc2: error -110 whilst initialising MMC card

After:

[    6.960785] mmc2: CQHCI version 5.10
[    6.984672] mmc2: SDHCI controller on fe330000.mmc [fe330000.mmc] using ADMA
[    7.175021] mmc2: Command Queue Engine enabled
[    7.175053] mmc2: new HS400 MMC card at address 0001
[    7.175808] mmcblk2: mmc2:0001 BJTD4R 29.1 GiB
[    7.176033] mmcblk2boot0: mmc2:0001 BJTD4R 4.00 MiB
[    7.176245] mmcblk2boot1: mmc2:0001 BJTD4R 4.00 MiB
[    7.176495] mmcblk2rpmb: mmc2:0001 BJTD4R 4.00 MiB, chardev (242:0)

Signed-off-by: Artem Lapkin <art@khadas.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 -
 1 file changed, 1 deletion(-)

V2: update & tidy commit message + put testing information here
(suggested by Christian Hewitt <christianshewitt@gmail.com> )

Testing with a selection of eMMC modules shows no observable performance
difference. For example, testing with DUTA42 116 GiB & BJTD4R 29.1 GiB:

..... mmc-hs400-enhanced-strobe disabled
[    7.175053] mmc2: new HS400 MMC card at address 0001
786432000 bytes (786 MB, 750 MiB) copied, 3 s, 262 MB/s

..... mmc-hs400-enhanced-strobe enabled
[    7.135880] mmc2: Command Queue Engine enabled
[    7.135928] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    7.136992] mmcblk2: mmc2:0001 DUTA42 116 GiB
1048576000 bytes (1.0 GB, 1000 MiB) copied, 4 s, 262 MB/s

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index d5c7648c841d..f1fcc6b5b402 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -705,7 +705,6 @@ &sdmmc {
 &sdhci {
 	bus-width = <8>;
 	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
 	non-removable;
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

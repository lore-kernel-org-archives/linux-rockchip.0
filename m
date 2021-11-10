Return-Path: <SRS0=bU6c=P5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A4FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 05:54:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 266D76108E
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 05:54:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 266D76108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JQzTWrub0BqDhLlk3/gGcxAAcYtEQr4fiQ8g+aaQQt4=; b=uNeRxOdKsJvzeu
	F90NE7fOFYyJa4Z/rm+JIVjRk87xo6Qt5rtZ0hkq42K2WECHjhtubNxyszR19RVcIuLtS352MYF14
	dyvq5ZZ9Yrr6wD4mv1RqDZ/cRXTAj2kW7kDajedsQb4Sbo46au3at+oF5wdUZGWmqKAewQ7iynEU6
	PqnL9tjNh3OpO9sJln0cRShiZYPdyda1QnGYdcNV5vuLiJUt1HiJd3Bmfh9voG1c9UYjlHC56xdCI
	XO7eIF2jiSdrPQ2yspJoZ8oSEeWfOmmZzrpAzUyJD/pkoAu75pYuLtwvc7zznIMzK3MpUD4HxLAUS
	r7PJJd3oxC/6f3lJYAkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkgYY-004VyK-UB; Wed, 10 Nov 2021 05:53:58 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkgYV-004Vx4-Rp; Wed, 10 Nov 2021 05:53:57 +0000
Received: by mail-pg1-x52f.google.com with SMTP id r80so1256992pgr.9;
 Tue, 09 Nov 2021 21:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eUMJHV6ISsdKfy1mWWM3Q3JFhiOT5WxpZzF6+QjqwNg=;
 b=Vt9VxIzU4aG3ALLwBZC6iYlE6e+REQvXk5XlrOuiydmP1N+q4KMs+JiMhxGxs1TvzE
 JF3TT4NMZndIYcxaGkM7E4fxQaRIoLX4jO2cbykUGppseQG1ZkIVkiWlKl+tMqGHFWbB
 qcIykAMWjHE9cll6Ca0woYyO0733CTyAFfa/Jj1WbhmiumDm1BECdALUpIG6P2UsvdbU
 OOj0r1CXsOp39nil1nkqavhnPPSayeQDJw/MAMt1B9XMgAjWSSi1OJkMI771CfMy8pRP
 g7RbXPSo7j7Xkd8J3g6k+bKrN/7HDC3v7YNW+hFA6BXPsu71nWpA6d5zB5zeRc79Qhv+
 g/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eUMJHV6ISsdKfy1mWWM3Q3JFhiOT5WxpZzF6+QjqwNg=;
 b=7jahq67r/EWClYIAMr43qQm21+lp2ysR5h+R8hKwQDt6rcGDGcDFe87g2KU8rOXFF9
 7wBC0VlYDLvc22E5OSlJGomxWacxMip3SjHbB/7eESrgOcl9GYiZKW+xGTUxr+j8wbxK
 oNsT5gmqcxPsXIQhFofD2fSfdWaY1sy1IPxPLKOLYhh/8Qj2D6/W26GAcIwo0cgokDPe
 ZWZUe6QzkflEZCwVwAK13W31yH3Bmjs8Wd3uVewmg8fT/UbiuUWPAnoJUxIMnGQJGXef
 Pg8JmjJ2Ld0G2WzdxfMLVVMICsAXrOypaVf7/wDRCULrtO/0PxtcIVz6+XvGlckgZjNj
 YzEw==
X-Gm-Message-State: AOAM5316sZ3/cK9bkQjI3JxbM2NF8utXTYN43dnyxZPRGxPAg27I3bm0
 QD2jDQfTyXHrtwKlpoTq5u0=
X-Google-Smtp-Source: ABdhPJxXTZYHB2UGHAUNtYwf3kP69Bis45hSi+RvLIuzi4J/8jzDu11Q9GCv9DCihg8WtplitYdf7g==
X-Received: by 2002:a65:6158:: with SMTP id o24mr10207501pgv.141.1636523633472; 
 Tue, 09 Nov 2021 21:53:53 -0800 (PST)
Received: from localhost.localdomain (199.19.111.227.16clouds.com.
 [199.19.111.227])
 by smtp.gmail.com with ESMTPSA id h10sm22640981pfc.104.2021.11.09.21.53.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Nov 2021 21:53:53 -0800 (PST)
From: Artem Lapkin <email2tema@gmail.com>
X-Google-Original-From: Artem Lapkin <art@khadas.com>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org, jbx6244@gmail.com, wenst@chromium.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, art@khadas.com, nick@khadas.com,
 gouwa@khadas.com
Subject: [PATCH] arm64: dts: rockchip: emmc remove mmc-hs400-enhanced-strobe
 rk3399-khadas-edge
Date: Wed, 10 Nov 2021 13:53:42 +0800
Message-Id: <20211110055342.1693350-1-art@khadas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_215355_922791_A370A73C 
X-CRM114-Status: GOOD (  11.08  )
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

Remove mmc-hs400-enhanced-strobe for rk3399-khadas-edge

Not compitable for some eMMC chips ( BJTD4R 29.1 GiB ). And no
performance difference in our case from emmc-hs400-enhanced-strobe option
for other eMMC chips.

Problem example ( eMMC chip BJTD4R 29.1 GiB ):

[    0.068282] platform ff770000.syscon:phy@f780: Fixing up cyclic dependency with fe330000.mmc
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

Workable example without mmc-hs400-enhanced-strobe:

[    6.960785] mmc2: CQHCI version 5.10
[    6.984672] mmc2: SDHCI controller on fe330000.mmc [fe330000.mmc] using ADMA
[    7.175021] mmc2: Command Queue Engine enabled
[    7.175053] mmc2: new HS400 MMC card at address 0001
[    7.175808] mmcblk2: mmc2:0001 BJTD4R 29.1 GiB 
[    7.176033] mmcblk2boot0: mmc2:0001 BJTD4R 4.00 MiB 
[    7.176245] mmcblk2boot1: mmc2:0001 BJTD4R 4.00 MiB 
[    7.176495] mmcblk2rpmb: mmc2:0001 BJTD4R 4.00 MiB, chardev (242:0)

Performance note for mmc-hs400-enhanced-strobe usage:

Other chips DUTA42 116 GiB works well with or without
mmc-hs400-enhanced-strobe!

..... mmc-hs400-enhanced-strobe disabled

[    7.175053] mmc2: new HS400 MMC card at address 0001

786432000 bytes (786 MB, 750 MiB) copied, 3 s, 262 MB/s

..... mmc-hs400-enhanced-strobe enabled

[    7.135880] mmc2: Command Queue Engine enabled
[    7.135928] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    7.136992] mmcblk2: mmc2:0001 DUTA42 116 GiB 

1048576000 bytes (1.0 GB, 1000 MiB) copied, 4 s, 262 MB/s

Signed-off-by: Artem Lapkin <art@khadas.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 -
 1 file changed, 1 deletion(-)

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

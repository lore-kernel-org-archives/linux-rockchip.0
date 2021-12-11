Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76647C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Dec 2021 18:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y0bOtZI5ul0PoNC3J5pljw3lZ++u7B8hZlZaiphgl2I=; b=AFwpuwCJ0STL8X
	LCjjxEAKeLtaDsE+zqYLjoO3F7sW9N6OOfMHdIH4P5xBA5YUC5ezEg/RLCKc9ntsxns6VHjGBQpcL
	yox5kjBvVWjDLiqdAyZENQcpfs8uavu9iPBiPYWpj3zhvQG1F8a/6CfJqqe9lkxGvihyH9g53iuHf
	LxkBKwR1CUk5I0T4zSay24RUEZ5stEvW3UPSifTbcdOukhxqb6r+7lbDpVweQzQgP0R0ye77rSyrm
	o+Lf11jlg5AZ2CEmRp2V6uGLY2PdMTL8wN6TVRNZTv4Ns5sznF3m+4LZFDuW+bgq5bPY9zI7Gy7nx
	HTrnPaMyBiY7wlACtyyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mw6gJ-005LFU-Q9; Sat, 11 Dec 2021 18:01:11 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mw6g6-005LCL-MR; Sat, 11 Dec 2021 18:01:00 +0000
Received: by mail-wr1-x42f.google.com with SMTP id v11so20121540wrw.10;
 Sat, 11 Dec 2021 10:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NTqJE9O5IKUSo/m88Ab/X8Fm1HEOexFRkRE81c4V/Mg=;
 b=LfuiKKGmEbpKqw430aASUTABt3NnFt6A7kO84jFi0HbZqcIRYjovGFxIdzgoPgz6vV
 nwauJ6arBYI+7/rqV6Z4Z8YeVKdCDEbNxPtrJyTinw3el7zvfIktrz3AQRUx0DptNe7t
 dL/H3v3BxG48WfD4AhqivG5mnbZ5g2eceXMXvUzlgJiNG2lSpaJ5w0ruNik0K4OhG0OY
 7NTkF00HlJmRA9CPSWcDo5pgOfuzW3y1Cv1qxsX56lvkUoV4wRPvxnag+HGBpBBbXWDS
 GkYCJ0BStnJhUsEK8utPdqurQad7JftGG9pRH0Y2R5VxxmFi+LDQdu3uuv5hX3OtsAKk
 96tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NTqJE9O5IKUSo/m88Ab/X8Fm1HEOexFRkRE81c4V/Mg=;
 b=62yoqNHkg8EJ7FDVNed1A6tR1JVMMRlT3aNXpmjt1Nvai5IQX0172Br0fwQs5BTrEn
 g0RC2sVnUmlxKzBu/1cYA8jnZz9PT1QIor2xAOY3pIISMsxkaIjP+0d9Env9MjBXpXcG
 CnFuTG3lfqt0nzM0a+ujpkZvM1aFXJ3aOE2jBt/xBTdxi5kelQVRBmpHfYEohLYJWHBd
 ecvuPG4tBLtFg5odSwaXf8L5HVk1Jx7NIeVuE8hvPe85iQkN3wYG9HwMsM9AViWjpw7u
 R4vYTFTTPYkBxR+d+2hvOKxhCMuK8OVaa0+cEkQmJ1HwJ+DdtvlkTdEipJRj27l4jhic
 bR1Q==
X-Gm-Message-State: AOAM530mcbKaMJp0pnevHavZ6hTXTmxmjmZyoGJD2zmlEdLYAyKlGIsk
 +xTgG0Gz0Cq6sDSnP6mSqUY=
X-Google-Smtp-Source: ABdhPJxUAVBviSw0OvKnZaywdMXUJn7Ur6vlRTPj4c6JyDiOu3sUOnpqJgWSgh8vZYgMdzgksGZ31w==
X-Received: by 2002:adf:f3d0:: with SMTP id g16mr6478226wrp.699.1639245655258; 
 Sat, 11 Dec 2021 10:00:55 -0800 (PST)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194])
 by smtp.gmail.com with ESMTPSA id z7sm1994792wmi.33.2021.12.11.10.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Dec 2021 10:00:54 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip-inno-usb2: remove redundant assignment to
 variable delay
Date: Sat, 11 Dec 2021 18:00:54 +0000
Message-Id: <20211211180054.525368-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_100058_767959_DA65A799 
X-CRM114-Status: GOOD (  11.40  )
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

Variable delay is being assigned to zero and the code falls through to
the next case in a switch statement that returns out of the function.
The variable is never read in this scenario and so the assignment is
redundant and can be removed.

Cleans up scan-build static analysis warning:
drivers/phy/rockchip/phy-rockchip-inno-usb2.c:753:3: warning: Value
stored to 'delay' is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 1938365abbb3..9f95b587e2c0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -750,7 +750,6 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 		fallthrough;
 	case USB_CHG_STATE_SECONDARY_DONE:
 		rphy->chg_state = USB_CHG_STATE_DETECTED;
-		delay = 0;
 		fallthrough;
 	case USB_CHG_STATE_DETECTED:
 		/* put the controller in normal mode */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

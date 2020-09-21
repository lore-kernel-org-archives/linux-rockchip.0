Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B183DC4727C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 22:56:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FFB42076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 22:56:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FecpQcaM";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iTMeBMDS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FFB42076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5zfhjaR80L3eeXI973QG5mMrIMMrIkn6ntmOnJLvnkI=; b=FecpQcaMa5kEGVH9SQQzY9RjKs
	Lp1lJ2ahcHevWTrlhqH6D6f0g0DA0fuoHjG52X85dERiu4VsbaG7mkeu3kdcxAOgOWCi+ZW/QZQhK
	MSuS8TUfuITZU4xxweGiC7WrKozUsty3n2lbPXTBuwy53DOlOqHkOxNgWoJoCxMPrnoDYq90GiR+r
	CvoGPaSFH+FTV4obGS1LdhYIQ6rCMrvFZyE0SdxH9wpiYRcoKxq9gUuSFVL4XW96ebYgoL2h9X7oH
	0PdtOFRGkeR3RrNI4DW/X/qUxQmuqvoBBovXNnhmTrvrldZlIP1THKbVP3npKC49r6r/HJZ9fraL7
	l9ch7YIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKUjW-0003yG-Eo; Mon, 21 Sep 2020 22:56:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKUjU-0003xG-Aa
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 22:56:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id o5so14774250wrn.13
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2020 15:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j57CFeGumUoULupeCRinOp3a9/2XpdO6zfbDwFadDd4=;
 b=iTMeBMDSd3lMbfj0ysL1nD2Uqfr0dUMPdhbZtrjhXXZTgUw96tTJw7kMUmU8lkOZRZ
 mAcaebTStOSSjVHMiecQrrWzpNxqcy3PRkbtYD/BbrPpoUPrXXn4IztAZbEKWIbmokwC
 D0bdmrBbo5MhyFH6boYh3rB9BUYn709eYJ/yY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j57CFeGumUoULupeCRinOp3a9/2XpdO6zfbDwFadDd4=;
 b=k4zGdKkaxvpmO8opTSZo02WUcCDjW5NKviztKf957dBl4kwPSVcsIQScLCj/WLH95P
 obPuboWP+IjwP3TNMfSNBRPoUt5qo4zlHn3lSmhJMcnyJG2qXNzkntFCbVj8Hk/qOgHo
 2ZV46uGuLBFeY8I0dUkTOt0ISDctpIZM00U9mCHUX7qdZWB3C8EUr+dsGO8atHjC8mCF
 7IDltyTgxH0ADjqg1QYniZ7LoylVgWImPebk2gPwc7maMlni3+R5Mh5qWJzuGldl8Z5Z
 ghxnyUl0/ZsOoQv/mbFNxLnNsuVPpXtvRLAM04crdikHOBbnlA5XSoYbsp/DScPizTSy
 FAdg==
X-Gm-Message-State: AOAM5300H7Fjti45cafPS/iVRzCxZM6hVHASoAxyxnAF58f7HrskzxGr
 F4vCcChLQHchWTHOU7E9Gymp1g==
X-Google-Smtp-Source: ABdhPJwHEUTjE2FUfxfPVVxbUIO9QM0Shms2B58JmmJhPmYmEyqMdFXGSLoL3J9mFdd6KScW9zXpuw==
X-Received: by 2002:adf:8481:: with SMTP id 1mr1936150wrg.231.1600728985313;
 Mon, 21 Sep 2020 15:56:25 -0700 (PDT)
Received: from tfiga.c.googlers.com.com
 (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id f14sm1543366wme.22.2020.09.21.15.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 15:56:24 -0700 (PDT)
From: Tomasz Figa <tfiga@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip-dphy-rx0: Include linux/delay.h
Date: Mon, 21 Sep 2020 22:56:18 +0000
Message-Id: <20200921225618.52529-1-tfiga@chromium.org>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_185628_440092_791322B2 
X-CRM114-Status: GOOD (  11.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix an implicit declaration of usleep_range():

drivers/phy/rockchip/phy-rockchip-dphy-rx0.c: In function 'rk_dphy_enable':
drivers/phy/rockchip/phy-rockchip-dphy-rx0.c:203:2: error: implicit declaration of function 'usleep_range' [-Werror=implicit-function-declaration]

Fixes: 32abcc4491c62 ("media: staging: phy-rockchip-dphy-rx0: add Rockchip MIPI Synopsys DPHY RX0 driver")
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/phy/rockchip/phy-rockchip-dphy-rx0.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
index 7c4df6d48c43..4df9476ef2a9 100644
--- a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
+++ b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
@@ -16,6 +16,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-- 
2.28.0.681.g6f77f65b4e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

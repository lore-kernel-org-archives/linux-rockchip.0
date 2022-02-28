Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 120EAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 23:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UYn7SKALm7x/U+TdeXGed1f0MDPPWXQz2/mDbqvjBlE=; b=CHqTNUhzkhVNx2
	rVhiS/psiG1PMupqS2mztiDYys8cOVBeAjd/QalqgxXoSzSEd5SSp1awWdtYlrdOU2SsKQyY1aDwC
	EquMwI17I4BHEzoMShPm00qEwi/SaElOEnrl9OU/VgLriBipVfPjAYlGahKaqeRgYzaVUKp+Tjgyg
	hp6YvXnPNqgRUxeMstvpASWUx+6eTicN8HnxxTONoGkrMG2s2IlDYhwWLNahH6t29aolaVrNrc20u
	fvTy1jDMvHSrKCfnAB1e3NUJ9eS7lo7UhDD9JRhxaQnWcIKrr/Jbfwdl/Hb4JxZI9lwyJT7ZaV588
	bSk3X8M2UkD4t59LqSQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOpTt-00EO9G-KR; Mon, 28 Feb 2022 23:31:05 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOpTr-00EO8U-Bt
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 23:31:04 +0000
Received: by mail-qk1-x72f.google.com with SMTP id v5so11699820qkj.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 15:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rqXBt8yzUjWrarVpoIHmOjmSMgjNVBuHKspHFnevxUA=;
 b=cS1ycKAtfbn+XsNgoBE4DAXZtO7H2lZt5v+XcGll+qQ4wQE8eiouQ9y3BYrCnapRkM
 XFpSNIeiYMc77L6JHAMIyeXIN7uV722UqhjGQWuV0hmVLxlfrwpoJ41VgqabrQVeVb63
 FT3tWvJIdvTQztYHBlMNy1Fau4j82zcNIpzoY7MvU6RthdbPsYeTpGtxonsotF3tOK1H
 mQP41z5/6O+CazPQgwyCFNevY/j1ZadJWAIZ1XrwaqhQaF2DI2sJJgzE6XRy2jbVFkI1
 H6AECCJmQ7MrfYigvtxEcYL3tPX3S6kZ/hJvLwcGrue/srsPCxV3l+zTahQilk4LRngK
 3TRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rqXBt8yzUjWrarVpoIHmOjmSMgjNVBuHKspHFnevxUA=;
 b=CUPvox+Q3G68qynMJmgiR+bjzHuh1oeovbXEvqHyWm8zcdm/BUJ7kpA928G3NtJvSR
 s6enndYDoFPcWc02VhFRk9hAW4V9gVJCKNqm3BBk2V+OAXU4PXQ4u5Ti79dDC2Y3xuL8
 i4V8U29T4v+lG50zLnV1tV2zPhBCs2WJFqpUK74pCV+Qy3d2ufJeHTDzosqxplniKBgq
 lCdLwQdSy+R7ohreIE1+t/I+jAWN6lbeqB5MY/tMe6rVlm9uJhooWnVRSkVhb+bCjyf3
 svi1VNpTg7obOUkkIG2S6kYx0OVR4gT065ruZfo3ruP79VpGRRP9NnlAQ/8FIzx6O7ym
 hhTg==
X-Gm-Message-State: AOAM5305+UWE0ZXcbjSPbqL2xRULL7Rcgisb0G8c8Pg+zZ5BdRCQwVHu
 KbF+og8EKJKhKw0HyZ1rwNI=
X-Google-Smtp-Source: ABdhPJyyCW54RFkyJTyjxuy+jdYFhw6jgTumX6JBc2jenfOBm7AIbpEiCmpxMLb0sAl+zvnuGdAf9g==
X-Received: by 2002:a37:687:0:b0:5f1:9134:8815 with SMTP id
 129-20020a370687000000b005f191348815mr12442442qkg.255.1646091061288; 
 Mon, 28 Feb 2022 15:31:01 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n1-20020a05622a11c100b002dff3364c6esm6164575qtk.19.2022.02.28.15.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 15:31:01 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] net: phy: fix motorcomm module automatic loading
Date: Mon, 28 Feb 2022 18:30:57 -0500
Message-Id: <20220228233057.1140817-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_153103_426686_6FFEFAEB 
X-CRM114-Status: GOOD (  10.97  )
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

The sentinel compatible entry whitespace causes automatic module loading
to fail with certain userspace utilities. Fix this by removing the
whitespace and sentinel comment, which is unnecessary.

Fixes: 48e8c6f1612b ("net: phy: add driver for Motorcomm yt8511 phy")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/net/phy/motorcomm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 7e6ac2c5e27e..1e3a4eed39bc 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -131,7 +131,7 @@ MODULE_LICENSE("GPL");
 
 static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
 	{ PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
-	{ /* sentinal */ }
+	{}
 };
 
 MODULE_DEVICE_TABLE(mdio, motorcomm_tbl);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

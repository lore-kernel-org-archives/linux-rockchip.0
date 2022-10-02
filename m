Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A7FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiWEPSCbmCwuDilSH8OS3de9c8GJrFApj3G1csGrjzI=; b=KgWjCvarOrQoF8
	4V09UGgIGwAiQNzItr2xnqntQBsQF66uBzIbxbWdJgyBh+cvTy0wyAU/R87YfyerV2Mq0CHFT7TKs
	VbtU7G8FC9pNkqTtDQtDnJXTU8loPcYeyzDbxDwnDGVewz3U8yjPOZidvHeniwLKZyUEe3S//mrJp
	mpOT4Cq3ApIbxAJGPD+4C97TGhEjA4j13mnjxs2Ysy5OhX357SY/xS4L5NaO+DL6ne1j1f1vP9nW4
	5BfgPwtm5H4WRlKcn9SkmCWpodFym5m/iI12bXztTbxCAbUtZ29NV1AW0xH9H60VRXDSWUVDxPRRo
	qk+1m9shTLsNYhUje0Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjn-0003zP-Er; Sun, 02 Oct 2022 06:46:07 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjS-0003nl-R1
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 06:45:49 +0000
Received: by mail-ej1-x630.google.com with SMTP id l14so16519101eja.7
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Oct 2022 23:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+EFb6uk4cTnqBeI+5KKFVfi8qmpv//hil6I+XjIEg10=;
        b=Z6eZABtXZW25w/5ZyMrjoGibSALBRFTBPOZ3m9ciR8K5cg5YYtOx+uYUCdFWVGG7vC
         Fj8IrV/vXJ8t6J+fMB+I2+mkQIsc0hz6XEZxe/ffAXYEafz21v/MVLnMLO77sabS2aSm
         ma9lsFZUE903KWzEhReXmALwvDgy4P3ehuLBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+EFb6uk4cTnqBeI+5KKFVfi8qmpv//hil6I+XjIEg10=;
        b=siyKpnXuc8y4IVahwi9KgC6mAU99FDnVsxD0k2HREuuNJu8clUkOj1OOkeiToNqTQj
         mH38slwUbiVN8fYkxbzHorFhUSDFkFcmBKPjdLJsyFKur2dfqZIMPSyaGg5CStuZ3DMG
         UuxLRPsxbL1ypfO5eNHYSd9TDPb5oKb/zjRUuaUeu9P26H+fNKAkCjhmItVV4rqVby0g
         /+q3PsVi2MVUxkFXSBnIRqHFCXygLyq7a4hXlD/BQhn57QYNGeM/bMrdAbPrSUhkOQO3
         wreVBLiro4/a+NFUQUXVJ4LaCy2GrJUoj0sHlFqr+fhA4SKgM3Nm59MVmQAgPLeL1093
         zsfQ==
X-Gm-Message-State: ACrzQf3sn69ACgjybkuylTo7dAHrJpxZrMbKE3T9YH62APE1V/UR4MSa
	8gjXJSXz2SxmEnasWE6B9b+fbw==
X-Google-Smtp-Source: AMsMyM4B5NnmV+Vv6ol70KZMuL8JEVXI/URE4cg0VGwaJQnYUbGUUGOKtgaodi64X9B7RZP0ZmTX1Q==
X-Received: by 2002:a17:907:160d:b0:782:bc5d:162e with SMTP id hb13-20020a170907160d00b00782bc5d162emr11502660ejc.291.1664693145088;
        Sat, 01 Oct 2022 23:45:45 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:44 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 1/4] phy: add PHY_MODE_TTL
Date: Sun,  2 Oct 2022 08:45:37 +0200
Message-Id: <20221002064540.2500257-2-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234546_911480_FC55FE3D 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

There are combo phys out there that can be switched between doing
dsi, lvds, and ttl. So add a mode definition for it.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 include/linux/phy/phy.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index b1413757fcc3..87ae8c27ec57 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -42,7 +42,8 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_TTL
 };
 
 enum phy_media {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

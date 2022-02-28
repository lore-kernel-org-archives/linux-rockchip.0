Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD7CEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 22:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/+Iqux4u11eLho1Lkh1UotOpokftgQMpeCZTleCSOJg=; b=lcfe2Ql+KIX/M7
	wsEzzW5SolN1AXTrMJq/bXJnfbXg6hzNHLbPdI//RFIxz2VRZtou8v4Gz7B5Fupx0FQ4EMzh3N0Lo
	ttnqUXfyQmni2RFdiPMxFB5hWC1CjJC2ULqb0sL+RpUjEjbN4aSYHi2zCVpFD8HuIBq3FGJ9K1VyB
	m4bDjzBYY0YKFjIRAdDFQmqigfhh8CZFYxGyl9bKdunaiNPzCTYZWwfJi8e9AWMG4R4q8azb1Vb05
	ke9/PnJ/pNvPYjT/TFrn3zXkk23WwTdPtEEXjWjcdvBpdxCAZnmI6enX1X9TijrnBGvE026V2I9BL
	Wje+m3/2oOnwKqVI5ZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOodX-00EJI0-Ic; Mon, 28 Feb 2022 22:36:59 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOodK-00EJEO-U5; Mon, 28 Feb 2022 22:36:48 +0000
Received: by mail-qk1-x729.google.com with SMTP id v5so11603382qkj.4;
 Mon, 28 Feb 2022 14:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NqNLCNZbfRzdZ6s+RPZUVSDu53vbe0qWHYGyNkt893E=;
 b=XftIddrMAmhmuVKIlxOi7ezAmFRdps3UDkEEbl2ZeQMGo2H+ELXtV+4e9DhnZAMsyL
 D/pDeeWj49sL9GZwHUnnj7n3RGyrUTegADjvReidPUORqC64NeyziR5G+yT6oAKr6A2d
 Vdk+FWwex1AuVPvENWoJB6Ej44hGNZptg3xEBBphTsCS8U8UUkUxFpOUgebJdUc2qjrN
 ox0phf1gLwEbJqPCbyajU3SIVtC/zaTN1s3koJIojHtROjDUYqV56hheoywgjYgCNSYz
 vxCzJtshV5w34Hu9TntuiYVCrJxoLt0yfBW6VGutDNiE8lv73o7vOn34u0tiBsX6p2Gg
 aRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NqNLCNZbfRzdZ6s+RPZUVSDu53vbe0qWHYGyNkt893E=;
 b=vzuyr0D+36aiwDKSMmvgmj4Gy0wyjXa6n+NvuDjW630Nx5A3ThyukRXqgLLPKnuFpV
 Desh7Au4rli0vs/27GKj6fav0vWdQk0ROLEFkhq2xYsRBqccPhI+H2Oeu82/QMrfvset
 r/4NH6W3KgCwCyGi/OaFQbQe78bK3Fa25eVJQA2xJK59OLKw0wRse+YN/YWH92h9nczd
 ReKFHnWdwii0OfeZJZxdZ70U9+eVezbzeUouyNMAG1WOeRhxQ5ivK4o1gAgGNnyJisPC
 u9UMKj/feHyJKPB9C9GdtrLh2y24w3uXaeldwB811vl4OzuYawKpqbQidpmtDK105D/k
 TyUA==
X-Gm-Message-State: AOAM532V7motQnF5hsLACM5MJ8lmzW4FMfjAFgoRkQyTIDXCXZ03J5l0
 +SeM9olL7BkTZKaYmIWMIRI=
X-Google-Smtp-Source: ABdhPJxzocr7KcKfiyTO0gDJ53raBvOlFPXC+nmpx349DwcEXm+eD7Ij9yg7XQVuxFESGg/JvDVyWw==
X-Received: by 2002:a05:620a:45:b0:508:176a:8892 with SMTP id
 t5-20020a05620a004500b00508176a8892mr12549250qkt.731.1646087805470; 
 Mon, 28 Feb 2022 14:36:45 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v9-20020a05622a144900b002dfedb4dccasm6632068qtx.66.2022.02.28.14.36.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 14:36:45 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
Date: Mon, 28 Feb 2022 17:36:42 -0500
Message-Id: <20220228223642.1136229-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_143647_002793_01771BCA 
X-CRM114-Status: GOOD (  12.43  )
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

The dw_mmc-rockchip driver drops a large amound of logspam constantly
when the cd-broken flag is enabled.
Set the warning to be debug ratelimited in this case.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 95d0ec0f5f3a..d0ebf0afa42a 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -50,8 +50,13 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 		cclkin = ios->clock * RK3288_CLKGEN_DIV;
 
 	ret = clk_set_rate(host->ciu_clk, cclkin);
-	if (ret)
-		dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
+	if (ret) {
+		/* this screams when card detection is broken */
+		if (host->slot->mmc->caps & MMC_CAP_NEEDS_POLL)
+			dev_dbg_ratelimited(host->dev, "failed to set rate %uHz\n", ios->clock);
+		else
+			dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
+	}
 
 	bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
 	if (bus_hz != host->bus_hz) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

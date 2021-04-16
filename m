Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19D5FC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 02:18:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7195E61166
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 02:18:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7195E61166
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3W4/RywR0IeGJQBGPThVCAKnWDtmSevGkqlbJiXW4H8=; b=MD8yA2QmZNZmcPSWpCjwdwcURp
	5fBb5sAdrWyICD4oGlGrnzxc4hfr/CweG4zc51Hp2QgCtp4kCRwSC7f/K4EQW42yrBjRI2pCz6+2E
	jx4P0S7ozJOFMQ9j9Nk3QyS402sBPof5di7xjBhECCvSFozNVQu5onZg+6jfFWej296xHlYOMfcem
	i+MfjWQphZq8II3MPSzGMRs1ZVJB6xNtb8HRG3Y2QEj8kGhp655KMyQnd1+1vqaxTJrLtn4iIMqmG
	a5veFZtRt1DAtfXEz5G6CBhRRQPtG+s389bDrv4/XFWZlcwHZC8XxuE4Je6EKSO+XFjWwVlRnBNgF
	W3g1PwVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXE3d-000TgA-HC; Fri, 16 Apr 2021 02:18:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXE3Y-000Tf8-MD
 for linux-rockchip@desiato.infradead.org; Fri, 16 Apr 2021 02:18:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=U5j2nCruAszlLoLmiCq2u32ddCoV/+5tlHtZfUOZSXQ=; b=nhAJBCB8alNETwtZpeKgaQxJ8Z
 BJpVJCYWRc4UQ4wGE//442iB8PnP4xBtv9r95ueh5m/drYknYg/Jq1va+TLcW7Ne0ou7Xl5HfZ15C
 nle1IlpjSwTLO54zaVSewcyFkCVrJJ5BdcVKfqeR6sRIzRyYsPv+V1hEny1ITxb/lYs698lPtLuDi
 sf9JcRVvLyxToI1fPnHeDdRK94EMZUeh6tarUa12c/nNQ+6me90RzpoG/o5ramJv8cggq42L7cMew
 grq0HvSD8wxujGZQDJ4YbnOAf/7vaAG/le75EX2k/BaJMCYIgg7Ga+ugvBGQlGWPxQH6voXPEB/bs
 rv2Pzb1w==;
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXE3U-0091pi-LY
 for linux-rockchip@lists.infradead.org; Fri, 16 Apr 2021 02:18:02 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id A8FD1D16D6;
 Fri, 16 Apr 2021 10:17:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649265346304S1618539470001313_; 
 Fri, 16 Apr 2021 10:17:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <22c1bd01685647ba05e1019aa3f85c07>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: ulf.hansson@linaro.org
X-RCPT-COUNT: 4
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] mmc: dw_mmc-rockchip: Just set default sample value for
 legacy mode
Date: Fri, 16 Apr 2021 10:17:34 +0800
Message-Id: <1618539454-182170-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_191800_923551_05D8D134 
X-CRM114-Status: GOOD (  14.39  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

.set_ios() is called from .resume() as well. For SDIO device which sets
keep-power-in-suspend, nothing should be changed after resuming, as well
as sample tuning value, since this value is tuned already. So we should
not overwrite it with the default value.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 753502c..d36991a 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -61,7 +61,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 	}
 
 	/* Make sure we use phases which we can enumerate with */
-	if (!IS_ERR(priv->sample_clk))
+	if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS)
 		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
 
 	/*
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

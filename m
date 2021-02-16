Return-Path: <SRS0=n7Ji=HS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACB3C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Feb 2021 08:50:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CB2164D9A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Feb 2021 08:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6CB2164D9A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=163.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3SFAclb+C3oad8X/TRD2AO0MYipO9eQJXANEsPvPloM=; b=zhi4CPpTGMnbs73M+LpqThOly4
	046+CXTQTylgPsSVao2D5FyPa76g3TLjpW53512d8tX98mguIz4jRWv8jydfpoH2khFKMgmOdeMqD
	BpQP+8ZDBBuOiv4pJ6E7nA20B5pfVZVrEcQCUX8XoAvu5gVbKHirvOVqV2tZ75rLHjAzWCGn0QGNj
	endMZpt0b2c8GZwDAyQ/JgNbcH3c776YHuv55B0cOzw3A/RLHLERuwBNjILZ8rpTFkjBLg8d9YbSk
	6fjTU7lLxFFFWqFdbdg81dMTjR7R1VtC2GNH98gia76krAJz941zhsu5nWalQ1Fk21VGH9JV9DWMj
	seSQtWsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lBw3o-0006AN-VK; Tue, 16 Feb 2021 08:50:20 +0000
Received: from m12-16.163.com ([220.181.12.16])
 by merlin.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBw3e-00069X-Im; Tue, 16 Feb 2021 08:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=0LMaX
 4jV0+UOm0Ix/3TX1zlsdHX89BB1/AZlV63epNg=; b=ORWnOkTKW8QRZbLsNeVph
 HCJj+bFqiul6J8OL0XMNeDDOpzk59Dz166ZZTxtn/f2kOOzmZiA91V6hNGADVnQv
 sjI7Q4JLCoQWaby0EODhw/MwNrTYsgBbcF74QlLfXstYC1//GEW66wu8hR77zDW6
 kkj/GCH+9D3J59kV7Do068=
Received: from yangjunlin.ccdomain.com (unknown [218.17.89.92])
 by smtp12 (Coremail) with SMTP id EMCowAAnLloZhytgvl4AcQ--.25268S2;
 Tue, 16 Feb 2021 16:49:31 +0800 (CST)
From: angkery <angkery@163.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	heiko@sntech.de
Subject: [PATCH] phy: rockchip-typec: add missing of_node_put
Date: Tue, 16 Feb 2021 16:48:47 +0800
Message-Id: <20210216084847.1544-1-angkery@163.com>
X-Mailer: git-send-email 2.24.0.windows.2
MIME-Version: 1.0
X-CM-TRANSID: EMCowAAnLloZhytgvl4AcQ--.25268S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF1kur15GryDZw1kCryUZFb_yoWfXFbEkw
 1Sva47Ww4v9Fn5JwnrJa47G34qyw1q9a95Ga1IyFW5Z3WDtw10vFWfZrZ8Ja4Uu3y2kr92
 k34qvF1IkFW5JjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUe7PE3UUUUU==
X-Originating-IP: [218.17.89.92]
X-CM-SenderInfo: 5dqjyvlu16il2tof0z/xtbBHhc7I13l-nlGDwABsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210216_035017_185247_550DA830 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Junlin Yang <yangjunlin@yulong.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Junlin Yang <yangjunlin@yulong.com>

Fix OF node leaks by calling of_node_put in
for_each_available_child_of_node when the cycle returns.

Generated by: scripts/coccinelle/iterators/for_each_child.cocci

Signed-off-by: Junlin Yang <yangjunlin@yulong.com>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 70a3125..d2bbdc9 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1180,6 +1180,7 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 			dev_err(dev, "failed to create phy: %pOFn\n",
 				child_np);
 			pm_runtime_disable(dev);
+			of_node_put(child_np);
 			return PTR_ERR(phy);
 		}
 
-- 
1.9.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

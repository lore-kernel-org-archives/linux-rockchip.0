Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DECAC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 02:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KIiWPNlma7uKlGgzpKwS/rdvmQOYmy7HxBTmyS8Imoc=; b=5F4wZb7T8l/2e+
	j6fWo0valdERcY4y4c7VxAl6qDAgLonrpH3jmdp6RBqEI0TzJOvvkohmyfpYESMJzjelSV08DL52J
	ekEIbQpMYIhVO8okILK8/UQX4kNCd38OFUieC7JyRYvZqACtvfdhV/qAV4ByMzk4K8NNpHv3peFXF
	TZLtXTmdLcyY8hNtkTRMOk3xf8WLZEKK6k4e3Okj2TTv6zkiFlrj//7B0Vj5YZI0pwMxbt1qgkmzy
	wJfL7/vwMN3moIJ26tXLrNRoe1239G2DHMV3SsMdukvM0iiCKXZKpQIXhNImOiONMpKVFMRmf3+Vm
	dn+7U600fC23Z7hC2X6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1f4x-0001Li-OL; Thu, 16 Jun 2022 02:17:51 +0000
Received: from mail-m964.mail.126.com ([123.126.96.4])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1f4m-0001KD-Ea; Thu, 16 Jun 2022 02:17:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=uWTZo
	puv+eTmb8blBVa+w52hbjLTmbkv4BKsZVzXeGM=; b=ndATkmlvr2C4uQgvYT29N
	72BcB8fSLAndJz2F7IqfxWLnT42VJO71XCyxIvUt09lbk6CQz6UQuHdJHLClzy3z
	YGd/iLAveFcigZ4qDsgGZqu3f7l2N6+NPaHYzJYeWMr/X7m7HItgn9LYl8PjNh2N
	nNAvBdgmydbl+kICkrifr4=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp9 (Coremail) with SMTP id NeRpCgDX_sqrkqpijNhiEw--.21997S2;
	Thu, 16 Jun 2022 10:17:22 +0800 (CST)
From: Liang He <windhl@126.com>
To: linux@armlinux.org.uk,
	heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	windhl@126.com
Subject: [PATCH v2] arm: mach-rockchip: (pm) Add missing of_node_put()
Date: Thu, 16 Jun 2022 10:17:13 +0800
Message-Id: <20220616021713.3973472-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: NeRpCgDX_sqrkqpijNhiEw--.21997S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrWDZw1xWr4DZFWrXw1UJrb_yoWkGrcEgw
	4fWwnrXr4fGw4fXa4q93y3GwsrA3ykGr1fua10vF95tF1Dtr1UGFs5t34aya4UWFy29rW7
	GrnFvrnIkw1a9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRuHq73UUUUU==
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbi3BIiF1pEDuqFXAAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_191740_872251_E67AA6B9 
X-CRM114-Status: UNSURE (   9.53  )
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

In rockchip_suspend_init(), of_find_matching_node_and_match() will
return a node pointer with refcount incremented. We should use
of_node_put() in fail path or when it is not used anymore.

Signed-off-by: Liang He <windhl@126.com>
---
 changelog:

 v2: (1) use real name for Sob (2) use goto-label patch style
 v1: add of_node_put() for each return

 arch/arm/mach-rockchip/pm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 87389d9456b9..bb46ac4f65d4 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -311,7 +311,7 @@ void __init rockchip_suspend_init(void)
 					     &match);
 	if (!match) {
 		pr_err("Failed to find PMU node\n");
-		return;
+		goto out_put;
 	}
 	pm_data = (struct rockchip_pm_data *) match->data;
 
@@ -320,9 +320,13 @@ void __init rockchip_suspend_init(void)
 
 		if (ret) {
 			pr_err("%s: matches init error %d\n", __func__, ret);
-			return;
+			goto out_put;
 		}
 	}
 
 	suspend_set_ops(pm_data->ops);
+	
+out_put:
+	of_node_put(np);
+	
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

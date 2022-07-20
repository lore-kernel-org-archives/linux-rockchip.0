Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA4FDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 01:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezPKiY1ia/wTSBD/Tnikb9/rBA6EwA3vIU9dooMKooQ=; b=O03SuAPd3/EaUi
	fatSYfqVQqPGZajzHUZrJOZN+0cGOQdxTGIF4xWa7mTjr9pdahGaYOWRpVdcqj3nPIn4TW2snlIQ5
	6rqfhuzr7IzWSobem1jwRTp+YWiPPwO3fm8y+EWchpVadj8otDFRGj2Hclvqes+vaVCwiE14azk+q
	kswKoXehuYmEMuVCaNaoyUBfmjE/Rbkgw2qo93Ois/tHS9v683ptPk2l8rbyZ8Xt6mTJ+Z3Fn+t16
	T8n3Nv+d94qAxybSHQegD7LxrRmB6rwc1mVUkBNmTHBf93xNth2WzKgb4KH2aJK5O4oaB4efSUGBF
	StNWdPA5RE7BMH3LulOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyOg-00Fb84-Qk; Wed, 20 Jul 2022 01:21:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyMK-00FXlp-Dj; Wed, 20 Jul 2022 01:18:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D6AB161768;
	Wed, 20 Jul 2022 01:18:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DA35C341C6;
	Wed, 20 Jul 2022 01:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658279919;
	bh=pb3cpnjBpEYa0WxQYvtBi3WfBxB0MMHYLLqnB4iubCw=;
	h=From:To:Cc:Subject:Date:From;
	b=bLCoWOAS0yxL+ispTgUUADCVT8fdGRe5Zk5ChUYUgNpkUiSlMMIxilgP4MbyQcvXF
	 VUsZH8zVV2+yUhU3lH9Q+nmbhinGXKAhDYN5BnbkdJXsFK600Bt78l3gID50+Kz4xj
	 ThK2Muf39EOBQ4zWVU3AVckWPSkPh93gYnM5CSBJ7fiVyHDyuT9g6+yDDORlVvNYWa
	 FmXZYfmGO81yANdDbI5bqB4ZAGXykiCX0BA8wTG0UNk9D9B8iBSzoVOy3JLQD+Mrd2
	 LkkDtnUFyR4+bNVe4rYU/cKBNnaM7u9dP+omq0B/vUGmElFoYOH5hO9Ax1EY+ZUCvm
	 X/jol77MYkJUw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Liang He <windhl@126.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.14 1/6] ARM: rockchip: Add missing of_node_put() in rockchip_suspend_init()
Date: Tue, 19 Jul 2022 21:18:31 -0400
Message-Id: <20220720011836.1025430-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_181840_515982_85E850B3 
X-CRM114-Status: GOOD (  12.14  )
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

From: Liang He <windhl@126.com>

[ Upstream commit f4470dbfb5ff92804650bc71d115c3f150d430f6 ]

In rockchip_suspend_init(), of_find_matching_node_and_match() will
return a node pointer with refcount incremented. We should use
of_node_put() in fail path or when it is not used anymore.

Signed-off-by: Liang He <windhl@126.com>
Link: https://lore.kernel.org/r/20220616021713.3973472-1-windhl@126.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-rockchip/pm.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 0592534e0b88..66ea37a846c8 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -318,7 +318,7 @@ void __init rockchip_suspend_init(void)
 					     &match);
 	if (!match) {
 		pr_err("Failed to find PMU node\n");
-		return;
+		goto out_put;
 	}
 	pm_data = (struct rockchip_pm_data *) match->data;
 
@@ -327,9 +327,12 @@ void __init rockchip_suspend_init(void)
 
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
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

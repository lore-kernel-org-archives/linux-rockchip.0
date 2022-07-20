Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69329CCA47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 01:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gk0k99yVvHZh8FL763Br9bWEdh8aBbccQsfklBwzzfY=; b=XTPKe4Nx7d/UyA
	qazki8ENB/BnhYh7844cDq8joEeWOQgA6R0vPrKoVkBAuaQ32n63dKn6zVQnYe2x4Nu2IWDHPhvWl
	pC63LGfgKa40XJ/UxkGh4RzzeZAxyxxRarZTz5GXgwUoB14iaeF/NmLxiCW3A3i7rOEYsOxJQlxso
	p3P3Wt+ybGN4gF7iJIks/DDEFFkie1Mzl0P+5Kp6q6Wc1z6lgHrekEVbkAl5DyqG5N6aaL74RpIbs
	enFAMISquPw+teB2cpS04v366Ip1EaOwlRbu2+69rHRULdNGk/6stlbkEvPd5ooSpbrPVUPs1BNcR
	T75FNPFW9/hHBIAjMgPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyPW-00FcLI-UD; Wed, 20 Jul 2022 01:21:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyMh-00FYJZ-MN; Wed, 20 Jul 2022 01:19:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 42F74B81DEC;
	Wed, 20 Jul 2022 01:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07339C341CA;
	Wed, 20 Jul 2022 01:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658279941;
	bh=N/gTGwrjKEzpjWmzHc4Cb83695ndJGSHOXf4/MfYlHw=;
	h=From:To:Cc:Subject:Date:From;
	b=BEiD6Y+fm4p5CQ1DtgzIY6jvIA4kgDro4KBNccjMbA2NJvhaSEde9V9etE6YdtJOX
	 bU1etBTvnbnebRtLVmxbhGw1n4zWGsHW2i/YOJ53lQKwQAgQhaiSAb+5D/OSj6d9Lg
	 TVpkZdWoIW6ib6DSmjT0SZ/AeEqDyo7LmaNgb/mnkIqiIsTehp5c59Mx2MBgrmPLgg
	 UiS+1WnrzRHTv+yhyxwoT5eyaKmCIHW9/S8Iw7vvMsU+XAAaGmkiuqxfNxzxxBte66
	 mN7DEFTeK/Q519Zr7XJKinkdMARqWyD6OWP8xANd2Dvh+6ciEee/NL4Ixb661iZ/Na
	 e/kPL3iFs+sDA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Liang He <windhl@126.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.9 1/6] ARM: rockchip: Add missing of_node_put() in rockchip_suspend_init()
Date: Tue, 19 Jul 2022 21:18:52 -0400
Message-Id: <20220720011858.1025523-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_181903_940904_1E47B1CF 
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
index bee8c8051929..199c1681e8cd 100644
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

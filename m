Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C0FCCA487
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 01:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFI8zh3ro9kD1STMhHAMs8NERe26ksyl7hqg7+uvOqI=; b=fvj8PjvrEKTkwf
	Wcsdd8Uj16CQOyPl8X86rvK6McN2BgNZiVvw/XsROFWGHP8jU9lHK5REoBLDZBsZVvMHKGBuOkfnD
	wstgrcoDjm/rtAWZBYpYTh1l3kU/ANlQrg7SjHLobWDmS8piXM/k02Zv/Gc/8+zHoJgyVMrz4Z/dN
	BhMJblvOGhvR7tAKvOtDfxcGz2vUrcQdqNAIU0rG7+mDXRvLQpOxbAPUhtqcF93k+VCh0fuN1NZwh
	jkTKYPFyZilrGfeRq/rVuHO1TLCj4gylmHA35Kdx+CbFHKHaruhnAjn7SgZsWdmfJLmiB/mqo0y89
	p3MvzGNV/lqD2y7HeEog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyNN-00FZMI-GI; Wed, 20 Jul 2022 01:19:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDyLI-00FW2A-0h; Wed, 20 Jul 2022 01:17:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8863A6173B;
	Wed, 20 Jul 2022 01:17:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21507C341CA;
	Wed, 20 Jul 2022 01:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658279855;
	bh=ZtW/0VVuXnVd4D9WDVweixR/stTys6Z95/e5OU0s8nk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X0vfODJGrNfemZNUVgmoL6a118xfkIL6SIQFteauEkURgizV39Kcq/+0ZS8yr0h+t
	 mSgDD4Kv3rIglFh76xc9ILFXFwWwF9vpIYFcRjiSqD1BNmjo9bEDs6mecEpq0WkLPF
	 3Z/evs1r38xBXjDOmIOBexuC3QxORaKLuniMucphsI4FutcizEqov1FbfBC8sCNtjk
	 aKlUUdpZCA9BWysXVb6+FXIR2Y+9SXBkqAbyUUiMTqWuRD4iSyua7XtUIPBOJtfkau
	 ptD+A5EV3fCZzWrwk2PePlg6tBKiZ1mEIDJsDj0LWYjVJF0s7u3k/E7A38Q2lMAKkt
	 +Ax8mYEErMbGA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Liang He <windhl@126.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 02/16] ARM: rockchip: Add missing of_node_put() in rockchip_suspend_init()
Date: Tue, 19 Jul 2022 21:17:16 -0400
Message-Id: <20220720011730.1025099-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220720011730.1025099-1-sashal@kernel.org>
References: <20220720011730.1025099-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_181736_120159_346E7C8C 
X-CRM114-Status: GOOD (  12.53  )
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
index 87389d9456b9..30d781d80fe0 100644
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
 
@@ -320,9 +320,12 @@ void __init rockchip_suspend_init(void)
 
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

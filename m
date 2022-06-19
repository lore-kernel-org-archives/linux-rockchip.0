Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C680C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jun 2022 07:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rGC48hs9pUQFyPuFSJdT+388As5zUPVaGW4sufbahR0=; b=IUgBQarRu+cppA
	zlsxGxQujjMxfm0YT02L9bhEQUFriv51UPToQMGCsnuealrjiTmQxiO2iV7Zv5k0let1Pw2dRdDk3
	fRK8qAUMv5fIz0uj/4xK9DTb9IkQFlrPiXaTeueYTwBwxeOQCLV4RHCyXikvf+2rCO+ebaCfjg49w
	mL0Zsd5u8VBJzxGN+EGgx14//aUjAndGJKzHf8PXrG5PA67iiDDyWzsCHWbviCh1xh5/H6d4cWQW+
	guDBtNHyALXFMnooIa19Xl6wDO7eAl2f2EEzZ+J6M5ssroUrmtPw942AunftwMA3oQhSBZwQeOl0v
	kNKUivO8mdyGUon0SWpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2pRx-00DTOz-SR; Sun, 19 Jun 2022 07:34:25 +0000
Received: from m15114.mail.126.com ([220.181.15.114])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2pRm-00DTMK-Mz; Sun, 19 Jun 2022 07:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=qhxkr
	/aOqu+vrmKB0+0pl6NWC0/MFEXuMV8Podpx0Ds=; b=MfggCQvt+upNsGoaH47cF
	+b4IfpfMkVkJ0UZH5aI1kQAKd+Vvym4kbUwYlt8QESrmrmncIcXq23CoHykbNGit
	bxa+8EXLpN5o43VpQTj/hGolvuaA9fRQgI1K7z/RceM12t8k03/flLtUQRDi+1Kr
	QlaO9j8qYWvWeZ7NiaA6pE=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp7 (Coremail) with SMTP id DsmowACHl_M80a5iRtXFDg--.28970S2;
	Sun, 19 Jun 2022 15:33:16 +0800 (CST)
From: Liang He <windhl@126.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: windhl@126.com,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] pinctrl/rockchip: Fix refcount leak bug
Date: Sun, 19 Jun 2022 15:33:15 +0800
Message-Id: <20220619073315.4067956-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: DsmowACHl_M80a5iRtXFDg--.28970S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtrykArWxAryrZw4fZr4UXFb_yoWfJrcEka
	4xWr9rXr1UGFWrur42q3y3WFyFkanrWr4vvFn7ZasxCasrXw1Iqrn5Wry3K3s7Gr4ayr9r
	GrZFvr4rJFWUJjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUUID7DUUUUU==
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbi3B0lF1pEDwJZSwAAsy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_003415_141311_A52CF658 
X-CRM114-Status: UNSURE (   6.38  )
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

In rockchip_pinctrl_parse_groups(), we need a of_node_put() in each
loop for the of_find_node_by_phandle() to keep the refcount balance.

Signed-off-by: Liang He <windhl@126.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 32e41395fc76..d78827c97760 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2710,6 +2710,7 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 		np_config = of_find_node_by_phandle(be32_to_cpup(phandle));
 		ret = pinconf_generic_parse_dt_config(np_config, NULL,
 				&grp->data[j].configs, &grp->data[j].nconfigs);
+		of_node_put(np_config);
 		if (ret)
 			return ret;
 	}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

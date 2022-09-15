Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA501ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zh8ky5a7oV7C4Kyt7FthIXKZpZUw6k7nAtObu3jtg40=; b=LV2ihQdM9AFYEX
	nUlhkPGVwVbsu2lknQoncDfE0oyLCy13nIOU6pL8dKJIclKuFanSs7lN6D14bUAag/xbz93HivyGH
	Q47ggCIJhuh5K7VgZzk4lAYW5vhgsMaDWuQzHo9u02dDs9o/lJ2j2bsXJY2t3Tr19PpqjhF0qaJo3
	/p2xDM5cWvTcRoDUzx656203oh5N9KY+MSRD1QLj9GDVd3pFsX/w/3ppCXnKMq9S8en+FgsEHzWaB
	fIFw3TdGB9eleUOWjSQ4u72ODEFGsBaOHr/VNtCdCpgQTH6/cLei2OCTVAVO+rKGVgDbW4BZre/WV
	SJOiKm5/lHYHVCVsztww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNi-00F85Z-RX; Thu, 15 Sep 2022 02:13:34 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNf-00F7se-16
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 02:13:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 46BB89005D1;
	Thu, 15 Sep 2022 10:13:23 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/3] pinctrl: export function get_pinctrl_dev_from_devname()
Date: Thu, 15 Sep 2022 10:13:19 +0800
Message-Id: <20220915021320.80364-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915021320.80364-1-jay.xu@rock-chips.com>
References: <20220915021320.80364-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSh8fVh8eQh4aGEMaSk8fHlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTI6Mgw4CD0iNi0dFQoVMw4r
	KQFPCgJVSlVKTU1ISUtDS0tIQkpPVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlPTUs3Bg++
X-HM-Tid: 0a833eec179f2eafkusn46bb89005d1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_191331_236845_92E88AC0 
X-CRM114-Status: UNSURE (   7.08  )
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

Export get_pinctrl_dev_from_devname() as GPL and add to pinctrl head file.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/core.c          | 1 +
 include/linux/pinctrl/pinctrl.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/pinctrl/core.c b/drivers/pinctrl/core.c
index 9e57f4c62e60..af5194c42dc4 100644
--- a/drivers/pinctrl/core.c
+++ b/drivers/pinctrl/core.c
@@ -118,6 +118,7 @@ struct pinctrl_dev *get_pinctrl_dev_from_devname(const char *devname)
 
 	return NULL;
 }
+EXPORT_SYMBOL_GPL(get_pinctrl_dev_from_devname);
 
 struct pinctrl_dev *get_pinctrl_dev_from_of_node(struct device_node *np)
 {
diff --git a/include/linux/pinctrl/pinctrl.h b/include/linux/pinctrl/pinctrl.h
index 487117ccb1bc..a9923ccda574 100644
--- a/include/linux/pinctrl/pinctrl.h
+++ b/include/linux/pinctrl/pinctrl.h
@@ -219,5 +219,6 @@ struct pinctrl_dev *of_pinctrl_get(struct device_node *np)
 extern const char *pinctrl_dev_get_name(struct pinctrl_dev *pctldev);
 extern const char *pinctrl_dev_get_devname(struct pinctrl_dev *pctldev);
 extern void *pinctrl_dev_get_drvdata(struct pinctrl_dev *pctldev);
+extern struct pinctrl_dev *get_pinctrl_dev_from_devname(const char *devname);
 
 #endif /* __LINUX_PINCTRL_PINCTRL_H */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

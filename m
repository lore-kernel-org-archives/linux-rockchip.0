Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17098EC1128
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 20:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TTt5oQ2a1iof8O2+CKuFodSIgsW1vy3pFRVU7a9G0l0=; b=g2m70sHDFxy5RF
	uLQk8t5vCjxWXu2mRD3qsRJeoROIfBowalMpz9vE/AxQP6QP2ySSHN+va4zRRtWEGAE2/CjxWBfrS
	FEjFjS45vs+/9SdIOG4c7HMjjNT4nqy/C4AtSEq6x5sGN7ULk7BLjnx6UviNNdsnmBsODaDvExwzl
	5aToAdTGZ3di/fcV5WnmqPo/3Je5tCXguuL5N1I3lVF1YrQKD5DJ9AQZ2RRQ28IlSbLBy68f9UUNi
	loc8TMUjeI2L6whq9mJkJmW+lNzIty5IIXYH4ya7xuxFNUeiPlM6ZM0Wj7oV/O/HUkCIeRnFC7UUg
	uqpHgV8MWOpCtHe7QHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vucKi-00000000z8c-3xjB;
	Mon, 23 Feb 2026 20:15:08 +0000
Received: from [95.181.193.9] (helo=mail.auroraos.dev)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vucKg-00000000z7g-05HU;
	Mon, 23 Feb 2026 20:15:07 +0000
Received: from wasted (213.87.162.218) by exch16.corp.auroraos.dev
 (10.189.209.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Mon, 23 Feb
 2026 23:15:01 +0300
From: Sergey Shtylyov <s.shtylyov@auroraos.dev>
To: Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	<linux-gpio@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
CC: Sergey Shtylyov <s.shtylyov@auroraos.dev>,
	<linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] pinctrl: rockchip: drop NULL check in rockchip_pinctrl_parse_groups()
Date: Mon, 23 Feb 2026 23:14:10 +0300
Message-ID: <20260223201412.20708-1-s.shtylyov@auroraos.dev>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Originating-IP: [213.87.162.218]
X-ClientProxiedBy: exch16.corp.auroraos.dev (10.189.209.38) To
 exch16.corp.auroraos.dev (10.189.209.38)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_121506_069030_F89622A3 
X-CRM114-Status: GOOD (  11.08  )
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

In rockchip_pinctrl_parse_groups(), even if the "rockchip,pins" property
is absent in the DT node it parses and so of_get_property() returns NULL,
the phandle pointer is checked for NULL amidst the *for* loop after the
list pointer (from which it's copied) being already advanced (and even
dereferenced), so it can't be NULL anymore (unless we have a wraparound);
thus the NULL check seems pointless, and when we drop it, the variable
phandle itself becomes pretty useless -- let's get rid of it as well...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@auroraos.dev>
---
The patch is against the for-next branch of Linus W.'s linux-pinctrl.git repo.

Here's the prior patch adding the NULL check where it really belonged but
eventually ignored by Linus:

https://lore.kernel.org/all/179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru/

 drivers/pinctrl/pinctrl-rockchip.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 816823403e97..8e195f951b9f 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3863,7 +3863,6 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 		return -ENOMEM;
 
 	for (i = 0, j = 0; i < size; i += 4, j++) {
-		const __be32 *phandle;
 		struct device_node *np_config;
 
 		num = be32_to_cpu(*list++);
@@ -3874,11 +3873,7 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 		grp->pins[j] = bank->pin_base + be32_to_cpu(*list++);
 		grp->data[j].func = be32_to_cpu(*list++);
 
-		phandle = list++;
-		if (!phandle)
-			return -EINVAL;
-
-		np_config = of_find_node_by_phandle(be32_to_cpup(phandle));
+		np_config = of_find_node_by_phandle(be32_to_cpup(list++));
 		ret = pinconf_generic_parse_dt_config(np_config, NULL,
 				&grp->data[j].configs, &grp->data[j].nconfigs);
 		of_node_put(np_config);
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

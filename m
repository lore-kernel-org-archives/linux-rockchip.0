Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C82C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpr9t/QEsncu50zrWxWlFHubiSkNnbK7TKIsugk9R3c=; b=IiFl2uCgDLxuMB
	ijHTfo5Xy5Lay85qGbBlklZp5ZKKEB8AT2C+iEZbQf/iptArP7KEtIATj53j+NfFUauCwck54boY1
	JRBlafIOaT4/dc2b58ISf+PkYQI01u+ITwT73p/6t53HNxSIesDFKJi8q487TNgJMMm0jXthu3REO
	q0ZVleURpR6B56y+uLywg+rJ2fSwaoYi9VDKuHArN0sZbmxFfgSJiE6TlImWN1lQ2JxWOpL6/Vcaf
	SqE0bwI1kehyDS4+EfkPBZlnA9xIE8e5k4LxBv9DVBbirZLGkFVRzn8a2AZP4UtHjOdTl59EvlMOy
	eJc+sb4gPcO4GWHgd4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRQTz-002X6j-Hw; Tue, 08 Mar 2022 03:25:55 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRQTv-002X59-Ui
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 03:25:53 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id DC22A1DF64A;
 Tue,  8 Mar 2022 11:25:48 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 1/4] gpio: rockchip: get regmap by
 devm_platform_ioremap_resource
Date: Tue,  8 Mar 2022 11:25:43 +0800
Message-Id: <20220308032546.2169929-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308032546.2169929-1-jay.xu@rock-chips.com>
References: <20220308032546.2169929-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUJDSENWHU5KQxgaSx
 9PQhpLVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mww6ARw5PD5WPzJNOTYIGSku
 F0IaCTlVSlVKTU9NTEtCQk9CSExDVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUlPQ083Bg++
X-HM-Tid: 0a7f678fc28ada2bkuwsdc22a1df64a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_192552_196005_EA5D45AD 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
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

Use devm_platform_ioremap_resource to get the reg from device.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index a4c4e4584f5b..b67038572285 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -637,18 +637,8 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
-	struct resource res;
 	int id = 0;
 
-	if (of_address_to_resource(bank->of_node, 0, &res)) {
-		dev_err(bank->dev, "cannot find IO resource for bank\n");
-		return -ENOENT;
-	}
-
-	bank->reg_base = devm_ioremap_resource(bank->dev, &res);
-	if (IS_ERR(bank->reg_base))
-		return PTR_ERR(bank->reg_base);
-
 	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
 	if (!bank->irq)
 		return -EINVAL;
@@ -727,6 +717,9 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	bank->of_node = np;
 
 	raw_spin_lock_init(&bank->slock);
+	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(bank->reg_base))
+		return PTR_ERR(bank->reg_base);
 
 	ret = rockchip_get_bank_data(bank);
 	if (ret)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

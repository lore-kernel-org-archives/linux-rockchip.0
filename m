Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B69C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:50:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A10F7206F0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:50:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jiwjGThv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A10F7206F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jpbYXNWe3peKtLBIoLsKLh3p0ArtiTai5dzkQBO8Ngc=; b=jiwjGThv0EoJVP7yZB8F+5YWL/
	Xpvchp0wFoiAsBUoWvw4D0dE8cJbFzNVSqplYxfcjzsMQtgMnktazchXdtbvfYuAkGCal5GQMEBCD
	LP/TLDyxqIuEdG9qmUgPN6ixj78Q601EJZy1VlJsYDo5o4DXtGiouoFFmKbeEwTrN82c1p32h4dxx
	YCXWPF/Wh93QpuWkuskFXeNfmMMACYWtyfiJXOX/tzRk0yLyTL5wN7l8gN15EVmiuBFx4+hTqFnuC
	NPzIz4PmOyHJz/QQ/94mJ6Kg8A0+bWeTXb0l26ekXtJLhMVyem6Q9p7MVZf9oyf4SxsuEgI+i+yj1
	kJEw4B/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfWD-0000R9-TC; Mon, 31 Aug 2020 08:50:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfWA-0000Pm-Rh
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:50:24 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id A81BAC0F5B;
 Mon, 31 Aug 2020 16:50:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26185T140085628864256S1598863812232994_; 
 Mon, 31 Aug 2020 16:50:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <38ace29fd866fc80b662033f1f02473c>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 5/6] pinctrl: rockchip: fix crash caused by invalid gpio bank
Date: Mon, 31 Aug 2020 16:50:10 +0800
Message-Id: <20200831085010.7235-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831084753.7115-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_045023_218985_74D80202 
X-CRM114-Status: GOOD (  13.67  )
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add valid check for gpio bank.

Change-Id: Ia4609c3045b5df7879beab3c15d791ff54a1f49b
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 6080573155f6..5b16b69e311f 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2526,9 +2526,9 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
 			break;
 	}
 
-	if (ret) {
+	if (ret && cnt) {
 		/* revert the already done pin settings */
-		for (cnt--; cnt >= 0; cnt--)
+		for (cnt--; cnt >= 0 && !data[cnt].func; cnt--)
 			rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);
 
 		return ret;
@@ -2599,9 +2599,13 @@ static int rockchip_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
 					      unsigned offset, bool input)
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
+	struct rockchip_pin_bank *bank = &info->ctrl->pin_banks[offset / 32];
 	struct gpio_chip *chip;
 	int pin;
 
+	if (!bank || !bank->valid)
+		return 0;
+
 	chip = range->gc;
 	pin = offset - chip->base;
 	dev_dbg(info->dev, "gpio_direction for pin %u as %s-%d to %s\n",
@@ -3022,6 +3026,8 @@ static int rockchip_pinctrl_register(struct platform_device *pdev,
 
 	for (bank = 0; bank < info->ctrl->nr_banks; ++bank) {
 		pin_bank = &info->ctrl->pin_banks[bank];
+		if (!pin_bank->valid)
+			continue;
 		pin_bank->grange.name = pin_bank->name;
 		pin_bank->grange.id = bank;
 		pin_bank->grange.pin_base = pin_bank->pin_base;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E57CD8CA6
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41IcDnG5rYbbGe0t6CHM+o2CjeGDNYDDv9j5uhenobU=; b=eUsHIxHKkroAzF
	Zk8iKQit9hcjibL3vL/9v0sfKQdBr3nmYEwfXu02RIUZrt97XbHDDB0Zy1HZLbVijPKVjBOFfCXaK
	xdWLQUJMOZWQLm88mZOkpkzAj5KxjvhkYLVsoBrN+I+cs9duXWLZxFFE+LAZFNUJdwKzVq/zahkpj
	blI3EHBkUMAzQBotN7J4FEegrKvjpn72Yh1urFc37HoZpvyp5BI1gWS/ijwAExzXkSXZLMh7on+LI
	TOSng+rhFQOyD8qDQdR+OB+9RD2RXszaAVjsQTGDyPFoSHJZNNsMM/jjsnecaTQH0WF0uZrQdXK3C
	/UO2K6+hmjxl4Utiz/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMYc-00000002au2-3nN5;
	Sun, 07 Jun 2026 23:05:30 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMYW-00000002app-3q8W;
	Sun, 07 Jun 2026 23:05:27 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9137026F45;
	Mon,  8 Jun 2026 01:05:19 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqCzfUV42IwC; Mon,  8 Jun 2026 01:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1780873519; bh=q711bc1/xpTpKSaH1HBhtc+S33ctQC0+VT1Zj2JwGp4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=YLYpjYIogdESisH1zKL+54WfCLantKUKayYbq+XAdDaTaYB9FA1f3JbOItzaJFWvT
	 CsAyTE148AdWQs/KQe2pH/VF6BU7yaE0IyiECm/URwA/Q6SVkdOAxIzdH77h0e3rgd
	 VO4sd2GqJoWNHVqroVV724sBrvJ+KPb/mbiJjNxPTS+XhvktyQ59tiaj5pzI186Sve
	 NBMkhduG4/oNZw4A5WRtck4acT8qO7DPRuryf0WmDp7W46RRFZ3XvoHMfpIg12i8cQ
	 yK8FLdrlPmH0yyMiuCfFuYhTJePgdy4ngy0y5de85s//2V5l1Slq9YfyR1DsFgYC5v
	 f0x5pm0yDsvVQ==
From: Marco Scardovi <scardracs@disroot.org>
To: Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] gpio: rockchip: use devm_platform_ioremap_resource() to map registers
Date: Mon,  8 Jun 2026 01:05:03 +0200
Message-ID: <20260607230504.35392-3-scardracs@disroot.org>
In-Reply-To: <20260607230504.35392-1-scardracs@disroot.org>
References: <20260607230504.35392-1-scardracs@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_160525_226260_4F42175E 
X-CRM114-Status: GOOD (  10.82  )
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

Currently, the driver retrieves the memory resource with
of_address_to_resource() and maps it with devm_ioremap_resource().

Since the bank device is a platform_device, simplify and modernize the
code by using devm_platform_ioremap_resource(). This also removes the
need for the local struct resource variable.

Assisted-by: Antigravity:gemini-3.5-flash
Signed-off-by: Marco Scardovi <scardracs@disroot.org>
---
 drivers/gpio/gpio-rockchip.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 9478a58f1caa..8647d006d103 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -647,15 +647,10 @@ static void rockchip_clk_put(void *data)
 
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
-	struct resource res;
+	struct platform_device *pdev = to_platform_device(bank->dev);
 	int id = 0, ret;
 
-	if (of_address_to_resource(bank->of_node, 0, &res)) {
-		dev_err(bank->dev, "cannot find IO resource for bank\n");
-		return -ENOENT;
-	}
-
-	bank->reg_base = devm_ioremap_resource(bank->dev, &res);
+	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(bank->reg_base))
 		return PTR_ERR(bank->reg_base);
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=4pKU=JH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A083C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 20:45:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 16D9F610D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 20:45:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 16D9F610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0hbdlECKFqgpncrdqgmX4kBMdIbJ6qRPAYw0TgQFQP0=; b=YBK1xHqq9iFPYm0ySBP5+XSoHM
	hy/yg9ytyWLlcdMRelNfSwjoAkRVm/i7PUsN1n/4/sfD/d48jhpCAUDBJ7o8XrWmoruJbWF2XJeM9
	0MciRUHMxrcKSuBfTmrQBM43tlJEZnm1QNcDQuUSPZg0kvghLTng9Hxmblp6X5eYvY1FpSXaqs+kl
	fdaFsKp2lssYkNSb1K3XfjJSLqbDOUiuqZq94dG+RxMEW1QRB12DLST9zA9oJsvMo9A7XK6p4WwTQ
	8791+hWIxOLX9GxgpM3AMClIrHRYH0hAQInkK7tzAfOO3rkQmGuC35nEC7FNwf91V7fA4XddrYJ7f
	rPEKlmIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVKTs-003QCJ-T6; Sat, 10 Apr 2021 20:45:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKTq-003QC8-LA
 for linux-rockchip@desiato.infradead.org; Sat, 10 Apr 2021 20:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Mg2dbhtNWr+ysCz+NvrUlkF41pQv2vdTPnlLIk22Blg=; b=tKfrr+WwerzwG7x/qPMFJpUfbR
 kfXqEiDD82azQnbX4nhMdmEBoa4IiQXEwnS8Ybq5VdRvCpkyGZ2jQWZLy7fA5GVB9WdeDFEsNlURJ
 kGeYlPikIue3zHAexUYNG8iXr9AqP/7ImIwVvQOgjwyjAr8eRzZBG9yeX13wSnKwnXl8YQZ7m8lOP
 NBqyTdNKOKWRUfXTKXaZjwL333HPSKk2zlrtiu7CHV6Dacvh1A2rL8YqO09lW5XT01z8M9fqkk3EZ
 ojfsQ6U8qW1l3s2wB1JxPCnnhPCt/5MMPuP5ghRpN8lg+Uovvjl5G6jzHy6HOjFyygQK4jZvUhQFg
 3PP2e1AQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKTo-005G47-03
 for linux-rockchip@lists.infradead.org; Sat, 10 Apr 2021 20:45:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 46A9E1F463DB
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Peter Geis <pgwipeout@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH] dt-bindings: pinctrl: rockchip: add RK3568 SoC support
Date: Sat, 10 Apr 2021 17:45:00 -0300
Message-Id: <20210410204500.18091-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_134520_185803_1120A4D0 
X-CRM114-Status: UNSURE (   6.42  )
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

Add RK3568/RK3566 SoC support to pinctrl.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index d3eae61a340d..91fab614c381 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -33,6 +33,7 @@ Required properties for iomux controller:
 		"rockchip,rk3328-pinctrl":  for Rockchip RK3328
 		"rockchip,rk3368-pinctrl":  for Rockchip RK3368
 		"rockchip,rk3399-pinctrl":  for Rockchip RK3399
+		"rockchip,rk3568-pinctrl":  for Rockchip RK3568
 
   - rockchip,grf: phandle referencing a syscon providing the
 	 "general register files"
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

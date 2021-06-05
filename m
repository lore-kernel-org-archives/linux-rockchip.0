Return-Path: <SRS0=rTbS=K7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCF2C47082
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 09:48:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27D2B61380
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 09:48:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27D2B61380
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U76dKvcJNNXaFikVmPJ23wW4aTvZanZK19SbEPo+b1Q=; b=JMLhYgK245W9jQ
	L/Cps3BYHNvfZDOnWiQQr3ZatcEdopmuzIzJtEDqboBhT07OYcuNTV6dU0DT9JEs5+uH8ffd2XWro
	ITlQparWLrX9p5fW4o3XWNnKYpjyRuftVbCBnkHxkDL3N+zJIMJuXBZ/f3DYLK1PLXUoIFlpoKbfk
	OW1v/7aa9S5wijENOxyJ0OdU7MsW6JDXZmJnjZEax1TH0hl8EsPykAA+t+8nsviub7U6IezhpXm0O
	nB+TvwrM+ZvA826+7Sb4xypDYOa2zvBlKvZ+OcKjvF4StGQew8PnPLZoQpNrGM6/wrhYIaQqK/B8Z
	N+QvngN5Shmhi9LfVRFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpSuU-00GLx3-ML; Sat, 05 Jun 2021 09:48:06 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpStg-00GLmN-Gt; Sat, 05 Jun 2021 09:47:19 +0000
Received: from localhost (unknown [192.168.167.105])
 by lucky1.263xmail.com (Postfix) with ESMTP id B4AFDC843B;
 Sat,  5 Jun 2021 17:47:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26721T140686913419008S1622886424373318_; 
 Sat, 05 Jun 2021 17:47:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d9d6d82aff890b8b5f7743b4a6772f81>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 4/8] spi: rockchip: add compatible string for rv1126
Date: Sat,  5 Jun 2021 17:46:55 +0800
Message-Id: <20210605094659.13507-4-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210605094659.13507-1-jon.lin@rock-chips.com>
References: <20210605094659.13507-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210605_024716_806498_3933EDCF 
X-CRM114-Status: UNSURE (   9.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add compatible string for rv1126 to applications for potential
applications.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 drivers/spi/spi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 73b89a7ae69f..950d3bce443b 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -929,6 +929,7 @@ static const struct of_device_id rockchip_spi_dt_match[] = {
 	{ .compatible = "rockchip,rk3368-spi", },
 	{ .compatible = "rockchip,rk3399-spi", },
 	{ .compatible = "rockchip,rv1108-spi", },
+	{ .compatible = "rockchip,rv1126-spi", },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_spi_dt_match);
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

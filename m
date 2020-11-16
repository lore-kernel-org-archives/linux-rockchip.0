Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53C9C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:16:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 714E9206A1
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:16:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Qz/yUKU0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 714E9206A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hu7Ar8PbdwyRjUoWyHIelDxGUMPsq+CLU575+h63CPw=; b=Qz/yUKU0gqz8emV0P8KqPjbL8y
	veis6dB9mNpOIonKej6HTqox9vHVzRKDRALxbqSJ3w8g2Zhk5DlJbMbaP3BWVtWXTaAON+eH6U3Az
	XPyFbuoDJNnD/36e6tSyhG5y3DZ37n2BAB4OimZp1tELiRzUpiP9VmDASvs0+6oopWfSQSps1FTLq
	vVlFA4cUziO4bhzPdJtLJ5thHis4nroAjyCk94rMJ0ULu5B7sHnjOszlYM+bsph6wbke8Tp7AB1dX
	uIL4fCxs6u4yHKSX9q8ANl9L9naM3vBtpZyg9LkEeFLQIC803/qDN5Q5gqAipxS43lXGU2syhUP0r
	l6AxMobQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kefIr-0007Oj-JE; Mon, 16 Nov 2020 14:16:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kefIp-0007Nf-MX
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 14:16:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 3F6721F46EB7
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: hjc@rock-chips.com,
	heiko@sntech.de
Subject: [PATCH] drm/rockchip: fix typo in Kconfig 's/HDMI/dsi/'
Date: Mon, 16 Nov 2020 15:16:08 +0100
Message-Id: <20201116141609.26719-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_091619_823854_75691EA1 
X-CRM114-Status: GOOD (  11.20  )
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
Cc: enric.balletbo@collabora.com, linux-rockchip@lists.infradead.org,
 dafna3@gmail.com, kernel@collabora.com, dafna.hirschfeld@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the help of ROCKCHIP_DW_MIPI_DSI it said
it is a HDMI driver instead of a dsi driver.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 310aa1546893..cb25c0e8fc9b 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -49,7 +49,7 @@ config ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY_MIPI_DPHY
 	help
 	  This selects support for Rockchip SoC specific extensions
-	  for the Synopsys DesignWare HDMI driver. If you want to
+	  for the Synopsys DesignWare dsi driver. If you want to
 	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
 	  select this option.
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

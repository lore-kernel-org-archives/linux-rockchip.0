Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA86CEF17D
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 14:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0r9Qm24+yBm+hg5KiE3iqh/MRU4d8CeuoEFWF1NRzLw=; b=MHle3r8KURiuvl
	9u4oRa4hZo22STzWlUNp61fYYTRz1+Ug5+tsepNYNYqJY79DpP3dNW43a2FJmQnh3mVXDlcr+9M+l
	K5iJFKAJ8lDFNN06rhcmWnhgGE8vEHIB1R1zplyCQZIhAI4/fatbP1uTmDK+GeatC+Lri78SyJIt0
	HOSSyxuA+3NR+d5wviWd/1DEDeQ2YfNhgLX4pPPwa8YCawt5KF01sPU7PYhkGKRd36N6QCqkJSxu2
	cqy+ttxRgJzVe7iyKH+h8FqBuX/qp+7Rwxcmgm27x8jcieTsNcIuDsP6NOn3k9txT8hBakphf0rIt
	tI4gYb19plicqJmg520w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBFh-00000006Avo-1w6w;
	Tue, 08 Oct 2024 14:31:53 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBEL-00000006AfS-3SYp;
	Tue, 08 Oct 2024 14:30:31 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728397824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/3XlY1mk3YffFm14gr4Vck9xAjVw/HMK/Fujtptt3Ds=;
	b=iCfmdhxJTDBVZOQxJEpqCo0XhkZLYtiwUlujqu5mum+6xJna15iGDtoy/u+7/gV7JN59ej
	V3TyVARPetlo9d/iJeeBdb6XoEMtMRxilXkrFJBF/boP2RgcI/HbZVe0vf4EDobMDJgl88
	rxsmHPAcjb8brfjbjCYr+6syqSdIXz5Sn6Q3/oi9HVg162Z7nijN2+hgDUpuGMrp+0ifx1
	YqYWXAKR22e9cIWTTwxyQaF1WNsc1JJ6xNCtSrL/5IQWGhAY4Qv/pqxAnXb0TAn7iDjuJ4
	kl0lhPpZK7eqMT2pBhxDOys/9WYcoYspqsgvN4E8DKWz8rFp7tkYdahgjrnYNA==
To: linux-kernel@vger.kernel.org
Cc: lee@kernel.org,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] mfd: rk8xx-core: Check "system-power-controller" first
Date: Tue,  8 Oct 2024 16:30:10 +0200
Message-Id: <08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_073030_328294_5EFA27D4 
X-CRM114-Status: UNSURE (   8.74  )
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

Commit 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-
power-controller") made the property "rockchip,system-power-controller"
deprecated in favor of the shorter, universal form "system-power-controller".
Following the updates to the board dts files, [1] make the favored property
name checked first, to save a few CPU cycles.

[1] https://lore.kernel.org/linux-rockchip/20241008105450.20648-1-didi.debian@cknow.org/T/#u

Cc: Diederik de Haas <didi.debian@cknow.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/mfd/rk8xx-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 39ab114ea669..ed892bddf7b5 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -785,8 +785,8 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to add MFD devices\n");
 
-	if (device_property_read_bool(dev, "rockchip,system-power-controller") ||
-	    device_property_read_bool(dev, "system-power-controller")) {
+	if (device_property_read_bool(dev, "system-power-controller") ||
+	    device_property_read_bool(dev, "rockchip,system-power-controller")) {
 		ret = devm_register_sys_off_handler(dev,
 				    SYS_OFF_MODE_POWER_OFF_PREPARE, SYS_OFF_PRIO_HIGH,
 				    &rk808_power_off, rk808);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

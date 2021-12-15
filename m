Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856B4C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oI0G7MuoLioZur7SLtncMTakEDFq3UiWGQ6uxeXt0A=; b=efrwTSifWuU3X1
	+b7A3czkIVNKCWAkExGbfHTZy/SUnmZ/unm61CXD6pdMRJW5RPA3iqCe6b4BaT0UsNYPqEEKVEwMr
	UTe9gmvPiGAiJ94CRIZ1xceu2lbBzcAnnIOesX0WpVbX8SC6vL6q4MZtvOqlj5XztvyZrkkBtOqy5
	cUTe2esOHOGOjkA46Hdswuqzap4MnxUQvuUvb2xYcD7xTaQmgZddrl4SOP1C/D8b9k2A2enzSsZwz
	YixR2R6Sgn8nYa1RreDqle3uwtMugqVeSgRHu/eNDDybsgX/tlXLrtHMC+pmQ0YZ7fOVoey5pjb4v
	uyt/dWktikf13sfU8I3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbts-002oEk-Vg; Wed, 15 Dec 2021 21:33:24 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbto-002oDZ-6V
 for linux-rockchip@lists.infradead.org; Wed, 15 Dec 2021 21:33:22 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout1.routing.net (Postfix) with ESMTP id 99A783FEAE;
 Wed, 15 Dec 2021 21:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1639603991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eal7IPsnWFVb9A22/KxrcFo3bDHrlVGVXDoTWYopCYw=;
 b=npXPobUbYecSU4L/mYExWqcd9jqPS3TmAtD2StksKS9G3tTW9PYzlu9Q7F3LEHJNBfLUzi
 +pvVNTUBXGyfoWUamqt9aNwxOCbl4Q4+bi8SAlJJm1hxIzpezwvdY2iG8LAZVxCAHKhBF/
 1pLB+CJgZpeX6WMAVQHRNGmzG+6CVDA=
Received: from localhost.localdomain (fttx-pool-80.245.79.169.bambit.de
 [80.245.79.169])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 01AFC4023F;
 Wed, 15 Dec 2021 21:33:10 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Lee Jones <lee.jones@linaro.org>
Cc: Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 2/2] mfd: rk808: Add poweroff and reboot support for rk809 pmic
Date: Wed, 15 Dec 2021 22:33:00 +0100
Message-Id: <20211215213300.4778-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215213300.4778-1-linux@fw-web.de>
References: <20211215213300.4778-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 43c0ee09-672c-4d6b-94c3-1cde6f35e318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133320_422121_8672180C 
X-CRM114-Status: UNSURE (   8.55  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add support for reset/poweroff rk809. It uses same Register and Values
like rk817 so just add the Chip_id.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/mfd/rk808.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index afbd7e01df50..2353caa81aa2 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -545,6 +545,7 @@ static void rk808_pm_power_off(void)
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
 		break;
+	case RK809_ID:
 	case RK817_ID:
 		reg = RK817_SYS_CFG(3);
 		bit = DEV_OFF;
@@ -577,6 +578,7 @@ static int rk808_restart_notify(struct notifier_block *this, unsigned long mode,
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF;
 		break;
+	case RK809_ID:
 	case RK817_ID:
 		reg = RK817_SYS_CFG(3);
 		bit = DEV_RST;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

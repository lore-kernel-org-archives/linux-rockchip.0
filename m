Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E78C52D7D
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 18:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJkQFIvSnXNrlvKusXghX2vlIJabbx44BfwhzNWESvk=; b=A1mqheODgrRI/f
	Pdarejh/yF1YtWGi1ASs0dtvN5XgFJZAUTtjMjLPJpExNWBOZis6Xls0Kvp5HTrE8+bDg8/W3folW
	oBoSj88flGF9UAIuTVy1GE6f58iM1cH7N7UhC/NL39QX3SLpdtptTLJ/aSa3bGFlL1y0C/FN4+NTM
	k67QrEESQI52kblCn+aZF7XsBcMwM59M9CvIa/s9cDTtis62UQIQzdwrEw/ogmImW15z1y4963r/s
	gZAZD/uHDcVAU7w29OJOyvAFmXYOPXQNYK60wE7GKq4dEQWh7/PmhFCivdURHP8MFIatEI1r7AVrr
	brDK0JMncuyXd8hxt/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwQC-00000004eV6-2UvU;
	Tue, 13 Aug 2024 18:39:04 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwPZ-00000004eOg-1w2d;
	Tue, 13 Aug 2024 18:38:27 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723574302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7tQ93cgqrUy0u5sLZ5yVNDqAWLqDmP1U/QuWLwU3voM=;
	b=J6OCBHPkxjj6TQoSl2vI2PEvgmB6s3QS2FtHT9thCxz9X08Faf8tG7kDlcefLEEtCh7C8w
	Wh7ZHDGfIS69UiVcaULAc/MEGGsVIwBGbdf1RYYXbWvHq9dJ2JRW23wy3+TOq0jncT/L1+
	g+QWXZgbchv+4/qnra3E3+5bZpWZPic7ICGbZejBJOb8vXXZRuJn6vOnJh5vCk1fYgi7Lb
	rNuJUCPoTQPRrf6IqP+mhUVtug97Dx9LsTCuxYYhNIsThBlqU0EBwjpMrzfv8ZHYF1LTCl
	oRZ+lSHmsv3EGFnAW5pIKeEe2RBlRFkEF3binWK5OnxU9tpD07BWjd0B8kVA6w==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
Date: Tue, 13 Aug 2024 20:38:17 +0200
Message-Id: <5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_113825_988313_D78B1F2E 
X-CRM114-Status: UNSURE (   7.50  )
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

Return the actual error code upon failure to allocate extcon device, instead
of hardcoding -ENOMEM.  While there, produce an appropriate error message.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f71373ae6e1..d33418a1e7a8 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -434,8 +434,10 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 		edev = devm_extcon_dev_allocate(rphy->dev,
 						rockchip_usb2phy_extcon_cable);
 
-		if (IS_ERR(edev))
-			return -ENOMEM;
+		if (IS_ERR(edev)) {
+			dev_err(rphy->dev, "failed to allocate extcon device\n");
+			return PTR_ERR(edev);
+		}
 
 		ret = devm_extcon_dev_register(rphy->dev, edev);
 		if (ret) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

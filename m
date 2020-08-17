Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A2AFC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 03:12:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE56F2063A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 03:12:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JYmM0Wub";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="DpMDMhi+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE56F2063A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=airmail.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1S6JydhPtHk4yllTRBd8MskJUVEx5zp15Z+0uZ7RZmY=; b=JYmM0Wub14VDRxpSgAqrUIya+
	uNnzrBSlbborma64E4CNEegCjzB8I0SGK7dF3CIHoLZPmHJyZTQDM+dwSGdB5v+2U27jL5g5jyQxg
	qY+UjjAbhGen/sYiPQ+NV0Xp6Qu5S6+uR0BJCxuQdRTzT8rYK63YWXnMCq3mgfFx9hO00okeTboO3
	upJJoYr0rBW/uJ4CL5SFZ4aQAeky6rP4+6ms+Fihl55N6C5dOCAn6nUdD8Pk/pm1ugJtPt8Qt2ZB6
	W11EWs57xq37+BcklLHHwqhATpkZNnVguZtcZeWB3LG1BylZBrRcr+dhTlTiYVzEb/BIkTGSPyomF
	T0fDu/kIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7VZ7-0008Ih-BG; Mon, 17 Aug 2020 03:12:05 +0000
Received: from mail.cock.li ([37.120.193.124])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7VZ1-0008Gq-Ty; Mon, 17 Aug 2020 03:12:01 +0000
From: travelvia@airmail.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1597633918; bh=B2/pG96q5fjDlAD3MWBfACLsVnRmGQD6Zy1Yw/gvRv0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DpMDMhi+CKpv3Aj3+eu4JHxq2yuf2gyHNC5wrG8+6R+EkGEHla9WiX8lrx6qzeQS3
 pQqXO4FlTUOEwYVB8mz/LLuJJRX5OliG9YLPcd4FZA888/qnbCsGClm8KSFN9NaYL9
 sAwisY87vwcY0vHQ+oqipDAu//Snh39Q6ljyz5Qc3rxZRKf8utAw1LVVA8NzfCwKtz
 Su4h3guxmp8UNz4gWRTndzYwpsusWlEr2Q21sAQoEKvNOKMCrd/8B6FyZLNv4y3vMG
 wRZU/024shTbBCXnFJi3oN+a7luGl+UmumRzqcIxj0ysGJVZVBfsX8cTSTV/JcY+Gw
 KIU3n6hC3tpGg==
To: robh+dt@kernel.org, heiko@sntech.de, balbi@kernel.org,
 gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH v2 2/4] usb: dwc3: of-simple: Add compatible for rk3328
Date: Sun, 16 Aug 2020 20:11:12 -0700
Message-Id: <20200817031114.6107-2-travelvia@airmail.cc>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817031114.6107-1-travelvia@airmail.cc>
References: <20200817031114.6107-1-travelvia@airmail.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_231200_184018_9F3D797C 
X-CRM114-Status: GOOD (  14.51  )
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
Cc: Cameron Nemo <cnemo@tutanota.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future, and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 7df115012935..68d6e4fa0c6a 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -49,7 +49,8 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	 * Some controllers need to toggle the usb3-otg reset before trying to
 	 * initialize the PHY, otherwise the PHY times out.
 	 */
-	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
+	if (of_device_is_compatible(np, "rockchip,rk3328-dwc3") ||
+	    of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
 		simple->need_reset = true;
 
 	simple->resets = of_reset_control_array_get(np, false, true,
@@ -171,6 +172,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32FAAC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 08:13:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C59056143F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 08:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C59056143F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pTxcvw0tD/hD+BZ3CvF6zysdKUIHiCp+kVw4mH/2YGo=; b=Rh+xDy8HQqnvcjMp6jC822JkvT
	jBNO+Ca94tJiad9YIQeZ4z8h+2rNtDuClJ/91Umh8VGEBJKrYhrq+8/CNC3bVIgi4kdD7eTDUmXFa
	FiCivkfo0Y6EgyxKpyfvZiDED+nWbEe33OzjCJuy/qte3O6eBrHwGIWnBmx1pZvUTlH5qxrR2EPdF
	XDz/OY6F35ARP297vCmNhAckp5QgbltzzH/QvUF/C+Qc7+w6ByB2yYPMO914lAjfWQbU4RFchSJEj
	lCZKrYN+tyDM1XhNY6EEO1VlDrgmatRqk28vR2tahu1s1iWY7Ru3YSjQRosqOEqB13gALGSctQwsC
	dzy44UhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc1nI-005GVd-VT; Thu, 29 Apr 2021 08:13:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1mX-005GMq-No; Thu, 29 Apr 2021 08:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gLnSCXusk8SJb3nGkzqXkWM8ycwZ+aOw4sOZ8q/xIwo=; b=IAo/tEmvhen7bUhKO3WLq8RsrX
 Fem/TTZeHAoEAloA5Y54KI583hqr9ywCraGg+XFJBwj/ha0vxLnqtmI3lsuHORGXy8f1C/no2rKW/
 yLxisf3F+mvZXHYy1TYgq7m2m9ylvXM7rm3+DCFrIHTDGdNfg1cyLJgRD2f3OaULaRl2wrGjFUXY7
 YVX3TLzD2UIyieHbtzz22tb4V3bWc9mMJRwLlUodwkdcqk0FKu2aCKA01NygJCuBQLaD3fCIyYnKZ
 2WzM88Muxb2Y4rHf7s1c4nG2I+lEbw1mlO4Sx/PMsJeYDvibhtgPMt5Ov+YpnBCVjnQlGfL6lbPAL
 9le1oEkQ==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1mV-000TdH-7j; Thu, 29 Apr 2021 08:12:20 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id A03F5BA2F8;
 Thu, 29 Apr 2021 16:12:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31919T139684105664256S1619683913541485_; 
 Thu, 29 Apr 2021 16:12:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <612700768d87092a566c456b58b4cf77>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 30
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: [PATCH v4 03/10] dt-bindings: mmc: rockchip-dw-mshc: add description
 for rk3568
Date: Thu, 29 Apr 2021 16:11:44 +0800
Message-Id: <20210429081151.17558-4-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210429081151.17558-1-cl@rock-chips.com>
References: <20210429081151.17558-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_011219_457286_F943A935 
X-CRM114-Status: UNSURE (   9.76  )
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

From: Liang Chen <cl@rock-chips.com>

add "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc" for mmc nodes on
a rk3568 platform to rockchip-dw-mshc.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml        | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 3762f1c8de96..eaa3b0ef24f6 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -29,21 +29,14 @@ properties:
       - const: rockchip,rk3288-dw-mshc
       - items:
           - enum:
-            # for Rockchip PX30
               - rockchip,px30-dw-mshc
-            # for Rockchip RK3036
               - rockchip,rk3036-dw-mshc
-            # for Rockchip RK322x
               - rockchip,rk3228-dw-mshc
-            # for Rockchip RK3308
               - rockchip,rk3308-dw-mshc
-            # for Rockchip RK3328
               - rockchip,rk3328-dw-mshc
-            # for Rockchip RK3368
               - rockchip,rk3368-dw-mshc
-            # for Rockchip RK3399
               - rockchip,rk3399-dw-mshc
-            # for Rockchip RV1108
+              - rockchip,rk3568-dw-mshc
               - rockchip,rv1108-dw-mshc
           - const: rockchip,rk3288-dw-mshc
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

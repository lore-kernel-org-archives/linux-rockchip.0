Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F768C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:49:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAE1761449
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:49:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAE1761449
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JJKI2cWlM7pWBUydJ4QJzpTkX11IDHaqNNqOYa3Jx5M=; b=ojD3Cw/yZWiVnhifJ2wCrxUe4w
	Rj1aNydoznIc0Jf2xrO541JVgeBTpDrqxa5hdZuPGW5FAvQorbARY6qDrvg/0dePKDMm/74e7FIh5
	0HPQlxa6H3p13yOOIYZKNIQVnEKnM7YgnaAE12gWSxnlsJ6aDT+zKa0Ye+QzrYuwfMEP02SBdDk3F
	DyzwpF4MGKHA22r1DJuaxTthUwTNVPFBmW+TpVXf4KZ8Si5sQCeBAo8XqRAK/R+rrWbPTUDQzpfIw
	4fquR4kJ961kxftWPbA3VWqt6K1+VRta7kpgIGVlELru26Bxf9ONBKjVD6urzxA5IIkOiMsYesxub
	fjXb+0DQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbkZK-003Yct-BH; Wed, 28 Apr 2021 13:49:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY7-003YP6-Nx; Wed, 28 Apr 2021 13:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MWs3NhAaCq8rtk0/aMiR2FSXKyxnekezxSp7ywS9kMM=; b=ignL8OR/IliLB4Cf7WjuM50IHb
 M5SGAphaUe0NGSyAH7gb+ttYrxwRTrtmGXUuAxbYLtG5gEv+4Vo7RT8cobkNOYhQM7CK4zwrH4qh8
 7ACQfC2RNLLkPu/+GXB/1tku1gTnzxGVX6c8LOrMQx5zGYlohgFCw07ticVW7nBAKsJRC5c3DT1VD
 GSZHdBdpVIY8DWzCxLuxJq6hYlBqu4py+tOPnDGgTcf/pMxQo3s43nkHTVWqlgIHhxx1o0v7TNUtL
 Sb2wQR5QKNasttiZ/0ezVF88sSBm6VJonLWINHFeKRgxeQ3iUQbpppD1ZfxdEH0iqokT3wMZiIxZS
 HL3woXYQ==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY5-00HSu3-27; Wed, 28 Apr 2021 13:48:18 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id A8E5FF3822;
 Wed, 28 Apr 2021 21:48:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649007400704S1619617681633012_; 
 Wed, 28 Apr 2021 21:48:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7185ae63b5b0517c005d303060098782>
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
Subject: [PATCH v3 04/10] dt-bindings: watchdog: dw-wdt: add description for
 rk3568
Date: Wed, 28 Apr 2021 21:47:53 +0800
Message-Id: <20210428134759.22076-5-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210428134759.22076-1-cl@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_064817_440493_E2FB9F25 
X-CRM114-Status: GOOD (  10.38  )
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

add "rockchip,rk3568-wdt", "snps,dw-wdt" for watchdog nodes on
a rk3568 platform to snps,dw-wdt.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index b58596b1831d..6461eb4f4a27 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -27,6 +27,7 @@ properties:
               - rockchip,rk3328-wdt
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
+              - rockchip,rk3568-wdt
               - rockchip,rv1108-wdt
           - const: snps,dw-wdt
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

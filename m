Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79866C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:50:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 202C061443
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:50:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 202C061443
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GsxAEiZIEj8qtaQHRMkAn2b3H42KKh6Qm6TynISlvR8=; b=XjxNNN7HiWDyH+hRtvA9YfHpps
	WiZfxCZhB62mCZIoaHXKxe6OEApzXEEf4uQa8bWi+qauATW2evN85B2ohDSR0YnulkINarns3ULGJ
	EIBP+paoi7tIQR2xr6RwnCLTuuYINJ6Y8a1j9cktiZuwlIgksMmmw3QjAtRRJsCGq3FehwMXBg027
	W5qFPSwiVx0g4b7G1OCuQuQJzPa1JCtK8KpPRS7EhAtT1g6ZVCJ2uNfN9mwaWVzNL/DL/F6PhoZBh
	6s9SRKkh4/rzfuIoJ+1T1+bks4Ia2DUKHa716lqKDc0bOU2C1aRpIgOfctbOkkDNdE/vj1vg4/dlk
	uIBp7alg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbkZl-003YmK-F4; Wed, 28 Apr 2021 13:50:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY8-003YPG-Ov; Wed, 28 Apr 2021 13:48:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OnpgthqlwWLHbNCU8zvsBtSU7OO67z/aMlogdMs2yTk=; b=s4+R1rQFgfuLA47GbcFhr7FV5k
 QY/Nr93KSzqBXEmKi3Z6NUtoR+Env+wCmCRTx8qK2TvN92cDNr4iWWUarm1jxfNNfuF4fSkHRdaL2
 a/IAsUv1LJGiio442oLMN4HjRVDK3EEtjk0o+Q9BgvTy+1+S6iNjm1IzWppeMCqJB1ko6OcWk3wUX
 4bJOSbwwSpD132w4V5bOwKRLEV3cipPbjVk5m01L1jC2YrgRoFbwHFpZZb1WVRrLKuTqRTMSaFFkC
 sjCRPaFLC2IdZ+nPsccgJM81lPGVHuIc3KOdYUoryYHZmbsmgP/5GcLT3cZ62uHCE+lKsRr+AUFWc
 d1t5Es6g==;
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY4-00HStx-Rr; Wed, 28 Apr 2021 13:48:19 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id ECA40AB22E;
 Wed, 28 Apr 2021 21:48:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649007400704S1619617681633012_; 
 Wed, 28 Apr 2021 21:48:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a753825bce6abdf78f6cd0fb8c14db17>
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
Subject: [PATCH v3 01/10] dt-bindings: i2c: i2c-rk3x: add description for
 rk3568
Date: Wed, 28 Apr 2021 21:47:50 +0800
Message-Id: <20210428134759.22076-2-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210428134759.22076-1-cl@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_064817_804854_D20697C3 
X-CRM114-Status: UNSURE (   9.61  )
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

add "rockchip,rk3568-i2c", "rockchip,rk3399-i2c" for i2c nodes on
a rk3568 platform to i2c-rk3x.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 7f254d79558c..5339dd4fc370 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -36,6 +36,7 @@ properties:
               - rockchip,px30-i2c
               - rockchip,rk3308-i2c
               - rockchip,rk3328-i2c
+              - rockchip,rk3568-i2c
           - const: rockchip,rk3399-i2c
 
   reg:
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

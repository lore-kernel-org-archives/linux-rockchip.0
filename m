Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E46E7C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 07:01:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4AF966141C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 07:01:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4AF966141C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vNB8bAR9cLxvwwUW1/CtN0h3TzlLYO1RraMku7dEqYw=; b=AxBcBf1RwhSx68Zsvl0LPpBFJb
	aVFq4FZ3dXmJLovV59nE8LiCU0B0KYRyHRejPYtkIPQ7DmzLJcp/zvriTz49AeJEhWbs/Q5uD+4ba
	7hT4th0NffsI03O/YvdPmh7e3Iar6fd0r5fKMsPn4DVUpdeplUBN2o7qeYn8KbBinzxXsisaGsgYV
	+Cypwu/PreCqNHU+5shQzaMkAjmyyz+CnA+t1PSRYuaA84VK7SaeIcJuqZt/gRqP/2By2fGxjRhNY
	PdRh5K2W0dB4o+GQHpThftCLBQsTPWhcAsgzPSZqxT7rvTI3BxNaQFUfDO3nD2mEnhG70HwFeAyWn
	MdLHyd3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ6r4-00Drou-3O; Wed, 21 Apr 2021 07:00:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ6pv-00DreV-Lq; Wed, 21 Apr 2021 06:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Y8se1y3H2SDejleKvSe7bd0tKPH2WaX2y/uOKXlaW4w=; b=nodPyITBpe9dmFVxdDv1lQAyQD
 BjKcrktzJN34UQGeECBgPHe2IJQXp+Jl4U8o//HyyCvykbpA9x+9luGcMivr9aYSTWGB46qTuGmoX
 AFS2zxDA/Rgh6TN/1iaAn5DjZxAN2yrqkC078Zg9q6+4XhwAw4lHw9AdRM48Xhve8xX4QJrRs1pPR
 Nkx5CwzRhwod/E+KTAzBC6hHDF/Rmrx8rHMidipBh5P29gRF8lF5e/rU18WmLKvnF3+bblF43f9PB
 N/CNg9sB4FbCEg/7XFMPw3KI3SUIHquwIDf64ZZmi08jW3Fq00SSzz9nLksaus8jrTTNeddGskL9/
 sLit9lyA==;
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ6pp-00Ceku-TZ; Wed, 21 Apr 2021 06:59:46 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3FF27C7AC3;
 Wed, 21 Apr 2021 14:59:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649152108288S1618988366606986_; 
 Wed, 21 Apr 2021 14:59:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4b8ad35dd1c107ba03dab44c0d2305af>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 25
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
 cl@rock-chips.com
Subject: [PATCH v1 3/5] dt-bindings: mmc: rockchip-dw-mshc: add description
 for rk3568
Date: Wed, 21 Apr 2021 14:59:19 +0800
Message-Id: <20210421065921.23917-4-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210421065921.23917-1-cl@rock-chips.com>
References: <20210421065921.23917-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_235942_136576_AF4CE3A0 
X-CRM114-Status: GOOD (  10.33  )
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

add "rockchip,rk3568-dwcmshc", "snps,dwcmshc-sdhci" for mmc nodes on
a rk3568 platform to rockchip-dw-mshc.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 3762f1c8de96..2a6c1cee4887 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -27,6 +27,8 @@ properties:
       - const: rockchip,rk2928-dw-mshc
       # for Rockchip RK3288
       - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3568
+      - const: rockchip,rk3568-dwcmshc
       - items:
           - enum:
             # for Rockchip PX30
@@ -41,6 +43,8 @@ properties:
               - rockchip,rk3328-dw-mshc
             # for Rockchip RK3368
               - rockchip,rk3368-dw-mshc
+            # for Rockchip RK3568
+              - rockchip,rk3568-dw-mshc
             # for Rockchip RK3399
               - rockchip,rk3399-dw-mshc
             # for Rockchip RV1108
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

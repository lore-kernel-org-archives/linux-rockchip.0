Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 102CAC07E96
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 01:45:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 917C360FEB
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 01:45:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 917C360FEB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOTBIUGIJp7KPizQDxylpou9SOm6s0lJouglk096PtI=; b=DxmoL2XaVb3ZK7
	r9ChkbzaHifpXCitnIZhIycghG79owJmqjgSHJ0edGUkeiMxM4gHkmOHv2fIK4QWAg6IfZCMQGMYE
	KWfH0/W9Ct8TB9kAm5RcTkxUv/D7Uv9RDWz7iSFac576grkyaMqRjrlAHH/6OPnGdv9yzVSOMM3e7
	aXN7jL6wfYcVleLeQAU2+M8hUbsTmh1NkI9gorzosfonSnDqWyzh7i9+x1x9W4i9uK7f91Em1r5E3
	qEAlAajKJS2FWEqcmaNSZ9BUzZOR7ewqt8Zz3Cj1DDL7qJWPd8vj3+VW6cmjrWln99P6m9bazkfTg
	uktxblEgyw0UsyfRK21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2l0R-005htu-3g; Mon, 12 Jul 2021 01:45:11 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2l0O-005hsh-Bf
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 01:45:10 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id C2676CF132;
 Mon, 12 Jul 2021 09:44:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29909T139670828599040S1626054272143902_; 
 Mon, 12 Jul 2021 09:44:35 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f3d5d0aa2d28905428bdf12c7118f134>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: jic23@kernel.org
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3568
Date: Mon, 12 Jul 2021 09:44:37 +0800
Message-Id: <20210712014437.97427-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_184508_692126_AE4C2768 
X-CRM114-Status: UNSURE (   8.69  )
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

Add description for rk3568 saradc.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 1bb76197787b..e512a14e41b4 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -20,6 +20,7 @@ properties:
               - rockchip,px30-saradc
               - rockchip,rk3308-saradc
               - rockchip,rk3328-saradc
+              - rockchip,rk3568-saradc
               - rockchip,rv1108-saradc
           - const: rockchip,rk3399-saradc
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

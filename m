Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2ECC4320E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 04:03:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED9F8610E5
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 04:03:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED9F8610E5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9+/vH8naM8H3GEJCuJvTLuI2izlPFOjstWST508mps=; b=GPZivboclzFYrj
	SAoppM1q23MEOuRvgfQfBV/e5zooKihalUOC/lj6QcM/CvwBl/SqtlHJTF8YPWXEV8LqsxyAXiH4C
	AFtfbCbfz0LDze8G0fkBlebNepzWptzkLkZ2U9mlO2/PDBqHLBbkiNv6dMK3rVKq0FvWEfoMvLQ8y
	SwSYBImrx0BZg69R/uuaNvPhhHkUHWkouSYc/kkg6RKRzHbo9LqSQeT4w8w2sXnyxEfBHYw2CxODb
	h8tSduig6/tBkIRrO9f5O+XH1pwSUkGOyTK99nnS0ajRPJ/krmYJySEDD8oVYZcvZr2eMoXme3NrC
	MvGImDKJUP4E6BNGMswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJ6bq-0096BA-KF; Thu, 26 Aug 2021 04:03:22 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJ6bn-009699-Bs
 for linux-rockchip@lists.infradead.org; Thu, 26 Aug 2021 04:03:20 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id DFD40CFCC9;
 Thu, 26 Aug 2021 12:03:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760853055232S1629950596113927_; 
 Thu, 26 Aug 2021 12:03:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b91674cd3eccff5bace9ca0b87a4b509>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 11/14] ASoC: dt-bindings: rockchip: Add compatible strings
 for more SoCs
Date: Thu, 26 Aug 2021 12:03:11 +0800
Message-Id: <1629950594-14345-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_210319_697699_732DB0E5 
X-CRM114-Status: UNSURE (   9.52  )
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

This patch adds compatible strings for more SoCs.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Acked-by: Rob Herring <robh@kernel.org>
---

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 9f9cc48..5ea16b8 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -20,7 +20,9 @@ properties:
       - items:
           - enum:
               - rockchip,px30-i2s
+              - rockchip,rk1808-i2s
               - rockchip,rk3036-i2s
+              - rockchip,rk3128-i2s
               - rockchip,rk3188-i2s
               - rockchip,rk3228-i2s
               - rockchip,rk3288-i2s
@@ -29,6 +31,7 @@ properties:
               - rockchip,rk3366-i2s
               - rockchip,rk3368-i2s
               - rockchip,rk3399-i2s
+              - rockchip,rv1126-i2s
           - const: rockchip,rk3066-i2s
 
   reg:
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

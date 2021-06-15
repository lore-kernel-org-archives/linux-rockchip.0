Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71FD2C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 15:37:12 +0000 (UTC)
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2695E6145F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 15:37:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2695E6145F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gx9hz5+j06eMCJf3NvPIEooP0Ivnno6JUmX+7YrKhy0=; b=b+fWyC+bAwzf1q
	mpcerIQ/PQEXjk4Eshwb20zjELRaVY7meVJCqxcSLuIefnNadeQng1J7oINaNeehp6tasPAYT+WfN
	hHS+WeJSqTT6K29P4MFKOJBC2YYn9Goiulf5/LaSNza88L6mM3DET4uhtRy15oAuj0SaT04xI1Pbz
	c54rkJw7RhAxuXlatVpiE+9lR8XQBk4kVF+Pd9a5ZYmFrJjr1f+lYZ53JJhzxxMu5lTH3R8EZHHZp
	gXDHi3uVjUMUNCYEwnqeRB7D1jIjz06/dpOtWz66okazbmBB2ovh5//bcRZFqC/ypIA75M7jxsTNc
	3T1xnnC4vQiSN0Ayz/sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltB7M-0011Kq-LC; Tue, 15 Jun 2021 15:36:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9O7-000DDm-SY; Tue, 15 Jun 2021 13:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SBuVSvZRtW72BE8Uf4CX66VKW789zjqJLHCVdaBnd2U=; b=JCXFu+EfFFvlfZcWL1c3AHvtZK
 78INwagGV4qjDxhy639+uzcmP7M7HsFf65j1q5lOqzHlPUh46okSk6+7TauJ4kDMXRiTGoJBK+cAo
 kr+xDTGszV1d4tODQBYayxiETztaRARH1BBVHNHuqPKhIgHDH06TmX60V4aRLH4qTvHkiXaAi9/aS
 E9078AkuWDpkQSRb0OhDPgr08OOGsaq8Tif8zstP6mgvgvh6s/tc7UVo8y0+3frrTpjA0xf78Vzxl
 MCSumb/9CyRvmzC9UI0w0XemH/NoWTc+eP8w5n9n6remqEY33onnVaNP8PfWE/bC7+/1X4zswyoSL
 Mxxswjog==;
Received: from lucky1.263xmail.com ([211.157.147.134])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lszie-007IIQ-GQ; Tue, 15 Jun 2021 03:26:37 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6125CC862F;
 Tue, 15 Jun 2021 11:26:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16485T139919122814720S1623727582436580_; 
 Tue, 15 Jun 2021 11:26:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b88894b7c9dab614f426d540f72ef738>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v7 1/6] dt-bindings: spi: spi-rockchip: add description for
 rv1126
Date: Tue, 15 Jun 2021 11:26:15 +0800
Message-Id: <20210615032620.24769-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210615032620.24769-1-jon.lin@rock-chips.com>
References: <20210607111837.31074-1-jon.lin@rock-chips.com>
 <20210615032620.24769-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_042635_710810_9690A111 
X-CRM114-Status: GOOD (  11.60  )
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

The description below will be used for rv1126.dtsi or compatible one in
the future

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v7:
- Fall back "rockchip,rv1126-spi" to "rockchip,rk3066-spi"

Changes in v6:
- Consider to compatibility, the "rockchip,rk3568-spi" is removed in
  Series-changes v5, so the commit massage should also remove the
  corresponding information

Changes in v5:
- Change to leave one compatible id rv1126, and rk3568 is compatible
  with rv1126

Changes in v4:
- Adjust the order patches
- Simply commit massage like redundancy "application" content

Changes in v3:
- Fix compile error which is find by Sascha in [v2,2/8]

 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 1e6cf29e6388..7f987e79337c 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3328-spi
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
+              - rockchip,rv1126-spi
           - const: rockchip,rk3066-spi
 
   reg:
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

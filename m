Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E91A1C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 14:19:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F6346109F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 14:19:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F6346109F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZN7TIdfkaDuFjfZKmHyI3xZEm/pECxubeYII/stvn4=; b=1O1okukhFnhPQz
	HHLhUEvbhIxxhtfJXAafOQb7uTKJeSmUvq799M1DKaKzWW0kXyxiUwykTeMBTfQZAuaV6rXPe4yYR
	vWh4Q6yGI1xoPNFnOx5LtJapg5i6ijIm2/RBcudx42PlygpvBcBVsPh4XHFeD5YF4WxNAJXrwR2Dh
	Zc5BGlhC75oK2XmqLF6QIqe9rajLZQuvkGvChViBVyw50rxBB1XQOEFHi6ns9mVFcLSGSN9F9v1gk
	+RcXXL1ZnsNSh0aurxomFnLMT5l38XxYQkAvlHGmcmFoLcWn/TrAEJIav8l1Wo3Ybh0e91GJH7WWO
	yWWfz9sO1kjjeRdlO7Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqG5m-0041ws-A5; Mon, 07 Jun 2021 14:19:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqG5f-0041tg-RI; Mon, 07 Jun 2021 14:19:01 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lqG5X-0002M3-Ev; Mon, 07 Jun 2021 16:18:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jbx6244@gmail.com
Cc: robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] dt-bindings: soc: rockchip: drop unnecessary #phy-cells from
 grf.yaml
Date: Mon,  7 Jun 2021 16:18:45 +0200
Message-Id: <20210607141845.3331910-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <e7e09072-9cac-413e-dca2-e2a668c1807e@gmail.com>
References: <e7e09072-9cac-413e-dca2-e2a668c1807e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_071855_906022_7F85B8B6 
X-CRM114-Status: GOOD (  10.61  )
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

The recent yaml conversion of the grf and inno-usb2-phy bindings
left the #phy-cells in place in the main usb2phy node inside the
example in grf.yaml, causing new warnings.

Drop it to make the bindingcheck happy.

Fixes: e71ccdff376b ("dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
Like this I guess?

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 8c1c46fef157..62fa72cfea34 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -242,7 +242,6 @@ examples:
         clock-names = "phyclk";
         #clock-cells = <0>;
         clock-output-names = "clk_usbphy0_480m";
-        #phy-cells = <0>;
 
         u2phy0_host: host-port {
           #phy-cells = <0>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

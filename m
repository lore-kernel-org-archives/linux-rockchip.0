Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5585EC48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:20:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6078610CD
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:20:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C6078610CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ8gyqkTXXtNLORGp+0ZnVisoqnn6nlm987qeDYkekU=; b=JcHx4aF0erdQbq
	i7OjL2JYr1mOYFDH2z2vPWNOluvwOjKf2V3Jd8SD0RXSF92EhZV7TZ5fZtedKbF/Ax/2TqQhtqi5g
	C4LSN3PxQ73xs0s1311yctwKxi18BSVZTBG6AduVQu6jE55j/4ME3m+CNKXRuHAQFhMhSvP3W6vuL
	/3VhYvZA84LVNYiRoW33ow236WexTVnMlWIOMfJnSmyXTSMhY35rOVTO5a+N4RzKYRRlQVnHXUYav
	SRupDJ1Z+96c+03Ga+LNPLj05saxmWL0ju6Btq7s1UYpp0suWuZUkXW5nsTil6QRsP2ODUdilmuPJ
	vQI8itkqiVvdkQMdJoDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltILm-003pIP-Id; Tue, 15 Jun 2021 23:20:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltHtT-003hUE-9L
 for linux-rockchip@bombadil.infradead.org; Tue, 15 Jun 2021 22:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Oh1W9AO9Oa83Bjjkj7dDvTJLWp8Ivbko931aNxhzs8c=; b=mgDZlyJs8GoiQZnODrK5Slv+ES
 eRHOeAYB+EXTfjbJGx/CRrvfoRIBHWiyXQXrvV+K669eV589bLJQ4Y6ZTCQLNUR1nHyhGmv1oJMGG
 ZJRpd8TKPNd8un7mBB5rffteSnlqQUOBzFewStxUExndFxhIg/DsSItrKBIHZU9B0nRZhIV8DsPP2
 1aTokdWSitI33lIy0m35udBKdLcA7QbAZwnjPLsmlRwmGlJ3/qF4Z1YoH1wuSs5Ap9haK5quMugVG
 f9Teb9hGZY1grHO8V+3zQOu3UdHlBxbzKc+BU5VcwroIObUGfC/1WWwOidPYBeJ3R+ga3bwCvsvjM
 6ClvZ3jQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltHtH-0088w5-3i
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 22:50:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ltHtJ-0002WY-6Z; Wed, 16 Jun 2021 00:50:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v3 09/10] dt-bindings: media: rkisp1: document px30 isp
 compatible
Date: Wed, 16 Jun 2021 00:50:22 +0200
Message-Id: <20210615225023.3929434-10-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615225023.3929434-1-heiko@sntech.de>
References: <20210615225023.3929434-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_235046_185396_A134D6E1 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add the compatible for the px30-variant of the rkisp

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 80709a01c6fd..68dc3d76e618 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -15,7 +15,9 @@ description: |
 
 properties:
   compatible:
-    const: rockchip,rk3399-cif-isp
+    enum:
+      - rockchip,px30-cif-isp
+      - rockchip,rk3399-cif-isp
 
   reg:
     maxItems: 1
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

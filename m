Return-Path: <SRS0=17ih=B6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 352B9C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 21:44:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE02C20FC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 21:44:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UqtwFw6k"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE02C20FC3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=david-bauer.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nfu+KZZw1aAcd2/Bmw8GOjY1JiY9vuY93mQx/c8mUPo=; b=UqtwFw6kLUJNrDqUNCP9B0JqXy
	RbXVJ8t9HlZ5+qpt1L1KFSApeIUCzj00RpCHnXCXMd6+hNcnxQCLDDLSAEfTMxMTV236EY2PtVJSZ
	ZDBZjBMRmYB/CHPvDhA4C1Q1WkuT83TbfVQcqUUY+6zDabSeFeDPaF5Lml7mAayAwWq0tKATfHkdB
	FzwQjrhP/XYHIQ2SCiqI/KNRcLEfjzRqN3QK/Ac6gEtBZrIiJFH77t/V7L5pKeih8oxBr3+UoAVIG
	QNFtsBGy0iKNwkls5iRkQgWGedc8NAlPs8cUi+/5aUfuePGhCWgZcSYRLwlqC7u5rsarx5NqgX8Nf
	P38Grchg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8sMN-0007i2-J1; Thu, 20 Aug 2020 21:44:35 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8sMJ-0007ge-Dn; Thu, 20 Aug 2020 21:44:33 +0000
Received: from localhost.localdomain
 (p200300e53f0d0e000467bd62be8be184.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0d:e00:467:bd62:be8b:e184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 291DF23E92;
 Thu, 20 Aug 2020 23:44:26 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: robh+dt@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com,
 jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 kever.yang@rock-chips.com, m.reichl@fivetechno.de, t.schramm@manjaro.org,
 pgwipeout@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date: Thu, 20 Aug 2020 23:44:08 +0200
Message-Id: <20200820214409.34957-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200820_174431_575026_36BF353E 
X-CRM114-Status: GOOD (  12.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
Changes in v2:
  - Change model name to FriendlyElec

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index db2e35796795..61722b9ffa9a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -104,6 +104,11 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi R2S
+        items:
+          - const: friendlyarm,nanopi-r2s
+          - const: rockchip,rk3328
+
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

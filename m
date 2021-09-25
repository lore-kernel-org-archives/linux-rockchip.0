Return-Path: <SRS0=a4IV=OP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB37BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F4E7610EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4F4E7610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rct2QBXXu5p2Uyfh5PqZuRECoQbf9cjhWyCDsEQawKQ=; b=JCNg9pc+8PaTBo
	RWX6vsGhOTyQGHW9cZzbHRS1Jc4Z5J/oQpuFKVxf9rJGs/d+Egj4KC4TNOAYNNHBZUgsckdObVeUD
	uAzmrfB/yEkQbWZ77JnC5wfIB/x2w1THEB4OFXgQuokh1OK7ljd/8Vw4fOpZAjpFA1QsKWsiYFAPJ
	f5xEk8J+ke90titphdZsC5b6EFKxYPvYp34UXn7m8DBmyY3RTOXimTDoymD0RLntJnc1whh2g0B06
	sc0xhRjDqpV7i1M84pcpL82O3X/HjzHtLo2uV7fOHVJ/oL2RZuIxElYdTElBySZj1NyVRyklTGgzZ
	qXBYCezAnUML9oxBFgAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mU3bs-00GL9O-NK; Sat, 25 Sep 2021 09:04:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mU3bU-00GL5X-Mm; Sat, 25 Sep 2021 09:04:20 +0000
Received: from dynamic-109-81-211-127.ipv4.broadband.iol.cz ([109.81.211.127]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mU3bO-0000YK-C3; Sat, 25 Sep 2021 11:04:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	lee.jones@linaro.org
Cc: jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: add rk3368 compatible
 string to pmu.yaml
Date: Sat, 25 Sep 2021 11:04:03 +0200
Message-Id: <20210925090405.2601792-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210925_020416_795879_89E71F9E 
X-CRM114-Status: GOOD (  10.17  )
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

Add the compatible for the pmu mfd on rk3368.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
changes in v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index ceb15cea77e2..5ece38065e54 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -22,6 +22,7 @@ select:
           - rockchip,px30-pmu
           - rockchip,rk3066-pmu
           - rockchip,rk3288-pmu
+          - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
 
@@ -35,6 +36,7 @@ properties:
           - rockchip,px30-pmu
           - rockchip,rk3066-pmu
           - rockchip,rk3288-pmu
+          - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
       - const: syscon
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

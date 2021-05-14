Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A48C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:00:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CE3661166
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:00:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CE3661166
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2OksFP/8nAa9miJU/jViobAIG0Kj626Zz+zuRAi3vMk=; b=mSzAIyfFeftjdSb0bXWRGLjZY
	ixtajUhrn4huNK3FrmRu456X5sYJ2Gkm3DpYBlwYiwDdd8ktEI/5Gc4UNCgSlW7zBpJDDmFMSxdEz
	UZtz+HIUois0MXcig3CI/pNUZK4bJc5pDQIn8fHi8k8+IejseRtuJDbWyjtOMDL9YDC0PQjvInuW+
	O/YODrOkbTSd4uCwcKPdI0naHYZecn95mxqwc+9EcDhRIKRDCnpc/52Bsw+yywo5CLaHL4bxbPMfg
	1Nk62RzZ16PfLRVru92M0B0mYRYTXfJHdiAlt2cYIySCWKjlDNh7T2edzlNZT+DuimSlpbZavbyE9
	qKFuLY81Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZIy-008MD4-Ig; Fri, 14 May 2021 15:00:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHw-008LzC-AL; Fri, 14 May 2021 14:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=lA6QdZEIcYfr7WkNSP1q7t4iJ00C09HPF4/k1bFql0w=; b=bTl+t00S7w74gLk2HAQxYG/i1z
 B1MHkypr4rZIk7D1WKi1vKb3ckAInsdgvxYEf93pVI5l8IgbC79P8t6ghdTd0jEJpMx5BOPFJ4SHa
 BQR6O6uQTtflK2eiaN+P80jwyKqf3GPDK/qcTNHVXTqfveghW0N86za8Y67MvKxaaG5nmj6C91gUo
 ys2mWEBOYFYC8E7IIqiZQgheejIBY98IPE49p/0ZpnbIVLDNLhCc2oDeaXwUQFqWJVBdOHGvlzTd8
 H6FbptM/3O25o9d2Ma4dj6xCnSrW7+ny6Az+xo8TrTEdpuWEI3hDda8H8Qx1UngbLrnZ9TyptB9LA
 dW/iJxnQ==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHt-00C43z-9p; Fri, 14 May 2021 14:59:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 04F56222574;
 Fri, 14 May 2021 16:59:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVUCmKNzUL1i; Fri, 14 May 2021 16:59:33 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 4/5] dt-bindings: soc: rockchip: grf: add compatible for
 RK3308 USB grf
Date: Fri, 14 May 2021 17:00:43 +0200
Message-Id: <20210514150044.2099298-5-t.schramm@manjaro.org>
In-Reply-To: <20210514150044.2099298-1-t.schramm@manjaro.org>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_075937_507042_68C7E141 
X-CRM114-Status: UNSURE (   7.75  )
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

The RK3308 has a USB GRF.
This patch adds a compatible string for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 84bdaf88d5a6..df77bd2e6752 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -30,6 +30,7 @@ properties:
               - rockchip,rk3288-grf
               - rockchip,rk3308-core-grf
               - rockchip,rk3308-detect-grf
+              - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3308-grf
               - rockchip,rk3328-grf
               - rockchip,rk3328-usb2phy-grf
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

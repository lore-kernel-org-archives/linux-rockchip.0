Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A68F6C5320E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hofihDJEguQSYORsFO6x8y+FLFYuMqCy+wNbXIppuaE=; b=hhkndtjuN8XNGj
	aQprIjqfe0M8NjBLiEmh3r50AEYeW6PA+1okntxU9MiBXbXT5+9YEYsnIzDZWF6EkGQmFhbwRovfK
	DAiWJI+PTYTU2MlGUmS9vn1cUUzsv6QpZ4zt+Vc9sOJgxO20A38AnMdwyjnA70eT4qsu7fr5wT6sL
	UboZOWxrvG+UDlwmPQP6Bqas/yxAOGoRDDyK5r5BhmXmAt/48aJqpGxgnAKg4aAGydVsGSW+PeWMh
	YvoOk8ujG9+0Z0C73A1ra9+B2FzCcFxa8lwyaKPv5tkY5zqY8JgU/wemrsSbUgvrb1c09vsKp9VrJ
	7bevkeggmWoh20jhTXYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIW-0000000ELiF-3tsp;
	Thu, 22 Aug 2024 21:24:48 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIS-0000000ELgY-3Gbb;
	Thu, 22 Aug 2024 21:24:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724361876; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OJ+Opr2MNMa6OF7bltAJ3JSr7BWWxKyeavOTVyhY5nDh1vh1khV/3QjYhq/IniA9XpLgibnAr+/XFpha9z8lOyDfNJ9uvFIuCxPRmbXcbuTwNzIClhr0oPzIdpB/xZoAdBTPTPs5ZdZKwVl8ddvayhRFBQQ3QMF24HeKGLCK+AQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724361876; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=EN84kePymAZjqnNQZ6p8n/Xwq293EwgO6Eo9yZZ4dNE=; 
	b=iBQFgbownTY9umSPYnSciA13nmbXWVClZg0iTW6ayeXsg16JOmj9F0hmKalTCyaUoe4fexw3yq2h6gkhpw64srkONJ9Bn9yV13n64UwLUE+3WPVYcZas5+etdjFR+4LK0gRdFB69GHdDKql5a3KRwbUz47eZQdq+Ub0sgOHcAXo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724361876;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=EN84kePymAZjqnNQZ6p8n/Xwq293EwgO6Eo9yZZ4dNE=;
	b=aA0JDcHW+zb01AnSXhG0p9126UPzOtcSUKpFJLu5owa1iGUdCO/mXbPFwKgjJIM8
	vpaIKfV/G9UfKVCXerruz7biS3VifbT+zRrw5RVCCL262Npwa8vT74siU/Kb+MVS330
	JWNi/PfqIWr3yCInfMlJNNo2HXC0RZQ6WkaxOLNA=
Received: by mx.zohomail.com with SMTPS id 1724361874628235.6533325594619;
	Thu, 22 Aug 2024 14:24:34 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v4 1/4] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Thu, 22 Aug 2024 17:15:31 -0400
Message-ID: <20240822212418.982927-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822212418.982927-1-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_142444_861543_F8DFDFA6 
X-CRM114-Status: GOOD (  10.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Add the compatible string for rockchip,rk3576-dw-mshc in its own new
block, for devices that have internal pahse settings instead of external
clocks.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 211cd0b0bc5f..06df1269f247 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,8 @@ properties:
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3576 with phase tuning inside the controller
+      - const: rockchip,rk3576-dw-mshc
 
   reg:
     maxItems: 1
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

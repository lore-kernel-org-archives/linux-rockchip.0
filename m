Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50DF9C44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=IfBBQLX+mcySG0
	ucCKBbUwoPEWQY4oy5MLGqZkNQzYisHaa/iFivJi1dCdc9oMfDNoLIKQHDN8bK+IHklCHKyqAthhq
	UBchdG1f20GfKBpAkE8WtVtF8ERFtEdfbyq+dIUW4zFnIEyqFwvtVVcxRMlA542/PThAHEMGqKCcO
	fFTxmBWw++rblyGZI1lZ2WRQgzz6vrm9GRTV2YqOzQBt5tAwoLOlfGBfm46WGV9UMpXlsCWeopsw4
	/RCYkKDAzeidxXv+qBW75SYR3GpmlL5k5Ux0KGdhQcs1oDf+ccW9d1UPdGbo77rekcTIpsmQ3bGYZ
	oTm0ckQETaTx2Oz6VU1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVz6-0000000Ayrk-0vgS;
	Tue, 14 Jul 2026 05:47:12 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVz2-0000000AypQ-411v
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:47:10 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-ca88130e09aso2613855a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784008028; x=1784612828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=V3lU6ByuU/GHAEd4oT+P2iCjSyuBMUagElav3taoly+fcNGCPveAJIood8PIsZg76V
         io3X12jWi4+ALCFU4n1u+C6HNW5De1DieMW92skMTRgnOD1WyqSaN086MKunaAenXIzR
         EHDDvaPvqMAuz3nI5Pq3NrVjNMwArLKKH0KPsUZ+WvNvxopprTgduzOVHjovLgouU5Hx
         8m3SlS4oZ9X8aAmunFSnk6knv8bDj+8u5qzSfh7hxzVafk92XVdqRoty+Uzw9Ku0r/8V
         6BGmnVYf7S+s2d06uyjcrUyYuYyb6UouxQI5EY2WaFrbvV129LfMvn4/aSOElR7O1ZBM
         n40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784008028; x=1784612828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=E02taA3LukUVQYsJXBw0CqlkYBSbFZjjBbnCPeRqSJxWdgwKZIuOQltw9beFL7dqcb
         IBOoHquxOJRPcbReRt2H7uXw6Vc2azP9/2W4R9b0dFIt0QIFXboI6cDIZhNnOqdfZRTj
         l+zilHVdeOEaxjPFG00gT7OjnrtJAjww1R7gEF0iKzhxvhLKKRW0QXTwioyamTIMzKu8
         e8pWdAniTzduM19swCZ+Swmy/jt0QBhF38EANRBtLQIdX4MZFDz66cE2VqJ/C5BFh9D4
         AHtA/wlfcXMi2yLJzeWDESg4+AmnPMGIIvJusCjg7BRdXT1PYilflO4fseYtzQblYvej
         YYrA==
X-Gm-Message-State: AOJu0YzqGZJo7kSgcbWeXbsROfCW3HC1I3wcGmCuI8hlkjCwoV8dRUE6
	aTuhb+ij684li2W58rYh9sXAnmUPazazbPk7h910JW+yHPhaoMdgoFU18bNeip0f
X-Gm-Gg: AfdE7cnRG8O4cThsCApM2gGhfFaS4WdPHFBImH135A+OUtiEUwXhtnTvlbvzgbOc6W0
	1TFgp77jQTLV/oZWZOWGFNQXFpDbmc1HwdP/beRWktc5Oz0UU+WMW3eLEVi6ejYZSXfrDZRCDtz
	OAVp4d2koJtsJ1B7ho8u7Hab6VPMmaz6fbIHO+WPJ6aMm6v768++nZr7gD8Zd3pdsWDGiAWnZGA
	kBXdnDrsn+5Fk+tMFyeWp2Q1mioHUPlDwoRyYqwLtvMnNd0hfzYYpMPtywIChY920WvciggEpRB
	PFWel8t8fWTVocLAmVNFYuw4H36DUd/gZ03IL4YD0eIaiePOTmRcAqFc3WrxUCNsf+rjKk8HPzD
	IFVJMIDrBJF5HzZ7lJfv4DqZ8rrc7bQOps+QcD8q350LQa58Iz/eSY42RhUmNFNwnQlgr+17s/+
	G75HURv6Oqyc3vovbto8Y=
X-Received: by 2002:a05:6a21:689:b0:3bf:e2f1:1b17 with SMTP id adf61e73a8af0-3c35723202fmr1160592637.50.1784008027983;
        Mon, 13 Jul 2026 22:47:07 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3117483dec6sm77965054eec.11.2026.07.13.22.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:47:07 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:16:52 +0530
Message-ID: <20260714054653.266842-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714054653.266842-1-hrushirajg23@gmail.com>
References: <20260714054653.266842-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_224709_193879_2C907B99 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

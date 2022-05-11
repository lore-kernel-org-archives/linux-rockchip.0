Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46569C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ARMMZQbxLX3LKIslneZ3aNlSNC1frU61fxyEQZ8reY=; b=KDPgnPKlZewy9u
	AQEx/DESOcUR/j/lAO6xEFB6Ll21nVuRQsI1ZsLMxeR5Dz0sg1EZ+5H/qn7+INGPYfa9tdcN3rGNM
	UZ4wm1CCmouQ0KOe/hGXGGnsExowWe7HhHOzTKRkX7XhMJyvyvw4f3/vfTLMIU00RkZ7h1mr5MX7n
	pWUBiBoU2H3K3n1VRTdRWKPW2e1TgjwhRwMWTK82ZI7XyIw81u+6Wzry8y66HnZn/hPzCmKAUTIBr
	M6Jqv9+NExFIvl3HdJDa7XRK+nsjU6ZvtU5CpXvRa7ElfASReJRMMJgk0ffgVYsQILKZl+BPDv8Tx
	cbdUMBxZHZs+e3VjMETw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonug-007PxL-7K; Wed, 11 May 2022 15:06:06 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonq7-007NhA-55; Wed, 11 May 2022 15:01:25 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id eq14so2278453qvb.4;
 Wed, 11 May 2022 08:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ocj5V1R4ifR3GEVhPfDRyP1I/Y6r02zd9DJpazO+vcc=;
 b=R3AnWGneJSrwRojHEzs+rDub3VWTmhlKRgjZficmVLIVjzQrmIXOyhMlSA+RNkfVtM
 AFW9hSLnb+T66FyTWg8v533eZkUGl/XH0w6gneWnUsucvG5zk2CqVEVNfr0lRURfzdsb
 LGpZx2XkXoNFzTldtCOGeQ61n1LPeUUf0a22l1+U0vlXrXBaJMw9SWyHj5AM1eCs3vfv
 ANxIdADtTwaMlojsAhWstTW1L0FQsfPh4T71/CD4quaVz20bMe4K94QC9/dKb1m6a3oI
 LDwUjcRwd4U+CFSGop/sA96X10J5PEpC7GAqKtIp7GtsoSMNWGbDnJ2QKIfMgzZ6CluO
 3yZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ocj5V1R4ifR3GEVhPfDRyP1I/Y6r02zd9DJpazO+vcc=;
 b=t1qC+MliRp9yD0edL+o2RIxCoAr2ALgiXA+Zjgg0ij+RFka/cg3Q1D6sp3zlryCr2W
 8W7Umt15aLP+LDCSNhgqWmZKHM3R34b38PA+SpVySU1EfoyMB78ChKphykfNEDlCQ8N9
 g1oy325RvnGGig9w3xdKdZA81n63vfFAuoowbN772lEElk7UI0Ug9nBq3E5aJQgP3W+8
 /aUgHHkdDZ+wlq0nfXHQXHg7qxI64gWH9gX+ELqnYe34GLs439nQeh+loESGuFRBdygy
 Gu3dJWEYHjwWn7wJDvAkPXN0fqTay7feQ67AVxnSXf4GBNdh6jn9oVSm5YK+lQ3D4BfI
 crTg==
X-Gm-Message-State: AOAM533EPllD2WRng3080efSt+/DNwGv7sIV4HOo7EVY80lCZIs9oQXI
 FiVaZ0GjHZAIhmYMYQP0nSQ=
X-Google-Smtp-Source: ABdhPJwRTBO6xSgCqxxLRIYnj5Gs2ENLGS7w8UvQ3g43LWvgE7ieEfSxxAsHPNP68tqkvCipMvshww==
X-Received: by 2002:a05:6214:2503:b0:45a:a294:510e with SMTP id
 gf3-20020a056214250300b0045aa294510emr22162937qvb.49.1652281281039; 
 Wed, 11 May 2022 08:01:21 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:20 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 1/6] dt-binding: clock: Add missing rk3568 cru bindings
Date: Wed, 11 May 2022 11:01:12 -0400
Message-Id: <20220511150117.113070-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080123_275137_0F151677 
X-CRM114-Status: GOOD (  10.69  )
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

The rk3568 cru requires a clock input and a phandle to the grf node. Add
these bindings to clear some dtbs_check warnings.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../bindings/clock/rockchip,rk3568-cru.yaml         | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
index b2c26097827f..fc7546f521c5 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
@@ -34,6 +34,19 @@ properties:
   "#reset-cells":
     const: 1
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
 required:
   - compatible
   - reg
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

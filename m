Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3162C6FA8D
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 21:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7WrK0fCyW5FuqW1oNiANRJABdaCDe6aNvwIopz9BfM=; b=n958TsPPDqWJHy
	F23LaezhetMGOBBduWT1waUNK3mguFZtO1EiaE1n1OQUoKObsYxUsRr5u94dDqggrw+IePctlJDSP
	MUvjw+m/8t2xB/KOs4QG1cO1LCFUoSwts7vGO+rWejI/z99tdPJzINUYTJ8SBU4R/R5x/ezst9KRf
	wJbh3Bqn8rzHOdFU5pQQk0O7LEZ9D6OW5miTCU5Mwh0DldZaeE97tuXXTyPVS6KPYwI+1tg2H78Mz
	eCl+WvqLyo9jiSA/jxre1YZ+qLiX6BbyS6uwwOhEnfedkku8KNddBfL7GdvuG6rxlzZb48GB3X2EH
	rVyeQhPArIWFAirOYHHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjP-00HLwh-70; Tue, 06 Sep 2022 21:03:39 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjI-00HLrJ-R4
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 21:03:36 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-11e9a7135easo31271039fac.6
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=N9dN1r8mTcrj+Q8AThusvdLfjGCCC8ge1nifhSHJWzE8uaWIyL/VkR9MIFR5ONSYcm
         VEIDFIo4UjnQBfpqAAwf0PANCaxGuT78zHmUElOMwSO5GmrOW0oH7rFTUcXNOK6TXJVy
         CXmfMR40jXKghgi4pSATsHtBCQc+s8BZ1aBmF+E7V0KBRKh/TCyPLZzbbbiWR4twp6qv
         UGtl6QQ5Z5FUrquaDCdl2XGT7pKQ/6FgnGjY3XMjR+npwadfRSwKTdpQd3gawlI57qEk
         Yomi8I2xbJmZxFPdC/4zgLepy3v9UonDSC1AtQj6qDs6UbvieTxNHHLfRu0cDhB7AIoz
         YjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=BNIz/RPhK9lVaPMOoffNWdQliH5zbcsKRi5MVzAjRzR6/LqM+OChL0Rldr+S7YIg3a
         FRlzdf7aI4X7PFNLRlXwVD8NnQwgHb1v9uKU89pcXdVDWUYBXtNVi2D4PXJ2iDsnlX7o
         ibQgwf4gZm0IyCBrqulBiIggyuk5Pe1AZm6A2nAGZkep13/u2iGxitB1ApksiVrfgqcd
         FM6F01HhK4XfL5yhmmjbeq1sN1isYeh0to4n2+uAnAK+VwaplpynbEqZMzifdsJCBLtn
         M2193/Rsu076un07TKZmdlJYJW9mXZ+3M0cM5pR5LLtJ1kOdYdRtaGREueJRdzgSMPuO
         VwBw==
X-Gm-Message-State: ACgBeo2wUKTttGef8Ie0z4iex9LYFGydb3v6AxjuK4/WCmSRnSAfVeAh
	iUsaLrCELCTQzeHTWBTaOPE=
X-Google-Smtp-Source: AA6agR5lpq1XusND0ZYtEi7XyB9D1sa8L2wuLxz9h5TReOZ9nOupbI+KXw1I/YVOBSu7/RMKSAc27w==
X-Received: by 2002:a05:6808:f8d:b0:345:6ee0:9a65 with SMTP id o13-20020a0568080f8d00b003456ee09a65mr10421071oiw.299.1662498209052;
        Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date: Tue,  6 Sep 2022 16:03:22 -0500
Message-Id: <20220906210324.28986-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_140332_988543_A73B6F52 
X-CRM114-Status: UNSURE (   7.92  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

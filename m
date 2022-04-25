Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD6F9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+ILlVTGMiRkhySzQ3nJ1/PYQsDnnXl8rY5FiuqiMmk=; b=S518dCoqv1ybm9
	rpOEY036kSHpNC4rJz+VjTbli0iH7YX7VxNHGlrhvi9OgfJv0kABxEGFgswlnfyudTdW4jFAeQcNv
	/wwIb1fXqi9zK2pucyZIypS2+RM5E/5LJ1EY+i15TGqu+sDQiouowxujjDVme6YF47rmzdMt5H9Ia
	MAMcaOGipnTeFc6Qd23Ejkku6kYCtJnP3uu9uinXv1I7lbtv4+7EcY5oaALBduB6Q/drJ3uHYjj5U
	L5fZDy46UF7cN2SKPlO1GiSEH/LslaS6WnpZ9UlT/tgBiTttFq9dfh84g+gE2GDPOFQwOhhoLqICr
	qZqfPVJlDggwJIKM/57w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2ID-00AZEC-CU; Mon, 25 Apr 2022 17:14:33 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2HX-00AYs5-GJ; Mon, 25 Apr 2022 17:13:53 +0000
Received: by mail-qv1-xf33.google.com with SMTP id kc12so7107273qvb.0;
 Mon, 25 Apr 2022 10:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s77Njj2Eom5x0HLbfJedPsYIdxNJX9SrLtCBw7r9BJI=;
 b=cWfu5B9KVG4HPZaLMMC3NeI9CrkUh8GOBVoOfmN6qUo+H5kY6oaJJD+9OCftTd+EmI
 x0V2FXej7qvvueaC/U0U7v+3OHbefL2JaM8+oFas//pE4IfJjj8MLZBFmt0+8DYfDbVh
 CJkMynhhbGoSJ1hS0zEyL9nr8NbaO1GnuPNFw/3IDcxpQidP26M00WTM64y3UaERiMvz
 vKOfS4fyuxGSMOwU6b8CyGwjvSQPNf4/RAh0m207E5eSrrIAcpF/bqQvPCjl+nzwlaSo
 Gzkhwz2QTnyED/MyzksxVD56lCDnVfC8LxEsdGooRX8V7J1U40HyY0MyEHAeedoXk+ss
 JN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s77Njj2Eom5x0HLbfJedPsYIdxNJX9SrLtCBw7r9BJI=;
 b=imC2ftxj3lCfg4fL7aGTrOKTeJH6MFHM1EvK6A61XAL5Yx1ZveQYSNXOwBHC1HH4qi
 4nuRvm8NCnbL1fzUbdUw3MFlOm7rC3aH+0Lb2WofGDaJG9KPGTXJmKvlsA44o0J8kq04
 8+NuMY6KgESHqmKfyDy93iX4kjLITyXNZZQWefE8GjCsNoc+pe6I6OIg4ioUeWMipqTz
 AKO/nfEaw0mdbqxdwp4W+j3Kn+ZPDdNrDoJcMxKVTOow2ishbNtaJUQNwRkbugZMmDQF
 iOqlbF5FARf2zaNKNvhzHxHYeHEkQOHDN8sYcKjpEYu972t7TRWMOi6uhcs8HcY8Htg5
 +hgw==
X-Gm-Message-State: AOAM533TRr+vOFY54cuxwK2zbM6s0wR90FOoJ8CfHR0E5O4spmhIzivs
 9WwoxyzTDh6Yx8ZEC3AsavRJVQu8t60hYg==
X-Google-Smtp-Source: ABdhPJyro5vTEBEMuwz58jmXSQvQ7tsKDOfZB5SwaI6jAUxxh0kmIsH4yE9T9NaRpmY5OGThtkH+TA==
X-Received: by 2002:a05:6214:20ab:b0:446:26a7:ef2f with SMTP id
 11-20020a05621420ab00b0044626a7ef2fmr13622003qvd.37.1650906829286; 
 Mon, 25 Apr 2022 10:13:49 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v3-20020a05622a014300b002e1dcd4cfa9sm7154928qtw.64.2022.04.25.10.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 10:13:49 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/7] dt-bindings: arm: rockchip: Add Firefly Station M2
Date: Mon, 25 Apr 2022 13:13:40 -0400
Message-Id: <20220425171344.1924057-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425171344.1924057-1-pgwipeout@gmail.com>
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101351_600430_6C50B8F4 
X-CRM114-Status: UNSURE (   9.97  )
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

The Station M2 is a compact single board computer based on the rk3566
SoC. It outputs on uart2 for debug and console purposes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ad940e4127d9..b6254baffa67 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -133,6 +133,11 @@ properties:
               - firefly,roc-rk3399-pc-plus
           - const: rockchip,rk3399
 
+      - description: Firefly Station M2
+        items:
+          - const: firefly,rk3566-roc-pc
+          - const: rockchip,rk3566
+
       - description: FriendlyElec NanoPi R2S
         items:
           - const: friendlyarm,nanopi-r2s
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

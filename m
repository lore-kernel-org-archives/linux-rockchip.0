Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB6FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STnY20m8PU4XXehEkjIfOwIkWIRDtGhD/MpmLyncy+g=; b=hOpNzPOx9cHy73
	LpricW9suIqALi+LO8NaV3ZMg59kisjQ2FEUmlvtmlEsZU1srcpuDlVMD1gDhRkdv6lOhZFKANQ1l
	4bQlGuEU3ltf+FMchhAqFByHXPqp/amjWvizvfT9cNdWUB+LCYfqBIhEcLbUA4JErXnqHEABQNwPE
	0gtcALjiPa2P4PS8JLEEwRR/xlCCEEMCQCbm+zXa8zuRozr37pm7i/J0bttF30gCxT80uMBMZQmro
	scgMkvPCIJ3/qxVGT4voh9uuust99B6dt2M27RqikHPmwxsjYSBRs9TWDo/XTA8w+J2UTg+y9BEU9
	mYNB9AB4pP1kBt/BVt/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM4A-007BPA-3O; Sat, 23 Jul 2022 20:49:38 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzT-0078b9-SF
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:49 +0000
Received: by mail-pg1-x531.google.com with SMTP id 72so7126765pge.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cnz8KtlLCVShEDXOBH4fLkKrMCVF+oQhhCLrqdUx4uU=;
        b=AkLPquELdVZFdKsl5L1dqydn2AMRu42dCdVIwYpfYKFAjZUGoISFM8bmWfkNbuCD4O
         SkRgi5tsKnkWK09/FsQP8cv0Ic1r7KQpzhdUspRlW+JHZqDyAMPrtupMnQbaa7baYu68
         DXhk6CVlZJxATYd4QPHmEPq1dgrPZM5ctK2hFcpoy9BFbebM2nfQ4b85qmz3S+vqDVwr
         cdPLKXW0oZdOp0hhPXLHokfErKSL1J1nKD410Jx/oCGLSCo7xISBPtB3C76EUyPX6uAT
         9TqDsxo6oP9REPqy7+3n1xgfWmJ4RkrNOZNq0rEV7SZFWxQ4fcEHPxAy0FHNIhVPn/P9
         inww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cnz8KtlLCVShEDXOBH4fLkKrMCVF+oQhhCLrqdUx4uU=;
        b=chO3FNKCOiGP0MRf6fS/UBUI4pw3Xgn4Rg0/vVkQT1BNlFTgZdOHN23L45iWUy45A9
         pUxvJ1qtfFBoB3JrK2FfkqruzQwVXsjDjvKWsTKfhR0Hu8ZzQcVSqK88o1BjhrHywyaG
         MTkNvmlBJoSAxA1+UhbN/rp24zfFwGk3oFdqkKicc1UMiK5hE6+eOA9yWcPwv+9ZFfRA
         rrA7Ig2aOuqBxBZj5gYSq4AVFl3E32J/5bOemlvlTQg3XHCnKnUoy4IIbZv5uML24/jf
         yZnH0Vsk3KiXqPcgGtQAGBHgkEBnKlsRhrfv79dX37BYXjrgMJXQFO3m1qXoK5LSnDxE
         rRSA==
X-Gm-Message-State: AJIora/FYknHpIREO4oANs0TRa2Q9G/M0gQt2R/amO6efIyRYTkT8rqn
	0fO+5QZ+O+y+HrSUZZBNPiKubg==
X-Google-Smtp-Source: AGRyM1vcjLOLjkuzKVFR3gktiaujZIDm7gd5DyEJi2HmNt2fT3M104n755k3GbXZzTRikp45GJJkYg==
X-Received: by 2002:a63:8b4b:0:b0:412:96f4:f154 with SMTP id j72-20020a638b4b000000b0041296f4f154mr5061566pge.281.1658609086392;
        Sat, 23 Jul 2022 13:44:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:46 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-mmc@vger.kernel.org,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 11/22] dt-bindings: mmc: rockchip-dw-mshc: Document Rockchip RV1126
Date: Sun, 24 Jul 2022 02:13:24 +0530
Message-Id: <20220723204335.750095-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134447_954124_EF2E156C 
X-CRM114-Status: UNSURE (   9.19  )
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

Add a compatible string for Rockchip RV1126 SoC.

Cc: linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 54fb59820d2b..8d888b435817 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -39,6 +39,7 @@ properties:
               - rockchip,rk3399-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rv1108-dw-mshc
+              - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

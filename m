Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D36C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V0QcmbPC9RHB8u1VLPHMQJc2VMupuBVlfZE+GcXOhk=; b=ObvccGAhjD4DFu
	VffnVLkyMz8SW/r4RsvajLrvAIu+aXXEbu00qaVh1/kYRe+IMTkszFnxn865zBFy5dQTeIe2Ol0L7
	PEvzNbx8YgPDEPzf1LD1HdoigoWzOjDhEXTzjwWFAw9gp/uGT3KX5/5laXIjZxGyt+agnSnokjhv+
	fD9lFEjYmwa+sPkxmXrrGy5IJs2nrmgGx05GHGghHV59oJD9auhy/HaM288IXRgLM0dNQyXA6PnC2
	Tq7QKGFcPq1Wux/ytWvhS2Nm2en9/8chgi2wolcng98KAIRv/NfFWBz2GTMStZ9R+UEeLaY9CxR5S
	IHlt5+D3sOFlgLo/1PxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2IE-00AZER-14; Mon, 25 Apr 2022 17:14:34 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2HX-00AYrw-Mm; Mon, 25 Apr 2022 17:13:53 +0000
Received: by mail-qt1-x82c.google.com with SMTP id ay11so10769829qtb.4;
 Mon, 25 Apr 2022 10:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SzhN/kJ1Ng8zCdutOc3nctS/QZK6IJDtlvfBQWvSTto=;
 b=DpQq/Hsa5QR5ZA9qodYr092BiMhLcpbjYU+g9TwkZDltW4qBD8QreTp9GqVRRJadN9
 VseBb3c5pgroMUvVAPftP2PAVwT4V7Ehtwi8zHTUnPxfpco+kzWUYig1m/ybLqrFEbvt
 k9Jx0ptBxg4uHyHNdipsJCujEYPsUd6wtP9RsZRwLNtgrCjgCohFrM+eRtYgxLkR6Ezn
 DLgSfheTbpKKKpLDePSoWTqTnXDckZ5q9c8v+Pl8sjPin4fr9oxrUBLXYeYFkOulqYiA
 V1VXo5IHGwaOCIZE0Ax79dylvfz+qQ4Q2bz3D8Vv8rvuGAX3EctCDRMN5MBclxz3KWAm
 FKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SzhN/kJ1Ng8zCdutOc3nctS/QZK6IJDtlvfBQWvSTto=;
 b=M9dVqCLVkv68a+3CW7TogYKNqdUY+i1laPtvxObMeyMv7I+yI1UOstlWahU6N+nz5C
 TP9ufW5qFXhiCeFql1bCFgtUo1wytpYiEuQo2JuDIzk0hxjBDCpZDdSB8i8/zS+UKTQJ
 hpa9tkL8OKwzH96KJ2tcUyWzLcfe2FjxTu8OKHdMzZ0ZGXBzkCmTVtZO6UeRNw61bORh
 8pT6AA0SCKScT+iOGkJzWZRmyK+ab38/U7YQhQp6LdccnzgN2ntW3D4yrYJeiblGYG+X
 xQdCYqol4e0WR5FjQf/BfVQSgjzq0mrsR+el53IdjE02mA9wt/JVZRQ6QC4+dQYR5T0+
 lTwg==
X-Gm-Message-State: AOAM533jIGMmLNTfb3It/vYOvVQS/57HdnceVSS9EY3wY4gf+oo31KBP
 n5LoegvYmC7Mnc/pcKTZgms5KGAvrMnvWA==
X-Google-Smtp-Source: ABdhPJxgdYaaCfLD97p67JumbC8icR3zvjp2z5x1tM5o4WTDF047qyxbG6wGzR56X86sQJRyLWUQYA==
X-Received: by 2002:a05:622a:507:b0:2f3:57bd:1241 with SMTP id
 l7-20020a05622a050700b002f357bd1241mr11808542qtx.199.1650906828430; 
 Mon, 25 Apr 2022 10:13:48 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v3-20020a05622a014300b002e1dcd4cfa9sm7154928qtw.64.2022.04.25.10.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 10:13:48 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/7] dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
Date: Mon, 25 Apr 2022 13:13:39 -0400
Message-Id: <20220425171344.1924057-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425171344.1924057-1-pgwipeout@gmail.com>
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101351_792981_15E39E9B 
X-CRM114-Status: GOOD (  10.52  )
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

The SoQuartz system on module is designed to be pin compatible with the
RPi CM4 SoM. It is based on the rk3566 SoC and outputs on uart2 for
debug and console. The first carrier board supported is the CM4IO board
from RPi.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d6650a366753..ad940e4127d9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -512,6 +512,13 @@ properties:
           - const: pine64,quartz64-b
           - const: rockchip,rk3566
 
+      - description: Pine64 SoQuartz SoM
+        items:
+          - enum:
+              - pine64,soquartz-cm4io
+          - const: pine64,soquartz
+          - const: rockchip,rk3566
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

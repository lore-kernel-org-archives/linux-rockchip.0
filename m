Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83016C25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 19:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eh1sqkHSJbkL9q/egeR38bYorGHZkoVrkQjA2famXB0=; b=XRMqO7U4t/q6WQ
	/+sAIwnBHyuXDNb+RtD0jrEECeAz9ITLCEgNXdMxwt/3hPHgnVjeAqPJ0YcMqEMVfYl5OXCrxNQMG
	ootnuGPud+RZTO1ql6dZkfwTdXQ3tzUY37b+WxGsmiGcf/ApJfHA/iB64/jss3gqtGl3zQEfQnQbZ
	+V0SZjO/gHWjD2ROW4BlUB8tloIBnKr1xk7LAsqbCRNfOM6a5JdUvKsm6WiVcDKRR9JFqyjkvHu9q
	CemPClHEy0UuZK5ckTK9NZOFT/knFcVJyadA+i7rfVE80Vsjc4qhd7/AKhESh/lZs2yYmrfvNmB8r
	KVmqUESIzeArkddZS+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOno-005m4M-Jc; Wed, 17 Aug 2022 19:34:08 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOnl-005m02-Bl
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 19:34:07 +0000
Received: by mail-pf1-x42e.google.com with SMTP id z187so12860015pfb.12
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Aug 2022 12:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=UVubpDzNU5FD14ZbDX7qhSf8BElNNZ8LWgEYMHmernI=;
        b=fnSzpe95Lx6Q+Hs5I5E/U2TnmezCPAQzOT1A4YSdSpqfOMy51Z6SVoy9BwHa4a6f+G
         DlFo8F7c3ZvSIzmMRZ9tdXojjROubIGCnx2Rg4oSL3n6gsVWnzz+GY9YoeIMZ3sgCC00
         PMWLxWRgXIHvHlaZb2Nm+HNZQ7P7Wy4gsQRv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=UVubpDzNU5FD14ZbDX7qhSf8BElNNZ8LWgEYMHmernI=;
        b=p6Bc1V2gFhLzWi48TmGK2lW+gSsAK8oAAvJk04l33VXvfd1F7pe8ZbjGbmlss+ypTj
         shHS5kv0mVJ4EqnecJa+XZ/mVxEo6wzRjCMcf/MNIRnNg783uSPJAuXzhm6VD88lwPFW
         c2NoWNHe40qWECiB5cHY54D4aF0N9PCv01HF3iBq2sfCGyjMD6qS7gx1bzaxpTdkyaeO
         TmbasGEvyJI6cVo7e/IRegvDUgzCsONyDs6XmMwL3pD9bP7zjjEKShOqa3KQxE1cuiKW
         s9HQeK7KZ7vaBYEFgHxybzHVyznk9uQAHNe2qT1CLe8TXVQBxY9+JPxZ1FcQ/FR9to/9
         haKg==
X-Gm-Message-State: ACgBeo1eRZqIlu9oZ4qao7sa781sCvR3f5Qo1IZyPwtViK8Nqraq+vE7
	8s9GByfkRF89mlk9Uo6Rf590nw==
X-Google-Smtp-Source: AA6agR64wxqpWQ6e4NkUpXw5W0AVNCd9+SEb0z0uT7ZeP+UZOoEWEaCMKJbohcsr8jh/xkAU0wvsKg==
X-Received: by 2002:a63:ec10:0:b0:429:ee05:b3 with SMTP id j16-20020a63ec10000000b00429ee0500b3mr933809pgh.553.1660764842880;
        Wed, 17 Aug 2022 12:34:02 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:256f:e7cd:3f8c:19fd])
        by smtp.gmail.com with UTF8SMTPSA id y9-20020a17090a1f4900b001f239783e3dsm1925647pjy.34.2022.08.17.12.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 12:34:02 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
Date: Wed, 17 Aug 2022 12:33:55 -0700
Message-Id: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
X-Mailer: git-send-email 2.37.1.595.g718a3a8f04-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_123405_466316_68807DDE 
X-CRM114-Status: GOOD (  10.91  )
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

The Gru-Scarlet family includes a variety of SKU identifiers, using
parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
different manufacturer names) also use the Innolux display.

For reference, the original vendor tree source:

CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97

CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../devicetree/bindings/arm/rockchip.yaml     | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..dcae534e3971 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -363,30 +363,55 @@ properties:
           - const: google,gru
           - const: rockchip,rk3399
 
-      - description: Google Scarlet - Innolux display (Acer Chromebook Tab 10)
+      - description: |
+          Google Scarlet - Innolux display (Acer Chromebook Tab 10 and more)
         items:
+          - const: google,scarlet-rev15-sku2
+          - const: google,scarlet-rev15-sku4
           - const: google,scarlet-rev15-sku6
           - const: google,scarlet-rev15
+          - const: google,scarlet-rev14-sku2
+          - const: google,scarlet-rev14-sku4
           - const: google,scarlet-rev14-sku6
           - const: google,scarlet-rev14
+          - const: google,scarlet-rev13-sku2
+          - const: google,scarlet-rev13-sku4
           - const: google,scarlet-rev13-sku6
           - const: google,scarlet-rev13
+          - const: google,scarlet-rev12-sku2
+          - const: google,scarlet-rev12-sku4
           - const: google,scarlet-rev12-sku6
           - const: google,scarlet-rev12
+          - const: google,scarlet-rev11-sku2
+          - const: google,scarlet-rev11-sku4
           - const: google,scarlet-rev11-sku6
           - const: google,scarlet-rev11
+          - const: google,scarlet-rev10-sku2
+          - const: google,scarlet-rev10-sku4
           - const: google,scarlet-rev10-sku6
           - const: google,scarlet-rev10
+          - const: google,scarlet-rev9-sku2
+          - const: google,scarlet-rev9-sku4
           - const: google,scarlet-rev9-sku6
           - const: google,scarlet-rev9
+          - const: google,scarlet-rev8-sku2
+          - const: google,scarlet-rev8-sku4
           - const: google,scarlet-rev8-sku6
           - const: google,scarlet-rev8
+          - const: google,scarlet-rev7-sku2
+          - const: google,scarlet-rev7-sku4
           - const: google,scarlet-rev7-sku6
           - const: google,scarlet-rev7
+          - const: google,scarlet-rev6-sku2
+          - const: google,scarlet-rev6-sku4
           - const: google,scarlet-rev6-sku6
           - const: google,scarlet-rev6
+          - const: google,scarlet-rev5-sku2
+          - const: google,scarlet-rev5-sku4
           - const: google,scarlet-rev5-sku6
           - const: google,scarlet-rev5
+          - const: google,scarlet-rev4-sku2
+          - const: google,scarlet-rev4-sku4
           - const: google,scarlet-rev4-sku6
           - const: google,scarlet-rev4
           - const: google,scarlet
-- 
2.37.1.595.g718a3a8f04-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

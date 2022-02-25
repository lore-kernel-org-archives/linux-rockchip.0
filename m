Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWG+GPBpgfElSYfNZI3pjw4XggGUiP8UI206uoOssIQ=; b=w5AfcLq/gYJw69
	h49FoPQx6AW/jyP5Tcy6rxV/Y6lVUn5uql+nK0wnLkajJQ9p1s6PsrHorPxIwuBD7FZWBX3dAXuli
	AlEsFK4GWB5UPJmWlPs7r/RSD4sZkuQrhPSidPjRHCx2fv8H1CseA+Z858ceeO/e+XRf9cRLFhiDp
	SilXu0Qjx6nZgduUH/q+hJ32u5IjwYVBsE19wrA3/hFWl1AK2BxHTvTHCG3KiGMdrMvDyvA+ms4VL
	6ox5YxUCUypMsyj+KwV3ZsxbG1AdBcRvMjRLtCf43kXazE2dtc9wYF5CLOeo6Bb0YRmv+oXp8XXN3
	d5OLi6GSPGUWsY38KCIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNc19-005UVa-8W; Fri, 25 Feb 2022 14:56:23 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzS-005ThC-R9; Fri, 25 Feb 2022 14:54:43 +0000
Received: by mail-qt1-x82a.google.com with SMTP id s15so2598040qtk.10;
 Fri, 25 Feb 2022 06:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y4cNWerRUjMHmiNUNzXBZ2mcrLA/Vini3LuGLiQPleI=;
 b=PgAb9Vvnd5VqlaSdbhbbFlCyY+VsHxaTb1cP3kGo+tTyJEzkdzxqIDlzpIjw0LxkOP
 jxQBmBAchI8onMnqvU45qs8To31xUP/Mx/UgdBsK5YU1ZXRDYvKGjR7O+7M5Rgk02l4r
 QUM/BdtfgwylJE5VGtpa292BB5fWiLWi79x6jaMizhhHReJ/HdlKQPZ4IXhNwMaUr8jA
 kMKxB8Tk/DUPsaX8ga0GuL3s2UkhESHM9anKsf6loE29gKDqSUe12KEMNjzPYQRp6e44
 ha2zlE/c9PWNAr0zdllfa4BzLnWntkWfbHlwCRKpqomzgi2FHStpJR1NghxuUdw9I3Bx
 0c7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y4cNWerRUjMHmiNUNzXBZ2mcrLA/Vini3LuGLiQPleI=;
 b=aJb2iKQh5N62Ihp/abNXy40vDI9qRwIZCZeIr/UEuCgfCTcccqufdvCRrb1S2p92Fz
 tiILEkHLMrKLc/RVbXZ9kbR/Dh+g0h/1zkHSlKgQPNSKJiL+dC5nnhBsVfHu6KsrFNjY
 fMrRiTdx6GUoWc2VBi3RlAhEKAIhZkGjBzBKano/xSonxXNWLXSw03pGWVGXzXFs9nrM
 p2kZEWv9kf37yG1AbJteBymXy+cnMB1EiB0bR8KSDI3F9TGMopavYZEmuE8J3cagDCt1
 J6watS2+wNCqo+PdTvkJwtq3yJRDApLo9hAWMJUMDagYmgWDHwbSEqGz7FUM4ItIcDuN
 YAog==
X-Gm-Message-State: AOAM533A67XtLBGcO7Pd1d+4DIbkY+E3BXrLbIHW/y7/lPRFhM6nkf2I
 druQOOebg+exhVb5/4Irc0w=
X-Google-Smtp-Source: ABdhPJwDmobbs+ADlqr7QCTKzhyLo+hHpMkIwplNNKdf8nURBCXqkP1dSLivP770Grqrgf6Ba9iSIw==
X-Received: by 2002:ac8:4e46:0:b0:2cb:28cc:2157 with SMTP id
 e6-20020ac84e46000000b002cb28cc2157mr7131031qtw.167.1645800877716; 
 Fri, 25 Feb 2022 06:54:37 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:37 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/8] dt-bindings: usb: dwc3: add description for rk3568
Date: Fri, 25 Feb 2022 09:54:25 -0500
Message-Id: <20220225145432.422130-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225145432.422130-1-pgwipeout@gmail.com>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065438_926975_0ED80F7E 
X-CRM114-Status: GOOD (  11.45  )
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

The rk3568 dwc3 controllers are backwards compatible with the rk3399.
Add the device tree description for it.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index 04077f2d7faf..e3044e81cc72 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -30,6 +30,7 @@ select:
         enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
+          - rockchip,rk3568-dwc3
   required:
     - compatible
 
@@ -39,6 +40,7 @@ properties:
       - enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
+          - rockchip,rk3568-dwc3
       - const: snps,dwc3
 
   reg:
@@ -75,7 +77,10 @@ properties:
     maxItems: 1
 
   reset-names:
-    const: usb3-otg
+    items:
+      - enum:
+          - usb3-otg
+          - usb3-host
 
 unevaluatedProperties: false
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

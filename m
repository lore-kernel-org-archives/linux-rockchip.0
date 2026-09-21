Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1B2FC982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 15:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mS7TRkSlb0L1bdWJau5uuRVlsRxI1J83fiAfZdF0QQ=; b=dNNfk4GDGTiDmu
	2x3DD4I8UnD6jqlMvsW8ADI6nMRksXJQKszo9HM2o5IG8Dj2jDZASXh793b6HHF/EWV8TraARYTJ0
	YUC4KlhKz3aTCqm/JziLcSCTr5n2gIShz6narh+rHG1UmnTV/6H/xGzeRnuhmVztDxIjqB/PMHfUA
	SoDEy740sApu/t464XT3i9x6kgxjK1sJijg2HNml+MpfGmNJer0qJUbi8rtMgLN3A3UcEp4i7uyh4
	V5x5C7fZokt4eIyaR8Y5yq/NScUo9CuTbhDsU5qZ/NdjxT4MKEDZ4TrvTWiHwaft0Qk2ISHkKmjcH
	DxmVVvlq3h7K8/D2xYhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzX-00000002cV3-2pWZ;
	Mon, 21 Sep 2026 15:31:39 +0000
Received: from mail-wr2-x24.google.com ([2a00:1450:4864:30::24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzR-00000002cR2-1wYM
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 15:31:34 +0000
Received: by mail-wr2-x24.google.com with SMTP id ffacd0b85a97d-482f63546c3so2470465f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 08:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790004691; x=1790609491; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oSFZ2mFA8VKpkq2eozLxDfSa3b2z9uge5jLEZ5PpWWU=;
        b=FeQ2S/vkcLipfLF8VzZRHeRWjPMvKdJxHivbi/wy7tA4QD1zIE7hrMhLu+wVJIIb9Q
         gegbf07/+uzH3Q3bFyxDvQfI3IqCYau9NlQZpIYx0PE+g/PYPSkp/iGUzjKw34NOcvSw
         RKb3GHSlJpttLFokZlNnrz4wUw9yVJap0NBNyblR9z5J4gokWPgU7ulYGVey5JJCBkoC
         ZlvNDc6rh5Gj0TyJnvYpzvKe83wGoy4g91dPz9TaxLd9BRVsoaRbFMyk0DJToPzMg7pI
         EDOgrNFzqbDIS6696D/08+o/zlj4NuI9v5b0hSZFtAiAoLhpqfbn1LqyG0oHeDeIBXav
         WPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790004691; x=1790609491;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oSFZ2mFA8VKpkq2eozLxDfSa3b2z9uge5jLEZ5PpWWU=;
        b=N9lxiM6krk59s72sNtXeJ9Pr7Wipe+iT+4BT49wVIPWrMq8NZSQ1H4HK4sKE1ivmLK
         UlgmZTdgWWpYDA+41rPAMl+kTIhZXT7IIe61WlE8OckNFvizdGvqvqhs2L5t612FHUFc
         FXrzazbbi/yE0B6rEcdSGQMCv5qUixZxEkHzzPw41Yd7nKesm9gYRlrt08NaSTYFSd+7
         1jWzQQCYe/0etc7fcqcVsO2cM88DcLaxBhe3JUg25cFREcetELuZIRlGwv4q8ki5zJ7/
         E4h/DAvgJbL3t2bfJKZN7Wx6rm10atwdP0kYhdfBiBUUBHsKLZAfB7T0u43dh+grVu7k
         hSow==
X-Forwarded-Encrypted: i=1; AKwUvBw5WBCCPsEBn8JIZtCim+QzQ/z2Qy9pGLH/VgZn56bdOHld2klQfa/7+m7ZIS4USIZC2JKye698Qe3zz1ZCZQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mZYlvHd3jOhKv1VSeVVwcCQWNp8knZdtgeu9qJgwIRfrDlo6o6
	wd74PKHNo+xqoFkq+c6emgB0WrC7NmI0qqMYhJVgILx80hMGi1SMvBzg
X-Gm-Gg: AYBFou1QcXSZCxBN7DOJAbvZCf+3mbWLtD5OHznlabkG8aRhoJAiuq69EoUFljRunG+
	Slq4qiMUVP1IswW1s6wgsYokDMhmObFvxDgq7jq3dIFAsmwIkj2XA3xGukOfFBFw8Bmb+TEA+wI
	Em/7RYm/WOFRVAKf4kCESjP9gx6hDYqu90S4NElCmR5BOCgU7GvaG8MbAQG8f3bI6koTdZtfx2B
	k572oXGr8T5Dd4vOv6RObPIMdcHnG8z1hO2pfjeV9rZx5y2C2etm1Nb+dLf6DuTGbL5HhYEsKOj
	stE+PM6rX2hX4ne6f1ee9Wodbu2Pkxo82RyTWeCspwIfTa+y2NRHUKBan2gxnQf91MI5/OPPTGC
	OEIYtS2q5TU886JT/n7OI8+ZEJRRxf6LU+8hK5l/cph79jqodFgfjTHqRIxAKxcecI7dTybCzdW
	PZMwvbXcu++GL8iBZlAq8YtEWxmL7MIUHgTSBmuZhElgLyFuGcXaMygauZfVC/xMxJufXkhdu1Y
	vX3uGMr/2S1kefFS9gHoLexpBFtigYDAsBncGqyP0hYrp4xsZtJPDqvkw==
X-Received: by 2002:a05:6000:4b13:b0:487:1687:197d with SMTP id ffacd0b85a97d-4871e212458mr14317492f8f.6.1790004691345;
        Mon, 21 Sep 2026 08:31:31 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48724562aebsm25313835f8f.14.2026.09.21.08.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 08:31:29 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Mon, 21 Sep 2026 17:29:57 +0200
Subject: [PATCH v2 1/5] media: dt-bindings: add rockchip rk3576 vicap
MIME-Version: 1.0
Message-Id: <20260921-vicap-rk3576-v2-1-0a4582e20c72@gmail.com>
References: <20260921-vicap-rk3576-v2-0-0a4582e20c72@gmail.com>
In-Reply-To: <20260921-vicap-rk3576-v2-0-0a4582e20c72@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790004687; l=3185;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=8UIbOajv/WeBQjxhRwQ8WC4GpLGZ30N+4iDWN0b6s8o=;
 b=lKpSlM1nNUiAbgX0spgPXAk0GpWUq8d3KoePWyxk4ZSDU3HkmiPsECMZUnE7pYP6SmzdfHjUv
 odFPQ1dailNC0o+hdS/dO7TmYRMTNNv9fogQQIDl+DajAdYmtsxsM90
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_083133_532606_971EFDF2 
X-CRM114-Status: GOOD (  10.69  )
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

Add the compatible for the Video Capture (VICAP) unit of the Rockchip
RK3576. This variant features five MIPI CSI-2 ports and a connection
to the image signal processor (ISP). The pixel clock of each MIPI port
enters the VICAP through a dedicated gate in the clock and reset unit,
so the variant takes five interface clocks and five interface resets
in addition to the aclk, hclk and dclk of the other variants.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 .../bindings/media/rockchip,rk3568-vicap.yaml      | 46 +++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
index 080b64503b1b..b7dfaf3b378d 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
@@ -15,6 +15,10 @@ description:
   the data from camera sensors, video decoders, or other companion ICs and
   transfers it into system main memory by AXI bus.
 
+  The Rockchip RK3576 Video Capture (VICAP) is similar to its RK3568
+  counterpart, but features five MIPI CSI-2 ports and an additional
+  connection to the image signal processor (ISP) block.
+
   The Rockchip RK3588 Video Capture (VICAP) is similar to its RK3568
   counterpart, but features six MIPI CSI-2 ports and additional connections
   to the image signal processor (ISP) blocks.
@@ -23,6 +27,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-vicap
+      - rockchip,rk3576-vicap
       - rockchip,rk3588-vicap
 
   reg:
@@ -33,7 +38,7 @@ properties:
 
   clocks:
     minItems: 4
-    maxItems: 5
+    maxItems: 8
 
   clock-names:
     items:
@@ -42,6 +47,9 @@ properties:
       - const: dclk
       - const: iclk
       - const: iclk1
+      - const: iclk2
+      - const: iclk3
+      - const: iclk4
     minItems: 4
 
   iommus:
@@ -221,6 +229,40 @@ allOf:
 
             port@11: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-vicap
+    then:
+      properties:
+        clocks:
+          minItems: 8
+
+        clock-names:
+          minItems: 8
+
+        resets:
+          minItems: 8
+          maxItems: 8
+
+        reset-names:
+          items:
+            - const: arst
+            - const: hrst
+            - const: drst
+            - const: irst0
+            - const: irst1
+            - const: irst2
+            - const: irst3
+            - const: irst4
+
+        ports:
+          properties:
+            port@6: false
+
+            port@11: false
+
   - if:
       properties:
         compatible:
@@ -230,9 +272,11 @@ allOf:
       properties:
         clocks:
           minItems: 5
+          maxItems: 5
 
         clock-names:
           minItems: 5
+          maxItems: 5
 
         resets:
           minItems: 9

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

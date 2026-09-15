Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1365FC88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPqayIn+2M6o+0UVCXO7sqyPkCOCm+irJmqYaVduhis=; b=mGtqb76JEHgYWc
	70XJmMzxhkZqNtieyprt6vgVwtuLgeZUzoZu20UPQADvrYuwjIR2E9OSIi9mBhDTrGdqvAc8yDs94
	KyKEFdRUMOEljKWzFFtaZYdMb2OknbO1QPp+rqhwKOxj+10sozgpOvBGZxlsKMW7b0VpwfmyaUZ9y
	md3d18+VHS0pVwKiFaTINkPEDq+iFPDlYOkzVWf6ny3o2udaXrZ/Y4L/2NcOO4y2ZZH9atiYFsZ3u
	trrjzuLInElZXAv9N5HvtfMJuPGiD9VlOLRF8qOei7hGdpq034GUfeSu83wyCsvY0Zjhtk2T4+CXM
	XB3A86xmi4lihRnkIquQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGg-00000006Ul8-12Rj;
	Tue, 15 Sep 2026 12:28:10 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGa-00000006Ui1-0qk5
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:28:05 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e2406so13081015e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475283; x=1790080083; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Hwo4di6s/GiSU94MPQNBdddN+KWlZv54gVo+DuGg1w=;
        b=WmDQfR+NNll/qkddD3l9gm9yYF79OGYuHPoAgOg/jHZWP/RAknDl+x4PWmHiNaHkPL
         iLrTlV+uj9uhu86FAaAQD+ZSKYYAAZBVo7+l6R9gIOTw1PizuzHLrTCdYIa+dAa2cmse
         NZpX313lUJw1ga6H2ECSnCW5+zQUu7lXjvy6WFDv/i/WvyLy/rE6xOaS6UjoBNKeS/yY
         YStw9Om8FOenzooNRQzN8dan7ObGsPFJdSNBIz7nAb8cyl41FdEdXqMlttQyR5zkVpT9
         VJV/gYaadCblwr0BU1dwUMa9ZD1ZUPYRTbDSrdeCuMUR5t7H+WnbOTc78PFG5xr2QAjS
         4xdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475283; x=1790080083;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Hwo4di6s/GiSU94MPQNBdddN+KWlZv54gVo+DuGg1w=;
        b=C6TDkx7caFSgpu08+wxsvppwvwpyoZZmXjd1cqX+1UqtTUCxtcE/wXZ1LhzpTXtOn3
         gsl2XhgGghssGs3MvBetsof7XeKJJawxa+PsLVnE6EoFwZha5UNJOZUxjDdpWQJAsv8b
         eHjV2RA+KJYBBYf6te7WWSCnCWLBoeMs44ZsdShc4D9x2uTFdGP+yQhKwVOtEQ9iPvsl
         aXDvqo3JZdSJN65xldIMLCdhDOX3U6PjJr/LeXxt3bIXXmaSrpAxHD1hK0LATYOO11ou
         vYAwWbO9QYjtsKxubb3WzjuxhmldxRpjPUKss/ro7DYuifA701QpawJd3YGz9/e+5Z3z
         H48g==
X-Forwarded-Encrypted: i=1; AKwUvBykzNJ9ljvy9suqBi0l9L0Aa2Q6OqlQdF4MdIj/14xv4db1MF2L1JTdhUp5qExHyrgjB8hFeUcjkKbhhHXyeA==@lists.infradead.org
X-Gm-Message-State: AFuF++lwwOXAYZCLEgGuIl9563mskHpATvOonVPMIdiS9qX5/NqMG9Dw
	dH0MuQrGL75kzlkZXIdmK30aTtyX1IXuRMYKVBeHLbRKNOzVJRBLFkRK
X-Gm-Gg: AYBFou0QoFcwEdDhV8iiWTl3W3i05Qo7N4ciQDgj4SLgxdGzChK5Pjt0LLZnLuVVafU
	uBnfA7ErqZ8JkW0jgru1AggsNrcP3G44ts0QncovsPmb34rQ6uLniWtj9HDwg9ajleW0MWtobzb
	xWx5TFGjDOhFp8HfO+6ckuq7mfBsZkc/nV7tVGka/jK6go97U4zMt4X0mmCHGnrHvzEGXGB/U7V
	SFaybnZlnXj+ieenLwydApluUfMJOUKWIbeoBltNWPdNPics4GcEgJFEc2oXnLHDGaWcT4qHPZL
	jNan9A3qPJsPNhmjugbSUBlb2O8owq3ZCN9H3GPj3/RUeDhePdCx30WhUImqVp0y/90uxqCKsBB
	fhQ8/FhlgU6JFjh1wnR77o5VMDYD0BGDTHONreYlpf6IPeXWPoBxVWTkXdDaF1JHoVIGLSIV/hE
	3QmrYvgHJW/jEIEA/PcKSzT8uB614YF/jyG3zjENtmGplbdJ1E50gYifPm9k+DJx8S6rhoj3cGb
	AdiRrgzJk78CAPoBGSRYO6PrMAElq6IO1JbYsQ1JPNLWnuIR2XqMtqupZFCIW/JFiQ6
X-Received: by 2002:a7b:c044:0:b0:49d:257c:a735 with SMTP id 5b1f17b1804b1-49e7d749462mr31690275e9.11.1789475282404;
        Tue, 15 Sep 2026 05:28:02 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d6bf4desm83105075e9.15.2026.09.15.05.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:28:02 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 14:27:56 +0200
Subject: [PATCH 1/3] media: dt-bindings: add rockchip rk3576 vicap
MIME-Version: 1.0
Message-Id: <20260915-vicap-rk3576-v1-1-d3f5eb58a0b5@gmail.com>
References: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
In-Reply-To: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789475280; l=3072;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=z7S+WapOAADt+toUCtbJgKgHGdB3VijwYG1m9opy0vY=;
 b=IC84XA3mCQXaWFg/4AsAwioBWvYzZmyHQmZ2hIwH3YricEhEp8sgB2ssCuVdWRiOgs4wN+2/4
 btCDa2mED+HCDnyf4iis3VYb97FCMIHQsX7Y4yo3U7fbH3x3owlCjf9
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_052804_274111_B24AF255 
X-CRM114-Status: GOOD (  10.96  )
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

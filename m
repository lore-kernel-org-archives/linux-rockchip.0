Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 052EEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jzkMzV5PrF4G48VduSETW59KDz7pIfeGVNCcEdmoO1k=; b=QRKCHXAAZeLN/r
	8FaXR3xOfxdoyQnBBc5OJF9ABxmAVAvVelmxfRvm8NFvEjqaFT+/ETBgDqLj12k2RyoAkp3WM+3XZ
	Vg5FSsWrbLQ3vZ+dVJ87fDYDbQZBWyqiGmxPV+rviWKJHwk4Oi2ydn4N+e0k9RBIp2NH8nQy6Hrat
	Aw01hA0fsYIcn66HhPa3xiYUKPGb/+7iA8DIoSJBagz/O9Xx5CqnISXQVrIOaVjMP/639UJwA2aWH
	cT+OkVIpmoS/vJctsrGIxHfRRcc2GSxcQakHbzVtrTz6AFz4CmqN/oES8m1YFRRQLw+kYiD/zva0Z
	9TvXZMYnxOvhtj11U2AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDS1-00CZs1-6d; Tue, 29 Mar 2022 15:08:05 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRo-00CZlh-5C; Tue, 29 Mar 2022 15:07:53 +0000
Received: by mail-ed1-x52f.google.com with SMTP id h1so21080326edj.1;
 Tue, 29 Mar 2022 08:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p9v27V0/JfuIbfFojrBajwITmYHf2b8Rf6L3R9h8DQQ=;
 b=fGHjBdelOVCq0/HLdLy1UetI3cugft3sVAH5OtbM5CkxW6DAVq34oE5s3Zze28+2a8
 U8QSzvPv0ufc5bZFWAdBpn6ZsuGhpWCJ98RxiwbEJK9luYn7m5qL/TwdXmNQfb3i1fbZ
 yxVwcjDNcdoEXTVoRTHjU9CIfFTQze2w3UzVANnDwDZ7i1mcyBPW6OBQn0yAglHNdrPf
 spLmwoo0vmcrRFEif1xOHSQmvd5vzS2jcEyRbaiQyFp3ixIJqTM4P1sr73pd9xSSlGi/
 hcfMf/ZU5jLx6pUNmiAmEsUV0xbzpaK8oa4mEKdcLLJtlYy8xoB3VRZkUWscWMJxC8nZ
 unPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p9v27V0/JfuIbfFojrBajwITmYHf2b8Rf6L3R9h8DQQ=;
 b=xbTMbFm3JmebaDloem16hFQmKqdItARuxSo0NC0D3bVeGFhpSDy6OknIwzq6hO5Bxj
 jq9xgT6qQuEBX6aQqMc3xnfTIFsTmUYpzqFWRU5s23quUEmqV3uLlatK3/o5Inz3KJBU
 wHxRvzoJG4RytmMhKYE4FF7B5bTy2NZ+GQKWhjB/c+gMxepxISSir/vmlsbddNL5u6tD
 uXkbi0ARURjy/roztmiSC4W/Nv+BcV/bzFCWLLw5b9sMeXiAvJ3UiOxgeA0/GlA8h6uv
 UDAtKjj4IcKw3OUw3kYdM7FC61EdCKUbmQCVtlDBpUZDctG9MI4WGXTd0kZG5scbTsLZ
 zeoQ==
X-Gm-Message-State: AOAM530hfsO3WYMUv4ssziq/eEAD9MEdyOsj9Eos0uOCQ0NT3QaRx2bU
 SokzYN93f6lOFS+qnUg8bQ8=
X-Google-Smtp-Source: ABdhPJxso/UMv+vRLnya+BieCPXHQXWBIEBC2uFnNZ672GwfuzASripXLXTFP7UXiqKuRr4+8CDwLg==
X-Received: by 2002:aa7:d58e:0:b0:419:c121:ea33 with SMTP id
 r14-20020aa7d58e000000b00419c121ea33mr5012304edq.256.1648566470557; 
 Tue, 29 Mar 2022 08:07:50 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:49 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: clock: fix some conversion style issues
 for rockchip, rk3399-cru.yaml
Date: Tue, 29 Mar 2022 17:07:37 +0200
Message-Id: <20220329150742.22093-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080752_217085_706AB837 
X-CRM114-Status: GOOD (  11.07  )
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

With the conversion of rockchip,rk3399-cru.txt a table with external clocks
was copied. Make it a bit cleaner by aligning the columns. Also fix
a description. Phrases start with a capital.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3399-cru.yaml        | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 72b286a1b..76dd24d49 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -22,11 +22,11 @@ description: |
   There are several clocks that are generated outside the SoC. It is expected
   that they are defined using standard clock bindings with following
   clock-output-names:
-    - "xin24m" - crystal input - required,
-    - "xin32k" - rtc clock - optional,
-    - "clkin_gmac" - external GMAC clock - optional,
-    - "clkin_i2s" - external I2S clock - optional,
-    - "pclkin_cif" - external ISP clock - optional,
+    - "xin24m"           - crystal input                          - required,
+    - "xin32k"           - rtc clock                              - optional,
+    - "clkin_gmac"       - external GMAC clock                    - optional,
+    - "clkin_i2s"        - external I2S clock                     - optional,
+    - "pclkin_cif"       - external ISP clock                     - optional,
     - "clk_usbphy0_480m" - output clock of the pll in the usbphy0
     - "clk_usbphy1_480m" - output clock of the pll in the usbphy1
 
@@ -62,8 +62,8 @@ properties:
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-    description: >
-      phandle to the syscon managing the "general register files". It is used
+    description:
+      Phandle to the syscon managing the "general register files". It is used
       for GRF muxes, if missing any muxes present in the GRF will not be
       available.
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

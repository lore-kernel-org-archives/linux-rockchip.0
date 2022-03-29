Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A33C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjSIfdEkzjHUibxlZkP7XaE0zHXfr5Tjw2LHpw0ZJew=; b=heoO68JRFOaQ+5
	6t7du5V5LP9fOTHF26eDVKHEmB1IIhZovkvlojjyIyfytX0SzkgOLUp2MVrrUi0LmvHDicbovETOG
	cYel0fByplX0ew36cF2kmIWtPWCd1c/K1OeY5ASUDlvUYRKgIPwgZaALbVjQCrraE/rN2w89F2NHp
	La8Iz2+UgShKrwrbxCDR5gRfZi/zoTnq2TONQHA2CxSvvvCvKvEwh/hLd6iYwlJucsbK1Y83Ri0wk
	vj9ToX3/IXLmism9K2j9JKR784hY9XLf86jkio5MurRhbmrgJaXaeAzqZbbpRvrubaX0kQ4J4JRYg
	ATocKf2+Ej5n3Zg7CpcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDSP-00Ca4f-7K; Tue, 29 Mar 2022 15:08:29 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRs-00CZn0-6n; Tue, 29 Mar 2022 15:07:57 +0000
Received: by mail-ej1-x633.google.com with SMTP id c10so17372720ejs.13;
 Tue, 29 Mar 2022 08:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIr5PvQf5fAOI0436U7wwcVh5jl/xQHKrpc6xbFom/g=;
 b=fxKfzTApBxSRYrsYaJILMTwr/PE06U274HGvZsBw+QCZfWWgIfpfXExXXHsNFXHV7g
 F1gWxlTF7mTpZjkF9S16CyiRvmrWnSdkSNlBO45OD+XX/Fq/JAcZYJlQwuWlh5hFS4Od
 nkZic3NB4C25FqSWV7Nxgj9blOtLP9+3CHecdoelJvkoT4/qIEJu/K9dix6Zlvjwswti
 ef9z35DzxkKXKxcx9TWipXeCNJiUM8jHk02SGr+1Ri4vDjQz2x5g+IvJFey/txsPumPU
 8ZlUJaKOI0S2DNNU128p+MwRNCiSg/0v++D1YJHyc6Hj4MdWWC+qUk1dEzCtYM5UhP5N
 GYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIr5PvQf5fAOI0436U7wwcVh5jl/xQHKrpc6xbFom/g=;
 b=sCH+oGxcjJmhZkI6boxILvYiHdZk24LY1LWE687BCqwiB4EWcJnkbryb7xHjWHgz3N
 +t3W07FEPmMOQCUPfHQn46LZ4UE6o/ogFz7woPHIExR5MQ75R03ve1tfeAneeH0/TuS+
 e8jk0N021FYdEa+JeN59NnXwFVXIzgqcapmOc4yM8QECnblPZvknAMTbDVxqbsHm/KiU
 AAAMXca6oKeG34snSyhar4bKn5SydaJqUdNacvaq74zqj0Ny6le+cFvJD0Ya09ge8rRe
 1wBLFQl1g1DOgg62yPRSdlIkZWriJtHAbybtSyhC2JS722tb5oTkgLYdnZAMZ8QGFYe/
 25NA==
X-Gm-Message-State: AOAM530iJHnSXITjz/ZvX7Gj/zDyAYkr3b8qW0yl1RyHaSL677HNsjgx
 tlz7jnfiKZprya3b/DIO3Xc=
X-Google-Smtp-Source: ABdhPJzdWuR/Ip7WHPKwZ8Ei1Ym2WuXobIb/szldrSwb7qxobdqcCVGvEeOwV4+Df3ERQcmyHFFWEA==
X-Received: by 2002:a17:907:72c5:b0:6da:e99e:226c with SMTP id
 du5-20020a17090772c500b006dae99e226cmr35385241ejc.515.1648566474746; 
 Tue, 29 Mar 2022 08:07:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] dt-bindings: clock: fix rk3399 cru clock issues
Date: Tue, 29 Mar 2022 17:07:40 +0200
Message-Id: <20220329150742.22093-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080756_273807_D2856109 
X-CRM114-Status: GOOD (  10.85  )
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

The current rk3399 cru DT node gives warnings like:
'clocks' is a dependency of 'assigned-clocks'.

With the YAML conversion somehow "assigned-xxx" properties where added.
If a proper clock is added to the cru node these properties are no longer
needed, so removed them. Currently only one clock will be added, so limit
the clock maxItems to 1. Add a clock name to be able to differentiate
and filter bogus entries.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3399-cru.yaml       | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 18a009311..54da1e31e 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -46,19 +46,10 @@ properties:
     const: 1
 
   clocks:
-    minItems: 1
-
-  assigned-clocks:
-    minItems: 1
-    maxItems: 64
-
-  assigned-clock-parents:
-    minItems: 1
-    maxItems: 64
+    maxItems: 1
 
-  assigned-clock-rates:
-    minItems: 1
-    maxItems: 64
+  clock-names:
+    const: xin24m
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

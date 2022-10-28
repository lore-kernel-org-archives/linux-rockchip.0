Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF5FAECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 23:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TqxggKa7qYI/toze81XjpUwDD3t/jOjSjAFgJNTEiaU=; b=L6ED3qWV6Ct4Rr
	1H7TkZASqHkq9ZH3BQgQxbiDLYb05IaxU1ErZN8HZzBHXDhiobDyKG1Ui5YFTFlvqIn9XmaV07sC7
	VER/FkdTYy5ab/CltNZr1KWZooVhwOlvcShQ2yURWBpWTq0uz/0BAkJOt5tbDdUQUzFbOXxRekCFu
	rO9kWiye3ySS2xrnhmpwszhGFKZWIUWw1jYNvtBUHTrgwTzA3m6gxXiE5BP51efxIA5CfSzeIJT8+
	uqXv+7R768Oehmw+QRVx5x9NFhQIfYLRc0g61mPscaKGdtRY4zO6qvllljfZ7+cidgp4pd8WBx7RG
	jXaY/TLZs6bDDUPlVx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooYXN-003EAi-N3; Fri, 28 Oct 2022 23:13:17 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooYXL-003E9X-3J
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 23:13:16 +0000
Received: by mail-qv1-xf34.google.com with SMTP id j6so5024932qvn.12
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 16:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ukQQfOYSPm/+bCMthg8nZwj163N2VFbmekvUQi+HF/A=;
        b=tJ0qVOk5vF+xzBZsnUZQ+ugGW7Gw0IC12me1ZSTUBwfLTQ7s4iYoyLTvu/rN1YI1k5
         nGBjdT0KpOXWsMAWJ4jvwqsMoK9nNegrLmmKIBICFtrEmvb3mgLffbp0haIjJef1H9yK
         nL8uuRMXsuiPDY/1wmTrzPLZXAlBz/C6p+rr5Bd/0VWEDRtJA7NLwKwZvUW4QkbPECMa
         s2y3T/Qw4ACeua7jIA8ub17tRcQy2yFHo7LI/a39RWGt0C4MnP8nUrekPIxwOu5Mfdu/
         jQxBScD73yQNej/nyPWRkWzv18c/fM67KFZrep9JyZsRTfk5RAo6V8buYLaRSgVSafJW
         NH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ukQQfOYSPm/+bCMthg8nZwj163N2VFbmekvUQi+HF/A=;
        b=OPbqLZE9lZLFL2hJ1Ct8mDTMTcyKmdPY4/sn+EJfaPLi3JUYc+iq9zLg15oRUUfv3b
         E5+5xhMwMooM/U5uE+/I+uF0C4UkxOBYbwxy1r6ZU9T/vELcWbVK5PvSes9IED2yxGaX
         hgGqv+Ckz/y00/TqJ/WkVysFIENiF2lo8zC9qiRiO7pGSDWpl/vQwoa+6iayJ3fQ/60W
         vh5mCKAWRi7gvWChjIIx+E4mf32rV6zZTAyib/lv2WT2UDO/A+wtaxzfFlI3sqyFJdZQ
         jHRdTHfDvAy/HENPbZm+CreCVYUYNcipQ+3x5VZBTBqiaXsQurzt2C6xL4dvfETA3QJO
         QvRg==
X-Gm-Message-State: ACrzQf1KvhWopMnf19OhgbY/R/1n37PuGnqHPP/5dUsSfYu7uHaB9UqX
	Dg0SOSrKivCA2OkCyvpONw5KlQ==
X-Google-Smtp-Source: AMsMyM7NTDIK+8v3wplA9/kAnXQHJEjgj/3Z7iy1r0z0CoEiwKcmQbEF6c3PG5w1BZ2a5jFhz+GApw==
X-Received: by 2002:ad4:5bc5:0:b0:4bb:7e1a:9de6 with SMTP id t5-20020ad45bc5000000b004bb7e1a9de6mr1618274qvt.68.1666998792570;
        Fri, 28 Oct 2022 16:13:12 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id ay7-20020a05620a178700b006cfc1d827cbsm8256qkb.9.2022.10.28.16.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 16:13:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: Expect specific type for monitored-battery
Date: Fri, 28 Oct 2022 19:13:09 -0400
Message-Id: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_161315_160972_BBA25491 
X-CRM114-Status: GOOD (  10.86  )
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

Core schema does not define type of monitored-battery, so the schemas
are expected to reference proper type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/ene-kb930.yaml      | 4 +++-
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/ene-kb930.yaml b/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
index 06ed9ec8f4bb..b4c6f9529ce1 100644
--- a/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
+++ b/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
@@ -22,7 +22,9 @@ properties:
   reg:
     maxItems: 1
 
-  monitored-battery: true
+  monitored-battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   power-supplies: true
   system-power-controller: true
 
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 935e17099213..d136a05c7758 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -126,6 +126,7 @@ properties:
     type: object
     properties:
       monitored-battery:
+        $ref: /schemas/types.yaml#/definitions/phandle
         description: |
           A phandle to a monitored battery node that contains a valid
           value for:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

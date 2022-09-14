Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A63ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 10:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eMRz55Y/82GQMFrP9goEZPOJuuW7D8QPch7kdK9/iS4=; b=mbINQ2ve8Z6EKF
	0s0XK4yoKMcb28OjBplUYK7pR4D13vogdqHXwWM1otTQoggEbxIjEKdCGMxPa36d+DLaom6ikIl2m
	hG/jVOEMoPM5ag/seXZ368jLlWH62w/2DaP3U4iRf48A5xTLsrwOqMEAbvo7lQI/KRS81X74GRdS+
	stJLVVFQw5EkrQ1FnYLPBY8yHwqP55QF5ur8RpnfLKFDHtGEpsC8ieF2hdXOyKpB3v/DcTjqqcFbs
	nmuu1aEI63piNqcqL2IDjtdQIbQLGzN6haTl/qMsk/Cwn3n/ZMb/Ygyc1l3338Iw8vonIPMz6rmxC
	QeI5/Qqnd1033eFA7jLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYPzA-00FQ6K-DZ; Wed, 14 Sep 2022 10:51:16 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYPyk-00FPjU-Px; Wed, 14 Sep 2022 10:50:52 +0000
Received: by mail-ej1-x630.google.com with SMTP id 13so4764527ejn.3;
        Wed, 14 Sep 2022 03:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=wpXuLValBWZP/zsjY+A/TTXQD/M5Ih3exq/CAis/KV4=;
        b=KR5cNVuGyLreJdEwSguHZcLjR67Yrc8eSXryirIPnTbfK7hukpa0bMR5bZthCe2R8D
         H7I4pCJlDqLsrs01RgUiuWH5+ixtVerhc1JWt78BnangoiwxjlXcSTt0iXFbbSPer46P
         1gR8TUIM9vZkeZMiJ3pULe8rpPxESiA8IyRMQ4qlDV7d3RplQiwmgQj4DDOGLQICB5X8
         zFDU2OTUK3y/MY/kWApsvJvzLNiXp1Yr9lI//GymPOyNKfCEbVIu0VJICPsJ8AeAFmcj
         vFm8/7ZuEqfjqEDQs2TbQoSsC9gJBVxmtZexVkDyqsL4z+90V6CDMg8wvXhFdCQTeqYi
         8lDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=wpXuLValBWZP/zsjY+A/TTXQD/M5Ih3exq/CAis/KV4=;
        b=uERMtfue8gNMxx/VLe0N7gVE3Hrb0nobLgTl5wEw9UQ/vJ56YFO2PennMvtSigzJQS
         QCO724GGuVK7v2YBtbkmSLpqiwjyqF3RbaIC61By/68O+Ain1OtDbMGHnCPN0eYcPAzv
         baABrpXR9h/a2TBXVgNRDR2zagAO3hckJmoFXEG+Jt+s4llU7OO3dZNZdiiZAI+PKr7x
         9WYF20D34lc/Tiu4e1VmTq3EC8gxOrZ110kwyTi7uKrbviX+sfnhfW9ir2vuAVfq3sEJ
         OMqnhlCm9oGEsrZ5bWctt1SBZAUs4GUvOZHuW18gqeliselTTKOgRQ1sT1U77cU8eeGc
         mqUg==
X-Gm-Message-State: ACgBeo0OOyBqYwjiRFx1d6Ua6nyzs4anPFgBGG81kBADemYguWghhf5r
	NM/CqbTlRQkBHRM2wHXz8Ig=
X-Google-Smtp-Source: AA6agR57Ct4WYUR7jRYjlimTKGNY/sfvUSeQJTWA+6ZOqZmcdQcywa0lV0N+PBrpH4ROtVU0ncwKdw==
X-Received: by 2002:a17:907:7f04:b0:77d:5bad:46d7 with SMTP id qf4-20020a1709077f0400b0077d5bad46d7mr9985823ejc.663.1663152648005;
        Wed, 14 Sep 2022 03:50:48 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g8-20020a17090669c800b0073d8ad7feeasm7316219ejs.213.2022.09.14.03.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 03:50:47 -0700 (PDT)
Message-ID: <d70fa056-608d-0c19-7948-c67b15a4246e@gmail.com>
Date: Wed, 14 Sep 2022 12:50:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: clock: rockchip: change
 SPDX-License-Identifier
To: heiko@sntech.de, zhangqing@rock-chips.com, finley.xiao@rock-chips.com,
 shawn.lin@rock-chips.com, zhengxing@rock-chips.com,
 jeffy.chen@rock-chips.com, jay.xu@rock-chips.com
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_035050_894275_BBC7E60A 
X-CRM114-Status: UNSURE (   9.22  )
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

Change SPDX-License-Identifier to (GPL-2.0-only OR BSD-2-Clause)
for Rockchip clock bindings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Request for copyright holder approval.
---
 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml  | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3036-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3188-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3228-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3288-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3308-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3368-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rk3568-cru.yaml          | 2 +-
 .../devicetree/bindings/clock/rockchip,rv1108-cru.yaml          | 2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
index 3eec381c7..cb20a632c 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,px30-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
index 1376230fe..ffac332b9 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3036-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
index ddd7e46af..6979ed1c4 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
index cf7dc01d9..ca34345e1 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3228-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
index 96bc05749..b952b0eab 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3288-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
index 523ee578a..e1b314ed3 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3308-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
index adb678777..3e8225357 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3368-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 54da1e31e..b06eef33b 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3399-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
index fc7546f52..5b49adcac 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rk3568-cru.yaml#
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
index 20421c22f..95bfeb8fc 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/rockchip,rv1108-cru.yaml#
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

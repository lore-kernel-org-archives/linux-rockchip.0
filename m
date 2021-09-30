Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D1FC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:05:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 272FE619A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:05:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 272FE619A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK6BmSWT7EWxzLx7hyrOFm4Jt5BLxwLNp7JhSVOZIOo=; b=OjkynS5YeUFnXu
	Lc7NRlCx/zFV7nl8pwW2AgpaOzzBDmIz3/ewBui0lQAGgiOoiFLJSL6CLVYraw21gEzKOX77PZF8i
	AHBFkUMUPh+WO63uDx3j5JwoiFX2yRBSTrR9WbZVhLNFRVeNvoVXH4kdbCHd7g+kUCwiXu6qEbCS9
	WO7ePif9QrniXJIeWM/gaVBUNoL6XOeOz8SpYeMe62dYaOL1eMPdHpRtRxF5EiYOAN9wx6w39EAN1
	ycoIU6jhvRJXtTtx/T4K+NSqT49kUT/yGJ6p+59/HAGhwnNzRYDj+/2bkBR2LUAGFpHI5Zy2hXTzW
	UcYP+CrtS8BUU6PLyPbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVtsh-00Dyz2-6W; Thu, 30 Sep 2021 11:05:39 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVtsU-00Dyvp-J7; Thu, 30 Sep 2021 11:05:27 +0000
Received: by mail-ed1-x535.google.com with SMTP id r18so20352087edv.12;
 Thu, 30 Sep 2021 04:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YBgiYM1YMUTaur/C3QVNo5tGNXLvclq4l1ZtgjUpd4g=;
 b=YBqn7GnDNNqpPZm/pAsrfEWR6oNufq3gED9cMWzTOQCUB+JOr2+U09kMI4xKWxRnz8
 TUE5Nf/xPHO58TzitUkyR1OQFJhhofIcsT9WSupMX4hnXBFc+MkEsZxX7bd2JEBzvx4p
 vYniaazUeh33JUWXas+vd/VGfciosUEiWR+tDQMbx+P55FZKBBL1MKpxyCIDwaCFRK5D
 VOSaLqQ816WFVm3HV6mZ6VaRIJn3dyprPKNJyYtwpY24Q9mwNBoOtPdzzNqMJSRCBXDr
 5P/MD57OedkY+KxKMJdRP2EqZyuybxESuY9B9LhoaBHaY67qB6hNYIlPwNyJgXpqS07L
 de9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YBgiYM1YMUTaur/C3QVNo5tGNXLvclq4l1ZtgjUpd4g=;
 b=Z14WTOQHjiGpgLal/Ops/6OM3Xx8w2+Vd5Kc6iC1pAALO7R1zssZ9wlhT3gJESfbWq
 AHgo6AFP0+hlrkuKiDQKlp9aN6A0uCkqfMyOse0+pmgz6+dVqsnzKuMThtHkoM5Q4/iK
 IoTcuFe7Q5dLpzHzJhsjBn2F3CqjVCGjz259TtTwgGeTpFsJGzwNpp+2S+mW0Ai4tbVe
 w+qlgeq+XXYF675C5b5c4uQm0ZlSbmSCHdgNDE/4fBArLLapvuhvs4TyK5WnkPM8oh2u
 XKD9va+WaEyPd7r8YjKGW1tHfemzQNgMm/b78TLuiMQWdSrKIlmSo69Q8VVJ+AiR7zaa
 /o7w==
X-Gm-Message-State: AOAM532Uva01RXhRj5eWlqjtMCO0a+SyzMmrqY1eOLLV/0xA85kpxDf7
 bhVQ8ScxK+4dJ/9AywExwZg=
X-Google-Smtp-Source: ABdhPJxQcP1chqO/WvyPc81rUAxaSYZBidr29l5CD+EWy0vjVJQ+473yq6yGDaVGnNZoGeer4Kzi9w==
X-Received: by 2002:a05:6402:1d9c:: with SMTP id
 dk28mr1144800edb.241.1632999924775; 
 Thu, 30 Sep 2021 04:05:24 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i2sm1305158edv.7.2021.09.30.04.05.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 04:05:24 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: thermal: remove redundant comments from
 rockchip-thermal.yaml
Date: Thu, 30 Sep 2021 13:05:15 +0200
Message-Id: <20210930110517.14323-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210930110517.14323-1-jbx6244@gmail.com>
References: <20210930110517.14323-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_040526_672596_90E36744 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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

Remove redundent comments from rockchip-thermal.yaml
Sort compatibles in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/thermal/rockchip-thermal.yaml       | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index 3c074706e..f6c1be226 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -12,14 +12,14 @@ maintainers:
 properties:
   compatible:
     enum:
-      - rockchip,px30-tsadc # PX30 SoCs
-      - rockchip,rv1108-tsadc # RV1108 SoCs
-      - rockchip,rk3228-tsadc # RK3228 SoCs
-      - rockchip,rk3288-tsadc # RK3288 SoCs
-      - rockchip,rk3328-tsadc # RK3328 SoCs
-      - rockchip,rk3368-tsadc # RK3368 SoCs
-      - rockchip,rk3399-tsadc # RK3399 SoCs
-      - rockchip,rk3568-tsadc # RK3568 SoCs
+      - rockchip,px30-tsadc
+      - rockchip,rk3228-tsadc
+      - rockchip,rk3288-tsadc
+      - rockchip,rk3328-tsadc
+      - rockchip,rk3368-tsadc
+      - rockchip,rk3399-tsadc
+      - rockchip,rk3568-tsadc
+      - rockchip,rv1108-tsadc
 
   reg:
     maxItems: 1
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

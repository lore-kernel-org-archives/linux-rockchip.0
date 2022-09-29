Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126F8C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 14:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+IlgstMYoTy6qK6jd0UFaDY5iu55fN5xZvV6vXtOFFI=; b=DOu2Za/TAPxXTI
	VZbe9Ed+GbtbxCu568zMJIuNTPXblExXv4ex7OPbO4CFQDDUD4ZKE0Zmf2PWwG6Ocrky4Vb36GYSW
	DP6D400HAyiyhh493lokwkkJ3g7SdqOduAT+rINNyk7vABWCItGN1TZRpP9IqunaXgCrr9PeMi91n
	KcSuszCJk4/P6ud43F2IuGF3h1X286p2o6vo95Xeu9M4N6p2tGr0RMzENFg1Rb5HRL1bROIXQrji8
	hdsF4rDVJlH+PBqXt0qAkQ6je7dhIBQiyDDm0HzCBsfgrECBrxij0q3n5huSCVUps1iX5xi8djcpS
	o5xhkDHNWbHBZ2MU7DAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odu9D-003RSt-2T; Thu, 29 Sep 2022 14:04:19 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odu91-003ROR-9E; Thu, 29 Sep 2022 14:04:08 +0000
Received: by mail-ej1-x629.google.com with SMTP id bj12so2977800ejb.13;
        Thu, 29 Sep 2022 07:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=lOIr10qng5aLPZ0etG+Hq+3fdw3/2uRq+u/cuL1bsUo=;
        b=pP4ha6IQQWSyGXsRFLlusYzCDGnGAoqkhrT0gaC/E/ELqjMzuZ1xCIQObAzd6VtWCz
         WYVa8gavgTY4U1qICCz2uF837VFbIz2wXktnZhqn4Pa8sRLWiHVatF/SwCy+nj595AOu
         C6Q8fzDACB64FKeRZE3kNR4TL8ph+t/boPeJXU1ZpCkkZaBSVuQ1eqI5SUrcB9EIUphy
         htXn2i52Y8eo5Y4lfnTN2KqEbhbkxDE8N/PqOWRKGy5lO7bfKCTRBrnHh/9W5DnLi+/J
         ObscbDs0p0P95mN893mIR0JC4xdHEfKTYfmBdq8c0Qf6zMZq/2p8ULwumQsEKYh/Z7Vp
         /HFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=lOIr10qng5aLPZ0etG+Hq+3fdw3/2uRq+u/cuL1bsUo=;
        b=ak9KlJGEtoKSiTVgqU95TZGjamrLHhrlqTWC98IWcG7n5FuI6lI9i5f+3ymtxP0uic
         t64N4+UkawPoLXg9VGXGTvDXjQdX70hQjlSnTMk9CSKvQbg5M0+ttF+Zj7AndX5wHCD4
         EdDW2IzkbVs3F2eZ35eqoybGf2bp8H7cNvUZd+SxGDhALkVUtGvHt1zOIqmvhxl8eu+G
         XVfSoyGYk3DX+XyQUdKaotWmE9/0ShPGFcU8jh0Pf9jg+VeM2Qb+h+6/4qHiQXr6VW/o
         pOuuV+yuRThznwZw2HQfqF9R2m7J17ptpxtuFO6joU7DQQaRBH22FLcRL6HWPfhkt+9e
         FpAw==
X-Gm-Message-State: ACrzQf1XYV/7B1/4sJGGMMnoYc1qT27+C+NytpNnOCTkZ4ngxJQkqk2K
	6zyqfpU96dJ53GgNpaWdqd8=
X-Google-Smtp-Source: AMsMyM5RqEf6W8++5Wd/dZ8xiTnvX4qBJZfJOg/gc26XMHarfk00dJSZvruYtjBdG2kEV798u2we9w==
X-Received: by 2002:a17:907:6d03:b0:782:abba:936c with SMTP id sa3-20020a1709076d0300b00782abba936cmr2857513ejc.758.1664460242976;
        Thu, 29 Sep 2022 07:04:02 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id y4-20020aa7d504000000b00456d2721d93sm5411275edq.64.2022.09.29.07.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 07:04:02 -0700 (PDT)
Message-ID: <94bcb278-7bb9-d173-497c-fe12682c4a17@gmail.com>
Date: Thu, 29 Sep 2022 16:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts
 property
To: heiko@sntech.de
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, wxt@rock-chips.com,
 kever.yang@rock-chips.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_070407_353630_EAAF4B3D 
X-CRM114-Status: GOOD (  10.13  )
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

The Rockchip SoCs have 4 or more built-in PWM channels.

Configurable to operate in capture mode.
Measures the high/low polarity effective cycles of this input waveform
Generates a single interrupt at the transition of input waveform polarity

Configurable to operate in continuous mode or one-shot mode.
One-shot operation will produce N + 1 periods of the waveform,
where N is the repeat counter value, and generates a single interrupt at
the end of operation.
Continuous mode generates the waveform continuously and
do not generates any interrupts.

Older SoCs have an interrupt for each node.
Newer models share an interrupt.

Add interrupts property to the pwm-rockchip.yaml file.
DT describes hardware. Rockchip PWM driver support for
interrupts might not available.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index f2d1dc7e7..f7634069d 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -37,6 +37,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   clocks:
     minItems: 1
     maxItems: 2
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

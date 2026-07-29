Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A35F8C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoAraVNwa+FevCJLifR6hDU+TDt3ilQQka6xBlndS94=; b=DrNDnCb9X2jzBM
	hmVXRLPDbyc/LtfARhcISBJ0WIs407dmQs3eNZsvOwCYtFgoQDEwmfh0wQepue4KBuoRFQa+BdGAv
	ozM08kVQEQJtPAmHpY9Ce6ECCjVtAtj75CXzM2qC/RQc9iG9kfF4DT6tkrk0esLoLene3EiF+hZ+6
	dhJnuTmqyUCejvTs8OmjF0jZq0qtZ0pojw3NEZwVjSCCx2k83Ie/GhCG0pBXcc/MnYZIFkuf+A1kS
	mI5uCcy8aBHTsOVl2W1pK+qSrweS3Vi9+d6BvMuckGevJ1jVWNXfFO/SGv2JzpFwSVbGQTDptR0Pp
	GY0dqe+ZnasMXihiCKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Ma-000000086W6-1bWw;
	Wed, 29 Jul 2026 13:30:24 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MV-000000086SM-3ZoB
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:30:21 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-4864ebb6268so382952b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785331819; x=1785936619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jywl9hNRxqX9/ziXXjY4TdCTiZ0dW2gF28EYukBVWGU=;
        b=GepTHKvQH4+dUHwxfqgIhgm/O70aAIM7vYbFlylbhCeAUP/0v7tIsuc3PJmIPUHMQ/
         5s4ZNfOboMB7rRbekZLMn6GfKdHaohgWob7ORwIKmLb9y2d5Kw3nzdyp10YkIsAXhfmL
         PVV3kKYNsb6qob8twkLFKcWWGsbWJDI/r8+HY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785331819; x=1785936619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jywl9hNRxqX9/ziXXjY4TdCTiZ0dW2gF28EYukBVWGU=;
        b=VydEiKfFrqDQouOEDzpKav7opcMBjVXqHkegh8/+Gc7RqeAB+HYqvGArMU4YL2zakK
         lO8ew1zE3yd6dtgiMHoyS0trOv6vbwuiW3gSxYgt9EYmcU1ivHH6BNU8KcykqpnxfB32
         n9uE9VijlV2Ly9Ty10iUKGFjFvPRLQe21ozWNbGmAIp2cbT6piBmb0WM94qjJx/TH6nt
         O7r/Y22CKXfVV9TYmGIMBKjZPtcr5++SpCom2DUpyVE+1k7aCqXvZ/jgElpRM+M0ruqu
         mN/lrZ9hv2hP/STSl+SXfJSweDVGwk81EfmmNpmFjKWTjLvq9NiK5wtQog6AVA627g9a
         ODRw==
X-Forwarded-Encrypted: i=1; AHgh+RpN3R8FIVnUJIvcGWJmSqqANi/J2PlMLajPxYVIsqIFDuAUY24IrtwQyKZSFk72Bv1zRi2qCfrAhFgYpcFoGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywvtfg8v6MyavLF+dNIGL0vvKbW8MVqR3Aqwsm5uo8CKLTnu3b5
	OZ1Jl0GRg183fCMci+4Ic9FkxhsS1upuURj7bNwDedR35I4iEV1IEJw5LvWWZnScpw==
X-Gm-Gg: AR+sD12MGOwuUS7CwjVNklZ4rgusLm+rwMPUhNa0aDZ7lrpNU6sKbjDj06sHUk0bvQ+
	DOv7HHJ8wuiUs7Q4pXdhbPe0XIJYAv4Less7sDyVwpPdIjGN2Ea7z8q6g56huJzgIEeA8h8s9Fr
	a7VyhzyUXIK+iU843QQS6nZWl9QFf7sQy+Uqh4sJh/UUibuP7B8VwABShQUtB3CF1W1/YX4wkhQ
	UmkezzeuR2hHeY6qc7h9R5DPkWZAiG8YUKpjve9YB4vpQGOuxCHZXbSMoAAXBno6JJF5X0zDsTN
	xUzOhB6I9KdaVV/9nEb5mKP/tdbOo6+4SWM7MNFUM+EwNX0PaFuC8QSqqY4HpgZq+qWkBzfqLJF
	GxP07lTbtU9n9mlnbgBBW3M29QDvmoJSyq+KJUWIvi4MOo3+87i4/wiqyfYFhnOcfsKOaYddKbN
	J01fdl0tE4AoJh/XzQvMDnqgCUPadrv9ITqOI/6ilwcGEoqMbnFPT8wzQ=
X-Received: by 2002:a05:6808:17a1:b0:490:315d:e0d5 with SMTP id 5614622812f47-4ad5b9dbf94mr4510454b6e.16.1785331818689;
        Wed, 29 Jul 2026 06:30:18 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6ef5d650sm1712932b6e.9.2026.07.29.06.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:30:17 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf property
Date: Wed, 29 Jul 2026 07:27:26 -0600
Message-ID: <20260729072727.v3.2.d04a89a3849323a0dcee2c701cba43adbb0523b2@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729132736.3807082-1-sjg@chromium.org>
References: <20260729132736.3807082-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063019_893631_2D9F2AA8 
X-CRM114-Status: UNSURE (   9.61  )
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

Some Rockchip SoCs, such as the RV1106, give each GPIO bank its own
IO control (IOC) register block rather than grouping the registers of
all banks into a shared GRF region. Add an optional rockchip,grf
property to the gpio-bank binding so that each bank node can reference
the syscon for its own IOC block.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v2)

Changes in v2:
- Add new patch for the per-bank IOC reference

 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index bdd83f42615c..774e9c7de606 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -44,6 +44,13 @@ properties:
   power-domains:
     maxItems: 1
 
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node managing the IO control registers
+      of this bank, on SoCs such as the RV1106 where each GPIO bank has
+      its own IOC block.
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

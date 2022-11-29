Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE37C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUFWnQoEEpyqRQBmA6wh+2FbXWaC5ZbE2Zqctxl0yE4=; b=rhetcezht3rWOZ
	xklh7JL0EEqBwfD0BFN/qayDyHlVMyDehHd0lH3k+BLWMV8A/RN26YP279fvpY+P+iNyxNL0M4ySW
	R1D79jt9b9bXGPzwTWpwl8QFUh5GuKHVJs+AiS9jcnmN6lAP72HRAaUqI/GvQ7ZVYVG41hZFMth5i
	7K1eiYEo2EnXOM+gkkUhhv63TNTBtwvIgjwwT9HolOyCBGrdcXK7UvXpXS6YXKLDDjMdBEX4WWceH
	bfLXqZCkzQB6N0IQAkHaXkCtcy5KG+Zubg9qQfMIpb7d757CKfRYYkYuuq/OvZUQaMKr4ZUkpORjM
	lkTHE89waUTKrYuL3Y4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSo-0077gM-GR; Tue, 29 Nov 2022 07:55:34 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvS0-0077F9-Jm
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:54:46 +0000
Received: by mail-pj1-x1032.google.com with SMTP id o12so4070554pjo.4
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5NIkFI1kwIuAqgBdLDYftZkp+cYs7Gl+rkFXhfcDd9E=;
        b=671OaoAhQS6Dwo5rXwzhsZrb9wnzvq8auH+g2vCFikMZNfNmPGJeViiVEy1iBiysvS
         1AwZ9srBxL0jeF74JKR01XfTQfGUlNaytgQhJ9zFNKb4MzaNoIG0RgjR9+jzA4RocMO9
         EDigzpg5Lj2C61PvF2IZDO4yG4xkvtNVRGaNF43I3KeYUHCc6rsQmyCGor/cvRb8Lu7S
         01XPxuATf28et7EJfvbUFe7i2pAS5EjGwf/X0PGeZrU6uEsTS7l3zCBCRMeJG4Hw1cUF
         FlETYQXl/ejRN9n225C6pQV5817GaoEfq5lixg3CZ6mXOJf8UavQduDDx9aMPTF96qWV
         J0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NIkFI1kwIuAqgBdLDYftZkp+cYs7Gl+rkFXhfcDd9E=;
        b=weJE20bb/jRJMol4HMC/bR2pr3BrnljBXuM0o6tHuixfKXvZSNlOTHM010aJgwFoHz
         YJLwSr9Swmc00T4SU7OJI9Z4qk4t6bZpI5FXsB78BovdXnxxaTHtRPHuBpS9c90kMlDl
         jVnvsLalmerjTjlZD4KmvPEeumrXpylCJyLJg4006herYnJ8qjt2S9tn/OqUVQbDYLr8
         I94GlMm0+4UvGVyM308xhnwhNVaqX6MxTv81WdLMh73T3MhiI/DaTN9tAUydq+tSQgSp
         67QKuekDntdrCoAe/myGS9Qwp0yt5m/ZUteve5pm9YpPODWc35KVvr7wYlNLtY81xngc
         4H8A==
X-Gm-Message-State: ANoB5plmforYRU5BiMtcPFGXkew+511N7HT1Uxzyh6cWVuQp0vY4oJAE
	pCTmPytlat5wn0Pi4/Bx4uDqBQ==
X-Google-Smtp-Source: AA0mqf6tHj/JFi5wscb2Ij7FHO0Ur6MXOowSG+cufz0ow97qWTxxagj5+QMSTGxC8iKB0LL/WK4XRg==
X-Received: by 2002:a17:90a:588b:b0:219:c40:e5f with SMTP id j11-20020a17090a588b00b002190c400e5fmr21519016pji.49.1669708480743;
        Mon, 28 Nov 2022 23:54:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:40 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v9 0/8] ARM: Add Rockchip RV1126 support
Date: Tue, 29 Nov 2022 13:24:16 +0530
Message-Id: <20221129075424.189655-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235444_699529_334BB07E 
X-CRM114-Status: GOOD (  11.04  )
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

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v9:
- fix serial2 alias
- collect Krzysztof ack
Changes for v8:
- fix rv1126 dtsi
- remove uart aliases
- add adc node name
- add uart dma-names
- add timer0 node name
Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (8):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  42 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 10 files changed, 1042 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

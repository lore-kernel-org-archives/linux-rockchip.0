Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8D19C43327
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 09:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yG3BPDcTJd0fuzzagMfMrrVWSRO/fyfj3ggVFu59tuU=; b=CqbwklX9+T2Hvn
	+Kq72tQBVCyUTYxRc2x5B7RWvZ6wovYmef9WLsh9RTI78diW+jEQ/0JX2Uyah22ezQcbVXjNTHGRW
	/DmFzOiXxXW7imFbFrim4tEy/rAxI7TL9Jtj3in5ltSyweyGxofrVUXWC7GTYrCoMWiijcKF7G3PM
	rE6tRJ8DNJMCiIHfq5W3vR+J7fnJLbaBSHVzBAQLNHQeHSHo9u3J7tlLxHyXbpV1oYIhzW1diIlPs
	bo3z7xqVeffN2Vly9zO/5gO+0lCsCmc+xTUoHs1TZ+N3uYaSf2CPMwID3H/RZPrL9Lcxt7arv/eQ6
	ClhEAI+p27WTGxHYUctw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPUv-0000000CKp3-3luX;
	Sat, 27 Jun 2026 09:38:49 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPUt-0000000CKnj-1jhd
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 09:38:48 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-30b9e755555so1960024eec.1
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 02:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553126; x=1783157926; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BrzVHDAthuvQX8kZRzEkQTt99BQ7t+ZkrFrff05bWS0=;
        b=pEP7eoNmkoM0jkCDLqH4PedmmrrlbxeWWCNUvagmvyEdNlYuG0WFH7oRjJTE+GYRIL
         XiIK1cejQIIq7qwldQZ6HOy+0P71SUijMfDsMdkSEGIIY659sAZ5Yi9paOrt0TgJ88Uj
         lnIkVCIuYljEQsYDiIlH+Gw5lueLuxZyNTWsVr7S3Xm3PQf4k1fQ8sTyJXJveUfSSYpY
         QjGwmjnZgitx7w9J6SOs3iLzjD5UwFiCWqJugvrTFUSKoy8chYqU2F3HGRlLPE7s0/pu
         4gqiYyanG6i0qkb/k6HtYc8/WQmvEpR2f7YB3wZsNdR6QF13iinZrUBUVg39kHoPWjEc
         1XDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553126; x=1783157926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BrzVHDAthuvQX8kZRzEkQTt99BQ7t+ZkrFrff05bWS0=;
        b=B9D4qW/8jYijF1EoRqah3qo5/7oD7ALjSsfBeRMShc6cspaIsfN+AI58x1t/1GMvUU
         OoMXGCkBkW1iKE55NFZS1RamzkCBO247trrXB4ucwvKvPKkSl3wO/D0MrAIhNNHmAWEB
         o3GEr1QQbJBIu0Is5UJSOkD9uHtP02XWAZ/7v8ec7yP2vMCL5P5+Lo0iXCOscR0d+At0
         Cbkbcho/XLiQBThw3AIlJO8ov0vD4c2wWYVev36jcsdY3/rRJ4g8Q/j0/L6XAQUN6o4A
         cDn6U4TB34hEU7d3fWODUhQ9v2Djf7Lw+6af2wIClsCLo9qVhPtA1YJ0M2ISQheMiTyK
         E+gA==
X-Gm-Message-State: AOJu0YwRmATNyfLF/0hZRdl6Y4XewcXF0xYvT3iLf+2UqwaMzQRGQ3lF
	qDBXaacGD222LlwB5LJPbO6Fng3pJ5JBqRFE6Kwy+cbxFAvXwdEJc6D/ANux0OxX
X-Gm-Gg: AfdE7clvNYyTAZtB4ouLvpn7T36PAE/8MGII7C1RTmZHZF+s/wsQ2Kw8X5Dz+i5/L18
	bA188KqZCKcDgf6SETeBnZSQCesQg8W5cnQklwsV/bSu5sq0mBU5z31wHONkUayZbT08jWc961i
	ObqfAvFyDuTzWeqBDIJKOiX3eIvrpGVg6K0v87nyurF/v3gKxrCKBwwYov02QeHdf8rP1401iwN
	qrk+IIRFzDhcusy+OmSn6yzBxJ162qwc1Y/WjOBLlRdK4PAIEKnTnJoa+SMXJv2mVq0LUs86FNd
	yi9PetmzpFe+tGKjsCDHYaQQGwNdpdBcPXWdy5qd5V53aFl0q/daTVIuomx4jhTydxBsgzcnLSC
	frekNn9j/bcSx/Xp2mfAm248jaw43I9LvOeuNo9ZxqSP38xNz5IkdcrZbNbwPuNYFOp23T98gGr
	IeQSnO/lDDxI5MmNHyeD0=
X-Received: by 2002:a05:7300:748d:b0:30c:ab4f:46c4 with SMTP id 5a478bee46e88-30cab4f495cmr3536469eec.42.1782553125976;
        Sat, 27 Jun 2026 02:38:45 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30cf86deed5sm4902948eec.1.2026.06.27.02.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:38:45 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Sat, 27 Jun 2026 15:08:28 +0530
Message-ID: <20260627093831.80495-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_023847_444566_C4EA64DD 
X-CRM114-Status: GOOD (  10.45  )
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

This patch series adds device tree support for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

The Vaaman2 board features include:
- RK3588 SoC
- eMMC storage and microSD support
- RK806 PMIC and multiple RK8602/RK8603 regulators
- Real-time clock and status LED
- UART serial console and SARADC

Note: This series was generated on top of the pending Vicharak Axon
board support patches (v7) and includes the Axon entry in the context
of the YAML binding patch.

Patch 1 adds the binding documentation for the Vaaman2 board.
Patch 2 adds the actual device tree file and Makefile entry.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman2
  arm64: dts: rockchip: Add Vicharak Vaaman2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-vaaman2.dts  | 547 ++++++++++++++++++
 3 files changed, 553 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-vaaman2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

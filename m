Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B732AC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qgp3PwAGRELb5HVXB9WQoq5X4USGKo5xexQz7yuVQTw=; b=Hm4wouC/3L774s
	AKuLi4Ce7z+4xECeQbSIk7UGPxSXFO4q9aT/gR8yjaR+uZHn5UqEeAKOLmFqZv/QvvwAYjhmBUEcw
	L/l32kGtuC2SP8nRcT3F1MZUSf8QdaMGLdHJ+VqoeD4jTE+hEsMipHMu2UbqNCiKyYgy3QKr+vtCT
	niSOGxjxgyXi9Kx6LWmmx6rs7Bpssr9nd5GzPX/yzYkX3k6JoDhf/STQQKmpoGaztmiFduOo6Spo3
	Pfb1Z2deg93aP9TMspjKcTKfRuQXKUStWrJgFtZOy7l9XoQ5cUl7KMGeP177S6VauWfIhDXoQFFPT
	6Qzi9bTuPFXvk070vIlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGwo-007g0M-0a; Tue, 10 Jan 2023 15:53:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGvu-007fTb-Fk; Tue, 10 Jan 2023 15:53:05 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 833A46602D7A;
	Tue, 10 Jan 2023 15:52:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673365978;
	bh=QDuyf38Oqke8IgF/faokU9uSTYIflOgXhdQ7mVSUydw=;
	h=From:To:Cc:Subject:Date:From;
	b=jd//KDqx+xqNJ8IetiktzpJ/OoDun7GC3IxLwV5kThxQH/tWTIg3PUSS/Fp3Z+36r
	 jvahuYcAXNwIdWFe7IVC1rkTg0qrvuScXGiBnlYY4PYINTz5jk5x46jcRyHPdYStIg
	 6KEE6hxoOkfGqWZxSxnGDAQU/KHSIoWY6xG7gnnt4sCoku1vBl+szjrIgL620Zxu3z
	 JmA75wABhlq0A02akWLUtMCXT1nt8xRrDsfVLGW0Xnr+Tg3TTlebPrF2UgtqB9M0O+
	 a+QWx5PW442zAcT+ceXROl1pX/UgZZOSnOtVs77KdjdJ7UthmkhWPdB3GKZ7WE7MV/
	 LpNPr0/hDy0eQ==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v1 0/3] Update eMMC alias for Radxa ROCK 5 Model A and Model B DTS
Date: Tue, 10 Jan 2023 15:52:49 +0000
Message-Id: <20230110155252.189300-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075302_779823_6DCF0BB8 
X-CRM114-Status: GOOD (  11.06  )
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

The MMC aliases for the Radxa ROCK 5 Model A and Model B do not match the other
Rockchip devices: mmc0 is usually the eMMC. In the initial devicetree series,
I incorrectly set the alias for the eMMC to mmc1 to match the vendor kernel.

Update the alias for the eMMC to mmc0 to better match other Rockchip devices.

While we are here, remove an empty line to keep good style across the tree.

Christopher Obbard (3):
  arm64: dts: rockchip: Update sdhci alias for rock-5a
  arm64: dts: rockchip: Remove empty line from rock-5a
  arm64: dts: rockchip: Update sdhci alias for rock-5b

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

--
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

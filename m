Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959B4C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 18:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RI640+SNJ/zxqqOMiVIZumMwJDzseTLGmylTX0p8xv8=; b=I3K5Lml7ve/K/7
	c6F3Ue6HN0wKmRec3MaZ07tFoi6Xz7TqfSSvwCVJ2GASEgjxDj+Xvoq+zqeimw7Xf7tQBRmYqq3Gb
	oxjw/zkVnKd5A4PtLO1v1Bq/8KufpZOPxNhjRm8LqMFtBY9Yjp3DAja75Z/WNMtm08VuFxS8/x8TP
	olT4NNMmLP15zxGwU8Gx3I1lcPLN+T/y4lyZjLYS/MeP4VkOmSzvJRmKXccLLjwkq4GqP9+9gTmnW
	a7+6xQW1si9K+MKp7rqEzIUxhI8LRBRfqJpGovFn120o+HLOHVt/Vl0UPozkltUnZtNfBlnuLXtEq
	nJn9AZE6wJppUvDRmb9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCJ1-0067jg-0P;
	Wed, 19 Apr 2023 18:13:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCIw-0067hq-2v;
	Wed, 19 Apr 2023 18:13:20 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C03436603252;
	Wed, 19 Apr 2023 19:13:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681927993;
	bh=5wpEqApFj1eBs4XebojD3UFFhW8LqZtfNsukti4eYVw=;
	h=From:To:Cc:Subject:Date:From;
	b=f4q/WG/Xw2/G/I+j2N7iQoS3HKjpqf7X1jlqefn7/IXVL6bnt30k0+o9D8gN/CW0w
	 xSTD9XtpZ2G1vE2Jdyh+5H2KXEE5e2yfEF+3VGnEyP+sH3CR5gzdGaYFLBK+hMDZCP
	 KkCGSw5L8qSy00WRUCahRTGilVjBs2XqjXKox7S/D87TXxFttXwWqS8bxv1uYkmAQx
	 ys9+r+Q8CUVXa8pEZWuroYPIifiIGwbQFx5OUfhXcKb99UtvpUEUkbzjS0+cdYmlj/
	 xQWBmlVMg500CETIe3uF1ufZqD+nXkU4tB95pLJUYwpyRcny95cT2uTLZ7rHzyYJg1
	 +v1wWqAvTHeOQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v3 0/3] Enable rk3588 timer support
Date: Wed, 19 Apr 2023 21:13:06 +0300
Message-Id: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_111319_180442_1982ED1A 
X-CRM114-Status: GOOD (  10.97  )
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

This patchset enables Rockchip RK3588/RK3588S SoC timer support.
While here, it also handles a minor DT binding issue related to RK3288.

Changes in v3:
 - Updated commit description in patch 1, per Krzysztof's review
 - Added Acked-by tag from Krzysztof in patch 2
 - v2: https://lore.kernel.org/lkml/20230418120624.284551-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Added Reviewed-by tag from Heiko in patches 1 & 2
 - Update patch 3 according to Johan's review
 - v1: https://lore.kernel.org/lkml/20230418095344.274025-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (3):
  dt-bindings: timer: rockchip: Drop superfluous rk3288 compatible
  dt-bindings: timer: rockchip: Add rk3588 compatible
  arm64: dts: rockchip: Add rk3588 timer

 .../devicetree/bindings/timer/rockchip,rk-timer.yaml      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi                 | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

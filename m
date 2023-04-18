Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8C5C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 12:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4CPk5pxu6YRpxSy6CVVE5QTKU8mS0xnGCw15rQEp4ec=; b=zCnAwG8MIy/61E
	aTh8LvpAF30S1BritjKkDrGzKgz8UJZGvUypYFzBDk3yHPUk8Bb0trAqyDbfbJuGjgORFPt+e4NhR
	/zqahhyAc2K+12jTy1VPfYx3/GKRbwX1vj5N1BpJGDN2jZk+pOKzoOCJLgSH0697lk8prwAFj7bvv
	35HHwPULGR8lTx8cFdk9OjK25MXWsb804yX0POdwEjye0qCc0pzBcjIk1B/3uBMGxhFdchTMVDKgp
	a1bGAWDjosWaianbR3LMUe2QakfP60yOJCbpoZQapoUJX3ytQ+NCNp1Qkg4I7yq5VvBcRqlIzIIyT
	oc7UeTK+nxm4JskC+81w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6T-0023Mv-36;
	Tue, 18 Apr 2023 12:06:33 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6P-0023MF-28;
	Tue, 18 Apr 2023 12:06:31 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C79186603209;
	Tue, 18 Apr 2023 13:06:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681819588;
	bh=tJgoMLwBFMDeUtr+ce6sC2ho7NX0/2M9/f1JuAgy9LQ=;
	h=From:To:Cc:Subject:Date:From;
	b=PldcmqM1rs5QIQoOxn8a4MsWTtJmOMGQ26zKKktdunZOKdmV2wmGCeCZW8ABafwOs
	 EfHDzW3GGLhRRGGsgCHKm9oo5g24iXy9RZFVTfxaSvoVMaQ0B6qDqnN1O27XOys+0l
	 ysIWT26xmYkqdym5MxlSnRC9zK6P21E0Yzdt69gBXEYMK+NIKFT23WZD310glWYVjt
	 ST4HmHIja/0d3wAuD4Er8SXbrzcwowsKeo5N3dObjnDYSFHgLMABfZ01wsOUwIIBKy
	 OeakzAkjkghVcqs3zkhNPPwYwPQ4XuMKlaDKncd/m8O+LGt98rFGBw20lS87dMFbgm
	 itm1LtvVJkdYQ==
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
Subject: [PATCH v2 0/3] Enable rk3588 timer support
Date: Tue, 18 Apr 2023 15:06:21 +0300
Message-Id: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_050629_847338_3E6CC50F 
X-CRM114-Status: UNSURE (   9.95  )
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

This patchset enables Rockchip RK3588/RK3588S SoC timer support.
While here, it also handles a minor DT binding issue related to RK3288.

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

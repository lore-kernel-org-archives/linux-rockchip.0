Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B1CC54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiaLraM5l2fVU3l338+27qWj8v1Qd/ZlAvzCN+XGcXE=; b=ULrzYJYNUdzk3o
	ZCkVoUYy3N8dJQAmEC6MGrRtiJATflNpPiTpSBXA5uenW66HYyS+jWtFr0N1sGeziDT0KWheNroWw
	rXFRKLdPiQqzK66Mp+zd6YkVKw4DHHvvD/NgjWMa7n+bc/W5U7XbRlbnSTiAiuLb/RWbfrllWlJfh
	UnLHASrnayt9ICozEwGGE5kayl/t14Iiryhm3nBr+ztCB5b2uF25Eglc0NkLR8sYCtIlPG29Q6sid
	hCC0XzDIwYgyzAVg8aXyfEqrqV31v18IUAkv1nFbLVAIjN6jvp61fzthWLFPBQAgKAXTt2xHjh1A9
	KCOa4ycVdnFcgQQFaRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romPs-00000000Xdd-2Nwm;
	Mon, 25 Mar 2024 15:39:16 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romPm-00000000Xax-3Xsa
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711381148;
	bh=eDSWSlvCFCBCqyz3tM1ndbJv6u/boDrdUsa0Ff2ETvw=;
	h=From:To:Cc:Subject:Date:From;
	b=wJ3Mm+NCKbuphV/C/MRynrkovxSVrxe8f1FZnRmKED8N2GsnZXIOGlGu4Ux+DZZNV
	 JTFIpWrqSNYQJFWZhvSYajh6iTFR9sNViWTrCkEidiTzf/c1w5z2cVAMl2WhNPu6Yb
	 o+Dac1r4VOnEQbGl27HHiqEn4yORL+BbP5Au+1VKGbyfGnyPUmmehAacuUU5sQItZi
	 R1T4gbmt8NT+VQ7NQ31aq1lEtlm+LcwheSDT5xBQm8z63EUhGc2yfuYx2wn2OyEPNd
	 N2P1ntytpcjihj85j1zV5qIOcPYe3IvN1wWfuYcfSlADxgH8cJc+4C5yo/1OvxtgB4
	 H4txtPW40J57w==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DADF937820D9;
	Mon, 25 Mar 2024 15:39:07 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6E7C84800CD; Mon, 25 Mar 2024 16:39:07 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/4] RK3588 GPU support
Date: Mon, 25 Mar 2024 16:37:17 +0100
Message-ID: <20240325153850.189128-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_083911_541167_7B3195B6 
X-CRM114-Status: UNSURE (   9.30  )
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

Hi,

Panthor has landed in drm-misc-next including the DT bindings, so
let's add the necessary DT changes to support the GPU on RK3588.
This adds support at SoC level and support for the EVB1 as well as
the Rock 5B, which covers both variants found in RK3588 boards:

1. Having dedicated regulators for GPU core and GPU memory. This is
   handled by coupling both regulators.
2. Having a shared regulator for GPU core and GPU memory.

I prepared a branch with just the GPU DT changes (and the panthor driver
changes) based on Heiko's for-next branch:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-gpu

Greetings,

-- Sebastian

Boris Brezillon (3):
  arm64: dts: rockchip: rk3588: Add GPU nodes
  arm64: dts: rockchip: rk3588-rock5b: Enable GPU
  arm64: dts: rockchip: rk3588-evb1: Enable GPU

Sebastian Reichel (1):
  arm64: defconfig: support Mali CSF-based GPUs

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 12 ++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  6 ++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 56 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 4 files changed, 75 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

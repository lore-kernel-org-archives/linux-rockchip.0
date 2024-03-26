Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF7ACD11DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hk2eGkIsfBJstzO1CnREILqD17GGbN7pqW9GaMR4Hlk=; b=a4FGlwrH4AeTLO
	O6kRgs5jBkAI+GCdbRs4ZyxmI2oOjVueQKtRxU28UlGQlngq2Ompy+REl0ZsQ1HMzeGpHXQtsWLPg
	X9EEUXRvd9/YHelXUKf+z3BW2FDPteXElU/NvEkqBTYHZsRbQS0obEw05v8cAYI8QKxJN6wniXFvm
	zxhtSxLXWhwqXpv4l1KX165iJ7SE7ZTXvn5UeutfhsdcFsJ/749IDyEz7fENr7h9eTtTVux1SP121
	+4y5Qug+daFR39wzC7Fex6028LBHksAlq1/RZqhKkMcppZh+kZfy5pURjaz4HIQh3YBvcszrHSWES
	6ID5B60p4NjhIzRn0wTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2W-00000005aHJ-2yB9;
	Tue, 26 Mar 2024 16:52:44 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2P-00000005aD2-3EkV
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 16:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=nSq4r4RjZUrOs5YaJtXgzlCcDxFx7tzP4v13Qcx6tx0=;
	h=From:To:Cc:Subject:Date:From;
	b=X6UxlCv/gMLrh81SBwmVexV45x4sbYNlTNqsCcTuzTw22jN4JyCQEDouBR8dl8IIZ
	 PYogZy++HKCN7tLFAsAYE4d9TUEWZyCM2aT5TLcEkwL9H7dLEvyDXs2I5PFOjRONhN
	 IRrwPloXlPs81ae1Px7SDcHHauT9uHFu/SwyeqhKB1VHD5UvevcNbosOkh+4pSm72t
	 W3Mga5EA9ZUuR2zLAo8XfrIfS0eUQmn5vq/BxI26T4JAhCCkBojVxA2OSGptnEdJPm
	 28kitJIB75lFndepd5q8p5L26OfHSb2ye0QikIS7F9ZZvJ1Whg0wSbMPc8C9VkfEJA
	 djMhOPc2D9QBA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 69B8F378203E;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 106E94800CD; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
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
Subject: [PATCH v2 0/4] RK3588 GPU support
Date: Tue, 26 Mar 2024 17:52:04 +0100
Message-ID: <20240326165232.73585-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_095238_183106_DD4967CD 
X-CRM114-Status: GOOD (  11.66  )
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

Panthor has landed in linux-next including the DT bindings, so it is
time to add the necessary DT changes to support the GPU on RK3588.
This adds support at SoC level and support for the EVB1 as well as
the Rock 5B, which covers both variants found in RK3588 boards:

1. Having dedicated regulators for GPU core and GPU memory. This
   is handled by coupling both regulators.
2. Having a shared regulator for GPU core and GPU memory.

I prepared a branch with the GPU DT changes (and the panthor driver
changes for testing, consdering they do not clash) based on Heiko's
for-next branch:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-gpu

Changes since PATCHv1:
 - https://lore.kernel.org/all/20240325153850.189128-1-sebastian.reichel@collabora.com/
 - remove always-on from the GPU regulator in the Rock 5B patch
 - add comment to the always-on for the GPU regulators in the EVB1 patch
 - add explanation for the always-on in the EVB1 commit description

Greetings,

-- Sebastian

Boris Brezillon (3):
  arm64: dts: rockchip: rk3588: Add GPU nodes
  arm64: dts: rockchip: rk3588-rock5b: Enable GPU
  arm64: dts: rockchip: rk3588-evb1: Enable GPU

Sebastian Reichel (1):
  arm64: defconfig: support Mali CSF-based GPUs

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 14 +++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  5 ++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 56 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 4 files changed, 76 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

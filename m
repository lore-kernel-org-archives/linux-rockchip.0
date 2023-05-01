Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DEADC77B73
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OhW/zkMDr0z6QiWaoCUUnLIxJCQ4g/gNMHf3k/Z+iSk=; b=bPdimXl9lba683
	ixROTFtN5dgNEmRAs96gUatL3YPzhoMxY/gr7kpPZ++bdwJO2vrUQr9PBNi6fY1FHhXNdtmObsXw7
	yv90h3oGIArf8Li4M34RJSQvdMgsOrGKvgB6If2O17rcRRVkaxx6rEf7vtxSKPk+IangRF0Sj91Y5
	N4sI3WLv6yc7MtpepT18lvkGJ8C9BrSFk1UQGFQYJGrSQcb7r4WZT8thcPG0arhwHOU7yzC/Q9MR6
	MWJN2528SZPE66IHPCBKU4cVmY9icrMjTqQYrRNh4cZFHZ2mw5N+DkCBPFQef8pc76LTu6SNC21Ul
	kJmRq5Ozi0HgP6Y8j7iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8l-00FT1Q-0k;
	Mon, 01 May 2023 08:44:11 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8h-00FT0O-25;
	Mon, 01 May 2023 08:44:09 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 34CD16602F6A;
	Mon,  1 May 2023 09:44:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930644;
	bh=WmZbj+7p52spdKhp6FKYvpWDarz0ByKdPc4ZP68owZw=;
	h=From:To:Cc:Subject:Date:From;
	b=DYaGZRtUwGtlnTjQ30D05KiBQXkYdm5wWE14E1kMe3NagxEikuNBVgE5MCK5z+sLx
	 hX3sXlrY+H1Xh5JHKYQVmjOAaparQ5GWVFVOCh+vQSNqyuczP5EOqF5DCSBQPY3vx8
	 Pd0wKZSppy6OiWbjbJhnhqmpvzGfa/BdUgXexDC+EELUSOUjBVw5R/McXGC1QG2I7t
	 n0auLBIUZWAXIUyQfkhDGzL+oopVFH2A0YEMPQiA+qKhjwqs/tUZxOG/XkBJ/njkCn
	 F7DsbLcpgKa+xIzXN1ztxOE2yILLRC+udrbBx+1d+b1oElLzz5dYticlYPNKBFr9d9
	 Pf0KBChzzvokA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 0/8] Add RK3588 OTP memory support
Date: Mon,  1 May 2023 11:43:52 +0300
Message-Id: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014407_859874_16FE840F 
X-CRM114-Status: GOOD (  10.51  )
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

This patch series adds OTP memory support for Rockchip RK3588 SoC, 
while also providing a few improvements to the existing rockchip-otp 
driver, in addition to converting the bindings to dt-schema.

Cristian Ciocaltea (8):
  dt-bindings: nvmem: Convert rockchip-otp.txt to dt-schema
  dt-bindings: nvmem: rockchip-otp: Add compatible for RK3588
  nvmem: rockchip-otp: Add clocks and reg_read to rockchip_data
  nvmem: rockchip-otp: Generalize rockchip_otp_wait_status()
  nvmem: rockchip-otp: Use devm_reset_control_array_get_exclusive()
  nvmem: rockchip-otp: Improve probe error handling
  nvmem: rockchip-otp: Add support for RK3588
  arm64: dts: rockchip: Add rk3588 OTP node

 .../bindings/nvmem/rockchip-otp.txt           |  25 ---
 .../bindings/nvmem/rockchip-otp.yaml          | 132 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  54 +++++
 drivers/nvmem/rockchip-otp.c                  | 191 +++++++++++++-----
 4 files changed, 330 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

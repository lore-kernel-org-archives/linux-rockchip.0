Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1246A106ACF1
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 21:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2c3dIuS72nmpxyKS2zRmrIhhPuRFSK0bAMvYnPnZQAA=; b=bCTYeq74RSVUGy
	cn8TN4lktaLW2fB8/LHTHK1VEUCbHuG799qC/+6gBxbxfNCfvTr/MpC72XRXmlqy6tpYH2jLEYeQ4
	oLaPtpp8IPRNiPatzeJyX5tSI3YcE8F8By2HDJ61ztgIcwtIg+SKXn+7qQe7YeGooT+h09PVVXK4H
	mTmWXL9Pl7MT6F8d+BgXuk6P7r+u8ai/RMC6cNQNY2jVm2eqzyGoScQYid56c1aX77CYVEDkB5YHU
	zMw81SwSuaasWdCazWXouMhbmupEJ/lY8FGnwtDAYcX7bvo6gpDqEFYFrFXU1xQMUop3Ar8Z4rs+2
	ZjbNMU8gPqTafkUZzQoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ncE-0000000FTOu-3o4z;
	Thu, 12 Mar 2026 21:30:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0nc5-0000000FTJE-2AaY;
	Thu, 12 Mar 2026 21:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=19Gb4bugpV46RcZJbR9bQHqCRWA6pkeJmJLcmADrwgY=; b=VO0ch5klrdgf1zkK1HWLFnO4rD
	CeVBFPLLdc1Pg9R7jka36JReUm+di2qPH/xMsnlMQpSLCvktGAcy2Y85jiROi/SKHwDok4a8kdIhq
	sWqbmjjWDrwzT9TkVcyYvRc3rSkjaTGaSJw+2Xnr6AS3R2MFlrLSHdKgrJdGCTcghpJEmCpxKC080
	PKrDo3boAovq+lyz3GwGoM/+3bYkqf/lM1ZLJ0OjuguDEMbkmtFYJlwfQQ0G5D91ucQOvrrJgHHa4
	pg5gMlfLqa+xnj0HVnXFJejsQ0WsOh+LnVE4UC0XS+osjyGV9zGhwl4Px/XL7XFvSLwyMnvRuyOF8
	TvOXYLiA==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH v2 0/3] Add devicetree nodes for RK3528, RK3562 and RK356x
Date: Thu, 12 Mar 2026 22:30:16 +0100
Message-ID: <20260312213019.13965-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_143037_553179_AE3BD66C 
X-CRM114-Status: UNSURE (   8.32  )
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

This is a companion series to the binding+driver changes [0], that adds
the relevant OTP controller nodes to the core SoC devicetrees.

[0] https://lore.kernel.org/linux-rockchip/20260205211901.490181-1-heiko@sntech.de/T/#t

changes in v2:
- rename node-names to be efuse@... following the dt-specfication
  2.2.2. Generic Names Recommendation

Heiko Stuebner (2):
  arm64: dts: rockchip: Enable OTP controller for RK3562
  arm64: dts: rockchip: Enable OTP controller for RK356x

Jonas Karlman (1):
  arm64: dts: rockchip: Enable OTP controller for RK3528

 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 47 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3562.dtsi      | 46 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 46 ++++++++++++++++++
 3 files changed, 139 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

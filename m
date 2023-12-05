Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 795FDC10F05
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 16:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qCUIFAdOSsKYGEWuvY/IQCGVJp+4N1QeU66YGFJc+/w=; b=Rx/y4Sg2k8jgAP
	6WIhFkMz4IZkpDzfuG6WlWRw01JDwHftm4s+urCJZp9B7ArIF9Pc9Gk40IaEDK5PZwsc+/0HmJP6T
	eTOLk+h/Mne8c5Chr5oR4OanQWMbUl70roGf80yXVzk0LPHl6WFp/UBZoAARP8t3oLcoLj5eUcWVN
	iCVwtLEJBwyFrfttlVyvltY94sxjWiwsn6Xr3i3kjglxUBf7ZAAXMG29c7XtNf3JJ5RbaZP08DL2j
	jqyWuU8eNDerIxvkab1rjR9hKOTtCQi2D7O+3S3V7spFRLil2nl6NcnJ2wL1YftafxL0OlO5BAl4y
	NdzP1tZcy2CW0Oy2c5vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbP-007ugh-03;
	Tue, 05 Dec 2023 16:48:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbN-007ufb-1O;
	Tue, 05 Dec 2023 16:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=tlfoQ04ab9alk0muCDzVp2WAUegWRoJKJTnmFBaLybg=; b=oRg/D9/2NKfm/+/6godHWFOJ9u
	SHZNlsX9K68Fbmn2htBe6jAAoKlMXWz7lO2rk6CSjNsv02yGfoKJ+3z2J/bybSENrXpQEJKU8srwe
	xAvFM5XUIAg0V6k/4WQow3G3LCpAutaSdtrjjZr181lthMCJLTuk6npH2NARDgI2Di4x/4BMI9sl1
	MtGMOy7DKT6d3UuJnt9Ln2EpjQNQtMd7I1WQwkhZAfzLvHTXydym8GZgfXfn85ApDSA5Zl1rq1zCQ
	5QKcMUXcmH40CPj5Ya3dyw6v8lca/qvn/h5EWrYV8EgcSfOKcUBV+uTccNbvZJR6sfvbMIPCmepwy
	GoVhXO7w==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbI-004oHY-0J;
	Tue, 05 Dec 2023 16:48:50 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAYbE-00014D-6m; Tue, 05 Dec 2023 17:48:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	dsimic@manjaro.org,
	didi.debian@cknow.org
Subject: [PATCH v2 0/4] arm64: dts: rockchip: aliases for core busses in main dtsi
Date: Tue,  5 Dec 2023 17:48:38 +0100
Message-Id: <20231205164842.556684-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_164848_322058_D6260254 
X-CRM114-Status: UNSURE (   9.54  )
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

Placement of aliases is cause for a lot of discussion :-).
Most recently in [0]. And while devices such as mmc controllers do have
names not following any numbers, this is different for the core
busses/devices like serial, i2c, gpio, spi.

All of those start at number 0 and increment then. And all pieces of
documentation like soc manuals, device schematics as well as pin-header
descriptions for SBCs also use these numbers to identify the controller
instance.

All previous Rockchip socs also carry those core busses in the main dtsi
so that not every board needs to have the exact same aliases defined.

changes in v2:
- reword commit messages to make move vs define explicti (Diederik)
- add review from Dragan

[0] https://lore.kernel.org/all/4762834.KRxA6XjA2N@diego/

Heiko Stuebner (4):
  arm64: dts: rockchip: move rk3588 serial aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 i2c aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 spi aliases to soc dtsi

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  4 ---
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  4 ---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  1 -
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    |  1 -
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |  1 -
 .../boot/dts/rockchip/rk3588-quartzpro64.dts  |  1 -
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  1 -
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  |  2 --
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |  1 -
 .../dts/rockchip/rk3588s-khadas-edge2.dts     |  1 -
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  1 -
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 32 +++++++++++++++++++
 13 files changed, 32 insertions(+), 19 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

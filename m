Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93038E6F07E
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Nov 2024 03:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s7lyC1vGEd702/0faBBc8PmsAlXVPPMT2cmq2c/3d2U=; b=bo1FP6MwQ27VPP
	TSYc5TdVXvHZdt3Yg0/vFuQ28KyA/nYLTevKZmXDLNjGSUS3p7JAySmVZIkE+2ABcFf06OcW8BCM0
	qV1doBgZuAFazmK2E2MAxj+HDFfJuVta+SkSHZRpjxhxMiuePpUb6b1BKG/Z9ALiwxU7WSfc9Nnza
	Gx1MV33zLCC8npVAfBN2P7OzgSQcLDSx1tdeUvnuxbabPEspBj/p12FRg5phI+aWMBJN9jggWT7gy
	0r6Pyb43J1JuLHhtpSaTQZUBJK2Tro4e4sUebFKhwhZ2BdO5VK/5b0hmkSw6Qw5MvfaLRvrDbupg+
	4+mkKWyZKGZMY3lOqEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t74Xh-00000008vhu-3BJA;
	Sat, 02 Nov 2024 03:11:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t74Vz-00000008vSu-3MnD;
	Sat, 02 Nov 2024 03:09:29 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1730516957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IokIVkNSt4ES1wovgJeW/dP40rMHM/y+rSgYmJiJZ6M=;
	b=gzNQWntGZCnSbVnelnFmAvF805b20plMmapOhEpoDjoxcpPEcyMhdwhvA95oHDP1rDH2Ok
	smqsBFfs0okEel18dHG+mOuTfYUmDGrZJK0Bj5CCToG3WiQZ9KTlMlewB1+4Cr2jH/tz5N
	Pcx2aK88jVJ5mYhF2aDJ1q1c3l0xIxGfpwoGdnNYcWZ//HncPqULx2AOl61Zi+7SttR+Tw
	G0fKR7JRxujD2JRe20oe9ITFLv2uo/s8xZUvAuMYG0zskdU6PgTyAxpldsvy7lgreODW2g
	vtmeG3TyWFj80Akd7ah3lhMpc78be+Z3DWBwpJUDyF4GB9ZFx8Ew36RhCBEWQg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	didi.debian@cknow.org
Subject: [PATCH v2 0/3] Update, encapsulate and expand the RK356x SoC dtsi files
Date: Sat,  2 Nov 2024 04:08:58 +0100
Message-Id: <cover.1730516702.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_200928_160986_723FE42A 
X-CRM114-Status: GOOD (  14.35  )
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

This series tackles the Rockchip RK356x SoC dtsi files in a few different
ways.  First, it updates the lower and upper voltage limits and the exact
voltages for the Rockchip RK356x CPU OPPs, using the most conservative
per-OPP values for different SoC bins.  This is rather similar to the
already performed adjustment of the GPU OPP voltages. [1]

Next, this series prepares the RK356x SoC dtsi files for per-variant OPPs,
with the RK3566T being the first new RK356x SoC variant to be introduced.
This follows the approach used for the RK3588 SoC variants. [2]

Lastly, this series introduces new SoC dtsi for the RK3566T variant, which
is capable of operating at the CPU and GPU OPPs/frequencies lower than the
"full-fat" RK3566 variant's.  The RK3566T is found on some of the already
supported boards and rather importantly, this stops the CPU cores and the
GPU from being overclocked on these boards.

Changes in v2:
  - Improved the wording of the patch 3/3 description, to make it more
    clear which of the mentioned RK3566T-based SBCs are already supported
  - Renumbered the references in patch 3/3, so their numbering follows
    the order in which the references appear in the patch description
  - Adjusted the patch generation options passed to git-format-patch(1),
    to make the patch 2/3 a bit more readable, [3] and added a note about
    the git-log(1) options to the description of patch 2/3
  - No changes to the actual patches are introduced

Link to v1: https://lore.kernel.org/linux-rockchip/cover.1728752527.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-rockchip/cover.1719763100.git.dsimic@manjaro.org/T/#m786f0e0a45377d29aea826f05c95b5052a8bb3d9
[2] https://lore.kernel.org/all/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/T/#u
[3] https://lore.kernel.org/linux-rockchip/D4ZZFL98AMFI.1TDPL2DJPSQ3D@cknow.org/

Dragan Simic (3):
  arm64: dts: rockchip: Update CPU OPP voltages in RK356x SoC dtsi
  arm64: dts: rockchip: Prepare RK356x SoC dtsi files for per-variant
    OPPs
  arm64: dts: rockchip: Add new SoC dtsi for the RK3566T variant

 .../{rk3566.dtsi => rk3566-base.dtsi}         |   2 +-
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |   2 +-
 .../boot/dts/rockchip/rk3566-rock-3c.dts      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 142 +++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3566t.dtsi     |  90 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 113 +++++++++++++-
 .../{rk356x.dtsi => rk356x-base.dtsi}         |  81 ----------
 7 files changed, 307 insertions(+), 125 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3566.dtsi => rk3566-base.dtsi} (95%)
 rewrite arch/arm64/boot/dts/rockchip/rk3566.dtsi (87%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi
 rename arch/arm64/boot/dts/rockchip/{rk356x.dtsi => rk356x-base.dtsi} (96%)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

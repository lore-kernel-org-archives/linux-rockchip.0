Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA27C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 07:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j6/nsEiMfE2PBpqBh/rp5wAS1ijkCL4jdY6yQ0q0wnE=; b=eTM2NEyvXSya6c
	0EvOHyrJlTDwQO8G4mJNfWxWvRqVkUKkElkwRlhuqEySLYrjvHhwODAS46hYTZRGSiSqH8QG324IQ
	DNblYkmjSBT0p6FZKZQiQlSJuXyVGUs2Mo5DVzoK2PzVDe4qJepBCA2SoQCqFtCirIwTfN40vEehI
	6m+gHu1UWr1BSEp4FP/QvNH2YADhWl9a60/REBwYj9jkPtMd7JRIcOe4dfYJiZMVZ0o0dP5iXZTnI
	L33AgHfIndRfAbm4S843Bhwo0/7vrXtDKTjAWj81OAhq3RSmiF1SScxwFHj25KVSSWW4uCFpis0CO
	ZvNQOFyPQLB4bIi9jTcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxai-00Axjl-1U;
	Tue, 12 Dec 2023 07:54:08 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxac-00AxhH-22;
	Tue, 12 Dec 2023 07:54:04 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GQ4f8+gg0gRtP47ZKqPupgOZu+elqk+j6WeCTAxMuhk=;
	b=NH8DvxEXuWGrv9wFR0S1uzf2/1eBmqolKzGyLH9P/f80ijf3FEBl+DSrMYDp51+e7/5oIa
	lcdc0K9b0Q1RmC7rQDVxYo6/T0vOT2hj02BQZ8KqpLY4ONCbKxXxQwSq9ESM1zLb3YaVbk
	VOOp5Mh8YsQpCR8joUDg6JICyhyVZ/5unyXj8jS57NxVXx6jHyad1xTBI3TTVgpBhym62N
	pXjaEx0JxFXyRWhv+y+hBWFijXcQTC0fiIs+oz5MoJIuNYiPeRC9PBr5ea3IB5B5S9Kaoh
	zfbCmux0Zf2vGHORazWuTFwbrJvujMt1hhE314zg18ZmjwchaUwat7PqCg5VIA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for RK3399, RK3368, RK3328 and PX30
Date: Tue, 12 Dec 2023 08:53:47 +0100
Message-Id: <cover.1702366958.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_235403_201470_35017DD9 
X-CRM114-Status: UNSURE (   9.23  )
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

Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs and
datasheets define no numbering for the built-in GMAC(s) or MAC(s), if there
are more than one found in the particular Rockchip SoC.

Moreover, not all boards or devices based on these SoCs actually use the
built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases from
the SoC dtsi files and add them back to the appropriate board and device
dts(i) files.  See also [1] for the initial discussion.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

The correctness of the patches in this series was verified by comparing the
contents of the compiled dtb files before and after applying the patches.
All of the affected dtb files checked out fine.

[1] https://lore.kernel.org/linux-rockchip/5119280.687JKscXgg@diego/T/#u

Dragan Simic (4):
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    RK3399
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    RK3368
  arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for
    RK3328
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    PX30

 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi       | 1 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts                   | 1 +
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts       | 1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi                      | 1 -
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts                  | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts           | 2 ++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                    | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi                | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi               | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi                    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts               | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts       | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi               | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts        | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi       | 1 +
 38 files changed, 44 insertions(+), 5 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

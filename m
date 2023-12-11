Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31CD8C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 10:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7+bhAUr5JwMGRapuUJWblY4SfeZy1kJJf6G/ymY8DXo=; b=qzdezFlzlRdRmf
	QA55D9azpEmXdso4m5h97JccnuZbR0mfV0I5Qw3dPsDHWp0F0T3zaU7ttGN4so4EFxNJwrWrp3vEG
	/K4FiEqO9Blpp4mjPKmkARer+4flWOOc2JEkfxA5MgJzfHylRpIi36kW05GAn643Kt4I4uk8T8c4E
	2WsPLGav2aFc2+OjxjgHosMMKGtqsF0+70J5bU0FvXPqGNilWUUPF6PIxGN1fmGWmDSM5OiTr/p5n
	LH2tD4d2FlPoSoATAAwecW6/Kfd+kHOW6mNwSrTB3olTdNm8fVuIVD5oziXwDBnDEptMrJk5VKZnj
	JVkfy0GLJXvndRi6AFxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdrQ-004eZi-0C;
	Mon, 11 Dec 2023 10:50:04 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdrM-004eVV-2x;
	Mon, 11 Dec 2023 10:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=/xwBX
	qSLSCI3iN3pBYQypMi6PTCbu6TA//aRm1MKyQ4=; b=ZD/35LIygaAej53WfA1cv
	4BvJ5x1xdveGz2MzZhSIA7GFbfFeGrMGONha8YUqmPYIrKhezFobMid9FjxKSiKa
	ciKmecJ4RhG2qz45rLBjrKGIScMpxA/CYsP1R+zLnjUagL0F/UBWreE2P/r8WCVZ
	SL0Gm6PuSz7NxJSTBC4rKY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wC332gs6XZlaZl1BA--.11857S2;
	Mon, 11 Dec 2023 18:49:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v3 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Mon, 11 Dec 2023 18:49:15 +0800
Message-Id: <20231211104915.1779476-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wC332gs6XZlaZl1BA--.11857S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Kw1rCr45Ww4UurW7Cr4UJwb_yoW8GF4rpw
	s3CrZ8GFn7GFy7XrZIqwn7Crs3Awn5tay0vrsxXFy2kr9xKFyDAF1SgwnxZ3srG3WxZayU
	GF1kKF47Gr1DXaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0p_uc_UUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBJDXmVOA4yg9wAAss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_025001_368274_E2025A43 
X-CRM114-Status: UNSURE (   9.16  )
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


This series add support for rk3588s based SBC Cool Pi 4B
and rk3588 based board Cool Pi CM5 EVB

Changes in v3:
- drop ununnecessary property status = "okay" for rtc
- drop ununnecessary property status = "okay" for backlight
- reorder some nodes alphabetical
- drop ununnecessary blank line

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b"
- drop ununnecessary property status = "okay" for gpio-led
- drop ununnecessary blank line
- change node name to rtc for hym8563
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 879 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 823 ++++++++++++++++
 5 files changed, 1716 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

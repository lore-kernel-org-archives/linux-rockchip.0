Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 621F4C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKA4wUjnVCSnbqg9Ug+u33Am+NIaVy8rBd2dhb434Nk=; b=KDgM1tC50KW9sC
	fL0GELV8QeC3lJ3FEdXlJ5KKEHQ0ZBef7NdYApfaI3UHV7S+tmfKGjKPjDYobN8PFIIkSEbddG9J1
	M5PQJJa5V9srtQvNDL5dvd50z7E98eX1wKvAQ2nnWxgnP9YqUA7ccYETK/IgAS421f+R0utjpbF64
	bsrnb1DgMzIpIKAH7IsaIq9m3UkU2wUBcqgSenfE5gKfpw9wbWr0sj/g8J5DICGrT0no0bsju7j5F
	aLSOR6RIVAerGIm+p/dDqMIPdXcNG2Dt96go8hGoYNinl5AvEszK0KJ8C7Ci0BVGGigKGi7uoX84t
	tuijX4sNv8YKTtDZL/8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webZ8-0000000HVSw-34Tp;
	Tue, 30 Jun 2026 16:44:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webZ2-0000000HVOf-44By;
	Tue, 30 Jun 2026 16:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=YxgRnbMG5q6RvDxWCmqV39hig+L95ZAtZ0OCJoUEZCY=; b=pWi/D+dcl88B1YoTzOrojmBWmO
	fnwW9BUw0pL4KPleO55tVE9mCfWz0KNep7Ksy2jDvSiIUOBXmA8T8ekan15f2uSbihXw6l51hlO13
	zhQIqVpRG1RKI0hEePheWY/879ImlJ+Q5w6oajake9y+5qDXHKoEEm5KWRnjtH/2zjMBRJi9UCWmw
	eOH/3UeJZFAP94c6SxBUtAu9168350GDF6VwD5DWSejdi3UlrxPVzzXaeo1n2jxRpXyJxV2n+V+cF
	4x6N1cL/uIWmDyARaH3AFzo2FxAYyqLLNc6/7FuUk4Pd/yDB/QuLjzY5VeiFFHHJI/m+J2e5iebSm
	54YMbukw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1webYz-000000024Sb-1XiA;
	Tue, 30 Jun 2026 16:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=YxgRnbMG5q6RvDxWCmqV39hig+L95ZAtZ0OCJoUEZCY=; b=jcGTMlovmEnW5T6RR38oDr3o8E
	49onk0OPt7MV/hZ+wUlLFyHB3OMHc021B9MoEGePIowoNdMV0SIBA7aoZi+YXoUQCS6Mexp1BTgdc
	JI1bDAqCmMMhGjhn5G5HTV6A8Rd23TkMRmbxRgE9fYqy/QmZ43RDdCYkVJJFSlVVBL4z+6mJ8TNGc
	yk9T8hGiTcV7HJ1T1iY90TcvfWc1G1gOhWsRp6czZ99Y6n7rtl5AwtfDZQ/EJYTNWI+g37xVoRtqf
	vWlJkaXXvD+7r1yZ3G/v3LJcXUmwf2D8F7JS2+8BrKnHZTGjyEnXfYlFgbF4Ojus+MW1v/LAcSXWG
	jBY+R5vg==;
From: Heiko Stuebner <heiko@sntech.de>
To: mkl@pengutronix.de,
	mailhol@kernel.org
Cc: kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	shawn.lin@rock-chips.com,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	zhangqing@rock-chips.com
Subject: [PATCH 0/6] Enable CAN support on RK3588
Date: Tue, 30 Jun 2026 18:43:30 +0200
Message-ID: <20260630164336.3444550-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_174357_549167_A70DC182 
X-CRM114-Status: GOOD (  10.77  )
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

The RK3588 uses basically the same CAN controller as the RK3588, except
the documentation stopped claiming for it to support CAN-FD.

So add a compatible to the binding, the basic driver support and the
errata I could test for so far + enable CAN on the Tiger-Haikou board.

I'm not sure if more errata apply, so I've added Elaine Zhang in Cc
to maybe add more information.


Heiko Stuebner (6):
  dt-bindings: can: rockchip_canfd: add compatible for the RK3588
    variant
  can: rockchip-canfd: add support for the RK3588 variant
  can: rockchip-canfd: enable erratum 6 on RK3588
  can: rockchip-canfd: enable erratum 5 on RK3588
  arm64: dts: rockchip: Add RK3588 CAN controller nodes
  arm64: dts: rockchip: Enable CAN controller on RK3588-Tiger-Haikou

 .../net/can/rockchip,rk3568v2-canfd.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 39 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts |  6 +++
 .../net/can/rockchip/rockchip_canfd-core.c    | 12 ++++++
 drivers/net/can/rockchip/rockchip_canfd.h     |  1 +
 5 files changed, 59 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

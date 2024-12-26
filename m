Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E3FFE7718D
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 00:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J92uL3tGdeJ8GadoqSzf+Ve1o7TM3lyIjT0f7lieteU=; b=PqGJJ3admmPDBk
	SWy1qL+L6VXq2+Dc2vOXs+t9b/mxlRQe71JpFfWS151kHlRbKvFAfs8MbXWCV51e2H0YTjG9CJb0R
	rObKQkWjBM4fDJI42RoQcLvonD9R6kIY83Pcuq6Q3PyMdZnal4WNoBbZyzwZC+vlQGSQETh8bOHHQ
	N+85aXnMLAz9FcMkwh5gDLoRycViAqnLzWgSBjKsLaE06VZdlNExZx7bqzBJfTKbamOru/SfGI3mt
	uDve8n2o5ijkdwuPjI2sPgTBnHUxfU3YAFXXemtv10iJYMklAQebw6tYNZGm0vDyk1czAMMdBS4H1
	FKL5ezQbRlSTu+kFTb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQcE2-0000000EeBM-2BYO;
	Thu, 26 Dec 2024 00:59:42 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQcDz-0000000Ee8J-2RPj
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 00:59:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ0x56F003966;
	Thu, 26 Dec 2024 09:59:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 5B+
Date: Thu, 26 Dec 2024 00:58:42 +0000
Message-ID: <20241226005845.46473-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_165939_837608_3A224CEB 
X-CRM114-Status: UNSURE (   7.93  )
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

The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.

This patch series introduces a shared .dtsi that can be used on the
new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
ROCK 5T.

FUKAUMI Naoki (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Add Radxa ROCK 5B+

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-rock-5.dtsi      | 1042 +++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   87 ++
 4 files changed, 1135 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

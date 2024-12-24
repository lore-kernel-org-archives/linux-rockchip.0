Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBAAE7718E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 13:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tH4Do1gzhcy6IKpDmphrpkErVutdi3VW/78LdbsHBNA=; b=DLXJ8COM+ow5XG
	h/e/2VxYLQwwnNd88hrmDKOJ93nEQBtNfpJb7jJTjEDNv2npNpOpbLuyg0ipMlGOGe6NRTBnph4xT
	vCSybNiEQB/pBxtuM9ak2ZxJx9j8L88QJ5qKU8zxSAMqTleZeIFLsVXCWvvDq9/5Wr6tmG8lJ+n87
	wIXBj92fa7PVoN6sRTwKPrhjtclFDwzSDgYPBREd1/SDqWclaDiTD5IHsOF/ocO7tFZkEb3OnUeiY
	BgYJc6qmvy5h6+S+KopVDWOuqc/OUQ5rmK8c9ZmM1uPEbMkjxwMN+FAK+NF6u7I2GAostQbtHOh3N
	9lz1qsWt+pZ62EIJJp+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ4jh-0000000C295-12B8;
	Tue, 24 Dec 2024 13:14:09 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ4jd-0000000C27y-2KA3
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 13:14:07 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BODDVP1030176;
	Tue, 24 Dec 2024 22:13:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v6 0/2] arm64: dts: rockchip: Use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Tue, 24 Dec 2024 13:13:25 +0000
Message-ID: <20241224131327.4822-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_051405_818254_424C4C23 
X-CRM114-Status: UNSURE (   3.84  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, cfsworks@gmail.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, jbx6244@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, jing@jing.rocks, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Radxa ROCK 5C is a slightly updated version of Radxa ROCK 5A, which
can share almost all parts of the dts.

This patch series splits ROCK 5C .dts into shareable .dtsi and
board-specific .dts, and converts ROCK 5A .dts to use the shared .dtsi.

(This patch series depends on the Radxa ROCK 5C patch series[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241223013926.1134-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: Splits Radxa ROCK 5C dts into shareable .dtsi
    and board-specific .dts
  arm64: dts: rockchip: Convert Radxa ROCK 5A to use shared .dtsi

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  22 -
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 864 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 934 +-----------------
 3 files changed, 56 insertions(+), 1764 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

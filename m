Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B476D3C907
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 10:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0dI5B3zBs/WKBEm/skw8RyiY4rBB0mGgVoFyux+4hnY=; b=3OoWsIZXJbvPJV
	lVr36/UdlEyXlw8zDzKbnp2Vlh6pL++WWtc43M5DbUZ0lTysCyJIK88E5QMY6c0C8Y9nM/OFerSry
	txVHbngqC38wNHjbEmbjS/WAWqbwalSm6D075JJsXSZIcDekWNjx+B1KfOnS6eHKnAM0cErttc0+j
	HiwYN62kHk0avStqS8A3GqfUI93i53JTLUTdzJp3At2Bw8Cp35wZgQk4XuK65pVm7QQYjK063/0ti
	Xgbjb9pkwi97X2KJoFWG785XQLJRAHei44HraqYJQbxVwcOJz2+9NYUnkuvM4JIEmyAIPYmp0Yd7f
	9ULtK2uCkjTVH8+CFI6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Us-000000032ZY-3vqc;
	Sat, 19 Oct 2024 10:15:46 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Rx-0000000327l-1dX5;
	Sat, 19 Oct 2024 10:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729332762;
	bh=WX/NBZEjkntFun/D0pGIVbOd18uKP04lnSuDqn9OWBo=;
	h=From:Subject:Date:To:Cc:From;
	b=agwCIdApCuVlTvjEXHtj1nG5GT2GHfu26JRn9CN2NKEWYk5/oyrCR4+T6RllP7jBf
	 pYij70OW4JKVPkrXUd4GpZHyXewcJahsdUHLXM0tzkO/EmgoKh9/BYru5OtHUHNyLW
	 N37J2bOmpow6nkjlRddl0PEqGaVzZR9I4JztwZAMS/BMcEzZmOOa9zWpbW3u7kL1aG
	 7mQCLY0CeBB6LwDeUL0/xz06j0R4X7MJmnlt8wBid1AVIEruerRgzJFG9dabdCScPW
	 REwnta+SfYXN25v7w8a3oYzuCWAepZIDxgPeJUi2H3DNZXVaXGPZXq9Jbduz7FOhk4
	 rblRQdO4SOy+Q==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1139D17E1395;
	Sat, 19 Oct 2024 12:12:42 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/5] Enable HDMI0 on several RK3588 based boards
Date: Sat, 19 Oct 2024 13:12:09 +0300
Message-Id: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPmFE2cC/2WNyw6CMBBFf4XM2jFtEW1Z+R+GRenDTgRqWkI0h
 H+3krhyeU5yz10hu0QuQ1utkNxCmeJUQBwqMEFPd4dkC4Ng4sQZl5gedSMlBjsSQzsj17xuLGO
 Xs/ZQVs/kPL324q0rHCjPMb33g4V/7a+l/loLR4a9lV4o5Z029mriMOg+Jn00cYRu27YP+nQz3
 7IAAAA=
X-Change-ID: 20241018-rk3588-hdmi0-dt-1a135d0076af
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_031245_641922_80A67AA8 
X-CRM114-Status: UNSURE (   8.37  )
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

Since the initial support for the RK3588 HDMI TX Controller [1] has been
merged as of next-20241018, let's enable the HDMI0 output port for the
following boards: Radxa ROCK 5A & 5B, Rockchip RK3588 EVB1 V10, Xunlong
Orange Pi 5+.

@Luis: Could you please verify this series still works as expected on
your Orange Pi device?

Thanks,
Cristian

[1]: https://lore.kernel.org/all/20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Updated descriptions for rock-5a & rock-5b patches to include Radxa,
  per Naoki's review; also collected his Tested-by on the latter
- Included Naoki's HPD pin related fix in rock-5a patch and dropped the
  UNTESTED prefix from the subject
- Link to v1: https://lore.kernel.org/r/20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com

---
Cristian Ciocaltea (5):
      arm64: dts: rockchip: Add HDMI0 node to rk3588
      arm64: dts: rockchip: Enable HDMI0 on rock-5b
      arm64: dts: rockchip: Enable HDMI0 on rk3588-evb1
      arm64: dts: rockchip: Enable HDMI0 on orangepi-5-plus
      arm64: dts: rockchip: Enable HDMI0 on rock-5a

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 41 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   | 47 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts   | 47 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    | 47 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   | 52 ++++++++++++++++++++++
 5 files changed, 234 insertions(+)
---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241018-rk3588-hdmi0-dt-1a135d0076af


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

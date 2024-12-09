Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B651BE77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UMmnTiAF9OBp7zN643ztrYzVNNnsxTpZeHejqR++U6E=; b=yUK3Xd7ia+lf6Y
	dGNkeFd4Svq0RPRGvyDVSL8RJ9U1KW+BenibAlmx7mxAODcyue51jJCmQucePSTx9BfGVNDPpf4KG
	VRM1o/Bkd3N7GaN+003tQ/USkPcGpdvgvH2c4UUFetmBcP42FVHGILjJPh2otct+liNb5wJlS64J0
	HWK0uv08rR7I7ORCaT/VIwnEG20KsUulSF4C3znRnPb4q52a/C3WXscZiynGvrC3a0EVoZDjGddo0
	zKClHdcRWpiSjWsnKZL709S5PsT+l4fSn48CiovZYPoV3yPQx0tIboPpeqso3SCs7xOBbttPpM1/r
	4/LazeSRP/nNS6W0xWHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdog-00000007zGM-1iY2;
	Mon, 09 Dec 2024 13:28:50 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdkV-00000007xvd-34BP
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 13:24:33 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9DOFwT032059;
	Mon, 9 Dec 2024 22:24:15 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v4 0/2] arm64: dts: rockchip: use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Mon,  9 Dec 2024 13:24:04 +0000
Message-ID: <20241209132406.4232-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_052431_991479_FBC3E1FB 
X-CRM114-Status: UNSURE (   5.45  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, dsimic@manjaro.org, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, jbx6244@gmail.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

since Radxa ROCK 5C is slightly updated version of Radxa ROCK 5A,
almost every part of dts can be shared.

this patch series split .dts for ROCK 5C into a sharable .dtsi and a
board-specific .dts, then convert .dts for ROCK 5A to use the shared
.dtsi.

(this patch series depends on patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  40 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 869 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 946 +-----------------
 3 files changed, 74 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

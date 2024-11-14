Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0627BD41C35
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eGvahN9ms572ObjFZjoZOgJb1orLylAWqejuT0JWw9E=; b=HYz6Q932TYw76e
	kQIzEJb+PK0loVMAYNS/bZphCtZnNR1VKhpvZhop25szYav+2wPwP4ymxrnPuEJvQnGnFfIqfnIXB
	e5In0psYp4wwiOM01yTpueCKlitD6xbMKZvA/lmaS5WlFmSBA8Jydt+j5ficAwPXvFlwYiN7pIjEp
	0LyyeMUvCkMGPUnAU9pLesM2VlUP5OoU5yovve0jcg7SuJwb84JROrztJRgFsjCmHStQZ2GrZkzP5
	9MefoNy6UmF3YmuxKmMTE5D/HHdr/2iBPvjYOe0XgIwsDT3qUFskq6IXhZy57q9PAhE6vpAKEVmh7
	yVAV9OHAMmq7m/ZxA1fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBRkz-00000008nSu-2ptU;
	Thu, 14 Nov 2024 04:47:01 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQo1-00000008hR4-1lbh
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 03:46:09 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE3jqu1029588;
	Thu, 14 Nov 2024 12:45:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 0/3] arm64: dts: rockchip: use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Thu, 14 Nov 2024 03:45:42 +0000
Message-ID: <20241114034545.6440-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_194605_690359_3613D26B 
X-CRM114-Status: UNSURE (   6.21  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

since Radxa ROCK 5C is slightly updated version of Radxa ROCK 5A,
almost every part of dts can be shared.

this patch series make small changes to .dts for ROCK 5C to make it
sharable, split it into a sharable .dtsi and a board-specific .dts,
and convert .dts for ROCK 5A to use the shared .dtsi.

(this patch series depends patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241114023746.4867-1-naoki@radxa.com/

FUKAUMI Naoki (3):
  arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
  arm64: dts: rockchip: split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  34 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 879 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 955 +-----------------
 3 files changed, 87 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (95%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (97%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (94%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

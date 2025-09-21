Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C91CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 08:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YPd0F3FxZtvCSgwTpCdGNmUGzPKTEZQ/cExHceolM1s=; b=DQlYWElopoKy2s
	HOJ1LIecIHzR+wNLWMr8ErM375MeAA1s7X3TkGBrWTEFpYdc3hFsnDibLpQ3qcwZYq9smyJVmKlk6
	jwOgHkZnVmK0xgF65j4iOj9skBq7Gt5XC/7Q2mXnTJ7/IyWxJa0muW34v+KJf5T4oL1PhjhP5bhzD
	/cxJ7wOikr+75xMG7d5fvj5bVHdsgfByppv/VOJjwOlFLxqfGftO0b+7V9qa+Yb7xrFhZVuCuIYrk
	zXabUwyoTVxcuGPJgc7KUKrnBy6ABu8kx1aSRc74BbZDGurJNjUn8+MN+mJLA5IyIUEkgn124SmBQ
	MrsIPq/kKejupZCWpo4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3X-000000071hh-3bE5;
	Sun, 21 Sep 2025 08:04:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3V-000000071ff-3W2F;
	Sun, 21 Sep 2025 08:04:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D171600AC;
	Sun, 21 Sep 2025 08:04:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 52C69C4CEF7;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758441860;
	bh=FgPJvqpqOwscoSmbcR68/IeWY3DU89hmprNU9y1mNWo=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=mcYkOQeUuvZpXq9ABNgmVKAmLX1OeoM4xY11vgCPjq5K1o+q2TCklZW6ihT1KDRjK
	 Lj+/PV10WEp13JHp5LgfXtJzN1gm4S0qcKNQE20z/jem9fV0gKwL+IKZy24IcHlMIH
	 pcAkWu9PS1ltSv6WrO0av7/mvhferYJw2f7g6qHT55CjtrukmQNVDwPPngSBBx4uC4
	 ceAOPCBwmZSIPWlIzyYS9fbynR2vDg1YK/PJCjO6Cj6YbmV6lOMsgla6XiW7ZMcpkk
	 qEs0ss1hWq/Q7VrY3wj1zYuhG44FgA0rhPumOwPiTDqquYzWfVDlQhwY6XU0xEho/m
	 nLGisSNIbooOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F40DCAC5A7;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Subject: [PATCH v2 0/5] Upstreaming Pinephone Pro Patches
Date: Sun, 21 Sep 2025 01:04:18 -0700
Message-Id: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIKxz2gC/43NQQ7CIBRF0a00jMVQrJE6ch+mIRR+6U9oIdCgp
 mHvYlfg8LzBfTtJEBESuTc7iZAxoV8r+KkhelarBYqmmnDGr6znjIYQpEM7b1JpDU4uysrsHTX
 +tVLR3rToJqNAGFITIcKE7yP/HKpnTJuPn+Mtt7/1z3BuKaNajKM2F+DQdw+7KHRn7RcylFK+3
 xP3xcgAAAA=
X-Change-ID: 20250920-ppp_light_accel_mag_vol-down-817c84fdae8d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>, 
 "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758441859; l=1475;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=FgPJvqpqOwscoSmbcR68/IeWY3DU89hmprNU9y1mNWo=;
 b=7rJt2/J0HOq5hczBdqnTmVEddXZp8Btn2v7rl1sz+OwnW9PYE1e4/lCkq3o6XbA2eJGLX6xsa
 X4VQXHQ1qiuCWHmmFZAhmPbtr7K+04ysADOacc7pEiORI0It4AzVzti
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Throughout the years, many have contributed to the Pinephone Pro (pro)
development. Unfortunately, these patches are scattered around various
repositories in different states.

I will be attempting to upstream these patches. I will start off with the
following small series:
- Add light/proximity sensor support
- Add accelerometer sensor support
- Add magnetometer sensor support
- Add mount-matrix for magnetometer
- Fix voltage threshold for volume down key

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
Changes in v2:
- remove usb-typec node in dts from light/proximity sensor patch
- Link to v1: https://lore.kernel.org/r/20250920-ppp_light_accel_mag_vol-down-v1-0-c8bbcd3e2e94@gmail.com

---
Leonardo G. Trombetta (1):
      arm64: dts: rk3399-pinephone-pro: Add mount-matrix for magnetometer

Ondrej Jirman (4):
      arm64: dts: rk3399-pinephone-pro: Add light/proximity sensor support
      arm64: dts: rk3399-pinephone-pro: Add accelerometer sensor support
      arm64: dts: rk3399-pinephone-pro: Add magnetometer sensor support
      arm64: dts: rk3399-pinephone-pro: Fix voltage threshold for volume down key

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 40 +++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)
---
base-commit: f83ec76bf285bea5727f478a68b894f5543ca76e
change-id: 20250920-ppp_light_accel_mag_vol-down-817c84fdae8d

Best regards,
-- 
Rudraksha Gupta <guptarud@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

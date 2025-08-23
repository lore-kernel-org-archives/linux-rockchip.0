Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7517CA0EED
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 12:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VPVEZDQCl7qTrcta7U4pJ40WBt3x7n3qJx1qPNKsiCg=; b=w727bd0H80aKwi
	+gyji1KK59j1Fa6/MOH5p5IP85RSvtsBwnY5uQBgfw8X83LD0e412zpwCMQAMdjsLJeh1Rnd8lf3C
	FUbMP6/eac1AQhoJC87ANjF2iImUM7UPZKhUdIDxP0hpTGoiiPCfG3KUCLYLh/AS1VDTdqfKIm6/P
	Nhjeeg6anR888Kk2ZvNW4D18E7inUCD/detAcNLGeuIrOCzaFLLmfwyb/W/v0vBJcKCwrL3J58RG8
	erHlUsseGBpuoBdoiq7T3spBbExKqaNo/nGugETXYZ0haX6DVBBnf5FnxEHwwMVxWXwV0aMYCX0/y
	cJTnkkNogf5ldKbrurEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upngW-00000004lr9-0swe;
	Sat, 23 Aug 2025 12:49:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upnbH-00000004l3Y-08rT;
	Sat, 23 Aug 2025 12:44:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7F24D5C4D02;
	Sat, 23 Aug 2025 12:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30C83C4FDF1;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755953034;
	bh=qmoItphEwgbnOc3Kx/jB+wrA6iB1hYbkpqBVKQ9GP5s=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=nkcr/VNGpWb5PG1mW/7ygJZllF1tQ25qboFfjFy6wNJdiQjNIs/va/ulfNXZvyRB9
	 dii9XUInFa14HlWNehBX3frQmZZMkY8WRX5HJ8OfY+zSFB6vip/+BVN5Dq5fjpAsty
	 I2Y+vwcZPX7OrWSDZU+Xlaifx3i4/WIrtww8EkMB5YdbsKFtbNjIGED3hB23/rPF8B
	 flBvs3Jy7vv/PbRB6L7Tep6IzgSH4z9gvbxQgm/59mSbUxCpE9ktRMtGSKwC6Ledvd
	 nw9ilrB7Jm5CH8z/vhf+5c6EkYCbzXseQ0wifSVtL4xF8B+j3vRD/1num4hnzo4I1O
	 FJQNuQal1xtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24BBDCA0EED;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Subject: [PATCH 0/3] arm64: dts: rockchip: Improvements for
 rk3588-orangepi-5 and friends
Date: Sat, 23 Aug 2025 14:43:49 +0200
Message-Id: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIW3qWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCyNj3fwikGhBpqluokWyhYGpuWFyWoqBElB9QVFqWmYF2Kzo2NpaAMS
 YGExbAAAA
X-Change-ID: 20250823-orangepi5-a8c80571cfd0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755953033; l=829;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=qmoItphEwgbnOc3Kx/jB+wrA6iB1hYbkpqBVKQ9GP5s=;
 b=XW9abXAO3w57Ix2LwWlF3Yf5as+Mfqdo0VxxzjVLdssOTDU6o907NIN3Z3Qkd8L2uBlWiRCoe
 hxfh6KYtzBVCQMRvy6MCvp55sK409dtkfYwwmBjZtik20y2cSgMZ2UM
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_054403_133184_FC8938B3 
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
Reply-To: maud_spierings@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix the headphone detection logic on the orangepi 5 plus.
Enable the HDMI receiver on the orangepi 5 plus.
Enable the NPU on all orangepi 5 boards.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
Maud Spierings (3):
      arm64: dts: rockchip: Fix the headphone detection on the orangepi 5 plus
      arm64: dts: rockchip: Enable HDMI receiver on orangepi 5 plus
      arm64: dts: rockchip: Enable the NPU on the orangepi 5 boards

 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts   | 19 +++++++-
 .../arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi | 56 ++++++++++++++++++++++
 2 files changed, 74 insertions(+), 1 deletion(-)
---
base-commit: 0f4c93f7eb861acab537dbe94441817a270537bf
change-id: 20250823-orangepi5-a8c80571cfd0

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

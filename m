Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27461C44513
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 20:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ft/wSF2XKPBKk+7+PqB2Z0SZ6yKhqscmw3Qy1beEUTE=; b=B/U4cxcBX+5s8z
	KYGFvU5zl8EZHWifI31mOfPTny0tC53rmDOR8yMTvqTik4ElCx6izBpIo/wTmjAYj7FSEf8IpkgrG
	Rtzqf4n71dWUgcdW7CzXrI3CsSgcBtRkyUV/ECzHfaQivUhZaoJ1iAcZSY2im5wop6uEGM6EiPiPh
	74X6P39SUga6+ezb9bq6bTrWfiVfnGvQOVadHSqDWPZrVLrK08uHA7OIU1pes9xwX2uTGWO7bWhXp
	qSOIHdAyLyVRx2RzwlLUHT6nDXAO8MGPziBB204voqJMekCEIDfyZ5D+JbgCPt5GVmsn2wHbKQBD/
	0J65AIFJEkLsqKWjlivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjNIr-0000000AND0-2LiS;
	Mon, 13 Jul 2026 20:31:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjNIk-0000000AMxU-0U7I;
	Mon, 13 Jul 2026 20:30:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3140F43B2E;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 142E6C2BCFC;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783974653;
	bh=oKnPZ+7vaTSTZNeUUfO4lXpORN/V+p4Xs9B36572MVQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Vp95JtOCUHPbjuyQiJC8taYtNhIBwLkxQNdjmFFKGfeBeq/pzFOsRJtg+JLJglOe3
	 WP4zPkfbGxSZQ/SadZi5EI1QD+d+0aQRujWLfT2oDmdZPTi7XrWB6/mLAWF+tSCWac
	 RE+ipYuUngSdtIiH/Dpvu/ICnIT9Lcm5FM+gzrIF/KTC8xU/qAJDmBHaL/t5xGkHTR
	 dksBuG4fCIOGy368/xsv2mZAm9CSIx0RQ6mAP0OOmQ1pjQDzvWMoLNN6MLrWZLu0OU
	 zV/i+m6J1hqbv6JJyk10agVSOUxmRH8Aowpmxy7F3KzTv4oTOJtLIvNx24PsBHkNsc
	 iPf1nQxUdXlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 007CEC44508;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Mon, 13 Jul 2026 22:30:10 +0200
Subject: [PATCH v3 06/12] arm64: dts: rockchip: rk3588s-nanopi-r6: remove
 always-on and boot-on from vdd_npu_s0 reg
MIME-Version: 1.0
Message-Id: <20260713-nanopi-m6-v3-6-227567ffc5dc@gmail.com>
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
In-Reply-To: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, diederik@cknow-tech.com, 
 jonas@kwiboo.se, Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783974651; l=843;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=SxS4/Pn4ii4DivXfFENkaVYvrpZF49qmqaenYROR6FE=;
 b=FuB1J8q3/BIELQJed/tFQEAqNgdzA8ao/8zkkXg+brqLRfxq4q7AP/6OsMByZMEZcQb83DsW2
 i6qMnAE+saqBas9sKNGpAcpQKe23DZ0S6g2jIZu3TOeiTzKMpC42N4L
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

Since the NPU is hooked up in DT, the always-on and boot-on properties
on the regulator isn't needed anymore.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 28966c292f5d..8f8a1619787a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -314,8 +314,6 @@ vdd_npu_s0: regulator@42 {
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
 		regulator-ramp-delay = <2300>;
-		regulator-boot-on;
-		regulator-always-on;
 		vin-supply = <&vcc5v0_sys>;
 
 		regulator-state-mem {

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

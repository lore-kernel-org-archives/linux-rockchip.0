Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAA9C87FCB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Aug 2025 19:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrvd9VCwo7e1NtWaYGtQGVzP7fGtamSUniHcB+JSiCM=; b=4NLDaRlgpZtAgd
	+oCgDqCFV/L/8GFKdazIibdlLzXfPgKRY0XSvv2c7UdpKAI5G4Clb/kiZZ9AD7pTmGba8VjYC/iKS
	/h50B80+XvqHXzzuKNDQu2taRJ0EeM3SmIWIG4r2paSwrehwgxVe2ymFovqBpFhjG3i3tYKMxhezH
	yYPQGqxPy5FcC3J8Y/lf+Bk5NlC9bupNca46WTo7KeaRl1QSy3LfXetDkfvShjVGdJ2O4SwB96WDm
	idaeXgtSQYKiDkJJUJRUawgvjGOExLCkyJiX02TcbRysxVsqCQqFIbe21uu3nkM5MpMi4dVwlD7oJ
	ww2iNhsG6O83NqSdVx7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukSvO-00000003YDh-3NRl;
	Fri, 08 Aug 2025 19:38:46 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukSss-00000003Y0x-0NZs;
	Fri, 08 Aug 2025 19:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1754681768;
	bh=1S4gIsUy/lP67CX0Xrs0Zs4bAm7U3GED0ShLh7xGT4Q=;
	h=From:To:Cc:Subject:Date:From;
	b=luyk3vpZZleLUQYOIfaTqEaQsi2CMvz/TrDYdnaOkJKrBYG/VaDu0UPjjloLOw34/
	 QW1T8u4Vxk0x42MfzoLRwvGbOI5WR7gPIyHmardIs7uwtJnNFjgNoD7bV9C6BMh/1o
	 n5GKzAhtdNAKeDZxiykac45FHF3oYLQ4nizUKS7OqcHems8+OXQpI2pux0lNNU+qoG
	 VIbO2riIdyMnfy/PbfBn/QPzD2P62OWJZ4Rfjgz7lTWWXJ0QqN/CTLrlksmr9owHXT
	 LelojNN1riLUDLzCoFkhIBDr0x7DPmjtNLmewnnCTZkocarhleco8RwjNL3Fd+pegU
	 0J3eFmdsx82QQ==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3535117E0299;
	Fri,  8 Aug 2025 21:36:05 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
Date: Fri,  8 Aug 2025 15:36:00 -0400
Message-ID: <20250808193602.142527-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_123610_286595_06ED3686 
X-CRM114-Status: UNSURE (   7.89  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Niklas Cassel <cassel@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Damon Ding <damon.ding@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the nodes for vdpu 381 and 383, respectively RK3588 and RK3576.
To keep compatibility with older variants, the reg ranges order is not
in register order so that the function reg range is kept first.

Also adds the corresponding iommu nodes.

Regards,
Detlev.

Changes since v1:
 - Set node name to match first reg range

Detlev Casanova (2):
  arm64: dts: rockchip: Add the vdpu381 Video Decoders on RK3588
  arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 36 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 74 +++++++++++++++++++
 2 files changed, 110 insertions(+)

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

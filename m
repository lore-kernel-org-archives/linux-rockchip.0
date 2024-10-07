Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C104CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 10:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxwdePD1tVMe+nGSV/Xn6/aqhPC8l2zd+mldx4/OQTY=; b=TD7snkKaSabHgb
	2WV3rha4LziloGZhC0gWhCqQAhi0OXgPcFTyFhjYq9WK2KHHloN5g90X6F9USRtlMzHWV/p3f5vvD
	LEHeGixNx+NgkZaWyLpxK02z1RJnuc4BVVNXLFpLBqBh76yIzOcb6wieXz21tmRv9KgmHOb1E3HEQ
	QXWNa619D2dw8RyBoCL7+ySrdxW0D7+Mwmh+RUYtZG95cUJ2LODjRWVpXFwEhplC0IVx3MjdUjSE7
	SB46lLVVVii2vop0UbS0ByUMLWKSVVn0Esbsvb7pE4DQnhBEkPVeFkgCgoSrRSLGDrwTfY77lamxr
	+y9mynaL89539zpo8RbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxlSR-000000027Th-1yKV;
	Mon, 07 Oct 2024 10:59:19 +0000
Received: from out-172.mta0.migadu.com ([2001:41d0:1004:224b::ac])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxlR7-0000000276T-0Q4M
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 10:57:59 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728298670;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CkGa68OhlcHrCUmYTHDXO5x5tcltH/saI7jrYbKriso=;
	b=TJgg7xD7XzDaP/Z24GttARxNUJe6++DhnQec3JTX/ypYaZC1uYFXCM0twMZHgvr73ECKDt
	8qYteGrGSAQmzvLUt3UWZOrXjkNZZ/U5SeX7aOeI9wx2SrZpVwpZ0kaentKwUSuPe8llb5
	0aWDqu3RTaGv32M0X7jn9Dfko4yjmGJDZ1Dh+hRUe8TJ9xZFiMUOh0gfVw3uE94ccKPL+I
	Z6Yb0RdBbKprZtvQgA1ImT5HpQRxDfUk9XfbEcG2owYu5qPhhgC+5VbE5GIDr57mpUUAqs
	JLr47clAOz02IfXxRcaGx/I+DZMOWpCGbG0pYkxTLzao+b3MveskJXJDkh3yXQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: rockchip: Fix several DT validation errors
Date: Mon,  7 Oct 2024 12:28:15 +0200
Message-ID: <20241007105657.6203-2-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_035757_285428_BA32B59C 
X-CRM114-Status: UNSURE (   6.58  )
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

This is a set of 4 small device-tree validation fixes.

Patch 1 adds the power-domains property to the csi dphy node on rk356x.
Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
Patch 3 replaces 'wake' with 'wakeup' on brcm BT nodes.
Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.

 arch/arm64/boot/dts/rockchip/rk3328.dtsi           | 3 +--
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts   | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 1 +
 5 files changed, 8 insertions(+), 8 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

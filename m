Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DED7C369C2
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 May 2025 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BgWDeu9BXnIglmuq9Boqq4exPNU3TgN+DF2QKdLckJg=; b=Vl7n/cPkYb6Bbi
	Z06hHOhDgB0fDvAeYZ30P0071UQJ+ddZ/HKyBNNqgZWJQkFaOC9TL6DGX8eJyT6EYgSpI73DPXVrh
	zDlL5agkCyfqc0A9w3Q5mWpu06DcmorwlakMkd3ol+qOJyZ3qqLmwNG9Tlzn/pwA9W8TBC/Z+Y9/D
	pE8A0PnDURrwPPsIRQnwZI0k7DiTgnxfLg8zKhonQNmOvcnp6+Bblz08AMrsu8UQ+eClRPE2AmE1H
	QbgmeWgLYl4RreQUNA8kHtG9HWhSmm8ORI4E8Np1e+Y80f3B1p8p56nthtnKHZtGrxzmN/4SQqVqG
	CxGIw1lLl8gD3JFLHCfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBEou-000000042Z0-133b;
	Sat, 03 May 2025 15:30:28 +0000
Received: from out-189.mta0.migadu.com ([91.218.175.189])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBEoE-000000042Pb-0M4v
	for linux-rockchip@lists.infradead.org;
	Sat, 03 May 2025 15:29:47 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746286181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9kPzeNn/PbIKy+mZs6eCVZhmWhgjarI79NiBr0GcvpU=;
	b=wXY4hZNJg+DgzROyV+eG7p9cXGL+S4Gfqqp6d9pOGEiLYD0DBCayxVy2KPWZvxvG4wc4x9
	0F+eFo1atCuJNsvgomixVqGR98C8O20zHJY9MHWohsIAG6KFf1WpqOq3QwuLvXPEASMxVT
	2o9HusfPenEp8r0iyemlUaeAfoZcigs/l60mrzsVrFknRMNfwABHgHmxplafBubiv1FWjw
	Q96yfpJLOTtU0iCVz5NEuXkY6lu9SoCiLi5YuoLoomkGbb5Pg95QyMbc8lrhbAHqJoSDa1
	Yj4NlcXk2/OjQx/H6WYjD+HbMUs2PBGPK+h1mXcs+Y8F5yDHzVZiLpC6ZbwQ8Q==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 0/2] Add phy+vcc supply to NanoPi R5S and Q64-B
Date: Sat,  3 May 2025 17:22:17 +0200
Message-ID: <20250503152917.138648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_082946_679149_7D439E43 
X-CRM114-Status: UNSURE (   5.22  )
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

Testing on my NanoPi R5S and Quartz64 Model B brought some more issues
with power supplies to light, so fix them as well.

Diederik de Haas (2):
  arm64: dts: rockchip: Add phy-supply to gmac0 on NanoPi R5S
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-quartz64-b

 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 1 +
 2 files changed, 2 insertions(+)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

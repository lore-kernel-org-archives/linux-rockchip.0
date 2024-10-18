Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6E7D3F2A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 21:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eg6ErK+r1w5bd74wBZKitRSaNlpEUYKXaAfpJOYvYVA=; b=JM9qorRQHaEMfI
	DL9WAZQweGZMAeVNOvfuxfayN1vry9VMhqUXtx9rVwsdWfgPKe6LMjMB5QH5oj6hVQmJPB90FfrBj
	N0OXOcrDYF11kXdnEcVYmLDrBy6cva33M/OPESGdqIFMbGXX2HjmnjQKOPRNDiu5nslrTIuOkxlzt
	QvtjZs1+q6iQBsqjKImpiPsI4wW4bsjRdQbQNgBlsKrHJrpx63W3PoHT2c5IDxYLdjyiyaTqHPZvU
	EWXHCC4Zsy2928CKAoOEDF2LETni5xDUJqsT5RC+GXN5TNNJ14BUd0//VCKOWfs3ezwV0UDtlqJ7R
	pLpKr1R0/5kH6/EjfIIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ujL-0000000266Q-1OCu;
	Fri, 18 Oct 2024 21:41:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1uhq-000000025lL-2DgH;
	Fri, 18 Oct 2024 21:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729287619;
	bh=jzMY5ROrS69sk17xI0Wa3em7WxCWgNTftdL4b/p4/Po=;
	h=From:Subject:Date:To:Cc:From;
	b=hs9w+OYGnrPcqkRLJ/Gth7If4b1/T4/Q5rkkSGFfHn5l3TDjsaZhpmXK6t8U+2NOY
	 990gMBfW12IfEUT8F52QEUeU9KsJ3KFGrXl0cnZDaftNCijfq78soiYhnJN9iDGe05
	 deA6EDexQxqjaFOIxCsJyUhGd3vhrLK7pI0CvI6H0yLAhlTFwqgoJHQwkua7Ze5fxg
	 38w2cYv7qhSLb1XFnVdHsjVhpbtttGvEQ96KwxOv1OWKtbEDqXYYd6noqdQB/t/rva
	 QpP+tzRe3m0BFuVvjl3CkW//tKO/UPf0EjisxVcOfYulW5LwQZ72XozbfML5s+trMl
	 P0y67ucPp8Sfw==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B935C17E3759;
	Fri, 18 Oct 2024 23:40:19 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/5] Enable HDMI0 on several RK3588 based boards
Date: Sat, 19 Oct 2024 00:39:48 +0300
Message-Id: <20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKTVEmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0ML3aJsY1MLC92MlNxMA92UEl3DRENj0xQDA3OzxDQloK6CotS0zAq
 widGxtbUAeCa8V2EAAAA=
X-Change-ID: 20241018-rk3588-hdmi0-dt-1a135d0076af
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_144022_754049_76B9D300 
X-CRM114-Status: UNSURE (   8.22  )
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

The ROCK 5A related patch is currently untested, but we might be able to
validate it beginning of next week.

Thanks,
Cristian

[1]: https://lore.kernel.org/all/20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (5):
      arm64: dts: rockchip: Add HDMI0 node to rk3588
      arm64: dts: rockchip: Enable HDMI0 on rock-5b
      arm64: dts: rockchip: Enable HDMI0 on rk3588-evb1
      arm64: dts: rockchip: Enable HDMI0 on orangepi-5-plus
      [UNTESTED] arm64: dts: rockchip: Enable HDMI0 on rock-5a

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 41 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   | 47 ++++++++++++++++++++++
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts   | 47 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    | 47 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   | 47 ++++++++++++++++++++++
 5 files changed, 229 insertions(+)
---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241018-rk3588-hdmi0-dt-1a135d0076af


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

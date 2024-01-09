Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2599DC46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 13:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SW6N2CwOwipbGeEOlMryvf08GIFEHibDlEjJo+adU/U=; b=dwMGZv5BTjiUrj
	DHulXeqgs6+09wwOnaOuwgsucWe7lRV8bHYf9gBQOlYPbh/XQSX5bNPhKVL60pC43W9sBdadqCLPu
	0Cd6HEgHWAkPGWRk+FJRGK4VX92kq79fGzVuoUbA1ZAIYwOI/n7VfWzpD3U9Efp6viLYp2R89WD2m
	ihPPiBo9Ot6MyjbwMFgvY2qj8lUpBJCWlyacvjNmNtCpl8n/WrQslZG5tntWOZ7E4+vuLDsEEADQs
	aeDao84xLMpRM0AZw4PJmxDPwvtHkxKZSESoWDEwoFgDflUXeBldniGTmZJ5ZB5YIRLn2iCOUT2KH
	HY3bdbxS4xWcTYsMoesQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCH2-008Nzz-0D;
	Tue, 09 Jan 2024 13:36:08 +0000
Received: from smtp-42ac.mail.infomaniak.ch ([2001:1600:4:17::42ac])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCGw-008NxQ-1p
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jan 2024 13:36:05 +0000
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4T8X4r2xfJzMpnRY;
	Tue,  9 Jan 2024 13:35:56 +0000 (UTC)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4T8X4q4PnjzMpnPk;
	Tue,  9 Jan 2024 14:35:55 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: add SPI controller aliases to
  RK3399
Date: Tue,  9 Jan 2024 14:35:42 +0100
Message-ID: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_053602_750108_3063F037 
X-CRM114-Status: UNSURE (   6.48  )
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

There are 6 SPI controllers on RK3399 and they are all numbered in the
TRM, so let's add the appropriate aliases to the main DTSI so that any
RK3399-based board doesn't need to define the aliases themselves to
benefit from stable SPI indices in userspace.

Helios64 is the only RK3399-based device that defined aliases for SPI
controllers, but since they are now in RK3399 main DTSI, let's remove
the duplication.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
Quentin Schulz (2):
      arm64: dts: rockchip: add spi controller aliases on rk3399
      arm64: dts: rockchip: remove duplicate SPI aliases for helios64

 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 ---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi               | 6 ++++++
 2 files changed, 6 insertions(+), 3 deletions(-)
---
base-commit: 9f8413c4a66f2fb776d3dc3c9ed20bf435eb305e
change-id: 20240109-rk3399-spi-aliases-a2ce468a04a3

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

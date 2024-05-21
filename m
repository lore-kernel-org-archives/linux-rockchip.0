Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A49C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pEZlUpFPy5SrnbW9IKz+urD3aqflVyR161gBZQf771U=; b=ionOF3GAt54MDE
	h2HF1Oi4o8FbpAkA9eboq9cpyKwWMSJHmlL/6oH0P6jaAVdF3uEPKG1DLT95TBHpDuqXlv9Hi4bte
	uxuNkdEKUQr6Y/3rCzvLEquLq5+hPSq4sR1Q+JTStYmvkXE7inZ35dZU/hcMEFtDbtvHcT0dh+6P8
	FjJ03wyEBRxKYuxkxLLlmlqcPHoJxNtqskrsTCflNblHRqwrGSUkBBuItRe5pmTesyGQ9Ysqp9Sln
	uWbZwoZzyavSDImZUZQza3cCxv/TP1UqRfae3N/3ytBztigt74CrZ5jNlm4IIfBPLgxNU+xIanqGV
	psvzqTGmdMZdD00VFPAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wl2-000000016Bn-1iRP;
	Tue, 21 May 2024 21:10:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wkz-000000016AV-1hfi
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716325836;
 bh=CngQAMHgs11xPbXeeW6bhvCsMpbYaqV/+RYWVdlvtmw=;
 b=0Q7Z6al0I4Ke4HeLwCaNYwpxM/WxgoWi77FQLARLAD2zl5mcBrN5YXjGbYLoXvRMXElMr2VX2
 QfCajEkB/FVXcudoboBshN6yTG79nd7Om4e1iG0zILX7CHfUF1P1xwRBkEmf2m2LWd9i/Ancwks
 xzSKbNk+lA28ypNsNErK/Nhapcw3mnOucYF6o1Yw5ko6AssD3hBgT2ZmKrXA6VwfUKO3ZqZdGOM
 sDEUaHPvAgpDcGhJK4LuvY5fv6ss00q97Z3zSBqIdeiwgGuaAUpd2ttwOnzfJyHLAyKEP/GjJBo
 jrZ/jqtnLFHOxgSiEmwBFufyMvfljV+oztpcOqMucNVg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/13] rockchip: Fixes and improvements for ROCK Pi S
Date: Tue, 21 May 2024 21:10:03 +0000
Message-ID: <20240521211029.1236094-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dcb8b6b0c828344ae94
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141049_536613_D06434E8 
X-CRM114-Status: UNSURE (   8.13  )
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

This series include fixes for DT schema validation, fixes and improve
support for onboard features of the Radxa ROCK Pi S board.

Patch 1-2 fixes DT schema validation of ethernet and audio codec.

Patch 3 fixes use of onboard SD NAND and eMMC.

Patch 4-7 improve details and support for onboard features.

Patch 8 add OTP device node to SoC DT.

Patch 9-11 add support for RK3308 IO voltage domain to driver and DT.

Patch 12-13 correctly configures IO voltage domain and fixes WiFi/BT.

This series have been tested on a v1.3 board having a RK3308B SoC.

David Wu (1):
  soc: rockchip: io-domain: Add RK3308 IO voltage domains

Jonas Karlman (12):
  dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac compatible
  arm64: dts: rockchip: rk3308: Fix codec@ff560000 reset-names
  arm64: dts: rockchip: rk3308-rock-pi-s: Fix SD NAND and eMMC init
  arm64: dts: rockchip: rk3308-rock-pi-s: Add sdmmc related properties
  arm64: dts: rockchip: rk3308-rock-pi-s: Add pinctrl for UART0
  arm64: dts: rockchip: rk3308-rock-pi-s: Rename LED related pinctrl
    nodes
  arm64: dts: rockchip: rk3308-rock-pi-s: Add mdio and ethernet-phy
    nodes
  arm64: dts: rockchip: Add OTP device node for RK3308
  dt-bindings: power: rockchip: Document RK3308 IO voltage domains
  arm64: dts: rockchip: Add RK3308 IO voltage domains
  arm64: dts: rockchip: rk3308-rock-pi-s: Enable the io-domains node
  arm64: dts: rockchip: rk3308-rock-pi-s: Update WIFi/BT related nodes

 .../devicetree/bindings/net/snps,dwmac.yaml   |  1 +
 .../bindings/power/rockchip-io-domain.yaml    | 24 +++++
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 99 ++++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 31 +++++-
 drivers/soc/rockchip/io-domain.c              | 40 ++++++++
 5 files changed, 182 insertions(+), 13 deletions(-)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

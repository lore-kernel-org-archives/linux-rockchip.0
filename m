Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F8CC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFvBLdhwtmwEdMeUUTmDfstPTUZ9mdc/D06a3oO0GAk=; b=sCpU7VkkUfoE9x
	SFsyKdDWZgR5+Mf6Qp3hxFhNbAxv1fsPhD1HrchEn0/c7LkUyNHWsYjCXa3/xwpiOaCnpYWIeaZu7
	tSOEsABxP6jSA0dODvN2Xjlg6d098VFCWk6mXwIr9h7GXABNNqQv0qimMTtOsKxua15zGz/i1WpgK
	iU1ULymRgSj+ux4ydj2i7bOxGUPW3FhjPmDyYUK2mQ01ePa97wm+epyLmyOkXSR6wX4w6Y9VAahGr
	EtD3QQDOjuivlenh46/Ar8QcDpURpICekXl3oVer/94boFmNR6b5GgIs/04dk6eYqAMAMNshmh0TG
	pXVhpW7mL7b7+BBbEEkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlT-000000016WT-1ct2;
	Tue, 21 May 2024 21:11:19 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlA-000000016Hc-1yrQ
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325851; bh=aD5ElAXuf7/SqhPMov55JPF9VkiI9/bGsfbICmFQCbQ=;
 b=E4Fk6iaZ2ObfYyVGavisOGDYxRJSx5X+OIItJ+Nk17X+9Y0TkOkM0SENkr3+OTzqTeJ5pUnCz
 kCy8QB8AUmet32Ef0TZ8W3g5dyHjuOmM7D6dcGXnA3LMM/To4aGC4iK4Id5jVB3F2DN3OwcrsO1
 HHYesovdcCBo7FD2/6RJINlXa4ClCchvMpSTZ+TwwNuRu7tfGq9sRMcgxtDY2IEf30sn+LW/wyH
 c6uwNThw9LmyZP1Oq+VInf9wkYh0BmEvzHorLmu6MwvTePsLCIMdiztINSSY8XqlEdDLGNdBaDn
 bGbvIjBy696G22UL7sy/pIvMiwNDglPjjQ9UhZye/+gg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>, Akash Gajjar
 <akash@openedev.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 03/13] arm64: dts: rockchip: rk3308-rock-pi-s: Fix SD NAND and eMMC init
Date: Tue, 21 May 2024 21:10:06 +0000
Message-ID: <20240521211029.1236094-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dd88b6b0c828344aeca
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141100_968980_04EC8D1C 
X-CRM114-Status: GOOD (  10.52  )
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

Radxa ROCK Pi S have optional onboard SD NAND on board revision v1.1,
v1.2 and v1.3, revision v1.5 changed to use optional onboard eMMC.

The optional SD NAND typically fails to initialize:

  mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc0: error -110 whilst initialising SD card
  mmc_host mmc0: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
  mmc0: error -110 whilst initialising SD card
  mmc_host mmc0: Bus speed (slot 0) = 200000Hz (slot req 200000Hz, actual 200000HZ div = 0)
  mmc0: error -110 whilst initialising SD card
  mmc_host mmc0: Bus speed (slot 0) = 100000Hz (slot req 100000Hz, actual 100000HZ div = 0)
  mmc0: error -110 whilst initialising SD card

Add pinctrl and cap-sd-highspeed to fix SD NAND initialization. Also
drop bus-width and mmc-hs200-1_8v to fix eMMC initialization on the new
v1.5 board revision, only 3v3 signal voltage is used.

Fixes: 2e04c25b1320 ("arm64: dts: rockchip: add ROCK Pi S DTS support")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Hardware revision changes can be found at:
- https://wiki.radxa.com/RockpiS/hardware/revisions
- https://docs.radxa.com/en/rockpi/rockpis/hardware/hardware-revision
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index b47fe02c33fb..84f4b4a44644 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -126,10 +126,12 @@ &cpu0 {
 };
 
 &emmc {
-	bus-width = <4>;
 	cap-mmc-highspeed;
-	mmc-hs200-1_8v;
+	cap-sd-highspeed;
+	no-sdio;
 	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
 	vmmc-supply = <&vcc_io>;
 	status = "okay";
 };
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88AC3C83F1D
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtO9LvHEI7AzwzLFX+amO5JQqpG5WItaKpip3roS91Y=; b=u62ostNaaEiGHU
	rQRup1jO/MNlDxKI0UmA3l8whcARcXuu6lyaX/DwE0JtHgPbQLVX573HbiOid9dgmC7VeHx7yAika
	oQYj0TFCfumqotIb1lxHDhf7IE1NWH/UAXMnZveblC+dZLnCuJhsYmxyM1D2BR6GDW5GDWfFkABOo
	IhSTXoYER58sH+MAeWIu0WdzXG0saYUhSjlI1IJrCFvALtzfIPMKVbVmtSAaxG3pHB2ptdCMp2bPl
	nCEHQ2L6heZ5vSImktoV5zPTXwHC9blCvrkmsQshhWy9L3q+cgtGgaIQQ7vS2Bu9f+SPDI85mGCsI
	2da+GebU1S8qTC7Cvf2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uawyt-00000000CvS-2CKr;
	Sun, 13 Jul 2025 13:43:03 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uawvM-00000000Cd2-0ZwE;
	Sun, 13 Jul 2025 13:39:26 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C04C722C21;
	Sun, 13 Jul 2025 15:39:19 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ifD--ucc6E1n; Sun, 13 Jul 2025 15:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1752413958; bh=ipxl4zfw0YG+RKZ7tPVA6e20g09wAN/2FpTRmkI4s4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TgFdNYAUHEcFBuxzTSDNUnNhncmZAe6GQlUQlfQY/42yHIuSGVm9hY236iFYe41ex
	 W4tcGSwc+o0NhGlHWGM/t9xUadlWPIw6gGXN7Kz0IVQzEen3AcYZwQyKNk4xxl2myR
	 8qNNsnHrDsujTZkuQ7jlOHSGgtN4fduFqwUs7eYOSnwgByCmg0ddEX4xM6DK/n5i4d
	 LSsL2cSb9G8D85nziJlJ5tr/c2ANeFekmb/9snyyy9V3ETCst5zwfutSmG2o2096DQ
	 sYpS0B5ZVESxWbeftkAgPrStWxtgAIv81DkA9Jaig0UdVw4qMRWs/7Sq4sDHHxPZ6m
	 fy1FKRDkrGgcA==
Date: Sun, 13 Jul 2025 13:39:06 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/6] arm64: dts: rockchip: Add Radxa ROCK 2A/2F
Message-ID: <aHO2-l7MuaouBNmw@pie.lan>
References: <20250712173805.584586-1-jonas@kwiboo.se>
 <20250712173805.584586-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250712173805.584586-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_063924_585169_01521039 
X-CRM114-Status: GOOD (  11.60  )
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

On Sat, Jul 12, 2025 at 05:37:44PM +0000, Jonas Karlman wrote:
> The ROCK 2A and ROCK 2F is a high-performance single board computer
> developed by Radxa, based on the Rockchip RK3528A SoC.
> 
> Add initial device tree for the Radxa ROCK 2A and ROCK 2F boards.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Tested on my Radxa 2A board, the SD card could be read out at 45MB/s,
the GbE port reaches 942Mbps with iperf, and the EEPROM could be read
out correctly. I also saw the heartbeat LED blinking,

Tested-by: Yao Zi <ziyao@disroot.org>

> ---
> v3: Rename led nodes to led-0/led-1 (Chukun Pan)
> v2: Limit sdmmc max-frequency to 100 MHz (Yao Zi)
> 
> Schematics:
> - https://dl.radxa.com/rock2/2a/v1.2/radxa_rock_2a_v1.2_schematic.pdf
> - https://dl.radxa.com/rock2/2f/radxa_rock2f_v1.01_schematic.pdf
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../boot/dts/rockchip/rk3528-rock-2.dtsi      | 293 ++++++++++++++++++
>  .../boot/dts/rockchip/rk3528-rock-2a.dts      |  82 +++++
>  .../boot/dts/rockchip/rk3528-rock-2f.dts      |  10 +
>  4 files changed, 387 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

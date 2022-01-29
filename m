Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 323ADC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 17:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CY1OfnXzObjnSNkKaY4xQ7svu2p61LUcwPBh2bCmLfM=; b=Ubz45c5NUWEM+I
	v0qwig92DvSkGJypqc23kW6xJV2rs40DLBVIuEkqQmz238e5TbDMVkBzQ/Rt4Cb2hla9znKHF1WJj
	9V4DMCiGcfJiL7RlO8UfQNaywq9kFeH8z3O69Ok1aiDhy/2Ivnl1wm1j1kWyu60DuGQ7evZ/1fa1n
	dG8SSHaM4/dc4prvjemXhwwK48fgT4Gk/uLyKCYo4IVXFNt0mFWua3jh608WjdrXnMKqKv4Rl0gWZ
	A9hBmMIkOIGduWpdKanZqKG9mUom86SDlCzAav3NYsKVFi+20rQK9Hv0zgzPJWSzUs3ig/vENAJY5
	0gMIyXk9DhnPN8pUihUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDrys-005CMu-Bu; Sat, 29 Jan 2022 17:57:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDryk-005CHz-OI; Sat, 29 Jan 2022 17:57:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDryj-0005eg-3V; Sat, 29 Jan 2022 18:57:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Quartz64-A fixes and enablement from 5.17-rc1
Date: Sat, 29 Jan 2022 18:57:39 +0100
Message-Id: <164347899463.1472860.246056649344007753.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220128003809.3291407-1-pgwipeout@gmail.com>
References: <20220128003809.3291407-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_095738_827247_869A26C7 
X-CRM114-Status: GOOD (  12.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 27 Jan 2022 19:38:04 -0500, Peter Geis wrote:
> Good Evening,
> 
> This is the first of several patch series for further expanding
> Quartz64-A support.
> 
> This series has the following patches:
> Fix the ddr regulator voltage.
> Add pmu_io_domains to permit sdio and high speed emmc support.
> Add sdmmc1 node for wifi support.
> Annotate con40 functions and enable i2c3.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: fix Quartz64-A ddr regulator voltage
      commit: 8c318aaa20000bcfb9dc115c2a8e08c2e77ad439
[2/4] arm64: dts: rockchip: add Quartz64-A pmu_io_domains
      commit: 827dfba89ae150cd0fd88bc13117540cb4882943
[3/4] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
      commit: 2ed1e35457a1917a9c567c186a5adc7ce6341b6e

With a minimal reordering (sdio-* comes before spdif alphabetically)

[4/4] arm64: dts: rockchip: add Quartz64-A con40 hardware
      commit: 2943660fe301aa650cdf60226a2a350d09145823

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

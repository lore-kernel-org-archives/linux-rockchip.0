Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11DB5CF6499
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 11:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Vjv1l65JodUga7DSby9i26ShcN8IANS7p6zmfrDY50=; b=f6fuzR0RP+jh3N
	j4EcMYQYcTc7rWKsWzb+mWXt2dfxFavkBrhuTy4+BRhvtCiUYK3VAB8J1GWCrOaoMcdDcPXc8Ivhi
	JOja8znMBFEf0VBtkVd+BH5+nEC0PumDqgvOekYK1GY817qCAhCT07LeF9LxFw+Wzi4srAdLGszb/
	rUzkJrNYe28lFPm2PCsSa9cxzTbKBrIgKqpBxrARqogNx705jt9at2QJeiaWC4oDUqYYuus26M8Yn
	G/yLaBOwQLe5T7R0KT5DGfk+VcRnBiGBKY3w+QmhkWqM8XwzJfWZRA9qjkx+rhpfm21FBoLpZYRA3
	lhepJjYu2NqBr75yvXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svEBM-0000000GmxB-0VCU;
	Mon, 30 Sep 2024 11:03:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4O-0000000GlQ6-372w;
	Mon, 30 Sep 2024 10:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NtLnEvnvmxA2Hw+YLR311xgnBqdt57NsrhOOUbVmrJo=; b=Ekwvj0OLBkNW60L7kWUgdEFY6m
	ckTAo/8f/guzfap7F49YoAprGCo2YTD3dfWfhFaHpy3rxxOSIiG/dLLRcOHr0aIbcSGYBnqUg3VSF
	paldoxeP7CsCdjJwlb/wzulMgxbG7ItH2f/k7zuXzFPB/uHQR3kPhaaYkOU2cQWwIzPAHw3j4yDyG
	AUTS1rkdh3BCvjMA/aZkwJuuzsTTOBfEkh0STy0C2lAicjK1uFwUWaZk9hPLjubiQcw+GVvU6u+5C
	d9utiHcBe0uG/3rdmCs+9PcX7lVhn0gG+n9DGy74d/vCatVzl0lBZeCIVU5bhC+U94qeF5x6ljNnM
	uRl0+CHg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4B-0004Xd-OQ; Mon, 30 Sep 2024 12:55:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Alex Zhao <zzc@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Jing Luo <jing@jing.rocks>,
	Ondrej Jirman <megi@xff.cz>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Joshua Riek <jjriek@verizon.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Sam Edwards <CFSworks@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH 0/5] Turing RK1 SoM DT updates
Date: Mon, 30 Sep 2024 12:55:32 +0200
Message-ID: <172769365136.1880381.2087468618693375702.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912025034.180233-1-CFSworks@gmail.com>
References: <20240912025034.180233-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035600_804804_9490D172 
X-CRM114-Status: GOOD (  11.26  )
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

On Wed, 11 Sep 2024 19:50:29 -0700, Sam Edwards wrote:
> It's been a little under a year since support for the Turing RK1 RK3588-based
> SoM board, was introduced upstream. Since then, the driver developers have had
> great successes in further RK3588 enablement, achieving such enhancements as:
> - Stable thermal ADC support
> - USBDP PHY support
> - Panthor: a driver for the Mali-G610 GPU found in RK3588
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Split up RK3588's PCIe pinctrls
      commit: 4294e32111781b3de4d73b944cbd1bc1662a9a7a
[2/5] arm64: dts: rockchip: Fix Turing RK1 PCIe3 hang
      commit: ed1b30c33bb97abea9de4f749a890f5c88183d71
[3/5] arm64: dts: rockchip: Enable automatic fan control on Turing RK1
      commit: 604c164317ac93feae4b06bceac5bdb0be3bf96f
[5/5] arm64: dts: rockchip: Enable GPU on Turing RK1
      commit: f136ce5d07cbd91c8eadc407ddf1ad00dc1c3cec

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

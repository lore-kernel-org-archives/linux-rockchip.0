Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA056C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 18:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vrjldsNDPkXPr/65xB+UkhcDQLs8h+JSCihV/JWLtg=; b=Uz8U7wb6Plpl9Y
	EqfEdNrWSb4XKAbUOX/phJSA09Cu4PsxHJx/uOINj+bp+FdgVyytSL1Kn/O0NdwDWZnRokRXPlX5L
	4GQmFwbRZZsEbkVhrPVxbk8LIpwzGdp4XEzcFxhfI5rxslvueJzT/4ZZQT5KNKioC7XGQE+8iM6hS
	qGapnqBeLB5BO/YTP5gMh0KAZyth2y9Nh975feeSCSY+uYggjV+HkwBEZS/rk8Bix+fo/xw1SgWSe
	8pleVtCoUAHw/FY0qoiutdmxvJu8M5cf44hUIH+e4SvW9mIs3b+1bRy6x129m8N1fKnNv6PviYYrv
	jwiM9tKvCwkOhBKdS0tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMRB-008EVj-0e;
	Tue, 25 Jul 2023 18:07:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMR8-008EUY-1F;
	Tue, 25 Jul 2023 18:07:07 +0000
Received: from [185.230.175.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qOMR0-00067u-HF; Tue, 25 Jul 2023 20:06:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Qu Wenruo <wqu@suse.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Simon Xue <xxm@rock-chips.com>, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 John Clark <inindev@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Serge Semin <fancer.lancer@gmail.com>, kernel@collabora.com,
 Vinod Koul <vkoul@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v2 0/2] RK3588 PCIe3 support
Date: Tue, 25 Jul 2023 20:06:56 +0200
Message-ID: <6404573.MHq7AAxBmi@phil>
In-Reply-To: <20230724192223.5jnu5wgrzmmjz5z5@mercury.elektranox.org>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <169022594803.2911118.12432442062352790360.b4-ty@sntech.de>
 <20230724192223.5jnu5wgrzmmjz5z5@mercury.elektranox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_110706_422372_4C801C64 
X-CRM114-Status: GOOD (  20.70  )
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

Am Montag, 24. Juli 2023, 21:22:23 CEST schrieb Sebastian Reichel:
> Hi Heiko,
> 
> On Mon, Jul 24, 2023 at 09:12:35PM +0200, Heiko Stuebner wrote:
> > On Mon, 17 Jul 2023 19:35:10 +0200, Sebastian Reichel wrote:
> > > This adds PCIe v3 support for RK3588. The series depends on the PCIe
> > > v2 series [0], since the the same binding is used. It has been tested
> > > on Rockchip EVB1 and Radxa Rock 5B.
> > > 
> > > Note, that the PCIe3 PHY driver is currently missing bifurcation
> > > support for RK3588. Thus after this series only PCIe3x4 is usable
> > > (in aggregated x4 mode) without adding support for the PHY's
> > > "rockchip,pcie30-phymode" DT property, which allows configuring
> > > how the lanes are distributed. Aggregated 3x4 mode seems to be the
> > > most common configuration. Both EVB1 and Rock 5B use it, so I
> > > cannot test anything else anyways.
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
> >       commit: 0acf4fa7f187cd7e3dad93f1ee14e9509687621e
> 
> Applying this without the PCIe 2 series being applied introduces
> warnings for the RK3588 dtbs_check, as mentioned in the second
> setence of the text you quoted :)
> 
> (FWIW RK356x already has the same warnings, though)

darn, I didn't do a full binding check, only a "compiles" check
after applying. We're at rc3 now, so I would hope that the pcie2
binding changes get applied soon'ish so I can then also pick up the
dts change from there.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD81AEB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 11:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXkUqg3JCWF298EJgMv51u7pqKHowc5r15KAGNsxXqQ=; b=AhvgDtY7n1GDfl
	a1GfGwlNyyKKEzLD2V72fHxwgDxxpeRQGFmzjRXBPPlSHJDL7Yaazlo+vElxTwDn1XqFv0buLJlUj
	+fO/dFbDJI9uJURGsGe/sIuu2nw6+dVe0A3aPQ773+tYA5F5zh93xXY8H/dgjftS8v7eif9Mm83Ee
	22lj0OHtjvwTvup/9E7ahuZm6FmmpUjm0MdPkg6Z4BkwyxTHNX93dhl2cuTLWnQ370kMcTBR0uvZR
	QLukehQFN36bo6AoS5DcdRXeS5X1t2JcIlBMMUce0KN2FzfV7Vd0SIwhJ/5XQq8Zcc5OAklfo91rV
	gMjfeNhfHyiCEKCOnvTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKHNx-0068RB-26;
	Fri, 14 Jul 2023 11:54:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKHNu-0068QL-23;
	Fri, 14 Jul 2023 11:54:55 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qKHNb-0003C7-KD; Fri, 14 Jul 2023 13:54:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Serge Semin <fancer.lancer@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 0/3] RK3588 PCIe2 support
Date: Fri, 14 Jul 2023 13:54:34 +0200
Message-ID: <3628628.VLH7GnMWUR@phil>
In-Reply-To: <20230713204844.c4j4lebzj54uj7no@mercury.elektranox.org>
References: <20230713171851.73052-1-sebastian.reichel@collabora.com>
 <9408492.EvYhyI6sBW@phil>
 <20230713204844.c4j4lebzj54uj7no@mercury.elektranox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_045454_691880_39AD1E4F 
X-CRM114-Status: GOOD (  17.32  )
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

Hi Sebastian,

Am Donnerstag, 13. Juli 2023, 22:48:44 CEST schrieb Sebastian Reichel:
> On Thu, Jul 13, 2023 at 10:09:29PM +0200, Heiko Stuebner wrote:
> > Am Donnerstag, 13. Juli 2023, 19:18:48 CEST schrieb Sebastian Reichel:
> > > This adds PCIe v2 support for RK3588. The series has been tested with
> > > the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
> > > and Radxa Rock 5B (&pcie2x1l2).
> > 
> > Didn't Rob write that he applied patches 1-3 of the v1 series? [0]
> > or did I miss further communication somehow?
> > [0] https://lore.kernel.org/r/20230626193238.GA3553158-robh@kernel.org
> 
> Rob wrote, that he de-applied the first patch:
> 
> https://lore.kernel.org/all/CAL_Jsq+=kBrujhLW_KNRWpj+DQJbnXrA=RS3La5ekbJtji+xiQ@mail.gmail.com/
> 
> It seems the second one was also dropped, since I rebased on top of
> 6.5-rc1, which only had patch 3/4.

thanks for the clarification :-) .

> FWIW the remaining dt-bindings fix issues that also exist for
> RK356x, so I guess there is no strict dependency. It might be
> acceptable to merge the DTS patch already, so that we finally
> get working network on Rock 5B. That would temporarily introduce
> DT warnings though (RK3588 is currently warning-free).

We're still early in the release cycle, so I guess we should
just give Rob(?) time to pick up the binding patches if they
look ok to him. And not introduce new warnings ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

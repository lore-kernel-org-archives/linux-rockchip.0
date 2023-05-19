Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93B2DC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 May 2023 06:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6wTWwZjSbP00DGFHyPy7oG0DUNdD/JHi9QQGxEc+C4=; b=gLTBSM0bYciLNQ
	F6Vg9DX75q/qHEGiBlRyxPZDb78ShXdfEF/pl/APsvBg8tAqD+fMCroI+g7g/tj5nzOTBaaOzi7ia
	7cRYbWYnuqwpFZhNti8P406TxQvDhEOS+NvNc4Y26ES0bIPx0PQ7Lp7kz/XdpLRV1qo3TMhvjei5G
	Lzpv/ELMCiDYN/7JW54QjkWtPmGNC6MuL1eEqwT1oDd5QY+4HkluR9duRrgSCut22hcM1x4mtyIhg
	Tb2TWEhJwPQaDwTceliYjVhD7NQVNkH8y6sUSFJOmm0H/IenUQEqT9dlTElIcBNvFYHY18wgnOr4P
	BEJ90kpsiTJzybitcUgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pztNg-00FEQ7-1f;
	Fri, 19 May 2023 06:14:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pztNe-00FEPK-1a
	for linux-rockchip@lists.infradead.org;
	Fri, 19 May 2023 06:14:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pztNc-0001Wo-FH; Fri, 19 May 2023 08:14:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pztNW-0001NB-Qu; Fri, 19 May 2023 08:14:14 +0200
Date: Fri, 19 May 2023 08:14:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 12/21] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Message-ID: <20230519061414.GF29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-13-s.hauer@pengutronix.de>
 <20230516170919.00000dc4@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516170919.00000dc4@Huawei.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_231422_534266_27B1A698 
X-CRM114-Status: GOOD (  17.47  )
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

On Tue, May 16, 2023 at 05:09:19PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:47 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
> > the missing case.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> No equivalent for the DMC driver you moved to he defines earlier?

The DMC driver needs its own set of changes. Like the DFI driver it's
currently RK3399 only. I'll leave that for someone who has active
interest in this driver.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

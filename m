Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4623CEB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 13:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHPmMrY5rtTNLJoAPJJjETV0xZI+EjTu8tRazURs1PM=; b=cRV9GzkcyG/FCy
	v2TJR9ct4zLsd8MLtDaHRjw/eRR9mty34lawMYmROzUvC+ROyiPuWXEFYiPoLc3DWkHE4I6ykQPRj
	NMP3AXNmXl6zntVttSJTH7Gy50iNkCQr7YdgL5Xq+ITPURCmvCtglZJ0+gE+gy5zCvHBdOyhUdeRz
	/OAv8oorTZ/Gg8RPOG4QtVmNvcnfECpGtXyIHq3RjUqb/0vf+JWiVn62JNkf5IXNuxgd3+IExtDJh
	Z09cdxqYGM6rRRc3gxT/QzCmsgAM2jBYNT+eRS1B5WmHHaUAkBUzg/0WksqsREkA5sWtjtsUIErnj
	oMZaWyK5T6Y7yJaSKflg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9n0V-00EzbS-1a;
	Thu, 15 Jun 2023 13:27:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9n0S-00EzaK-0Y
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 13:27:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9n0Q-0006nm-HG; Thu, 15 Jun 2023 15:27:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9n0N-0002KD-VC; Thu, 15 Jun 2023 15:27:15 +0200
Date: Thu, 15 Jun 2023 15:27:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
Message-ID: <20230615132715.GF18491@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
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
X-CRM114-CacheID: sfid-20230615_062720_208761_18EEF287 
X-CRM114-Status: GOOD (  31.58  )
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

On Wed, Jun 14, 2023 at 03:40:34PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Wed, May 24, 2023 at 10:31:28AM +0200, Sascha Hauer wrote:
> > This is v5 of the series adding perf support to the rockchip DFI driver.
> > 
> > A lot has changed in the perf driver since v4. First of all the review
> > feedback from Robin and Jonathan has been integrated. The perf driver
> > now not only supports monitoring the total DDR utilization, but also the
> > individual channels. I also reworked the way the raw 32bit counter
> > values are summed up to 64bit perf values, so hopefully the code is
> > easier to follow now.
> > 
> > lockdep found out that that locking in the perf driver was broken, so I
> > reworked that as well. None of the perf hooks allows locking with
> > mutexes or spinlocks, so in perf it's not possible to enable the DFI
> > controller when needed. Instead I now unconditionally enable the DFI
> > controller during probe when perf is enabled.
> > 
> > Furthermore the hrtimer I use for reading out the hardware counter
> > values before they overflow race with perf. Now a seqlock is used to
> > prevent that.
> > 
> > The RK3588 device tree changes for the DFI were not part of v4. As
> > Vincent Legoll showed interest in testing this series the necessary
> > device tree changes are now part of this series.
> 
> I tested the series on RK3588 EVB1. The read/write byts looks
> sensible. Sometimes cycles reads unrealistic values, though:
> 
>  Performance counter stats for 'system wide':
> 
> 18446744070475110400      rockchip_ddr/cycles/

This goes down to missing initialization of &dfi->last_perf_count, see
my other mail. Will fix this in the next round.

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

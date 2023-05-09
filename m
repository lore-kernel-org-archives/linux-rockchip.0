Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CECEC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 09:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEerHJSu5SJCLJHLaooEO+taEEYLTvCcA8CRVBr2jaQ=; b=gd72TZKAbnnmbh
	tVVkXcrCVRkPweYVSBFUlAmC+C15OheH8AdUZl2+69s6aj8PRxaR2rJ4q6AyoM7ysfuuRXeD/MVXC
	LQljMiOdKbKyj+yBc2Toy6PQ6zIt6ID6LT2loIJ9Bgnr1i25lR0ITCnjLiDfT1EI6UTmR9jesSyQu
	Y0gdKfeMGQb13p9BDk1RaNRZVjKFACRnL0fjkOzpIbH4vRZHOFYVpFI4dapxNWupSFBhKnuEFf/zO
	sURLZfF4tRBxp68FU92OBjM6VXkPUOG1Jw4G758LbZ+2hRCWNmO32IfThhcPF853YRyLYCOLd/2GL
	yiXCjCz65HOCiBPan5sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwJmu-002lMq-1D;
	Tue, 09 May 2023 09:37:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwJmq-002lLL-32
	for linux-rockchip@lists.infradead.org;
	Tue, 09 May 2023 09:37:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwJmk-0006xz-Gk; Tue, 09 May 2023 11:37:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwJmi-0004fs-Et; Tue, 09 May 2023 11:37:28 +0200
Date: Tue, 9 May 2023 11:37:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Message-ID: <20230509093728.GF29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-22-s.hauer@pengutronix.de>
 <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
 <d505aba4-e345-44f0-fc70-33a69e0c5b7e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d505aba4-e345-44f0-fc70-33a69e0c5b7e@kernel.org>
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
X-CRM114-CacheID: sfid-20230509_023736_999864_26A577DA 
X-CRM114-Status: GOOD (  29.45  )
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

On Fri, May 05, 2023 at 06:31:35PM +0200, Krzysztof Kozlowski wrote:
> On 05/05/2023 18:29, Krzysztof Kozlowski wrote:
> > On 05/05/2023 13:38, Sascha Hauer wrote:
> >> Convert the Rockchip DFI binding to yaml. While at it add the newly
> >> supported rk3568-dfi to the binding.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Please use scripts/get_maintainers.pl to get a list of necessary people
> > and lists to CC.  It might happen, that command when run on an older
> > kernel, gives you outdated entries.  Therefore please be sure you base
> > your patches on recent Linux kernel.
> > 
> > You missed at least DT list (maybe more), so this won't be tested.
> > Please resend and include all necessary entries.
> > 
> 
> Actually you already got such comments and nothing improved here. You
> just resend same patch with same bugs.
> 
> This is a waste of our time. Ignoring output of maintainers means there
> is no testing and the patch does not appear in the inboxes.
> 
> I don't understand why you insist on ignoring that output.

I skipped the device tree list because there was no change in the dts or
binding part compared to the previous version.

But ok, it's worse. I only *intended* to not change the dts/binding
part. In fact I did, because the things you mentioned were already fixed
in an earlier version and I indeed ran dtbs_check and dt_binding_check on
this ealier version.

Somehow old patches sneaked into this series. Sorry for that, I'll send
a new version once I sorted this out.

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

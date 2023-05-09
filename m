Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7470DC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 10:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJ16JQrTYI3SF65tXvGj6MsSjdLj8KIYVtGCpmbgw5k=; b=brOrJOU3QY70vW
	HXxnxsN49NV7aC0p7EjsJ55n9JhX058eTMVNwbeuV99mDfwm8JqJqZ68tzD7fK5hxOsfLEcG47BTo
	x9KxrF6lyzqu0CDZXkJKaSXvBT2edE6bq/8vnW6ntp8p/iNjxgQOwPVyAlP4kb9NoRalpTM3yZGMV
	US7iBqZorfh9VB0hTVcg9Z5LCTlmtSsHJbhVC6buEZu9rRnOhcrpKtVjr5xQjdu8Nx0SYWHomnK39
	VjkUz6TqvZKUmt5Pnt9gmTa5yJnOnKvT7WNkgBvuCZMlOnvSBXJGJAVkE8Sd5CxmJUhbe2M/ysDN4
	4o5GFTL64ld3IyAxUQAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwKBJ-002otK-2k;
	Tue, 09 May 2023 10:02:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwKBG-002orw-2V
	for linux-rockchip@lists.infradead.org;
	Tue, 09 May 2023 10:02:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwKB7-0002F1-0b; Tue, 09 May 2023 12:02:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwKB5-0006Qe-1w; Tue, 09 May 2023 12:02:39 +0200
Date: Tue, 9 May 2023 12:02:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Message-ID: <20230509100239.GG29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-22-s.hauer@pengutronix.de>
 <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
 <d505aba4-e345-44f0-fc70-33a69e0c5b7e@kernel.org>
 <20230509093728.GF29365@pengutronix.de>
 <326c57b3-90b3-8d92-be10-34d03463d8d2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <326c57b3-90b3-8d92-be10-34d03463d8d2@kernel.org>
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
X-CRM114-CacheID: sfid-20230509_030250_815381_A0147BFA 
X-CRM114-Status: GOOD (  30.28  )
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

On Tue, May 09, 2023 at 11:40:26AM +0200, Krzysztof Kozlowski wrote:
> On 09/05/2023 11:37, Sascha Hauer wrote:
> > On Fri, May 05, 2023 at 06:31:35PM +0200, Krzysztof Kozlowski wrote:
> >> On 05/05/2023 18:29, Krzysztof Kozlowski wrote:
> >>> On 05/05/2023 13:38, Sascha Hauer wrote:
> >>>> Convert the Rockchip DFI binding to yaml. While at it add the newly
> >>>> supported rk3568-dfi to the binding.
> >>>>
> >>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>>
> >>> Please use scripts/get_maintainers.pl to get a list of necessary people
> >>> and lists to CC.  It might happen, that command when run on an older
> >>> kernel, gives you outdated entries.  Therefore please be sure you base
> >>> your patches on recent Linux kernel.
> >>>
> >>> You missed at least DT list (maybe more), so this won't be tested.
> >>> Please resend and include all necessary entries.
> >>>
> >>
> >> Actually you already got such comments and nothing improved here. You
> >> just resend same patch with same bugs.
> >>
> >> This is a waste of our time. Ignoring output of maintainers means there
> >> is no testing and the patch does not appear in the inboxes.
> >>
> >> I don't understand why you insist on ignoring that output.
> > 
> > I skipped the device tree list because there was no change in the dts or
> > binding part compared to the previous version.
> 
> Please always CC DT list and all maintainers. Just because something did
> not change here, does not mean that nothing changed elsewhere, e.g. in
> dependant schemas.

Ok.

> 
> What's more, the binding should have changed because I asked to fix
> several things.

You commented on v1 of this series and the things you mentioned were
fixed in v2 and v3. It's v4 where I lost them.

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

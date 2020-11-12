Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCAB6C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:30:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D94E8207BB
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:30:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LUGw6Hyk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D94E8207BB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zbkX2vo378x6hzNaNdwRNsD7Y5K6emcvOVmedwVzt7A=; b=LUGw6HyktImb+KL1hfR6Dio0m
	YqUyo4uDgckLS5EZttxrlekkh1mHkhE3/W+nazT30HGhvEzNISFuhfBSZ/bSKkx5X0CcqAI9AYwMw
	V9Rz5rgoSHl4HYL0mmLSEWZVWvtZ7TDNwPGyLzvrSqGa3xzzGr74BMZCCZtIlABVwlkfPZ9O2s5yr
	JUovSVE104UoGifyzqUU3HypoLDRXMWpG1HbSp561KT0u9oI+a3SKt7/N83ICy/uQdsh19JbI3IJY
	UeS9HSzfhSktGXFSDQr4HFm/Yw0jk3AwBesr5PBWpsRxno4oTYKWccOnuIoik4iYLOHW+wOKOdBxa
	bntZxJv1Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdCg8-0003mY-Qu; Thu, 12 Nov 2020 13:30:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdCg5-0003lo-AI; Thu, 12 Nov 2020 13:30:18 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kdCfy-0002GL-Ry; Thu, 12 Nov 2020 14:30:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Date: Thu, 12 Nov 2020 14:30:10 +0100
Message-ID: <5334671.Lg3upMlxu3@diego>
In-Reply-To: <20201112132828.GK1997862@dell>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
 <2215873.HjEmSL4Tfo@diego> <20201112132828.GK1997862@dell>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_083017_368678_C5C11EE6 
X-CRM114-Status: GOOD (  20.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 12. November 2020, 14:28:28 CET schrieb Lee Jones:
> On Thu, 12 Nov 2020, Heiko St=FCbner wrote:
> =

> > Am Donnerstag, 12. November 2020, 14:22:24 CET schrieb Lee Jones:
> > > On Thu, 12 Nov 2020, Heiko St=FCbner wrote:
> > > =

> > > > Am Donnerstag, 12. November 2020, 11:33:44 CET schrieb Lee Jones:
> > > > > On Tue, 03 Nov 2020, Lee Jones wrote:
> > > > > =

> > > > > > Fixes the following W=3D1 kernel build warning(s):
> > > > > > =

> > > > > >  drivers/soc/rockchip/io-domain.c:57: warning: Cannot understan=
d  * @supplies: voltage settings matching the register bits.
> > > > > > =

> > > > > > Cc: Heiko Stuebner <heiko@sntech.de>
> > > > > > Cc: Liam Girdwood <lgirdwood@gmail.com>
> > > > > > Cc: Mark Brown <broonie@kernel.org>
> > > > > > Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> > > > > > Cc: Doug Anderson <dianders@chromium.org>
> > > > > > Cc: linux-rockchip@lists.infradead.org
> > > > > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > > > > ---
> > > > > >  drivers/soc/rockchip/io-domain.c | 3 ---
> > > > > >  1 file changed, 3 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/roc=
kchip/io-domain.c
> > > > > > index eece97f97ef8f..d13d2d497720b 100644
> > > > > > --- a/drivers/soc/rockchip/io-domain.c
> > > > > > +++ b/drivers/soc/rockchip/io-domain.c
> > > > > > @@ -53,9 +53,6 @@
> > > > > >  =

> > > > > >  struct rockchip_iodomain;
> > > > > >  =

> > > > > > -/**
> > > > > > - * @supplies: voltage settings matching the register bits.
> > > > > > - */
> > > > > >  struct rockchip_iodomain_soc_data {
> > > > > >  	int grf_offset;
> > > > > >  	const char *supply_names[MAX_SUPPLIES];
> > > > > =

> > > > > Any idea who will pick this up?
> > > > =

> > > > me :-)
> > > =

> > > Well, that's certainly a start. :)
> > > =

> > > What are your plans?
> > =

> > the usual, my rockchip-tree -> armsoc driver branch -> torvalds -> 5.11=
 ;-)
> =

> Sorry, the ambiguity was my fault.
> =

> When do you plan on hoovering it up?

sorry should've written that directly ... I already did this "morning":

http://lore.kernel.org/r/160517975455.81506.16289432612279089945.b4-ty@snte=
ch.de


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90212C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 12:37:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A59D9608FB
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 12:37:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A59D9608FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7b6VujE8/CZSizcd1WWjyzKLvxrSdu0s8ztubL4idI=; b=LW+RNrgQdMPWen
	+8cZm/9CzKZbQAag618KLwQpXx4NH3TQp4ND45JUWF3jgsxuVJaGryUh3je0XBmBLzOfzlhDGVNX8
	8E/2No+9dBE1mR4psVl3by3tyGNKkz0jngLQ/QiptMjPAUm99bhYg0GtX7vEgDVvw9SWbB3/B6Joa
	Sa95DVTddItiAIZh21hZiWx4aab9/j8dS7tHrrXmdZQ3DiFVhEbs8dhYG6mRoQ9o2QyLbsroRmza9
	lU4hSwLeRFStJBEiBJt/60K8eQM7H+yt5XSkRkO/F57uZwUEfsUiY0gMqRpATjoPNCuE8ox1JsMAk
	IwuXbuPJ41kefbWV3KAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgR8E-00Aw3e-V2; Fri, 29 Oct 2021 12:37:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgR8B-00Aw31-UK
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 12:37:13 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mgR87-00013w-6j; Fri, 29 Oct 2021 14:37:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com
Subject: Re: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver
 handling
Date: Fri, 29 Oct 2021 14:37:06 +0200
Message-ID: <2912588.a5UK1EFgBA@diego>
In-Reply-To: <163548978553.15791.2075313346592720953@swboyd.mtv.corp.google.com>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <5381956.U9aoDET0nm@diego>
 <163548978553.15791.2075313346592720953@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211029_053712_003127_C63E6192 
X-CRM114-Status: GOOD (  17.67  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 29. Oktober 2021, 08:43:05 CEST schrieb Stephen Boyd:
> Quoting Heiko St=FCbner (2021-10-27 16:20:17)
> > Am Mittwoch, 27. Oktober 2021, 22:27:46 CEST schrieb Stephen Boyd:
> > > Quoting Heiko Stuebner (2021-10-27 06:26:14)
> > > > Recent conversions or inclusions of rk3399 and rk3568 as platform-d=
rivers
> > > > and subsequently allowing them to be built as modules introduced so=
me
> > > > problems.
> > > > =

> > > > These two patches try to correct them.
> > > =

> > > By removing modular support? Ok.
> > =

> > It looked like the easiest way to go for now.
> > =

> > With all the clock-definitions as init-data still in both drivers, I do=
n't think
> > anybody ever tested running this as a real module.
> > =

> > We could of course also remove all the __init + __initdata attributes, =
but
> > still wouldn't know if it actually runs as a module, without someone
> > building a real test environment for it.
> > =

> > =

> =

> Sure. Do I need to pick these up directly?

I don't have anything more for 5.16 and the 5.15 release should happen
on sunday, so yeah just pick them if you like - no need for doing a separate
pull request.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

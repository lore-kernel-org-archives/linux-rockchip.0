Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95529C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:40:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 179B723888
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:40:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 179B723888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eOk1AjuvxAQOIiSBUAgrnfcsktpAOK/ovZAxhyBVUdQ=; b=cy5ujo76DYYIrxsyvDBxxZjie
	mbiW1V5999hOgGiscEeJ7ZmfwA/LgQEz0JNnlCL81DgQ5ktzpanOWXl2kc0E+Who5oFhKnplrQUvv
	18gcqb29R4TkmSifVKJVIuvP5WOvHEtBNWNpMGjQZNcYm3g6d8oOg1S0Ky57kZm5J1YPmDOdFhys4
	6X41UUN8C2PlvdzNaF8YHOOs8dtZ6FihfrGox7wifvA6Zzisae9wFGJKtsSCV6OlTmL18uL2eu9Xn
	2oVyMR4tACWYXC2DJNi3ojdur2mD77QYEHFW3fPV0KMcvEGfnGL00hR9DsiBcvuvjoG1GoGHwT+XH
	qQCyvI/sw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Rlk-00076u-99; Thu, 21 Jan 2021 04:40:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Rlg-00076C-IN; Thu, 21 Jan 2021 04:40:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 472E3238E8;
 Thu, 21 Jan 2021 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611204022;
 bh=uqaKgj8ERy+L2vgyvOGN9yOlUjntHTGqoSn1YcsOB4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ChtW9EXEiiWJxlBj7fuIxQ7XefenOGQVnbZqWkrO87TFGKbgemZLagxOHaZk/4kka
 wxn06cX0D3wv2w38+MTLz5PH0TMf+N8DTO/XWbcON0F0f5bgamdV7Y8iMGdk/AMorf
 t3fgbd4G1m86rNagSTgGmIhTRUnzUIT3hpT1e57SJdix3NxDf7Ncdb5bt0DxSNpxJO
 9mH00TP+bdGAuuW1b2I6VsPAnURpTfX+lcNsBa+Gka2wdFHnJ2qDOK+RmOIoSlYe54
 u0jEVjLSe6PRr7h3UsAwBv+4mGImUl/2QU2+2cnJhs2YaoToBeVf93khK4kLQnQhEp
 e9UDpSh9Drs9w==
Received: by mail-lf1-f51.google.com with SMTP id b26so704849lff.9;
 Wed, 20 Jan 2021 20:40:22 -0800 (PST)
X-Gm-Message-State: AOAM533nsbjbGdgrE19E1/rc+OsC0ZQfSAHttG7ugYQBFwjdDvFozQKD
 wJF70zQKKkXOXnB6NBhqziaSj/hKieN8AtiXDT0=
X-Google-Smtp-Source: ABdhPJy8qhijve3RxQKPzmAsfsPdPAN5DUoEmElkmffNcBcnxlrBtAU2YthDmaPnmQr4komT5WSroZndwC/ucSf4o2w=
X-Received: by 2002:a19:810:: with SMTP id 16mr5771851lfi.233.1611204020484;
 Wed, 20 Jan 2021 20:40:20 -0800 (PST)
MIME-Version: 1.0
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
 <CAEr9=gsH2UhjMO_55FKmGKS0DYrT_-XKf0iwCKCNc93epbiXNw@mail.gmail.com>
 <87ft5ly5nh.fsf@kernel.org>
 <CAEr9=gsc0L=rn5YDLrArqbOMSt25HhHF7cwhp7sxdPa6-PQGpg@mail.gmail.com>
In-Reply-To: <CAEr9=gsc0L=rn5YDLrArqbOMSt25HhHF7cwhp7sxdPa6-PQGpg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 21 Jan 2021 12:40:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v64L94oudNnjhumEE6P6B=MjyOpmbYuZFfDc-fDDBZ_+jQ@mail.gmail.com>
Message-ID: <CAGb2v64L94oudNnjhumEE6P6B=MjyOpmbYuZFfDc-fDDBZ_+jQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
To: Lindsey Stanpoor <lindsey.stanpoor@gmail.com>,
 Felipe Balbi <balbi@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_234024_690040_2E318F4C 
X-CRM114-Status: GOOD (  21.14  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, cnemo@tutanota.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 21, 2021 at 12:30 PM Lindsey Stanpoor
<lindsey.stanpoor@gmail.com> wrote:
>
> On Fri, Nov 6, 2020 at 11:42 PM Felipe Balbi <balbi@kernel.org> wrote:
> >
> >
> > Hi,
> >
> > Lindsey Stanpoor <lindsey.stanpoor@gmail.com> writes:
> > > On Wed, Sep 2, 2020 at 11:12 AM <lindsey.stanpoor@gmail.com> wrote:
> > >>
> > >> From: Cameron Nemo <cnemo@tutanota.com>
> > >>
> > >> Document compatible for dwc3 on the Rockchip rk3328 platform.
> > >
> > > Hi all,
> > >
> > > Wanted to give this patch submission a gentle ping.
> > >
> > > Rob Herring acked the documentation changes, but I have not heard
> > > anything
> > > from the USB or Rockchip maintainers. This patchset would facilitate USB3
> > > support for Rockchip rk3328 devices like the Pine Rock64.
> > >
> > > If there is anything I can do to help move this along, please let me know.
> >
> > Sorry, it had fallen through the cracks. It's now in my testing/next.
>
> Following up on this. Will this move out of your testing/next?

The binding changes are likely stale now that the dwc3 binding has been
converted to YAML. See Greg's USB tree.

Also the DT changes should go through the arm-soc tree separately, so
we can stack on additional changes enabling USB3 on other boards.

ChenYu



> --
> Cameron
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

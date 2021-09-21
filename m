Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC69AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 19:30:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B20A61165
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 19:30:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B20A61165
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTPclWQ8yaEB2tet92a6lGxhHyDeRQpUUwz4/Qmj90Y=; b=qgRJnhDbOMmmv0
	ptoYh0AkmVyifmTJuElzvy4fNyQ+U/locWSaX3RxTnTJ4nuyYdI9zpFnE4+okJtAiGycNKLlMjKOU
	EgXLUfEuKfJqddeuv8hJJ6uH/RrjTVdY0raripWhvMEGJq7h0ARu3uxidcHhF6t51saGH78NopgLT
	lNBuDGkagQLC+fx4muXRUk7Ob4PSR5/GzEg1EMaf4VWL9/t4hLLMza+Zf28TeYe8lpQLbT7MJWL9k
	FSOSjCI1CfE0vGpDRALOwSSj1S1rarsLtIIHgdhT82VaYWPGifDs4GSJTSrgmkue5GkS0A6DwKIFp
	4IzDEKaUWpoB05kcl8gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSlTC-005dEI-2T; Tue, 21 Sep 2021 19:30:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSlSh-005d4P-OR; Tue, 21 Sep 2021 19:29:53 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mSlSZ-0004Qy-Ih; Tue, 21 Sep 2021 21:29:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Arnd Bergmann <arnd@arndb.de>, hjc@rock-chips.com, kernel-team@android.com,
 dri-devel@lists.freedesktop.org, geert+renesas@glider.be, airlied@linux.ie,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch
Subject: Re: [PATCH v2] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused
 warning
Date: Tue, 21 Sep 2021 21:29:41 +0200
Message-ID: <2662894.r5Zzv63rEP@diego>
In-Reply-To: <mhng-4c5264da-5502-4947-b32d-e9008a79ee90@palmerdabbelt-glaptop>
References: <mhng-4c5264da-5502-4947-b32d-e9008a79ee90@palmerdabbelt-glaptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_122951_854561_24E6F992 
X-CRM114-Status: GOOD (  18.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Dienstag, 21. September 2021, 17:04:10 CEST schrieb Palmer Dabbelt:
> On Tue, 21 Sep 2021 02:12:17 PDT (-0700), heiko@sntech.de wrote:
> > On Fri, 10 Sep 2021 20:43:18 -0700, Palmer Dabbelt wrote:
> >> cdn_dp_resume is only used under PM_SLEEP, and now that it's static an
> >> unused function warning is triggered undner !PM_SLEEP.  This marks the
> >> function as possibly unused, to avoid triggering compiler warnings.
> >
> > Applied, thanks!
> >
> > [1/1] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused warning
> >       commit: f7c57a4566115657c16fd6603b6ef8a21bae5194
> 
> I'm not quite sure where that lives, but is it applied on top of 
> something or is it merged from the tag?  Like I said a bit below this in 
> the original patch, this has started to break the build for me and I'd 
> like to pull it in as soon as possible.

The patch now lives here:
https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=f7c57a4566115657c16fd6603b6ef8a21bae5194

This is the drm-misc tree, with the patch living in the drm-misc-fixes
branch, which targets the current rc-kernels.

drm-misc-* moves into the core drm tree and from there on to Linus.


Hope that helps
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

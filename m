Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F61CC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 19:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roGeaNzhzqclCdOYo3ElMTNgsMQW875R5r/DdB4yH6o=; b=eqCdQwO7ZLWDji
	Bz4DsgRBsHZ6PNOOqjJ+cqD0Jmiv75m8JvFyxVuMqNCfCCCpDQP+mPJuNhFI+4ZLH2MAwSUNUQI3i
	3cn0oa6hFFVk8Y5R/6RLWDGa+iM6tmgKU9MwdqdJMtYTnzQd8bEGOwahiH/YhNM6TOVW2o9Nxufuo
	OPUbGmeN6tyfrG6aH2UhB7roPFJqwdA/OUls1i1J2/loD44fN6JEwfXZE3Xu3+gv4khStUvIv6pg1
	0A0jTweSGjxxPACL2PUP3B1eFp1Gvfj39mZcm2teHxQlqVyJiqTOeVeGTITrHf25pwhiFu2mG3Hez
	KNeMu1HqK0d0uDKBt6Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBiHs-007TVq-8y; Wed, 13 Jul 2022 19:44:44 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBiHp-007TUh-Kq
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 19:44:42 +0000
Received: by mail-qk1-x733.google.com with SMTP id o21so1336100qkm.10
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 12:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AgWnvJuWvMs9BNQibg9dJXMSIiw7AP7RCPNxvoP8zeA=;
        b=ksIFue9YbxkNLn7R1csI9a8pPRDVDDl+Hi3uOkbmIG83c57hIIoiOpuSGJ0YRJWI0B
         nT4LotaiUcav8II4zOoIfmBWEQWHJcZO5dz73ddeJSrf4o0+SXgj3SeA3/4Y4go1QWCp
         dEGL1bEPsofw/Fv9z9QBd4WPYihJ1lP5ze4ZhqsIX9XMFjt5Y3AZRiYZFgp1WRs42q+P
         s2VtJZM3uvih9ByXdt5ekF8oG5NzenQvIuK2npxY7eJw2aEz2yvVMZVgaX/ScUYrKK3d
         2pAGOqO3/bCeFF0pJVyYq9Incpvt2YMjF8jBIFSVwEeUVG17JY10wGovFKoR5GCtnVah
         QXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AgWnvJuWvMs9BNQibg9dJXMSIiw7AP7RCPNxvoP8zeA=;
        b=SRTjQ/Hp3qaBlh1WxcdkIbgfGs2UtBaeK6MMrBXn7Lc4Cn9X0BRdtncO/nHIPe4Vfh
         fGgY/qqIc4Py2NgGO/jhPGY6pep4/rrHaxINts15yBBFQqxCla/zHhMZb+IN1vn3Dtz9
         el/eqGb3g6tFrU5p9GBSt7CJKakUsod0L98sjOqa0ftB9CiM52tdROQaMh+5V6tyCoBI
         We4gOq1zq35JPfOd86hIltkGGg2/+noQV4rYDHIKibZYet84pbFO9eBIcYSV+d5YF+mL
         w5OFt2HQXiyV45X1mzoR/f3XHTzGb3NEXpGEpmMmAUoiIoTRR0jfH1mdxADJzHc1jczd
         PYzQ==
X-Gm-Message-State: AJIora/+s+ppdkxTMuLq2LOVlWmkbVlZvy9DU700Syi4PnepPYl/YG7H
	1Z2hnll+K37WCgnXo3NT2bGYj0DICMw=
X-Google-Smtp-Source: AGRyM1tSwpKky1uUYM+YAOJtp/PC8wosYfmP/SdoTQ7bhXPQ4JhS1BVR1eToNz1LiMU6pW7hkJ1V1g==
X-Received: by 2002:a05:620a:190f:b0:6b5:9bf7:60d with SMTP id bj15-20020a05620a190f00b006b59bf7060dmr3624315qkb.627.1657741479762;
        Wed, 13 Jul 2022 12:44:39 -0700 (PDT)
Received: from localhost ([2601:4c1:c100:1230:7360:5d5d:6684:e04b])
        by smtp.gmail.com with ESMTPSA id n6-20020a05620a294600b006b59d5ead72sm5812403qkp.46.2022.07.13.12.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 12:44:39 -0700 (PDT)
Date: Wed, 13 Jul 2022 12:44:38 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>, knaerzche@gmail.com,
	Collabora Kernel ML <kernel@collabora.com>,
	bob.beckett@collabora.com,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-staging@lists.linux.dev, nicolas.dufresne@collabora.com,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 3/6] bitops: bitmap helper to set variable length values
Message-ID: <Ys8gpl3m+vvEM7Sy@yury-laptop>
References: <20220713163201.136202-1-sebastian.fricke@collabora.com>
 <Ys8Txuq9/u/EL6sj@yury-laptop>
 <CAHp75VeOLfKw4-+Dpn54yy6j=tdiBNA_2Kvhj7mUUjTD-M_vYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VeOLfKw4-+Dpn54yy6j=tdiBNA_2Kvhj7mUUjTD-M_vYA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_124441_711294_D58E0B80 
X-CRM114-Status: GOOD (  13.49  )
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

On Wed, Jul 13, 2022 at 09:10:33PM +0200, Andy Shevchenko wrote:
> On Wed, Jul 13, 2022 at 8:56 PM Yury Norov <yury.norov@gmail.com> wrote:
> > On Wed, Jul 13, 2022 at 06:31:59PM +0200, Sebastian Fricke wrote:
> 
> ...
> 
> > I'd suggest you to try implementing
> >         bitmap_copy_from(dst, src, dst_off, len)
> > or even
> >         bitmap_copy_from(dst, dst_off, src, src_off, len)
> > if you expect that you'll need more flexibility in the future.
> 
> Do you think it would be useful?
> 
> We have bitmap_replace() & bitmap_remap(). Wouldn't that be enough?

bitmap_replace and bitmap_remap have no an 'offset' parameter.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

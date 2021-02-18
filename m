Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 824FDC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 04:46:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 21D0B64E3E
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 04:46:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 21D0B64E3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Xg1N0t4YOnTgoXEsLYiGDM47SFftTbp0f7fM+Zdbm8=; b=BKoFvEt6ug5YTAAOpLTPQhSKr
	W8X2mnIjNp7TzczHDvrg9dxCBNfGRCHZb0uf2iX4Pt1Tp054worc3HE7VbuQk/s37oBsT0AXkSpbt
	iYnud+/11AfPv0n/p90+nU5xhtZTb5gSeFLSj8q9Fo3BOfy9yh3rxpB6UNmkBSLrlymvf9qCTVP8Y
	rh8rdI2RRZeVd3e1U+UDe8S0bO/+6nuuhWJ6qwMaWy0N0YuosItZ+D+F4BAc5GCnbKb9RZdM3aLok
	tO4zWjvg7BXsYH/9BW/OaxeGsG5FVb7VogCg4WpCUDE2WggysjZsgNB0c45hF+zfGVMFZqShfVbgY
	Lx6rdbpaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCbCX-0006A4-JN; Thu, 18 Feb 2021 04:46:05 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCbCV-00069Q-4Q
 for linux-rockchip@lists.infradead.org; Thu, 18 Feb 2021 04:46:03 +0000
Received: by mail-ot1-x335.google.com with SMTP id v16so771067ote.12
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Feb 2021 20:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uRPXBOcc3B/pu4CSBIS5XwHK36dQbIHE3BhZvfVHemg=;
 b=d4B/Z9a1xLLux5NTqCqMTPdCWZ3GigC57FPPcCk63NCIEXIvVYlTU4/vrTqTekO3sZ
 sk9Ux95uTuM5sM7M/jzujMWkNJI3NyGCIGpa+6VilumewFNHFnZu+qBmzHZhBZhes6cO
 2bM+nLc6GF9gr6WrFHVQKLGY0txdGr05PgB7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uRPXBOcc3B/pu4CSBIS5XwHK36dQbIHE3BhZvfVHemg=;
 b=pONmI0kbbHhYtClF19xkaNUhtbq0xXqe4eAljWUzOeN2Sh0Vtq1MGiFEBr36ZYfu5P
 H1dUQ2C4i71uD8Qc0xDZjI8qKbULbldorQ0INOXawhNuRB0oTb/hYSRxobKXstI5gZtT
 dKmX4MKc02ahgvj2Mr9xChMAy3k+cIiIhAdK0ciVciPZgVjiIk42g+D8XfCqDWZHp1Pr
 PxtZFjgwnP9QgcJ5admDuVQVi2nb7xc0/ZSN5aKUbcOcTGJG3MkkSFv3VA9MoRLdrIfW
 NciF0amE0oia5Rlkk6vgAHWPxljNP/9vR3gbnxsLBl09TJBE8Emu5q5iOpVo0jVDw58F
 0+vA==
X-Gm-Message-State: AOAM531L1Fx0O101Z4lea12qFK8eKIq1KYSGHX/Yrto2TpApesEBWrct
 8uVJORtEZStCUzcraTZcgjmhobrAUl6CSPYCPpTeIw==
X-Google-Smtp-Source: ABdhPJxLq+KtqLQSlWLQMpYhpQUU33vFxZWTtQgp2WfR55g23TVlh5IGRK67ImVbn1ZhWvdViZqhfuRq1Km8AaPyxFw=
X-Received: by 2002:a05:6830:1589:: with SMTP id
 i9mr1759990otr.28.1613623557144; 
 Wed, 17 Feb 2021 20:45:57 -0800 (PST)
MIME-Version: 1.0
References: <a197cddb-f363-f790-f743-5012341591ba@fivetechno.de>
 <20210215151124.GN10169@bill-the-cat>
In-Reply-To: <20210215151124.GN10169@bill-the-cat>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 17 Feb 2021 21:45:44 -0700
Message-ID: <CAPnjgZ2Cz1zhbvTBPpOb0jaMWT_J7+okXKUrh8Td5_LfUNSV+g@mail.gmail.com>
Subject: Re: [BUG] [BISECT] rockchip: roc-pc-rk3399: TPL misses dtb
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_234603_209255_260BA9C3 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, 15 Feb 2021 at 08:11, Tom Rini <trini@konsulko.com> wrote:
>
> On Mon, Feb 15, 2021 at 03:05:20PM +0100, Markus Reichl wrote:
>
> > With recent U-Boot and roc-pc-mezzanine-rk3399_defconfig
> > and booting from SPI flash I get:
> >
> > U-Boot TPL 2021.01-00884-g0a2aaab0b6 (Feb 15 2021 - 14:36:50)
> > Missing DTB
> > ### ERROR ### Please RESET the board ###
> >
> > Bisecting points to:
> >
> > commit 0a2aaab0b678fd1778ff2fc59d0770fc82995532
> > Author: Simon Glass <sjg@chromium.org>
> > Date:   Wed Jan 13 20:29:49 2021 -0700
> >
> >     fdtdec: Use CONFIG_IS_ENABLED in board_fdt_blob_setup()
> >     This setting may be different in SPL and TPL. Update the code to check
> >     the correct setting.
> >     Signed-off-by: Simon Glass <sjg@chromium.org>
> >
> >  lib/fdtdec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > Reverting this commit fixes booting.
>
> Thanks for the report.  I'm about to push a revert for this and I'll add
> a Reported-by from you.

I'm not sure what is going on here, but possibly we need to add
TPL_SEPARATE_BSS to the board config..

Regards,
Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

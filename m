Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3FEC4320E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:59:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F45960525
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:59:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6F45960525
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VESIV2od/OyVXxt7NEcipsJGtO7iSldngK+htBl/PDw=; b=iLcob+V8q58NYx
	28tKHiNifemTSnOuuoAiqPg9s+ke4A7GlJID0uTYjRgh6KeiUJTKy+5Y6RGsQzd6bzEPABLra34X+
	4JYwt6x//S3xEKSfH118SL8X3OVLpYoimMhSodqU4J29In7qQ0dzOp+gnWa9lr4bl+EmAwkn1/4kQ
	eUStAkgo8sqcVI2pbtxjccZHFJSwfnsnuaCNexBTN9KxUo/hAkOmvhkJakJ/lOid++GXYutfcWoGz
	SYeEmp3vPGWNE9BE3I8dXSb8CTekX8DJmjGo08Q2P55qkGeEp2DfKbwE+j7SvSWWchoRVgCpm4zfX
	OtqUQyZGuEHt3BVfYfYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBcxt-009aLf-Nl; Thu, 05 Aug 2021 12:59:13 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBcxr-009aKF-3Z
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 12:59:12 +0000
Received: by mail-yb1-xb30.google.com with SMTP id z128so8784737ybc.10
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 05:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gr9Gh5+vW9OZGr0SdSE84N+LH4Roo172IAFuTaYSsHc=;
 b=UMF1LkczVhYv53Rkxvd68wjp6e1keFmFZHkecWPux656gXCsVPnbJmQrwxeHMrGaVD
 U2JK6ZQL35+kYws5pOSCD3+CwEahggY2W7ThYoOrLs1i/cSyUOy1lOOtKNavUmAf5bNv
 d2vMfAFOsx79YomW3JjfUvc5riwP3QXNui+VQyIhZlfmQWiK6hLfmNXvthfnUqjzzt8E
 F1qg06+TUxyaMP/UEYgxXypYGl6NRGFKNGKoVsftBCz4NHyt1xBVbBASkvFnhwgJ3Wos
 NEtiymokeRoVNOQsoRvIfeIQKtxYOuelB5482263D9uulsVostxXkvw/fNeVU+XfaQvY
 MNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gr9Gh5+vW9OZGr0SdSE84N+LH4Roo172IAFuTaYSsHc=;
 b=C2wdmtjuHhLE76rfkYWb8CXoQRfHA2ylX1TJviPB4OLJdy9+X4plQu1skK2Kbp56ua
 i9jmGT4zWx7RPvksAYT6fjk7vkhvUgVsqKPR0GMr2jQ52cxNnhaq/NIwDFt4bgCfX+RD
 VDsuifTSw6Glmet0NaTCNQbelgDlJD8I0IZTAx9kdibU24NNZyNKTM0ECXHGx9Lm985J
 uoBa7TEFDh2UlEj6Y9Kz12YwFx46EHCLEb+s4BWC9rsM8157zRQBGdvpPtnuRJYYrWWq
 zrb8iIBZAQ77v3poDL/WxL/AQf4gCEUrVM2xnhVfanMb3FGRln8EOlijRLb8mIUR5NE1
 gn7A==
X-Gm-Message-State: AOAM533Y1oXQup/CooVQVEfBX9RTSq3SsiK3IiGSNLXTKgwvq5DKVdkk
 NpuqlfHk1N6FnmGOYgWe8B5wR5wpdZszIbL8NU8=
X-Google-Smtp-Source: ABdhPJzTFyojU4VvqWJeaPQvyuMEUhC/vsMMTaMSuA/VzNXwGQQ5ZzAWDGxr9U51I0oKJSPwO2T+SqlWDl7cNfFxIeg=
X-Received: by 2002:a25:2cf:: with SMTP id 198mr5906026ybc.259.1628168349741; 
 Thu, 05 Aug 2021 05:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20210804143357epcas1p1c67eca591d8bb557c11b8175baaa8550@epcas1p1.samsung.com>
 <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
 <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
 <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
 <20210805124650.GM26252@sirena.org.uk>
In-Reply-To: <20210805124650.GM26252@sirena.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 5 Aug 2021 08:58:58 -0400
Message-ID: <CAMdYzYpR6br7s1RD2ze92WzJjtEDZwy9qS6YhghgXy7F91keFg@mail.gmail.com>
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
To: Mark Brown <broonie@kernel.org>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mmc@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_055911_215123_1ECF3820 
X-CRM114-Status: GOOD (  25.26  )
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

On Thu, Aug 5, 2021 at 8:47 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Aug 05, 2021 at 07:38:06AM -0400, Peter Geis wrote:
>
> > Also, I've got a possible fix to the dw-mmc issue, the following patch
> > changes the behavior to only enable a fixed regulator, not try to set
> > the voltage. It's a split between the behavior when vmmc isn't defined
> > at all and when its a variable regulator:
>
> One thing to watch out for with this approach is if there's things that
> really need a specific voltage to be set then you'll have to stop those
> things happening if you've got a voltage regulator that can't deliver a
> voltage in the required range.  I don't know if this affects MMC or not,
> if it's just a case of being less efficient it's not such an issue.

Yeah, but if this is a fixed regulator and it's a problem, then the
hardware is screwed anyways.

>
> > diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> > index d333130d1531..b30102980261 100644
> > --- a/drivers/mmc/host/dw_mmc.c
> > +++ b/drivers/mmc/host/dw_mmc.c
> > @@ -1446,11 +1446,13 @@ static void dw_mci_set_ios(struct mmc_host
> > *mmc, struct mmc_ios *ios)
> >   switch (ios->power_mode) {
> >   case MMC_POWER_UP:
> >   if (!IS_ERR(mmc->supply.vmmc)) {
> > - ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,
>
> This patch is very whitespace damaged FWIW.

Unfortunately gmail doesn't let you reply with patch sets without
mangling them, so it's only useful as an example.
If it seems sane I'll send it as a proper patch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

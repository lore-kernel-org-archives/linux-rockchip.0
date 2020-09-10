Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D1C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 08:43:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EDD9206D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 08:43:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="B1hExoPi";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="INguoyub"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0EDD9206D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mPQanuE2mVDK9LNQQcg0Mmvkpl78oODoiSJDrPUslOw=; b=B1hExoPi5KNNg0LDw+Aiifnk+
	sNPTTz94Rp4qU+BRsGGZW6Pmy9hIjMRga3070C4+TmOMLk2zF/mdWSlLxpSyO6fMQ5uQo8S6ceftu
	TR0UueoHfSvWwNVCap5fmY+dSLIjRn9lcjiUfwJ96zaejGU0in/5NGbLdLFvL+ksqOPGCLrNMOedC
	lYnWuGqbM6WzoZniiEtK/4fWXq4TnQd8mbrjHlrPkydk2j5wRRJxGaVvqcU5Uph3g/zOcXUl05o5F
	7b3vvi+OXwPk99Q/BtEBDWnYidOr/Cnbr575+9PxZwZuK19AdN9/h6/IJfI+pn3L0U5/Znx9Bfr8F
	lohiG9eCg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGIBC-0000Sn-Ol; Thu, 10 Sep 2020 08:43:42 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGIBB-0000RZ-5V
 for linux-rockchip@lists.infradead.org; Thu, 10 Sep 2020 08:43:41 +0000
Received: by mail-oi1-x241.google.com with SMTP id d189so5163621oig.12
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2020 01:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RM+6YCueDPy1nkorG5jfOVGfbj1m5UCHBF4PF2PU/iI=;
 b=INguoyube130+8WwnXu/RYMh/Ju9WC30cNYDrviHqjIJBbZccMMVak/rSrOZ3ijhHR
 OmyS41tmWGU9bUjUr28yjCNpFgi3MHy2KYoaUXyZmwIZPZiIiwAojnfIKdvrGosGbjPA
 JydJiXyNitT7guWnNfOTvv7Z4wIAc2T/tudn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RM+6YCueDPy1nkorG5jfOVGfbj1m5UCHBF4PF2PU/iI=;
 b=tR3cxNhoczs91KFDxLRZYSIV3pjkedqNYh/CgfbpyKcd4wV8KSNCXItevQ8FdQ9buQ
 oyxQlR7fvVT0JBr/F9Chyu2LeCFPINTfN5MG1LBoFZxM6jycIt9YkfTyejzT1Eu1ICgE
 6kUS6/ckqiem/cUrvran/RwOFuin2s1NvW55IxG1K3X/5J45eB0RZeU604oyVcst+Yzv
 akjiQJSTO8KMFXxR5IZydClDuxJOH+J2iFJMp0ljHYOHQXEDBbTsth0mFH7r7r8xXsSH
 GHYi2QeT2r7qtiL7n9rFX7u8WuyWXP5JbSTsbTX0ak26r5fJ4WHfHLe2p9Ti5qewnMHi
 9FuA==
X-Gm-Message-State: AOAM530DxZS244cMjuvr5OFig8V8Iphux+iDUKIR9k1kyJ9/hYrYzYX8
 J/KQ5Bj+UAPvOKOOwSD7g4zYKeyoasWzag==
X-Google-Smtp-Source: ABdhPJwKV+ZOOaXIepnvzNCYeN8NOn1rDAp3iI0KH/Z6bShSmlhPLBYiqaL/xCZjBNbGL4Qxx3S0hg==
X-Received: by 2002:aca:1711:: with SMTP id j17mr3173849oii.152.1599727418093; 
 Thu, 10 Sep 2020 01:43:38 -0700 (PDT)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com.
 [209.85.167.180])
 by smtp.gmail.com with ESMTPSA id j66sm728123otc.74.2020.09.10.01.43.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 01:43:37 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id u126so5157861oif.13
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2020 01:43:36 -0700 (PDT)
X-Received: by 2002:aca:1209:: with SMTP id 9mr2982017ois.94.1599727416353;
 Thu, 10 Sep 2020 01:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200518174011.15543-1-ezequiel@collabora.com>
 <20200518174011.15543-3-ezequiel@collabora.com>
 <CAPBb6MXezNVxPrJ05mpS1=yE8V81DjeQ2gA4pGfC8QQzgfUi8A@mail.gmail.com>
In-Reply-To: <CAPBb6MXezNVxPrJ05mpS1=yE8V81DjeQ2gA4pGfC8QQzgfUi8A@mail.gmail.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Thu, 10 Sep 2020 17:43:24 +0900
X-Gmail-Original-Message-ID: <CAPBb6MVqq-3JLBe9k5WtYL-LHmXYwj7HFt8tAVLNnuqKJA0p9Q@mail.gmail.com>
Message-ID: <CAPBb6MVqq-3JLBe9k5WtYL-LHmXYwj7HFt8tAVLNnuqKJA0p9Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] media: uapi: Add VP9 stateless decoder controls
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_044341_224104_A9D5C572 
X-CRM114-Status: GOOD (  15.94  )
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 10, 2020 at 3:04 PM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> Hi Ezequiel, sorry for the late review!
>
> On Tue, May 19, 2020 at 2:40 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> >
> > Add the VP9 stateless decoder controls plus the documentation that goes
> > with it.
> >
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../userspace-api/media/v4l/biblio.rst        |  10 +
> >  .../media/v4l/ext-ctrls-codec.rst             | 550 ++++++++++++++++++
> >  drivers/media/v4l2-core/v4l2-ctrls.c          | 239 ++++++++
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  include/media/v4l2-ctrls.h                    |   1 +
> >  include/media/vp9-ctrls.h                     | 485 +++++++++++++++

Also another thing I missed: shouldn't the new pointer controls be
added to union v4l2_ctrl_ptr in v4l2-ctrls.h?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

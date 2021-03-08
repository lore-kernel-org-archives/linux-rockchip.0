Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EA15C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 16:02:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B9E026521D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 16:02:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B9E026521D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3m+tOkZs5KWUzfVuhM56pooOrWWdy4ezCwGe3Y7XuFo=; b=osyxa9sMJnQb3Ubsz7jvS9xhL
	vnrCE6EEqDBD25PBrVkjqPL/UOhnyq94x1an39ZLNRwaqDBVpTdTaM7FNb6AbR8pnEwpgjKIeYEGh
	0c+VKpmcNr1NIjB94iWwi9hXL56XE2BGZhPaHPFhITPg5MTm7xSqOA6FdZqdUS/q16PiPrfkAhWmc
	5SWUTgiCBENPeuynpveM/ko4bq3SFQ3z4SZE2XMS2hkObTdEDxYaTQDRUZjfZl8DNfBK6WWNNLMcs
	emq1eUi+Tn9XpDklv1V9aXVGodm/kRr76woUA5F5E/YZ1yztRFM3a33DYIw3ANWjQ+NNHqBMvKNY7
	rHlGOz3sw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJIKj-000pJ6-8L; Mon, 08 Mar 2021 16:02:13 +0000
Received: from mail-ua1-x92c.google.com ([2607:f8b0:4864:20::92c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJIKd-000pFe-Qc
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 16:02:09 +0000
Received: by mail-ua1-x92c.google.com with SMTP id 101so3496538uag.1
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 08:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=An011ivT1O5IqSBEP+Exr4/mnv85DViHzOw1dLqooWM=;
 b=jeekrIFCRYpPa+xsnZZ0w38J4frFu3ydE5//Ca6SwxwiJuOBITzb8myXXxB2epwxuW
 QXhA0GsxH5Kzy+w/NLBijDaExj4XxJLpS0t12VGvm3drSXU3uYkQFjZAANJI/fqR6Nph
 gsKPjQ4kMSdZYsb4Zne/nZUft7dzr562wi66gmN4jy5EpU/GBYcCWav2RihEOzrGDsHa
 0pjHJLsw8Gmlu69SlBE3wNGCmClYiQQvP6hIm/vyisD+vfpZJ64W+ruYA3M+V7fqYXRz
 bcP2vhChHWWvXtUCl6oNO2ZJmfLt1sB9KH0hlzu1ZN+qSzk0edH0a0EUmTDPuS+GmE0U
 vcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=An011ivT1O5IqSBEP+Exr4/mnv85DViHzOw1dLqooWM=;
 b=mOhcoaY3b58nL4LdLTQodvB+s25hhJWLPoBbG/gvQTxousae3iAUWZswbKfzK34fE5
 03fAhtMJ/QKfvZF9yA3wmuohtUiMLYKxzqDLyctB8e/zeZCwwwDrQ68vW3F7OuyQQfjt
 WmeHkqpAeHGNgEW2zR+4SwzLJvNioRoIwKgxznk4T/atdg1NnZRmvFqqEopXWMKsJ9gY
 D8Bo0/ORv0KnEeQoG/OSpMCUno5K6mDR/USBNVU7sCbPJFmwY3D+AeIRktYTqT5D4ZDo
 xewcjzlXwlwW+iLIx+0KmhBLi4t9wRBXd0lxJhUx15lcNAdzkQ659uaqAPxC5UIh9TFV
 W1ww==
X-Gm-Message-State: AOAM533ylh1Qjym9v+QkryBgZjMBsHDtRMZZkruDDI1vtSSxT6mdSkZE
 6SED4gofcxiTaVuMe65eb7mNNg/nZUFEfF9Sd2kDgzazQyE=
X-Google-Smtp-Source: ABdhPJwuFYQnKSyKc5E1TZUyp9J9Sp60E60qo2mEIw3WxuI/ANDkpscroQkTo0tFo+0nFPEO/vB6lShkVnmIEsS29mw=
X-Received: by 2002:ab0:382:: with SMTP id 2mr14186118uau.46.1615219326677;
 Mon, 08 Mar 2021 08:02:06 -0800 (PST)
MIME-Version: 1.0
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-5-emil.l.velikov@gmail.com>
 <20210308135704.GB18168@pengutronix.de>
In-Reply-To: <20210308135704.GB18168@pengutronix.de>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Mon, 8 Mar 2021 16:01:55 +0000
Message-ID: <CACvgo52e8be9MqHOiq4V4a7QnHq__34GcSeOn4scmydW-=vvSA@mail.gmail.com>
Subject: Re: [PATCH 4/7] media: hantro: imx: remove unused include
To: Philipp Zabel <pza@pengutronix.de>
Cc: ML dri-devel <dri-devel@lists.freedesktop.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com, 
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_160207_974140_49E292E8 
X-CRM114-Status: GOOD (  10.40  )
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

On Mon, 8 Mar 2021 at 13:57, Philipp Zabel <pza@pengutronix.de> wrote:
>
> Hi Emil,
>
> On Fri, Mar 05, 2021 at 06:39:21PM +0000, Emil Velikov wrote:
> > From: Emil Velikov <emil.velikov@collabora.com>
> >
> > The current imx8 code does not use the jpeg encoder. Remove the
> > unnecessary include.
> >
> > Cc: Ezequiel Garcia <ezequiel@collabora.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: linux-media@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
>
> thank you, patches 2-4 could be tagged
>
> Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>
Much appreciated. Will add all the tags for v2.

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

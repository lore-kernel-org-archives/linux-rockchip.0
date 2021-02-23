Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA9DBC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 15:29:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B06E64E62
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 15:29:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B06E64E62
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AWhIksrWH/wH5slQtFGpJ6jkMY9qEGFkI9rGpGVePHA=; b=PjECmFq41HDYPBCvQuVhK7BU7
	JcvvO8IzkhtsGWctY+pK2QUxBsJEda63dZefGXfWTeXU2L1sScgHgeMJkSQjbyQjj3dCMqIXBRIWo
	VTh+YT1TRYr+HhnLjLzNB4SAtFWoWlqVtpLvtKb1bvdn81uiYzTz7u6rtg4jZQFa8MBj8AzjzBaAJ
	j8nUMEFkT0Ef8nijiOLkk0JaUQceMIg8h4ISAAvkw6F6oK0emGXGkTeY0RRJKNkXIlq4aMmzShewJ
	aioAktRvubFBXE744BJ6oQ+NePlXBp+U2M/fQ3mW7hyYJDN/Xran8BwBs+1Gu3NQTJLFjQ2JyVzWk
	uu9nWbCzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEZcv-0001dA-1I; Tue, 23 Feb 2021 15:29:29 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEZcr-0001c1-V8
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 15:29:27 +0000
Received: by mail-wm1-x330.google.com with SMTP id l13so2820308wmg.5
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Feb 2021 07:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fh61dZLxlIYhL9DZ4QpbUyEKQf/XaqyHBG4/UJZbjr0=;
 b=EGltyJ0ASGwjGfqlUbNOOs45w20SkNaGjh5pnAILwq9k/M3fyetuc7dAxc/M80sMZ3
 qIQJ7zau3mv+DawHBG9o17p9lcdexhXHJS+GhbukIo/eIoOnzY3vsNGLGzY3jH/xff1V
 iOvSlg1mY44AKWOsLppDUZpzDI6cluQxIGdTBO+OdwBBlzSVtjztDUhCFiEmuW0TDTPw
 aNBN1jz+SfrAlDM0EQCgbW5nyrhqAAIIssIsgJhOdcY7wgUA69ydy3LYuTBZT3ZGUylF
 3spCL/v4t3QYu+t6uq6Q+Yn+pgMIy/FIECKdKVj4IB1XBeC+j6SVtbZ6ynmFO0JEnhhS
 5Gaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fh61dZLxlIYhL9DZ4QpbUyEKQf/XaqyHBG4/UJZbjr0=;
 b=kA3rSGgmPpa06CD5l6JVjtvZ1uE0i6IYm6jtDOfKulyQMWnoAiDGmGnY8jS1Xd8Lts
 z3vS9bEt/Ijt0qIObo2/31E25n5asWSuExg8fDMjAbVAjMAjljtdON36rKzSSMLBN7Gt
 Dn1LcDMwDgR+buugqC/yDsxImIU9/tB0hKQC4aJbS0tbHEHjaZ7ySgbCo+duyYteI3b0
 rXpCh+NnH4iGS4QL1+Q0AGWOGrC6NGax0fme4ptkEHQAwcLPgMbtXBmDgmNr2eq4V9Hc
 uMRFzTy+RD663CBTPIWh548X+6ruIbZP/Bn8jNjrADO6eufwAutlRhpN+9Hv61AVKU1+
 KUxQ==
X-Gm-Message-State: AOAM532/OaQIXiWz32qjy4fd8rNfZMVTt/uoan1fRSnn/8hdYqpKpC89
 i9s4N9IY2+i8jE5Ci8jqs1Rq5Ma6QdCVxMxCise22yGcS5s=
X-Google-Smtp-Source: ABdhPJzkAJcGeMm9WU/64qA/bOQIsqC1fmp4wDXpKnBk9mBD5VoAgwwJJc3IDvDmzhkDivRD7knZWL1eo9I5VieU1J0=
X-Received: by 2002:a1c:7e4e:: with SMTP id z75mr25773390wmc.168.1614094164835; 
 Tue, 23 Feb 2021 07:29:24 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
In-Reply-To: <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 23 Feb 2021 15:29:13 +0000
Message-ID: <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Brian Starkey <brian.starkey@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_102926_265736_F140D724 
X-CRM114-Status: GOOD (  17.33  )
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
Cc: Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 23 Feb 2021 at 14:58, Brian Starkey <brian.starkey@arm.com> wrote:
> On Tue, Feb 23, 2021 at 02:27:11PM +0000, Daniel Stone wrote:
> > Mark, or others from Rockchip, can you please:
> > - explain if there is a way to enable/disable the YTR transform in the
> > VOP's AFBC decoder, similar to the split-block control bit?
> > - ack this patch which correctly declares that the YTR transform is in
> > use in order to make Panfrost work, so it can be merged through
> > drm-misc, or provide another solution which fixes this API mistake?
> > - if VOP does have a hidden YTR-disable bit, add support to disable
> > YTR so rockchip-drm can continue advertising the non-YTR modifier, and
> > Cc this patch for backporting to every kernel tree which declares AFBC
> > modifier support?
>
> Drive-by $0.02:
>
> As described in https://www.kernel.org/doc/Documentation/gpu/afbc.rst,
> YTR is only valid for "BGR" component order, so this shouldn't be set
> or used for "RGB" order (or YUV) formats. For BGR-order formats, it's
> best to always enable YTR to get the best compression ratio.
>
> In an ideal world, there wouldn't be hardware/drivers which
> support/allow non-standard encodings, but we don't live in that world
> :-(

This implies that RGB component ordering cannot be used together with
AFBC on RK3399, no?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

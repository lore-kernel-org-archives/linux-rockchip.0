Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B318C47073
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 13:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qa9zeyxcNRw45BGoGpsQ8Jqq2yG+2oaaA6YPdYQD74g=; b=F5GMMVy7ka0XWXbPaUkUJ2kUMl
	msSEmRLo8yH/yEfCbyUIe9JEndcaJzMPZLpc1fmrkRRj/2rn9O7h6eN0rGmoZDkg9qmsbkUfM+2us
	1Rg0RUcJVhiK3T2L714dogycDy1DsSI4plTMzAfraKESMVXPnrton1IpyfzMeZ4l/WkuSWzj3b0ze
	eiJMxwlFaaP4YmoGwtoT5YXy6QBher5QvlrwM8U7hLr401knHzkw+4hxVtKhakdZzthxlKI8L04++
	Aufc2pDRwS6YnGPzTIw4jklvVNYqgmOXnxG8akT/5CQtlRcpBD87FKGRpFO+RcxQEOurAdJYfydA1
	XUOM60tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCJI-008OVj-2l;
	Tue, 09 Jan 2024 13:38:28 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCJF-008OU6-1x
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jan 2024 13:38:27 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3bbebe6191bso2759289b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jan 2024 05:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1704807499; x=1705412299; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7mDLa1lDA9I4zsDt/vUi7Q5DM723KSTf2pIxDEMdeEE=;
        b=qKfT9Ns23BC8nz+0XwlIdVUH3aVT4Yl2lOY1QaDiSelbf+GLc/vRTXyt6w/g2hWl3W
         iUc+eLnONK11UuLx4rO3zV1DMdB+p/izhaZp1ekw+bFr8IEjibAbBYOGLEUXshkMmrG2
         XnQjPsGp/I0qwGJLbApBgBxbfV9SdGwMjd2IodpX3tDsj4OEC9YNMTmdfhCHs8B9226u
         vy4A9xnuQxDsHLNmkAcICK8DNqc31g8weZyL0GQnovBdna+rq3olPO2nDYm3OCvtRJyo
         Af8rcamW47lIeJ189eecOMGN1OnDWGkxgvRy+2l0wO4tXZ2B/CsoDD7We+S+U0aEeSjd
         /+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704807499; x=1705412299;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7mDLa1lDA9I4zsDt/vUi7Q5DM723KSTf2pIxDEMdeEE=;
        b=vz37rWfIlo80nNhA0qxwjISSAANo9jZWjzysS/Iv3tkwD1zSic1WmD+xZEe5pCEq5h
         1QkGInK1/Kl8scXRVGPeguAwbHCxSOChtFHtxM7ica9r6G446kGq0XNhTKC3y4RE2MGt
         WUHCNjcygpVt7XJXT+5A9L9vJ/zUzGRxh+yYTgQyBPX2U5VYkYOADEUm9rbhpfGhsuWL
         r+Rh60+sWnYbrNG73UJuYrHYdy2gl77u8Oe1nwc+GMoTNcpynGrdVe5OUkU0WO2ac0fq
         k9UVQ0VgGE7FKHWpQGI6AYM7lAP1ffc+qg/faShQP4oBVXy7b/OOGNph6P1sl4OMcqyF
         Lkdg==
X-Gm-Message-State: AOJu0Yxz7cJkw/9OL2m0oux4Bh6sMb9jn0oNps7M9D/NBjpaWsMrrp3Q
	ridzB3kE0tPiKmS6AeOP331H766Ekz3cxitSvQ85LX9CKEuDtw==
X-Google-Smtp-Source: AGHT+IEiIF+TOwHH0WeGea/W9p977jXEPA2RPNa5wHtj/r0Fwo02EIRShmM0F605PcR5+mNqG3weRRapKtHQAzzaPtk=
X-Received: by 2002:a05:6808:3185:b0:3bb:d83a:99a8 with SMTP id
 cd5-20020a056808318500b003bbd83a99a8mr8896956oib.58.1704807499107; Tue, 09
 Jan 2024 05:38:19 -0800 (PST)
MIME-Version: 1.0
References: <20231220121110.1441160-1-vignesh.raman@collabora.com>
In-Reply-To: <20231220121110.1441160-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 9 Jan 2024 13:38:08 +0000
Message-ID: <CAPj87rOMPioOK0r74vcnVkXusm6Nah6KNUWyxYgpVLdkMNtW2g@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] drm/ci: Add support for GPU and display testing
To: Helen Koike <helen.koike@collabora.com>, Dave Airlie <airlied@gmail.com>, 
	Sima Vetter <daniel@ffwll.ch>, Daniel Stone <daniels@collabora.com>, Emma Anholt <emma@anholt.net>, 
	linux-rockchip <linux-rockchip@lists.infradead.org>, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	David Heidelberg <david.heidelberg@collabora.com>, Rob Clark <robdclark@gmail.com>, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_053825_862224_1C5A89EA 
X-CRM114-Status: GOOD (  17.03  )
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

Hi,

On Wed, 20 Dec 2023 at 12:11, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Some ARM SOCs have a separate display controller and GPU, each with
> different drivers. For mediatek mt8173, the GPU driver is powervr,
> and the display driver is mediatek. In the case of mediatek mt8183,
> the GPU driver is panfrost, and the display driver is mediatek.
> With rockchip rk3288/rk3399, the GPU driver is panfrost, while the
> display driver is rockchip. For amlogic meson, the GPU driver is
> panfrost, and the display driver is meson.
>
> IGT tests run various tests with different xfails and can test both
> GPU devices and KMS/display devices. Currently, in drm-ci for MediaTek,
> Rockchip, and Amlogic Meson platforms, only the GPU driver is tested.
> This leads to incomplete coverage since the display is never tested on
> these platforms. This commit series adds support in drm-ci to run tests
> for both GPU and display drivers for MediaTek, Rockchip, and Amlogic
> Meson platforms.

Thanks a lot for these. The patches need to be squashed to be
bisectable though. For example, patch #2 changes the MTK job names and
adds more jobs, but the corresponding xfail updates only come in #7
and #8. This means we have a span of a few patches where we don't have
useful test results.

A better sequencing would be something like:
  1. add ANX7625 config
  2. refactor _existing_ MTK display jobs to use YAML includes, change
the existing job name, and rename the existing xfail set, remove
IGT_FORCE_DRIVER from the script since it's now set by the job
  3. add MTK Panfrost+PVR GPU jobs with new xfails, add xfail entry to
MAINTAINERS
  4+5: same as 2+3 but for Amlogic
  6+7: same as 2+3 but for Rockchip

Then the separate rename/update xfail commits just disappear, as does
the removal of IGT_FORCE_DRIVER, because it's just done incrementally
as part of the commits which change the related functionality. It's
extremely important that every change can work standalone, instead of
introducing intermediate breakage which is only fixed in later commits
in the series.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

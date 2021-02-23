Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E8B7C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:27:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AC1F64E5C
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:27:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0AC1F64E5C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=//Rye675SzcIxloPU0MqF1UVMG3iyCXTVvDuW07bCZ4=; b=1nI6PO3cWxm8xbkal6eF/cWnD
	iGl21nyNGtzolfjEjoiyEPE+NWAsZ8SEp8iIVTyNBnG20j97maV4/jvk+NY7GsLTr+Zz6xMivRdXq
	g1kdUGgPBeis9S8xunIvMvyXLbDGyR3SJCSlIKsvu6B7r0gHyvjSjCXOitNp8xsnPPZkwCnsvMjE0
	Rqms6kT3pQk9g/FwkJBVcyM6g9hrRwV75dE/vbHgJKlBfDOmAq2HB2e0t8qFaro3uDy1eP2KiTZFQ
	wQ1U2EEfEZS+co4jjW4EqKGo9mJwLvFqRo9foE8Jl53GbCGNYm2e50l0z8JWd1si8nkUwj2x1strD
	ROTgj9rAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEYev-0003jU-O7; Tue, 23 Feb 2021 14:27:29 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEYes-0003hw-GW
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 14:27:27 +0000
Received: by mail-wr1-x42b.google.com with SMTP id 7so22796310wrz.0
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Feb 2021 06:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ua5mUBb1kXJwLpY5FtH2hXzt7wQx27QWyD9CzcSllG0=;
 b=z7ZK36m6RBMM+TS726upxalf8gZFlnGBsxFjQ7PnIdJnoe9hb8NLiRGixuMhgb6oN/
 /DLe0Gd4aQeV+5PrvgplISSYx3DE2ar2Jn4fpm2SOOFZWnZdahpFiXjsWCn4Eabc4RDx
 VSlke85NFhsHPwuC8yDMLOz528x+uYM4y1eVc+HygRMDX/qWKvTJgZYw7GD2JbAJrif9
 kRBLB+8sIS+2s242O8dxE8V3qVn+A68bwnNCx9ez0cJ5REIwCN+jwgYeBTuzrJ97m0Hb
 6j/deXf5acbruC0fFa5T7ayrlXBr1ETWq9kD9RONjuDXdUfHM+GA0wLjtg37ZE4tE6n6
 1eTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ua5mUBb1kXJwLpY5FtH2hXzt7wQx27QWyD9CzcSllG0=;
 b=PN7W/a02oKLTmjxR9u/KII3Zhun6iwwIGYfyVDjsLcSrYWJ44annd7FUgNfin5arNa
 3Rhup0F183vdcmBlOIZMqbfMr5Z0EqaGH9RctQsr80nQC16F+0aidfvjPTKPTcxsukhc
 M5LrTcnopwGJ8PfwQQpXGtCqz1gMj3sYmAFVwkzr4IqoXozxzZOuvUcA/Bi226TswXvr
 8H6kzqM5tLV4aDQuQ2gv3TdYE3p0ddFHpq885lW6XROCwXcCca2kLq8qlk1obc4bADXG
 GUu4ZVBMRa1OrYP/11PQnSoQSSNlioyFRVR3XR0yNDxUfQ1uqkbKc2FumJSjSncXUV6B
 x7IQ==
X-Gm-Message-State: AOAM53127OQVe8KZMUtqrrm2L1ufXH80U4H6hHMd9Y1s1qHWpeeVr/VT
 lXS8DHDFIxXh8Pnqp5UTaQPJmt9YZicl3iXquB67NqFhQas=
X-Google-Smtp-Source: ABdhPJxuHX8Wvue+y5zUj/iQnNI1u4s7XcFW3kvzWr5c2h2PHW8CZFWMo1qwLSptAJKX0RMF5pnCSQeFYVP+xKFVtpQ=
X-Received: by 2002:a05:6000:18a3:: with SMTP id
 b3mr26948488wri.373.1614090443053; 
 Tue, 23 Feb 2021 06:27:23 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
In-Reply-To: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 23 Feb 2021 14:27:11 +0000
Message-ID: <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_092726_717193_E0D8FEB5 
X-CRM114-Status: GOOD (  16.59  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, 12 Aug 2020 at 08:05, Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
> The AFBC decoder used in the Rockchip VOP assumes the use of the
> YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
> buffers, which covers the RGBA8 and RGB565 formats supported in
> vop_convert_afbc_format. Use of YTR is signaled with the
> AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
> such, a producer would have to generate buffers that do not use YTR,
> which the VOP would erroneously decode as YTR, leading to severe visual
> corruption.
>
> The upstream AFBC support was developed against a captured frame, which
> failed to exercise modifier support. Prior to bring-up of AFBC in Mesa
> (in the Panfrost driver), no open userspace respected modifier
> reporting. As such, this change is not expected to affect broken
> userspaces.
>
> Tested on RK3399 with Panfrost and Weston.

Bumping this one: it seems like the Rockchip VOP either always applies
the YTR transform, or has a YTR control bit which is not documented in
the driver's register definitions. This means that it is incorrect to
advertise the currently-used modifier, which specifies that YTR is
_not_ used, and doing so breaks Panfrost which correctly uses the
modifier as documented. Based on our knowledge of Mali, we believe
that Panfrost is correct, and the error lies with Rockchip erroneously
using the YTR transform in the VOP's AFBC decoder despite declaring
through the modifier that YTR is not in use.

Looking at the downstream vendor tree, VOP2 as used in newer SoCs has
explicit control bits for YTR and other AFBC knobs, but this has been
substantially reworked from the original VOP and is not applicable to
this IP block.

Mark, or others from Rockchip, can you please:
- explain if there is a way to enable/disable the YTR transform in the
VOP's AFBC decoder, similar to the split-block control bit?
- ack this patch which correctly declares that the YTR transform is in
use in order to make Panfrost work, so it can be merged through
drm-misc, or provide another solution which fixes this API mistake?
- if VOP does have a hidden YTR-disable bit, add support to disable
YTR so rockchip-drm can continue advertising the non-YTR modifier, and
Cc this patch for backporting to every kernel tree which declares AFBC
modifier support?

Thanks in advance.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=b48f=H2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967ACC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 12:40:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F7AA64E6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 12:40:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F7AA64E6F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0C6IqL3vXM1MherPk8TZbQIEBPH+0iBh+ESUHe0HNmU=; b=DgYZXEWLHXIW3Fcc9YlsILSxY
	lY5BQs7unnn07Vsl3RnUoJ1EB62lxJRpj2FqxzKSxJN45p/CRdcy0HfrCOgcc+LR4WmBP3yuZVy3z
	ZMeZFhHex2NoIUBl0X49Yh/dQUM6dlhGSxPHM0IcAqPULLIBmksSLoLAW80bbjNcOCUPwbrajyujq
	e4hctexdsmXjj/FwmJp9lzbFZJ36GIzYfNgMr1VFyfN23fMu0XmHYaUNVQbkL+POp7Elk8GCu2hEh
	Zmu44Tm3Zz76N/CTGM4Zo42G3ztAjxDYjvrj8HCpSiuBt4Cp29Shbrc/1Q8dRtpmr3pX1VXous2MF
	2JjRnqUDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEtTD-00016C-Vj; Wed, 24 Feb 2021 12:40:48 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEtTB-00014z-6i
 for linux-rockchip@lists.infradead.org; Wed, 24 Feb 2021 12:40:46 +0000
Received: by mail-wr1-x433.google.com with SMTP id e10so1530706wro.12
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Feb 2021 04:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HRhPlj1aHRVOi3gs8JuQx5ujbUeXgIsk53nwDPobfIc=;
 b=d0H+6s84LfrmhCxlKqm9iuAtf7AbWv9MNiz05h0L717TsS98FBZv0zG8WyGXGe1v3O
 pWUzo4LTRiNWdGOdO8E8SW8zqdunCe9JWRAxLh7Y5m+2ha7iEA5LXIJcwNF7ULANohTO
 cE74c57Zp1mn6ekgF0B2h66H9BPNknjcmelT1JLfot7gkdnkgBcDveQFQIyhv/YMpMt8
 dXSEGx+W/gWdeJgh1/Jme6hH+RGH8Z1NpMlDqBg8iNVs34a9CjPsby3qLhiNfbIS5P7B
 UADTB9ERyTOGXJoVPld+NTQnhcoHmKxufgh6JkK9uYT57OJZoHazMOXFa9+HF//SdJ5I
 oMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HRhPlj1aHRVOi3gs8JuQx5ujbUeXgIsk53nwDPobfIc=;
 b=FEPT+6+CbmSVQqr8+lib7j70kWI3qORYlIl77wKuk4WvoOHnp7aRJ0tlUm7N+eo60w
 sJp46GGBae4ldCyAeqBa/QV1HEkaMksUaDvT35ZYz0D4Q9kQxU7cYU1Dn3Tf94e91Ol6
 X5oIAYbNm8lngUpRgGcUMiDIITov8BaD1E9KTaVNJJLSB732WOImmlHemvgCD94fv2wP
 8SUyasitv0Ji2UTwPktl9be+IsyXxTB4Z2i7uw3S9RLXCBK7b1iNR0oz9cFU6oD2BpNF
 f3APY+CtnuB3nGjvz1Xg/ArlX3WwrEc+DM/0+dqupg+UfOMoUOzJ+m9R+5krjm8pR6dh
 pFsA==
X-Gm-Message-State: AOAM532E1g7AryWXZOjDpWozHqBUjjGIxs3p+8fBmKqRmjQcL0nd3Zs8
 99OU5N+MkkQPoL7MnEjld4ThzuVBGHPBQt38O5DE14h/7G/9eg==
X-Google-Smtp-Source: ABdhPJzAf/QssqSJWTXQC9OJJ/N4aJn/AEnU3jtc2sPlav4EU3paeRaAIdayhaZXt+dVFhqKzgGMUV5f3CNGZjZh6ZY=
X-Received: by 2002:a5d:4521:: with SMTP id j1mr4780729wra.354.1614170443428; 
 Wed, 24 Feb 2021 04:40:43 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <161411675671.3338515.9688232276427844069.b4-ty@sntech.de>
In-Reply-To: <161411675671.3338515.9688232276427844069.b4-ty@sntech.de>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 24 Feb 2021 12:40:32 +0000
Message-ID: <CAPj87rPpw8wjCW8d51KKJvbZt3MOERnt-=hh66qCBXYuOMVk+A@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_074045_444129_7CDF9730 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: Daniel Stone <daniels@collabora.com>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, stable <stable@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 23 Feb 2021 at 21:49, Heiko Stuebner <heiko@sntech.de> wrote:
> On Tue, 11 Aug 2020 16:26:31 -0400, Alyssa Rosenzweig wrote:
> > The AFBC decoder used in the Rockchip VOP assumes the use of the
> > YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
> > buffers, which covers the RGBA8 and RGB565 formats supported in
> > vop_convert_afbc_format. Use of YTR is signaled with the
> > AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
> > such, a producer would have to generate buffers that do not use YTR,
> > which the VOP would erroneously decode as YTR, leading to severe visual
> > corruption.
>
> Applied, thanks!
>
> [1/1] drm/rockchip: Require the YTR modifier for AFBC
>       commit: 0de764474e6e0a74bd75715fed227d82dcda054c

Thanks Heiko!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

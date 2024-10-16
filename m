Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1662BD2A555
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 20:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLTx7fU7vWdEhLYhtu/SNcVVCstosTCXApegXsK6f00=; b=25TAxRQaMEHJoA
	8p7rkosded4G67KAL29uxBuGB3lC7BXLSnJagWTQ3bozfhHsw9rjnPLe1lipG3Yb8hR6TC75Swv33
	y/2T3bNgtoy1RCTEWu+tVZwrwrUkt5tluqv+pfYan1GjgImHBCkCpDCiTxTDrhOrF8rlHPOmi8Glx
	eTgB7ta3ZI68M67Yvg+vvnXMXKmhM8A2QzpfbEDNWKJEbMfUJkidKac0m3nKdQ84pOZtqqd2145to
	yqb6zENCe/xH/e6JWgbybGU51yVE2F9G+0Nv3tNxxy+BEZAfjhw0O99hF/F+rlcPsENjDDPHCtuoh
	L8qT4tips8QCt+RPQ7lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1AUQ-0000000Cvib-1o4J;
	Wed, 16 Oct 2024 20:19:26 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ASk-0000000CvGj-0cCZ
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 20:17:44 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-6cbe90c7c95so1580326d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2024 13:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1729109860; x=1729714660; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0F3memFK2IqEIyDZRhf1ZtxUtPaa69HplF1wyp2YAb4=;
        b=GC0itoAXRxLyhy5yKEEetFO7od7HzbxYnfDOtUfFQwBm2wlwDqzlYHRLpSFVWKdPFU
         NtfECP3pLtLedyfVS+HJ5e3tcQvjgg78MnMNWB1AzqjXWDTseyzhvthjrkJr9yiqHoIz
         wMhApUFpoD0/XzVVVhnzNhu2l/vKaEWfeIAuPLae/dYALzGXB/9Inr59DSudv8BLXv1c
         ikKNDzyXcD5yqMl0/7Md1ROPgG1jPMpFKAxwx0MWcR31rgvefdhrG14aqz9vo+sH9OQn
         itwqtyuB//hTAhK33jSBR9rYbDANwX80AMO+GUVxvgp6BodcO/vPcRPHGQ2BuwS+/2E3
         K6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729109860; x=1729714660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0F3memFK2IqEIyDZRhf1ZtxUtPaa69HplF1wyp2YAb4=;
        b=Bx3BVasSgrj7FiJvm/qICiaCvEsylOD0jluCnN7icQr0EALa4aBb7uXlR61p2Y+oNo
         xXG7kLC+JpqmGnJrCJxKmn+eXO4kXZ3ps4pSL3xFKzyqmOKQIuYiY4zWsNm8lnqTOLgz
         J4aGS9OgGmgcVbKcoofJd0eE1nmreKZiBiSpYRr1+6OBk1TohWnedbpYuyhFVN+5fxLe
         zxMcT4aUiNNPLb//xnA0JOPYAAV3iS6BfzO5mTKBCPaByfW/iIPAfEb6mJJfkgxsOKxy
         rw/UzFCVFa7zt80YSAJOAdGCrC62O9wqwg6otQ3MPOiCYQRV2hq31n4tCykPWCcxDIYq
         JUyg==
X-Forwarded-Encrypted: i=1; AJvYcCVW7b0bbvC0N1obGnz9E4NFY3lTF+icDqim2XwlDoF2AguNgmoZSwV2NDslyqT8XLO7WKnctMZGJNy2HxH8iw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1H67OdbOSb+1bOOmG0h74gdc9ZShnkKJ93IdbRzG9uHxRF33G
	BwWKEfhIqYN979EpCX7VUl59nfjIJOGBsvJbL/+HMYf4jOBqDQbN26U/2Lml3JLj/u2KYU8VTWB
	4wGVtJsQhemt408lg4aarj9fwEAVyFeiawcJD2w==
X-Google-Smtp-Source: AGHT+IH8FdORu8BAVMYETQ3EFP7GdnSBr3/OY9F2kRda3SXcmSTFgN1GFVyxcQE38MPpmTDwMWhcvAQ5OacfMETt+rA=
X-Received: by 2002:a0c:fbc1:0:b0:6cb:fb58:3d23 with SMTP id
 6a1803df08f44-6cbfb583dccmr188633316d6.43.1729109860038; Wed, 16 Oct 2024
 13:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241014222022.571819-4-pZ010001011111@proton.me>
 <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me>
 <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me>
 <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com> <CAPj87rOmPyat12S4WUixiUBAsuAEEbyNX5VY2JS+wn5a1jux0A@mail.gmail.com>
 <kYKfHO8oonY1wP8ZvanmTnvgjGfw0uek8cmMIV99Bc6zO3EE32B2LKaypAphAxVJKx2I-Lnd3CzvyTRVAaM4xhj75z7dOzlp7xPMlFQKRN0=@proton.me>
In-Reply-To: <kYKfHO8oonY1wP8ZvanmTnvgjGfw0uek8cmMIV99Bc6zO3EE32B2LKaypAphAxVJKx2I-Lnd3CzvyTRVAaM4xhj75z7dOzlp7xPMlFQKRN0=@proton.me>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 16 Oct 2024 21:17:28 +0100
Message-ID: <CAPj87rOdQPsuH9qB_ZLfC9S=cO2noNi1mOGW0ZmQ6SHCugb9=w@mail.gmail.com>
Subject: Re: Re:Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
To: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Andy Yan <andyshrk@163.com>, hjc@rock-chips.com, heiko@sntech.de, 
	andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	skhan@linuxfoundation.org, Dragan Simic <dsimic@manjaro.org>, 
	Diederik de Haas <didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_131742_324494_00F2E38B 
X-CRM114-Status: GOOD (  12.13  )
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

Hi Piotr,

On Wed, 16 Oct 2024 at 20:19, Piotr Zalewski <pZ010001011111@proton.me> wrote:
> On Wednesday, October 16th, 2024 at 2:27 PM, Daniel Stone <daniel@fooishbar.org> wrote:
> > 1 is the only solution that can work. Silently changing the colour
> > properties of a separate CRTC is not OK, since this can lead to
> > displaying incorrect content.
>
> Ok right kernel keeps track of the state and sees gamma as enabled even if
> dsp lut en bit was cleared.
>
> Would it be better to check if gamma is already enabled on another CRTC in
> atomic_check rather than atomic_begin/atomic_flush (and silently fail) like
> in[1]?

Yes please, that's exactly it. If userspace requests something that
can't be done, then fail the request.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

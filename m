Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA40C3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 08:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGaYxfVGdWteNwGnsQHG//HtVTVV1A8lvRRY5wDW63U=; b=iaY+2LzoU2amvF
	kcWBWJsskg3XieGDz5x1e2XGSSdyNJFOM95I3afvZyNk62nbuSHp1o2PfZxfQlILuapZd/IcN/DlT
	ovXJlJW+MtV1tnGTC02mu2+iv/d1ZPvMeHwiiFyPaJCWUSHHApIcVKNqRS7nyDtwvYfwXq9E7wQ71
	+nyp+gGbYn+THJAfmJzU1zeZNmNEgITVTugx79XwRiSxSj6KzRfbKl/ThmTnAaZQLRIhKpu1tUpAw
	abJZ4LMrWLcNiHxhmZIvrv8JCuVIWP82UOxKGz93rqXhOibKjQoO2HlMwt9goSSko8dFC/xSpg6Ga
	HGaAi8LFp7faYr47y3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMkGZ-00000009hW0-0K1b;
	Thu, 27 Jun 2024 08:14:03 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMkFp-00000009hAT-2KZ5
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 08:13:20 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1fa07e4f44eso45091155ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Jun 2024 01:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719475997; x=1720080797; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqwTrcSYiqQJUhfArYN0dEmmLzN0Z0hlc2lvyFyjTgc=;
        b=jl04raluyOdQfiNtQSl1uJLh4LjfclhKaZMTQ6qhcLmMP74PwiF9ez2SYBDeEuYfzZ
         aPXVV1WuAYyMiX6tEiVrLTGvJ2h+zp755Q+Xs3xhevUH5b7doTE2UpYULjQpcF8bxmEJ
         B+O+s6QT8UfTt+vrrQl/BtHhPsjdtBnueYVj8wETZdECFzrHaaAuOcRHihEV6DkWeyh6
         nJt3wEb+ESiYosXdV/ao9qyaIyD+7d866GgeicDXefbJNJx82QUR4zDKNvlcUAKCUVdD
         PcvP0/hhlJRsXENf9HKaL+qcjn5nK3Qbh5380sxq7G+dCVDPF5yy7u7K7APsy+PqMEmN
         dIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475997; x=1720080797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aqwTrcSYiqQJUhfArYN0dEmmLzN0Z0hlc2lvyFyjTgc=;
        b=W5ucJn8wjE17uM4G34wBQ8RBGovQ5WvqUOSs5REnquyrwU1yoHefQPtwNzeu64vrD2
         7cw/ES86adrec2Pe/CHHsLmyJ5sk8uwnkeO1A+6819vXtIhfmqqpcZQJQeAhUkaPixh3
         wo3x8MwtS3LJYJftvj1l1lpDEXY3njtN/V4F+MAstUmerORT0TA43Xe60fzrT0GAvS/2
         668znk0J2/n/YPxJaqR1GUrrLXAJ1IWDjaawgBDk/PGdTjwiNj16CbifBzLhcM3nxoLh
         1U8fUoYl+r67ZA4DYhXgIjgq3sOg45dQpBo0TfjVJAaji6LO9H5Y/MyIrerANV4b1kdm
         s24Q==
X-Forwarded-Encrypted: i=1; AJvYcCV36K/2QvzJogivm+H5wMCWRB2/DjMlCsKkLgl9JNwhlse3ygw742EhcqmTqesP87DiavC86JIq9NuDp2u3nzeQwt2gIqWCf59bxtaqgvJzITu5
X-Gm-Message-State: AOJu0YwO4vcNNGvmrvC2IBm+OwOKaH+8VdQMosaH+Ux6omADb49Eooxu
	sQjOEAuifaPBDjA1Iq0MTWMhVpmsd+5SI17zZuSB50mPzmsATRnK
X-Google-Smtp-Source: AGHT+IE0n90VUhe4DUiFkf3qdpni5UChtIA8uA1O2viLG9jXpeWy1fCOwI7kkSkvPn50aebe+Ahylg==
X-Received: by 2002:a17:902:d4d2:b0:1f7:3a4:f66f with SMTP id d9443c01a7336-1fa23ef7c2cmr141387655ad.43.1719475996534;
        Thu, 27 Jun 2024 01:13:16 -0700 (PDT)
Received: from localhost.localdomain ([221.220.128.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac8f286fsm7548675ad.82.2024.06.27.01.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 01:13:16 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: nicolas.dufresne@collabora.com
Cc: conor+dt@kernel.org,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	frattaroli.nicolas@gmail.com,
	heiko@sntech.de,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	linkmauve@linkmauve.fr,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	sigmaris@gmail.com
Subject: Re: [PATCH v7 6/6] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Thu, 27 Jun 2024 16:13:10 +0800
Message-Id: <20240627081310.583427-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <f04e25bf3c09c55049775e8f012cb653cb4682ba.camel@collabora.com>
References: <f04e25bf3c09c55049775e8f012cb653cb4682ba.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_011317_682350_D0A5ED81 
X-CRM114-Status: GOOD (  18.97  )
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

Hi Nicolas,

On Wed, 26 Jun 2024 13:46:03 -0400, Nicolas Dufresne wrote:
>Just to clarify, since you are right that it won't work well with GStreamer. It
>does work with multiple decoders (it exposes them all), it is simply that it
>will randomly pick one when decoding, and it may not pick the best one.

I have tested rkvdec2 and vpu121 with gstreamer 1.24.2 on rk356x to decode
a 4K video, and gstreamer always fall with error:
"v4l2slh264dec0: Failed to configure H264 decoder".
I guess that's because 1080p vpu is at fdea0000 which is always
initialized earlier than rkvdec2 at fdf80200, so gstreamer will always
choose the 1080p decoder.

>In the long term, I'd like to stop having to do "like downstream" and expose
>them all. I believe the fix is fairly straightforward in GStreamer. We need to
>expose in the generated element the width/height ranges, and for H.264 the
>supported profiles and level. With that, we at least won't randomly fail at
>decoding 4K, and it should be good enough.

Not only gstreamer, chromium also has similar issue. Chromium will only
check video resolution globally before starting to use one decoder: if
there is a 4K decoder detected before, it will mark 4K resolution as
supported. But when decoding videos, it will choose the first decoder
supporting profile like H264. So chromium may use a 1080p decoder to
decode a 4K video.

Chromium's code about v4l2 is complicated for me. I may create a bug about
it. But chrome os doesn't support devices with multi v4l2 decoders like
rockchip's socs, I don't know if they have the motion to fix it quickly.

>For RK3588, which is a new SoC, its not a problem to upstream something that
>does not work with existing userspace. It would only be a regression if we where
>to enable VDPU121 on RK3399, as now updating linux would cause bugs with
>existing userspace.

There is an old soc just like RK3399: RK3328, which also has a 1080p
hantro h264 decoder and a 4K rkvdec h264 decoder. I guess less people care
about its mainline decoding with gstreamer/chromium so it still has 1080p
decoder enabled.

>For users, it would be best if we get this sorted out in GStreamer by the time
>we have a second decoder. Note that I have some vacation coming up this month,
>so there might be extra delays. Yet, its logical to merge this (the "worst"
>decoder) first, since then randomly picking a better one won't be a regression.

Happy vacation days! I will also take a look at chromium's code to see if
I can fix it.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

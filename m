Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:37:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73328619EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:37:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 73328619EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f246cIP/R6N7z7sZTmZSSUbk46leYFZVfFuOFbIq12w=; b=K85BfArGSYqaxz
	p7EPRipqgDKRMHO7IuET3Lzz4E0HOQdfpOr+U9i+tGpUjAcCZtf9omoUnwOEEPMH8gph/T4aERO7m
	KPwQ+Uf3Zf4ih5/k1HQUkf0rg66D3gWSWyxVCKLhdLKNP0bvjC7HIdkIstp2ttcQ9xwOuodAg8Y4t
	oNfeaw8w9ASSag9RkjPpvhliilQEjO46m5bZZa9F2t934Pz7TXSKQR6Z2rVXqw1uv+4iYdzGWpXLy
	p0K/ku+1z6K8r+VOZZhrWEpjAmsg0rzwxEE/og72/HH4vJuDIMKSs//02BXj3GvJ6GQBsqwq7RrEN
	t/BxDNbO1JMInIetVLRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnQkB-006AZl-Az; Wed, 17 Nov 2021 19:37:19 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnQk9-006AZ6-16
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 19:37:18 +0000
Received: by mail-oi1-x22a.google.com with SMTP id r26so8724514oiw.5
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 11:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nlKPRUTcJm+bOUCWbAkUY1Qe6bsanAizXJtTl9a9Ch8=;
 b=oCh6mOUdCmKpUE3mzwPRgOo830TBXHM2t5qvaaMsGNG/XjgSdZXCPdY166iX0ccX/X
 DGxiNDQJDeTrfbCcBMe0owj9C/NiBzR9UHv8k6OG1Jne8uIgo/i2K0PwW9QtPQpznIOO
 N88hIazbPsLO6O7LPIxakMuNrN2qsrNLJf8J8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nlKPRUTcJm+bOUCWbAkUY1Qe6bsanAizXJtTl9a9Ch8=;
 b=coXqZ/h/cYIXPCQsZ7jgnfBbDPxETNslGbPlIYDqIr+g48sO66+2kKrMc9DUfZetbg
 W0ytz+UjoSm+R5HpZx28JWedNWy3r3M7X+ce9OHac6tvV/SZqTLUGz2mE6cKm3WIluDL
 CMZXSGOUGtxsE8fFrh176om0+r15BsVC6hXM1dCpMUB5ps59z+ZVwxx/zv10r7xl1dHT
 XzzO1gF4lZ1S5/PRc+umfYfN3dkwWrp0EaBBzD/MwGq6CLXsEBiCGqO/zq999XJk3Uxf
 HGaJjGvU+4It4x2Aoijk0BMUx2pFIRKbNwzlTO2Ep9hXqvFgoD8lwiU+XkXAY5vtRoBJ
 /Y/g==
X-Gm-Message-State: AOAM533caa3iG2rqre3HPIZDMGY8SP1w8j1kcBDDl1fHak+6w2G/6uQ4
 aX3Ts2NbTGhAy1tjN0SwaImHyy5Xfo3X4w==
X-Google-Smtp-Source: ABdhPJw5t5038ISyjjMdFwjLDagFoV9tFiHWmialiY5seRTIDQEl75qntruy7my4QQMt9zfBN7LpKw==
X-Received: by 2002:a05:6808:3097:: with SMTP id
 bl23mr2228862oib.0.1637177831089; 
 Wed, 17 Nov 2021 11:37:11 -0800 (PST)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id l19sm116924ooq.17.2021.11.17.11.37.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 11:37:09 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id
 h19-20020a9d3e53000000b0056547b797b2so6622643otg.4
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 11:37:08 -0800 (PST)
X-Received: by 2002:a05:6830:20d3:: with SMTP id
 z19mr15840988otq.3.1637177828401; 
 Wed, 17 Nov 2021 11:37:08 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
 <CAKMK7uHGNrgqjQh3DX4gChpNt+xhB_39sVrhdA3BFqnoW-ue2w@mail.gmail.com>
In-Reply-To: <CAKMK7uHGNrgqjQh3DX4gChpNt+xhB_39sVrhdA3BFqnoW-ue2w@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 17 Nov 2021 11:36:56 -0800
X-Gmail-Original-Message-ID: <CA+ASDXPtWsZRTUmrGQKY2Sc-yaeg=e47QpkYWA=KpN5iYGafjQ@mail.gmail.com>
Message-ID: <CA+ASDXPtWsZRTUmrGQKY2Sc-yaeg=e47QpkYWA=KpN5iYGafjQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Doug Anderson <dianders@chromium.org>, 
 Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_113717_115880_D46D52A9 
X-CRM114-Status: GOOD (  10.16  )
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

On Wed, Nov 17, 2021 at 11:12 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> Can you pls resend with dri-devel on cc? scripts/get_maintainers.pl
> should pick this up, you have all the maintainers but not the list.

Oops, I don't know how that happened. I guess I sometimes have to trim
get_maintainer output, since it likes to hoover up a bunch of
barely-relevant previous committers. I must have been too aggressive.

I'll plan on sending v2 to dri-devel, but let me know (privately if
you'd like) if you'd prefer a pure RESEND of v1.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D864AFA3748
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 12:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76FYKyawLHedXJ/ji69n8Xa4knNWPnm8MYU2GjPWq78=; b=e+fh5ufVVaVXb5
	xBl2jRaLMORDSLjFbXuO+YET6F9p6nzGn2pWJpuCXCPMeioq0ym/IW6axfXgFAhPSauzMFRC69+AF
	dYPHfNDvOsl1pIA5bWq9njPxS7m7o8dRnB5hcLrE5G4ZsSj+FKYmSaiM3XDv2wG+plj69el9K12DL
	SgWA0kEJt/AuhUcw4Uw5TLX5KDWeVgr0v3Y9zXcybfjEiq7LZufKF3PK0F18pAuknBIdOugntpfTU
	njZueYRyiWsMaRfjiDCs9ZGnduJzE6YsPOjMZS1Cfh1a9Loz61t/d/dblNALXEAlQn7Is47LqHCqC
	CunQyc6wx3PXFk3T6ppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp55V-0000000Fpl8-2B2K;
	Fri, 13 Sep 2024 12:07:45 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp50Z-0000000ForR-3sum
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 12:02:41 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e05f25fb96eso840796276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 05:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726228958; x=1726833758; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2EMotPu+SsnYPYZCxsQEhILLifcL+u+4RLDmrhDotzQ=;
        b=NWq2fgd6YxJ/2/NEkdt3AGeOCU7z7ucpYQbtPQGgriA/mK3qrdKGC6GpY0EJpDF7oV
         sBgBC3Ar0hxQlDmubN0Ekl4LzarDLDsbPy5dn0NXeYpwevQSdMRsERNgN6yRI8Qs2Vc9
         bK+rVyRAxaiUOTRPTeeGVVN0ALazdmDmojnn3pLWXJ2PbMr9yNUoFTfkqINq2/aqC0IY
         76GyWi1n6ccashUQWGfAioBNAk/vK47hPSDq9p765apMtV9vARMcV1gxromSve6ue4xc
         g2kP28Q8nT0SN2wRJ5X0asw+77rhfPGyHQquFxAfMzg+BKfa8DdsH2NIIGXhXOBUfxaR
         3Pog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726228958; x=1726833758;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2EMotPu+SsnYPYZCxsQEhILLifcL+u+4RLDmrhDotzQ=;
        b=ekXDF1ZNy0gZi4AeRmsLiHzRk5bsqSeMj5SFvEbz03zUKIr6PrNTlFlhGxMabW5vW5
         NOPcWLbMLGsxO25P2nb4lVX0G0WgK0HY/A6vU8SGa89yY3znR8sQGwVQprrCNMrXxVUU
         iHz8Vst8Cm/6rj7kpdgLrxef486kyNg9AP/9IyFCFREeNBGHzwFx6gNMgZeRKEyE6RTt
         uie7vfc4YzXx6mmG1k6D/X47jl6Nj90ffK4mqp6462IEXAdeSmMFxAj565q15gmI5mHs
         M+HT1DrwclKczbAEuLVeXfFBW1CNsM1UcxdvYEzCgrFcCkIJ6jeCPmNMN0kUtXnrlIgi
         hsvg==
X-Forwarded-Encrypted: i=1; AJvYcCVTKLM/7B9sxsUWaRWIe8iLy3RuqdW4NAzufhUYixqrEoxzrCGLwMgJ6M9tpYr20HlGQ3eZZyh/jDOG6F4Ssg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKDtuxtJHJQQ2MvLjjpGvlgcZSpsHXLUxpLAajFL9STckKu/O8
	ouEm808U4v6iWQw1/2dDaBGUY+vFS187yig9TUETSbDjc3O4ZVqgZtGT1FGpTkyc83Gkz+dH7wT
	UZ6hdl0IkCclOZwtGKXmHbcCYCXCuxLLHhcNI5A==
X-Google-Smtp-Source: AGHT+IEmYliY4E2folPA6tK9YT9mUZYVhyxJSAMt263ZcnxuojEhH8f9gYxBDVwC3jIeAmLM93D4nNjDl4YbjAmXemg=
X-Received: by 2002:a05:690c:3343:b0:6db:98ad:86a with SMTP id
 00721157ae682-6dbcc593989mr21037947b3.40.1726228958446; Fri, 13 Sep 2024
 05:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <20240829202732.75961-1-detlev.casanova@collabora.com>
In-Reply-To: <20240829202732.75961-1-detlev.casanova@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Sep 2024 14:02:02 +0200
Message-ID: <CAPDyKFr8x3B9dmz1fOCOpovhN8CC=187Rtjc+cTEFKN3=U9OmQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] pmdomain: rockchip: Add gating support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Linus Walleij <linus.walleij@linaro.org>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Rob Herring <robh@kernel.org>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_050239_986322_B903AB35 
X-CRM114-Status: GOOD (  11.36  )
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

On Thu, 29 Aug 2024 at 22:26, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> The rk3576 SoC needs to ungate power domains before it can manipulate
> their status.
>
> This makes to to ungate the PM, changes the status, and gate it again.
>
> Detlev.
>
> Detlev Casanova (2):
>   pmdomain: rockchip: Add gating support
>   pmdomain: rockchip: Add gating masks for rk3576
>
>  drivers/pmdomain/rockchip/pm-domains.c | 87 +++++++++++++++++++-------
>  1 file changed, 66 insertions(+), 21 deletions(-)
>

The series applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

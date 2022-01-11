Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51985C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jan 2022 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qw/p5szT9Tx6r+u9pIx/MkAoJeJdqKiWco4hFhZEQgA=; b=eNGJPHaxNTA0MS
	1g8ylD5WAWHG/np5R3XVKnWF00lkJw6KhBYSCjge6Nl78IQ41xb8QWgXJi1k/2LOKjpwpxYBWgC9t
	sJe4nn8xGbwDVeO3TRjAwkaB0ocSoYHMyVTF8emSjGC7bxhWOD9GFiwOz0X3yKt+a1eQuwlfmHJ/C
	gY2kj/H41lSdd4YboIEEraC1AhTidqd4G9EpNEIeyC5va+bwTCE3UYDdquzQqtIswBo79J9FGFB4O
	VMewmNZWBj/cnquRHBt2rpY7HgzjpwnY1KXnHYFq+fK4N0CUOEOsQ+2z6FE14htwPXhTHHD68PITw
	m4jS9/GQIRhE6oiQBxCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7EHn-00FlJj-Mh; Tue, 11 Jan 2022 10:21:51 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7EHZ-00FlEh-Mm
 for linux-rockchip@lists.infradead.org; Tue, 11 Jan 2022 10:21:39 +0000
Received: by mail-qt1-x82c.google.com with SMTP id l17so18037841qtk.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jan 2022 02:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sYa1AOMbwuEU5EoeFlC3BWCMkWWYeKQ6MzYHnQnQ7eE=;
 b=ADWJF9NlN1riYAttU3zhO5neGE8WbLaCIvok+V9lSGE0piCV0prLf7+bn5z3SMJ+K2
 IHjlTQb93qCePszMBjx5pEpzCajoEv+8wY/FNe7qfccpCPzTFxdbklOP+qumxiq3L1VW
 uvvuDmP/W53sjpnR37YNLy9ZrfEewxiMn66a6GIGHegB21ctGhTK2tDmxwbGvnmSw9/v
 8alfe6uTMOwU9BspizOMNMgQf2OJTzu3cSUTcyfUoMNWfA1+iF3KtNcaFy7lt9GhxsvP
 0j9w3a1jnioAk8FlLcANFsacbWLO6Rmskg7IDKIptjcHfyUiLwVI0B+zdeGDR7Qjk+8b
 poWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sYa1AOMbwuEU5EoeFlC3BWCMkWWYeKQ6MzYHnQnQ7eE=;
 b=IVJ9BMF/9Ny3wv+LYBEmKSd2NDa7QIuWwyanrrhZS+0Pi+mjSzDjD79JVtk8zigtU1
 k3sMKFwyvY3P140cNH5QwenjIuwEjF7HN+yv8iyGXRFmrr3249Gc4vzCNrnooJ5Btq40
 XwcLESFgE+3ERZ+j6T6MPy9s0giYTRKZ9aCWm7KdX1QgMT5MhT3wxZ2f1CNmADRdxX6A
 wgHbHLiE3U2vEqFz7BmxpDiM2NnaU3/SdXx9DbgXmhQEiq3ex94TmO4dXyKFi8Ledpdh
 R59jmWv049MfrxJmmARs6KRJPGZMxuOX0Ge+dVKuw0wFJ0jXwhyOuH3/hrUqntQ2GAxy
 oaJA==
X-Gm-Message-State: AOAM532Nm7FVMbt9pH+GtoTUHY/tIPna4P3UQOkn2Q4L9H4lVHe/16M5
 jAf5h1mrGBZfuJXJ8q7/0pm78jggwSnP3lGP5foiGA==
X-Google-Smtp-Source: ABdhPJzbbUNfgyjXmi4t4BA1QOJPl5KiyFfbLF2N8k+Y03nyY+75s+ZulSA2IoVUQkNdry1B9vDzlMJWaMglFWDoSCo=
X-Received: by 2002:a05:622a:5d2:: with SMTP id
 d18mr3059764qtb.154.1641896496162; 
 Tue, 11 Jan 2022 02:21:36 -0800 (PST)
MIME-Version: 1.0
References: <20211215104318.18866-1-tzimmermann@suse.de>
 <20211215104318.18866-4-tzimmermann@suse.de>
 <87pmpy3za7.fsf@intel.com> <2165cfb8-c9c6-1aca-b492-587a8e07eb9f@suse.de>
In-Reply-To: <2165cfb8-c9c6-1aca-b492-587a8e07eb9f@suse.de>
From: Javier Martinez Canillas <javier@dowhile0.org>
Date: Tue, 11 Jan 2022 11:21:25 +0100
Message-ID: <CABxcv=nnyfULvog9z=nMduDK0iT1ZwkxYhdKs3xW88St6C00pw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] drm/dp: Move DisplayPort helpers into separate
 helper module
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, nouveau@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-tegra@vger.kernel.org, 
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_022137_814333_A01DE057 
X-CRM114-Status: GOOD (  19.58  )
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

On Wed, Dec 15, 2021 at 12:12 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Hi
>
> Am 15.12.21 um 12:04 schrieb Jani Nikula:
> > On Wed, 15 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> >>      * move DP helper code into dp/ (Jani)
> >
> > I suggested adding the subdirectory, but I'm going to bikeshed the name,
> > which I didn't suggest.
> >
> > $ find drivers/gpu/drm -mindepth 1 -maxdepth 1 -type d | wc -l
> > 68
> >
> > Assuming we move more of the drm modules to subdirectories, how are they
> > going to stand out from drivers?
> >
> > I suggested drm_dp, which I understand results in tautology, but hey,
> > all the filenames under drm/ also have drm_*.[ch]. And I find that very
> > useful for git greps and other code archeology. With just the dp name,
> > you'd have to know and list all the drm subdirectories when looking up
> > stuff that's part of drm but not drivers.
>
> I think we have enough filename prefixes already. drm/drm_dp/drm_dp_ is
> just ridiculous.
>

Maybe what can be done is to just add a drivers/gpu/drm/core
subdirectory that would contain all the DRM core code ?

Then the dp helpers could be moved to drivers/gpu/drm/core/dp/drm_dp.c
for example. This would also make easy to differentiate the drm
modules from the drivers with just:

$ find drivers/gpu/drm -mindepth 1 -maxdepth 1 -type d -not -name core

Best regards,
Javier

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

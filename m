Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72ACC04A95
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 15:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx9e1if9ATa9FJxZxKfpfkndd2z9/oRBvRIxBvc1aLE=; b=lZxNbkGDXbs8M/
	X9Ro++yfU8hsEiWg3mq3AhocFdyTjPK4R27afoTfpxQ/Dd3D47Rn+pFMqmZJWOJOLnZAqxQIdSc6Q
	qRr4jSlpQPPUdR+kMpzlylSzX8uAsIU5Wv07HErcV1HsKszxdGbonH7629d/cuUTtft4eLN7yZSGt
	YwRwWzh6YNWd0wI5j8eJolFBtYxwjiUA7jFX+wqW2CgGLCiHqo389MqaslYZv98dn5DewAygYGmBQ
	uMe9l9K0wTeLD/ctzi/Hl72RWLRNPciGON98uwpwfwMfNxheS9YfzZtnkGj1NUvrFVTHyKb0jCojm
	1AJ9eBoAKkD0AFBSusdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onLWK-005zSF-EG; Tue, 25 Oct 2022 15:07:12 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onLWG-005zOB-3U
	for linux-rockchip@lists.infradead.org; Tue, 25 Oct 2022 15:07:11 +0000
Received: by mail-qk1-x732.google.com with SMTP id z30so8202887qkz.13
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Oct 2022 08:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21fm5EgPKmeOayQHxWYMU7Nefc1Ipf9I7LMbzYS7TPI=;
        b=Qao3n6VBojqDPD+nyuHaNb8aRuC3dHiWWy2AGSGIeYcnvqBmtYGQkw0ZAnJFMbgl3b
         YXIsxmYnbPg/gkeIi50KEfyRBdnGvB7rOyE6AKwAWbos4tmP+xf33xTqrKYAFctdgjEV
         5bJSY6/fZwHsi070+kf0Dnmrd9VA6kpKF5vcsJbaF4KkD+ujQ6HfenyTPpf4q34P817v
         Lw/cRjg8xI19gsnwTd7/9PilD6/WIP9eNa1DtNk+gWXZdxuCJP9myXKQJQF5gbDxLWVe
         PS22WiRQZeD4cAN67FUE74f+0buJO7v71DQP6WC4ve5q5Ibyz3V9+9DvZel0/LU50VSx
         rUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21fm5EgPKmeOayQHxWYMU7Nefc1Ipf9I7LMbzYS7TPI=;
        b=MvMs8MYmkG74ZK423SvpPtJ4v9Vsaoh3Irra3EJ6mrnGgoZuMfWbrhc1N2OsDwzrYy
         4llVq9LnAdpGIk7Wv4zaGUD3ObOtdFeR06hbBOTF+Qt3TO2J0Tt4XnsUa3RZS3OfT/jb
         cnGJBx+3P2tLFtEFEhDwOhhjne/Uc7CRAm6jMtoLbZxNVXSAFqPTUDqa+bbiTWq6rf74
         0TFxo1aqGCFTJXlG0oQFIjbsqq/amgzoXsYGcfrX2kfq3Bib10xWFtX0HS6/8iK3qvP3
         JMNavDo6GsJvT+5XywmzS30Wcq2JsQLcvam+T/r5V31ZQz9gzkNykoYxmy0uMRotchDR
         uNow==
X-Gm-Message-State: ACrzQf3X01ngf0A/YMFdUQ++XRC2sE/XUSu57OtCeLcKevBbBsrVKp1/
	NUoocFI3VFRiYtmLCkSWV6cGr5wStMSfm9rjFgmx8A==
X-Google-Smtp-Source: AMsMyM5WxUziOboPsxC2N6qlers3FkCq6d6ddxCwWgeTeLHIKEFc0BoQutxorsr/ysGcAgO7sfY3nB5LJLrWXyNsPDs=
X-Received: by 2002:a05:620a:25c8:b0:6ae:be73:86c6 with SMTP id
 y8-20020a05620a25c800b006aebe7386c6mr25824699qko.531.1666710423705; Tue, 25
 Oct 2022 08:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220829093141.45583-1-tomeu.vizoso@collabora.com>
 <20220909141528.5090-1-tomeu.vizoso@collabora.com> <CAPj87rMYW1xZdacZ1Y0qk+D9xpqsqE+cwbQ1j1nZ7S+RKpzOoQ@mail.gmail.com>
 <CAKMK7uGkFP1jSNQzv37PvSqvOtt1FnbfbNyYEf99WM=_2AszSw@mail.gmail.com>
In-Reply-To: <CAKMK7uGkFP1jSNQzv37PvSqvOtt1FnbfbNyYEf99WM=_2AszSw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 25 Oct 2022 16:06:52 +0100
Message-ID: <CAPj87rPTAhcqSnhzYPdDn93Kh9aGJtN9ZGVAYUP2Ke6w6frH5w@mail.gmail.com>
Subject: Re: [PATCH v8] drm: Add initial ci/ subdirectory
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>, 
	Jonathan Corbet <corbet@lwn.net>, Carlo Caione <carlo@caione.org>, Kevin Hilman <khilman@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Rob Clark <robdclark@chromium.org>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com, Neil Armstrong <narmstrong@baylibre.com>, 
	Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_080708_397057_A9DF37DF 
X-CRM114-Status: GOOD (  30.81  )
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

Hi all,

On Tue, 25 Oct 2022 at 08:32, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Fri, 9 Sept 2022 at 19:18, Daniel Stone <daniel@fooishbar.org> wrote:
> > But equally - and sorry for not jumping on the IRC (?) discussion as I was in the middle of other stuff when it came up - I'm don't think this is the right plan.
> >
> > Mesa having all its CI in-tree makes sense, because merges happen rapidly to a single canonical tree. If the scripts need to be changed for whatever reason, we can merge something in under an hour and everyone immediately gets it. DRM is quite different though, given the forest of trees we have and the long merge paths between them. I worry that merging the CI scripts in-tree - especially for our initial attempt at it, when we're likely to need to make quite a lot of changes before it settles down to become a stable system that works for everyone - is shooting ourselves in the foot by limiting our flexibility.
>
> So the entire "we have multiple trees" is why I want at least the
> gitlab-ci.yaml in tree, to force people to collaborate more on one
> thing instead of everyone rolling their own fun and hacking stuff up.
> And there's still tons of stuff outside in the separate repo, like the
> lab status so Linus doesn't get a silly history of lab flapping.
>
> Also wrt "developers don't get the update right away due to
> backmerge/pull delays", that's why integration trees like drm-tip or
> linux-next exist. So maybe initially we should make sure the ci
> patches go in through drm-misc, to maximize how many people see it.
> And even for mesa it's not fully automatic, you still have the rebase
> your branch if you picked a bad one for development (but yeah marge
> does that if the MR is ready). If you're doing kernel development on a
> linear tree instead of an integration tree, you're doing it very
> wrong.
>
> What I think everyone agrees on is that we probably get the split
> wrong and need to shuffle some files back&forth, and that's something
> we need to warn Linus about I guess. But somewhere we do need a split
> between internal and external stuff, and personally I'd like if at
> least the pure sw testing (build and virtual stuff) could be all in
> upstream.
>
> > Given that it's currently very dependent on fd.o infrastructure (published ci-templates, the registry, the specific-tag runners for Collabora/CrOS DUTs, etc), there isn't much of a portability gain in bringing the scripts into the tree either. It's a good goal, but not where we are today.
>
> I don't think there's huge chances for any non-fdo gitlab anytime
> soon. Once we get there we might need to figure out how to standardize
> the hw lab interfacing, and if we have all the sw targets in upstream
> that should help with shuffling stuff around for a hypothetical LF
> gitlab CI (or whatever it is).

Yep, having talked through things on IRC, I'm happy with where we are;
let's give it a go and find out.

Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

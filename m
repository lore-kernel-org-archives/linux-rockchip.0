Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A271EC25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 22:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8Ql0EqM1+APQ8r3KM7f1/n4dMY+bGjjw+IDjFcR79E=; b=KNc+N9JIJARddR
	YjRh1GCHANtRzICDN5RmBFBEMahCynxQyY1RutvfzH8Tf30784enRlz3nzzKqguZzKJgCxhbrIO1+
	6nmRtMe0H/qESlWfjUe6NiPMl/9Gaw6O3gtyuJ09fnEZTT0NFk+Hh5bwq/PZIb3nn4MKYTRpFGrlE
	Vy3C+vudhW7+yMr3RHqJF8pw6zoSeqgUD/q2hYAhA1SiIMcy4ZrbVThxs0JcnmHX95Gi92Fto+6iB
	oBgBJY+Ned58PAZmF9VxCw0/GNuTTuMyB7xvdRChhIE1RmR4KZhdpDZZ3Lw89ip2PggG4U7rflyHp
	DHnkpHJ5GY+ur58WcjCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uFM-00000004F48-2Xbc;
	Wed, 22 May 2024 22:15:44 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uFH-00000004F1b-3SZx
	for linux-rockchip@lists.infradead.org;
	Wed, 22 May 2024 22:15:41 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2e716e3030aso51286971fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2024 15:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716416135; x=1717020935; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SqIqpNkg9IjyHtUc5l2lxPSbyEb8h7TdgsyXTpwuQbM=;
        b=ooY9lK8NDe92k8GsgkNaY02xXs7V3TU8wgM1CUEqH0VDR5vKFhsLwQvtSySbltBINj
         EvkrLgl0a/1BbJXaVjT5xf/8Y3IVOufZksxyvIAML9w8Um2U6ANkVl+9th1VxlUUbkxj
         Je8anSW2a8HJEW6X4V+cTJFlwOfhKrNLWBKFwMDXockbEinbkeKWOdQWduQgr8Tk898d
         AcojopL5cfz7PhRK+zpEXOvqyt6CyncwfGTAxjKCAvHHRv+xql0PkQ9V7jAfitp6Ufu3
         Wr43DBhq6HjOfmDRpeozawbPnoskPtjIKyASVHW1CI15wqoVhJqvl9ah2yUOXWEVLoTO
         TXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716416135; x=1717020935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqIqpNkg9IjyHtUc5l2lxPSbyEb8h7TdgsyXTpwuQbM=;
        b=wn14PRFgpWYkXbfaimiTt7g+FVbldIUBDOjCWAC9LLAQku9+Ej0HeltQyexBKA/MHv
         U+DuMLvia2Kv3Arkt4bwf8NI58OxNQ0h5hFDQO0HBt+DOOFOvPepp+JyKkg08KDJA9Th
         0n3eWpIYQYA7I6JpXV8Qo7kPJulyuLsMNZabDQWXoIDyM+PimLsRKXruWSWuIRvvLYxQ
         aOUDMUS7PhcORjGsb3V7hwoIyffzHRGzVl9Y8GzauH5+BVa6wSySYt9Zblje1Cw3AOBU
         /ok5ANpFIkrHnzcjlNQKPzfscr8OW1Ez8ZsiI9KS+iDWQ9bq5tFO/pdKAUoC+rR8kk/g
         pOBA==
X-Forwarded-Encrypted: i=1; AJvYcCU1Gc3tND0Fa7rOMVvOY/DI/uMuxJt1GXFdzQVFe7i9bcYrFgSrIDbvH+CnezMrBa4HGR0XENhhrz8j81baHFbvDdP7gRymDvAeQwdg+DKO+Yl5
X-Gm-Message-State: AOJu0Ywi5Hg9iFcSRDjshLl35X/p7wptZGk7seTz2DAL9A6JKh8A+4Lc
	xJRHl14xTlO1V1LAMjcLvC/LnweFEk7tmg4D/1Suu976qq0aPPQIVg4q9kEXsUs=
X-Google-Smtp-Source: AGHT+IF/UTSqsmeasuf7NOT2sTbmOrMUL+I3W2MWiTAwWJ+7vs+IwOiiNIBy+wp79U/WJ252kb2Igw==
X-Received: by 2002:a2e:2c0c:0:b0:2e0:9646:8512 with SMTP id 38308e7fff4ca-2e94959d2d1mr19932501fa.31.1716416135049;
        Wed, 22 May 2024 15:15:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d0bbc372sm41384461fa.8.2024.05.22.15.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 15:15:34 -0700 (PDT)
Date: Thu, 23 May 2024 01:15:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v14 02/28] drm/mode_object: Export
 drm_mode_obj_find_prop_id for tests
Message-ID: <nxcom4wqbviqipongd3r4ao7w4ik4pntq3jejhmb4sr2ymb5vb@mtyeaxtxlmat>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-2-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-2-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_151539_899132_D6031D2A 
X-CRM114-Status: GOOD (  13.13  )
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

On Tue, May 21, 2024 at 12:13:35PM +0200, Maxime Ripard wrote:
> We'll need to use drm_mode_obj_find_prop_id() for kunit tests to make
> sure a given property has been properly created. Let's export it for
> tests only.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_mode_object.c | 1 +
>  1 file changed, 1 insertion(+)
> 

If this ever gets reposted, it might be better to move this just before
the patch 6 "drm/tests: Add output bpc tests", which actually uses this
function. Nevertheless:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

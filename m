Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6597C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 15:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ai1B1RdBvYGSyKKijSBVIf2cfJQJbvS9+HHL/ZF2bIM=; b=U3dpO20ITSuUFg
	0RYu6bBvCEiuwKhguVMooTIJAFlYlf0J0Sc24jrpZjNM/H0pPEjw+fk53cgmo40KFZFmHBYhZCubH
	UjA7YX6E2iYBo04zCSiHF9I5pMEHkgQQgnJdau35QA0ldYRqoqdUbDYCbYbJqgMLCGLgTM32066RH
	mbDQhOZrO00gPKPpgWaCvBLMv0OmkRS8pLmznGRavGdf3GdlEBqqf3txof8lELLjmJSvl7wSYKxy7
	qN/N2BwJd5rdPfNb36cGAp1X7DqjRtkq5aLEJWVPlwWVwBkOf5x6vDtZuZ9QpLsW6AdcNWn/0/2iO
	AHakFOT81LtDu7nEiIgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqGcc-0080D8-1Y; Thu, 25 Nov 2021 15:25:14 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqGcZ-0080Bq-N1
 for linux-rockchip@lists.infradead.org; Thu, 25 Nov 2021 15:25:13 +0000
Received: by mail-wr1-x434.google.com with SMTP id b12so12443859wrh.4
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Nov 2021 07:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=bgokrwfXdRB9SClU9n/nKdZVyUcKPx1fDzLulUzJIPU=;
 b=BktAf1OS+eudDpfgrdZDTSFFMA7Yx1oBn5NMzdoU7qIo8aNQ9mok4e2egctvZU1mko
 URk5CsZF+wfaS2PBAqP0GONNNyChiLkL+Cn3nlkbJubQzzbvN+ZxhxMH6RQhCRyrTmWO
 zzBIJ4Mhg0tjItLDamKowUeOk7aREzY9Rg5Nw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=bgokrwfXdRB9SClU9n/nKdZVyUcKPx1fDzLulUzJIPU=;
 b=WsMZ0dKsW9bWgUY2aJi13GhcCXCX1L5QPaKX1l6qvQbGu/Za7Z11Zf4e0Zp5Ni8Dot
 OdMcv7jUHFhPl4r0Pn5qIJdRDMhAnyVxx/jutRj0qw7MOeAVDiXUITBiri8aoL5vxy0j
 KZO6IH9feEtwtIZ5p7lAYVrvVPpfpdFZBiRd8ZKhDDZiWs1c+GNJ8KpP9ZQsKLXjiU67
 kjZOkdaak8ZVb+wD6CIG0lE4tnOEayaPcJu7M0dyfU0EIaHt1fW8hVirOfHhg/pNXwmZ
 c+j4znaYTBsNYM+lZw3hwO2zG1H+dEEu5o8AmeSFtmXAhRfStvTNXCcyU3+lossIImK5
 odKg==
X-Gm-Message-State: AOAM531dCc8TUSlGrRRfe9vWkitoVFUFJbNsPcSIqFqTUT5LNT3x0wUn
 8vAaJ0HE1y6iaBt+qK5Useyyxw==
X-Google-Smtp-Source: ABdhPJwe8pptmsJdDF9M6JUSyrscCdaDaxsY8JQgVcoGOgo8XjGLEdr1e+oL4tgyhJgNNAWjvV0HCw==
X-Received: by 2002:a5d:6111:: with SMTP id v17mr7637482wrt.512.1637853908242; 
 Thu, 25 Nov 2021 07:25:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id bg12sm4220870wmb.5.2021.11.25.07.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:25:07 -0800 (PST)
Date: Thu, 25 Nov 2021 16:25:05 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Rob Clark <robdclark@gmail.com>, linux-input@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZ+q0ZlIRoq4nZMl@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Rob Clark <robdclark@gmail.com>, linux-input@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <YZYXR4u6VBEi4qnM@phenom.ffwll.local> <YZap4zKo8D5eZc1y@google.com>
 <YZd17jm5Nkfu5YRO@phenom.ffwll.local> <YZf15Ir0LDjkYNF2@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZf15Ir0LDjkYNF2@google.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_072511_782745_69313809 
X-CRM114-Status: GOOD (  37.27  )
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

On Fri, Nov 19, 2021 at 11:07:16AM -0800, Brian Norris wrote:
> Hi Daniel,
> 
> On Fri, Nov 19, 2021 at 11:01:18AM +0100, Daniel Vetter wrote:
> > On Thu, Nov 18, 2021 at 11:30:43AM -0800, Brian Norris wrote:
> > > On Thu, Nov 18, 2021 at 10:05:11AM +0100, Daniel Vetter wrote:
> > > > On Wed, Nov 17, 2021 at 02:48:40PM -0800, Brian Norris wrote:
> > > > > --- a/drivers/gpu/drm/Kconfig
> > > > > +++ b/drivers/gpu/drm/Kconfig
> > > > > @@ -79,9 +79,15 @@ config DRM_DEBUG_SELFTEST
> > > > >  
> > > > >  	  If in doubt, say "N".
> > > > >  
> > > > > +config DRM_INPUT_HELPER
> > > > > +	def_bool y
> > > > > +	depends on DRM_KMS_HELPER
> > > > > +	depends on INPUT
> > > > 
> > > > Uh please no configs for each thing, it just makes everything more
> > > > complex. Do we _really_ need this?
> > > 
> > > First, it's not a configurable option (a user will never see this nor
> > > have to answer Y/N to it); it only serves as an intermediary to express
> > > the CONFIG_INPUT dependency (which is necessary) without making
> > > DRM_KMS_HELPER fully depend on CONFIG_INPUT. (We should be able to run
> > > display stacks without the input subsystem.)
> > 
> > I'm not so much worried about the user cost, but the maintenance cost.
> > Kbuild config complexity is ridiculous, anything that adds even a bit is
> > really silly.
> > 
> > > The closest alternative I can think of with fewer Kconfig symbols is to
> > > just use CONFIG_INPUT directly in the code, to decide whether to provide
> > > the helpers or else just stub them out. But that has a problem of not
> > > properly expressing the =m vs. =y necessity: if, for example,
> > > CONFIG_DRM_KMS_HELPER=y and CONFIG_INPUT=m, then we'll have linker
> > > issues.
> > 
> > Usually this is done by providing static inline dummy implementations in
> > the headers. That avoids having to sprinkle new Kconfig symbols all over.
> 
> Right, I already did that, and I'm not sprinkling
> CONFIG_DRM_INPUT_HELPER much. (I do include one around the module
> parameter, because it doesn't make much sense to have the module
> parameter even exist, if the underlying feature is stubbed out.)
> 
> But that doesn't solve the problem in my last sentence, involving
> tristates. The "stub inline" approach only works well for boolean
> features -- either built-in, or disabled. Once your feature is in a
> module, you need to ensure that no built-in code depends on it.
> 
> Do you want DRM_KMS_HELPER to unconditionally depend on CONFIG_INPUT? If
> so, I can just add a 'select' or 'depend' and drop this intermediate
> symbol.
> If not, then what do you expect to happen with DRM_KMS_HELPER=y and
> CONFIG_INPUT=m?

Yeah just add the dependency. If you still want to keep it optional the
way to do it is to add

	depends on FOO || FOO=n

And then just have #if IS_ENABLED(FOO) around your inline wrappers.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

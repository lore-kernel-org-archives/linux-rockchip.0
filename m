Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F2AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 19:15:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD14261AD0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 19:15:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CD14261AD0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgidjXzVpZlqXJdfDbdpTV7fpCSJUJkfDQOsUP7nTHs=; b=WT/T9xprFvsT71
	+m2FvzEkWymZXmjaojZq/Xnzw1Z81J1o6lnm7y265gg5pw6Ora/hcZeG/xEJdtJj2Wn7sRq6TCYC1
	Q69dKY2KC+JGgXsGEofLDYFsdY7vTFd57SNV18UrEur9GMQR9VPOtyN5bA3VwkYbk4rBTHNNJZMlv
	egXuP5pY1F6n8AALRoccGbmOJv42v//qAhP24A1Gr1jpB7G1app3RLtqcQvoQiFdOzUMGIeUCDDmc
	7v/XVLnCaL53tApi+Fes9xufv8JvZBHryQS25xeskxZ9b3akapxyHAehZ10tJh/3gf1kFpz+0W3nx
	zdYinOh7FE4wETiweG1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo9MI-00BQEp-0m; Fri, 19 Nov 2021 19:15:38 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo9EH-00BOkT-A1
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 19:07:22 +0000
Received: by mail-pg1-x52f.google.com with SMTP id p17so9431619pgj.2
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 11:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q3pdqezUF3Pzbcds/tqL9a3vuB+GIr/2xlMTkcoKHS8=;
 b=mieh92MqEyaCRT1FaPUo0Ylw+EopgdsnKvE4+uToiX40sIMRdGF/jjsiLqfKJxLdVO
 1fRUmjyYu8bdBz+e0CPr4nS8X319aCYzHjYTN0XLgWeb7Q6xZwp8w/3vzPdyc6+FdY41
 fhSH97XWGnCqD4JEnmC9bLib413QEcOEpe6jE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q3pdqezUF3Pzbcds/tqL9a3vuB+GIr/2xlMTkcoKHS8=;
 b=YZY5OD9I9mF4nHQ8C+/0LHnuiUbPTSokjJPLyyj9RsCLMtI7FDjPbd99HHwKRF9BYj
 zD3sgPq6oCxO825NeAESklq0qcqJ17DlFYBhj1npSUusv28ZRCqayg6dHxc+McCvZzTl
 gQZWbbL5Owpm4MB3bkZIY9CxMQXxuO+uaW5dbWwzIMdaaYoBNE7vkFjN7EgrMyNNDGJy
 /RViySlsWnWu3NbRQsIwf4uYKbkmorCWntZAUFx0Q5dmG490wqfAUoLxfUOSWPnWLGZF
 jP+7eAU5bLRIjf6MCtmq2cKVsubeM1QGAEE3GLIBsxK5B6mQ4YNf7t45sP6bxYj+Rg6u
 TyUw==
X-Gm-Message-State: AOAM5300ixTHzu2pRpLDx70vp1meWIEcKvEhSTXG7Q4/98sksqsxUtTv
 Wj2QbqFifqNTgL0FK8CrCDupnQ==
X-Google-Smtp-Source: ABdhPJz/CalZQJnQBmz5Ruvzzp4xId7hvXSM5tnD56nv0ohBgcfA6CYqnztrKPcmtSPoDW8Mw331SQ==
X-Received: by 2002:a63:494f:: with SMTP id y15mr18817862pgk.257.1637348839767; 
 Fri, 19 Nov 2021 11:07:19 -0800 (PST)
Received: from google.com ([2620:15c:202:201:d418:2c22:1322:f27])
 by smtp.gmail.com with ESMTPSA id e7sm337651pgj.11.2021.11.19.11.07.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 11:07:18 -0800 (PST)
Date: Fri, 19 Nov 2021 11:07:16 -0800
From: Brian Norris <briannorris@chromium.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Message-ID: <YZf15Ir0LDjkYNF2@google.com>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <YZYXR4u6VBEi4qnM@phenom.ffwll.local> <YZap4zKo8D5eZc1y@google.com>
 <YZd17jm5Nkfu5YRO@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZd17jm5Nkfu5YRO@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_110721_399787_4D24C259 
X-CRM114-Status: GOOD (  29.78  )
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

Hi Daniel,

On Fri, Nov 19, 2021 at 11:01:18AM +0100, Daniel Vetter wrote:
> On Thu, Nov 18, 2021 at 11:30:43AM -0800, Brian Norris wrote:
> > On Thu, Nov 18, 2021 at 10:05:11AM +0100, Daniel Vetter wrote:
> > > On Wed, Nov 17, 2021 at 02:48:40PM -0800, Brian Norris wrote:
> > > > --- a/drivers/gpu/drm/Kconfig
> > > > +++ b/drivers/gpu/drm/Kconfig
> > > > @@ -79,9 +79,15 @@ config DRM_DEBUG_SELFTEST
> > > >  
> > > >  	  If in doubt, say "N".
> > > >  
> > > > +config DRM_INPUT_HELPER
> > > > +	def_bool y
> > > > +	depends on DRM_KMS_HELPER
> > > > +	depends on INPUT
> > > 
> > > Uh please no configs for each thing, it just makes everything more
> > > complex. Do we _really_ need this?
> > 
> > First, it's not a configurable option (a user will never see this nor
> > have to answer Y/N to it); it only serves as an intermediary to express
> > the CONFIG_INPUT dependency (which is necessary) without making
> > DRM_KMS_HELPER fully depend on CONFIG_INPUT. (We should be able to run
> > display stacks without the input subsystem.)
> 
> I'm not so much worried about the user cost, but the maintenance cost.
> Kbuild config complexity is ridiculous, anything that adds even a bit is
> really silly.
> 
> > The closest alternative I can think of with fewer Kconfig symbols is to
> > just use CONFIG_INPUT directly in the code, to decide whether to provide
> > the helpers or else just stub them out. But that has a problem of not
> > properly expressing the =m vs. =y necessity: if, for example,
> > CONFIG_DRM_KMS_HELPER=y and CONFIG_INPUT=m, then we'll have linker
> > issues.
> 
> Usually this is done by providing static inline dummy implementations in
> the headers. That avoids having to sprinkle new Kconfig symbols all over.

Right, I already did that, and I'm not sprinkling
CONFIG_DRM_INPUT_HELPER much. (I do include one around the module
parameter, because it doesn't make much sense to have the module
parameter even exist, if the underlying feature is stubbed out.)

But that doesn't solve the problem in my last sentence, involving
tristates. The "stub inline" approach only works well for boolean
features -- either built-in, or disabled. Once your feature is in a
module, you need to ensure that no built-in code depends on it.

Do you want DRM_KMS_HELPER to unconditionally depend on CONFIG_INPUT? If
so, I can just add a 'select' or 'depend' and drop this intermediate
symbol.
If not, then what do you expect to happen with DRM_KMS_HELPER=y and
CONFIG_INPUT=m?

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

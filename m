Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D48EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:11:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4350061B1E
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:11:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4350061B1E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJzZovB742VOTU4KzQUTWoRBz6D7JXzRQLRFSqbTimU=; b=2Q71IMK3yUlqu4
	H8nrzlo/3ARDMX1FU9LBHV+xhOGqiTPyiF7LC/yMKCsT8s/P9+8/YDrk4vtTvheKF4PcI6n+fo7Lz
	6PFnLFHRO9L0Jr0ShdTTtwPebcWPC9rsI44lThZ/EDjEF45l/dbadsjIi7gyWObky89UR9yQ8uh69
	NpnG8qCPeCf6YvGH/rRCQe8lL2tEugx18Zq2+Kghw6PRWiNZ0c6y3o9v0/tDorGygL0aH9hjp4kuR
	oEIk4xuF1RPCG3/Y/ZdorWYA0y08NfPj9cuxWFCMKmgzbVK6zu5NNc9SWDNYfzMdeSDQCb1at0HRS
	LHOwoGBVJtl/FzdG+NKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo6Tr-00Axk2-22; Fri, 19 Nov 2021 16:11:15 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo6To-00AxiG-79
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 16:11:13 +0000
Received: by mail-ed1-x52c.google.com with SMTP id o20so283226eds.10
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 08:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=KIgonA2EFTJLKTGv6+UD7Og9LS6eD0ftI5Kt9N5ampc=;
 b=dgWOaaq8yzIV1gHvfhemyZzO0QeUnPQPv8uVRZXUwjLioj3Hwn6siTvzHlaMIZ+M10
 7tJHjRqw94twP/WJGnDKvc9Tmz0Fn6Yc9Vvt+pm9yC4Sy11voNWpvPXPuV5NiIR23tEp
 5UPYM6qyrV8lv4YGUd8iuMlwg7TcUyXij0cLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=KIgonA2EFTJLKTGv6+UD7Og9LS6eD0ftI5Kt9N5ampc=;
 b=n3/sNIAgCsj4w1VLrjzWbGZSt3nhCPhafM1Ix+Wqrm5ctRjTSiBMuaxv3tUL67i0GF
 KcHr1zj/IoBgOCDCnqVbnjzL/AiqvRalAC2/PN4v3C87hEnDHaoJgQT/13uWAy2B6TFu
 8rpX4u386SxbTfsRGg2YJL1O/PgL9VQKUw3LxOLK1p8mpsrUxcali43CF1DBM+Daqpmc
 hAZGNk02niWnzbzb1rIPO98ROAX45UNkqPSMQAjdMhXkRFWO+P4dAMsSjdhph8BE5OpZ
 d1eoQhjbH09eIveHsdWTCSl+poaYBai6qwC2Uflo9InvDtf8Gv8qD4aSgJVhEq8jKiH+
 WcaA==
X-Gm-Message-State: AOAM532M1ec5uKob2wc6j8iD1DBEjEkVUXvqEJJ3e8FaUSc8RHlgb6/g
 MAR7/5UQ+KKpYWjPO506ZhZyOg==
X-Google-Smtp-Source: ABdhPJxdLdSV5agM8x3vcedpr+NqChZx9RvCft+FI62Knox080qmHnRF7sNgy7+mWO4QtRIMEi9PDQ==
X-Received: by 2002:a05:6402:268d:: with SMTP id
 w13mr26820359edd.257.1637338270326; 
 Fri, 19 Nov 2021 08:11:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u16sm128924ejy.16.2021.11.19.08.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 08:11:09 -0800 (PST)
Date: Fri, 19 Nov 2021 17:11:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Simon Ser <contact@emersion.fr>
Cc: Daniel Vetter <daniel@ffwll.ch>, Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZfMm3GkFereYPTZ@phenom.ffwll.local>
Mail-Followup-To: Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 linux-input@vger.kernel.org
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
 <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
 <98236dpcx39iOz8xAYrwGLfiLdwgUlljrbBgHL3wd8A0Wz4KzRk3PR8s_tb5Rxu4eScKI4483kB6Vhv-T64CJYOeQqwXlqo2c-64HvoS5cg=@emersion.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98236dpcx39iOz8xAYrwGLfiLdwgUlljrbBgHL3wd8A0Wz4KzRk3PR8s_tb5Rxu4eScKI4483kB6Vhv-T64CJYOeQqwXlqo2c-64HvoS5cg=@emersion.fr>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_081112_284912_B5E91FAE 
X-CRM114-Status: GOOD (  19.42  )
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

On Fri, Nov 19, 2021 at 04:04:28PM +0000, Simon Ser wrote:
> On Friday, November 19th, 2021 at 16:53, Daniel Vetter <daniel@ffwll.ch> wrote:
> 
> > Random idea ... should we perhaps let userspace connect the boosting? I.e.
> > we do a bunch of standardized boost targets (render clocks, display sr
> > exit), and userspace can then connect it to whichever input device it
> > wants to?
> 
> On IRC we discussed having user-space hand over a FD to the kernel. When the FD
> becomes readable, the kernel triggers the boost.
> 
> This would let user-space use e.g. an input device, an eventfd, or an epoll FD
> with any combination of these as the boost signal.

Can userspace filter eventfd appropriately like we do here? And can they
get at that maybe 2nd eventfd from logind or whatever there is on distros
where /dev access is locked down for compositors/users.

I do agree that if we can do this generically maybe we should, but also
the use-case for input boosting is pretty well defined. I think it's just
about making sure that compositors is in control, and that we don't make
it worse (e.g. with the sr exit adding latency when the compositor can
redraw quickly enough).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

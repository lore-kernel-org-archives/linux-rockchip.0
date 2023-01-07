Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC3EC46467
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 12:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNaCMFrxCEe5FyuKgj7hnu/hOKe9zUVnTNQlEx6QqcQ=; b=ociNVHo+jrGDC7
	aVnfwLdSLwDYIx54f3zltTkbroXgq3kK33b9AavF6PbFHYixyfuDXdxcN+eJeLozzRwYtb8dHavoT
	woIpIf8LJRI79IADhdnzZVJkeDkav/3k77RSsT39gJnv594yzQ1eZ/MGHnPHdFu5kZ0GqSWZCAWCG
	1G/MY7MVdf2DNTkLC23yjsz5YdWRyZG4QFpus1SLeZA1NgJV8qcW/ynixAJDvvCEzLzL1yGaV2q9o
	/RhYGSVcmBDTRgOKPeB7EHBLcl2knG+u7p0oTQBXP9jUkdMGaB+dNc/gBy8sPZywYecHQP9prymvQ
	KxEwR987L5RBCFSASifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7xp-004gSx-7d; Sat, 07 Jan 2023 12:06:17 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7xc-004gMb-IS
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 12:06:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id g10so2763868wmo.1
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Jan 2023 04:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLjHqFbROXlE+sbQ3Mi0YQwdit1/ACHkltZB2eIp6ZY=;
        b=VZ5LC/sHAOIR5huRKj2y+0d40HWTG5UTtD8WCG8STyZQlXt4fYxcz2D61c7EiDK6+x
         1iq1BqhEjdpRL68bguKTkMX/H/fNo0BFSKZA5L7Sh7kAEIsM4f9s77WkVIFxDZOxdX4p
         yh1QQk2Nn0mdoUl0yg72fRnItYVKI0RJ5/Pmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLjHqFbROXlE+sbQ3Mi0YQwdit1/ACHkltZB2eIp6ZY=;
        b=02P852PryqusYeoVCb78SCNd0cEEjHVcy7lu0VX8A0Bp8P8oCcf2IBCFXYDzvvqoMr
         VBjdISAWXXfUE6Is9lUNHKKimOJZle5nH4Tk6GTJdDIAKq5oxo8cmQPNgnaiPzSRki+Q
         /iHJXxYRdnjllCWAruCENsaKhc8KDxG1jrz+LpvVNmeAuB48QhMIVoT99JK/Qn0yDEMH
         d5WulJ1021DpsA1KuqoPkvp3gV6LljdZ/1IgThdoDcW9f/f8UY/8FtkoLgMb8gvN+RdS
         VO1GnV7I0ReTrRyD5HShWIh/KZ7hsT/yMlgx3pBT2G4jQPWhuY6OPfgbHgU41BeOLScA
         Pq0A==
X-Gm-Message-State: AFqh2kqTMBpuosEi2F1lK0RcaxjY6PUbx+rGgJEarvw1etZbby1BorLZ
	njF4M1YclRbKjzFyanflrcy81g==
X-Google-Smtp-Source: AMrXdXvG2OKBklPVU/w7yJTB6p28qUxxhsgOsf2xdlo6IBSDgcIEZZbPsf9QYXqEN76wJsjC57mQNQ==
X-Received: by 2002:a7b:ca4f:0:b0:3c6:edc0:5170 with SMTP id m15-20020a7bca4f000000b003c6edc05170mr40747291wml.25.1673093160874;
        Sat, 07 Jan 2023 04:06:00 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003c6f8d30e40sm10842896wms.31.2023.01.07.04.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 04:05:59 -0800 (PST)
Date: Sat, 7 Jan 2023 13:05:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>, Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7lgJVP7hVtHpWTB@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <CA+ASDXNBDkzz_xRDbE9gNZZN5kSfxksh0EN01_CxNgyog_BZOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXNBDkzz_xRDbE9gNZZN5kSfxksh0EN01_CxNgyog_BZOg@mail.gmail.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230107_040604_656362_B637F5E8 
X-CRM114-Status: GOOD (  15.08  )
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

On Fri, Jan 06, 2023 at 05:27:33PM -0800, Brian Norris wrote:
> On Fri, Jan 6, 2023 at 5:23 PM Brian Norris <briannorris@chromium.org> wrote:
> > v2:
> >  * add 'ret != 0' warning case for self-refresh
> >  * describe failing test case and relation to drm/rockchip patch better
> 
> Ugh, there's always something you remember right after you hit send: I
> forgot to better summarize some of the other discussion from v1, and
> alternatives we didn't entertain. I'll write that up now (not sure
> whether in patch 1 or 2) and plan on sending a v3 for next week, in
> case there are any other comments I should address at the same time.

For me it needs to be in the helper patch, since anyone not doing rockchip
work will otherwise never find it. But you can also duplicate the
discussion summary into the 2nd patch, doesn't really hurt.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

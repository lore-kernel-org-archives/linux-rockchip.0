Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 247E5C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 17:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg7vjryNQetb4YSgGYQrd2OAyda+/ihQGHb/VXdNtzU=; b=gFnq8iOqB6PecH
	lBUPTqwanmdhxr38gACZ5KW+VxUzfIyySLAkCZawI89PvDs2KmKqeyxDeIyls/67Oj6QKRkaxMD5p
	orM/9v0W7g5j+6qTjDBkPgzvCGMpwYr/eECA7PifHKZ6Hj1QZNqrBJeCmwdrC/1t9svyT6CqyqCBV
	pdde14vRzWOMLi36SvUIgsQxtrd16rv+g9NSFVkqjaa2k4jdPzVeoQblHsgOg0c5wolz7S9AkwyER
	JYuxSB2/sl0H/smpNTqIJZDQhmZSRad5MJjntx+Hy+ya9oTpqFlk8xMfqSYjMyshhGlben0nr3Ijr
	vXnqX2dXr4U1Nu3A04Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDqqy-00DrjT-QS; Fri, 06 Jan 2023 17:50:04 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDqqv-00Dqs4-HD
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 17:50:03 +0000
Received: by mail-wr1-x42a.google.com with SMTP id r2so1951562wrv.7
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 09:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEWcai/0BTUSDXzlv/9ZnddHBUgd9q90oSNrTCd/iAE=;
        b=hkasdKR/OrqmQwA/oOWmPJTk7z6ETkOAnL/+a1hwca7i4k8ududHCU7HQbUMGoP+qW
         Uw1kYQ2NTYX+GOukmMyi/bR5ErlLtQqAnJdJ2bagG5WkAe3w1XbjORO4Qr+yOgg+9g3Q
         Mf1s4J2Xy6cIj76SMWXp0VGHGG3zAIgDoQ+Mo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MEWcai/0BTUSDXzlv/9ZnddHBUgd9q90oSNrTCd/iAE=;
        b=Nwi9SNuPWV/fAJTfQ4hfoL3Kj19jWytg+XLhr3w2TUmhKVUXrLyDW2wYetmw5bDo7o
         8KX8twNsB74t2Bzxm+kkmohEzWo5uCgg6Wxochn004XOOUwGQ0/hjIIWzLGDKD+SqKrj
         4j9FiQBCBnjgqhoj3eUyB8e/moiUUJJYHoXuJd4PGr6aNB+zL4SFDhlZtISuW/Fk15Cl
         I4JvIvfkt40Ll6QTReMqy/xsrLI/0BaO5OldRIb4NDNam31YmsMHgJsVyMJtySc8QVrS
         oMJoCkI0vhsYl0xPuJbLLPkrfZaClD4KIk6IWqePPl9HWTjl4+8EBXpudC1oOxTXv+Z2
         Gy6w==
X-Gm-Message-State: AFqh2kqamjAFnYsHdog90+FJQzV2qMgz9xPyazS/HlwodFr+KlyYfzxL
	3gFd6mnzn60CwbN2YEEQyvlic6VkH6ihkwzI
X-Google-Smtp-Source: AMrXdXsSQA1sZlk78KWMQ3ZlByTzU+qPddwuRA0IvEpJPokqzlPt1nfac/dSnY9a55WhImAedfMMaw==
X-Received: by 2002:adf:f4c1:0:b0:27e:7f5:6634 with SMTP id h1-20020adff4c1000000b0027e07f56634mr26567517wrp.60.1673027399535;
        Fri, 06 Jan 2023 09:49:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o12-20020adfe80c000000b0024258722a7fsm1710958wrm.37.2023.01.06.09.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 09:49:58 -0800 (PST)
Date: Fri, 6 Jan 2023 18:49:56 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Brian Norris <briannorris@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7hfRNHMjk5H+muj@phenom.ffwll.local>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	Brian Norris <briannorris@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7fH88gNfja364JD@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7fH88gNfja364JD@kroah.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_095001_608151_5D3F5751 
X-CRM114-Status: GOOD (  19.73  )
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

On Fri, Jan 06, 2023 at 08:04:19AM +0100, Greg KH wrote:
> On Thu, Jan 05, 2023 at 05:40:17PM -0800, Brian Norris wrote:
> > The self-refresh helper framework overloads "disable" to sometimes mean
> > "go into self-refresh mode," and this mode activates automatically
> > (e.g., after some period of unchanging display output). In such cases,
> > the display pipe is still considered "on", and user-space is not aware
> > that we went into self-refresh mode. Thus, users may expect that
> > vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
> > properly.
> > 
> > However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
> > vblank enabled here.
> > 
> > Add a new exception, such that we allow CRTCs to be "disabled" (with
> > self-refresh active) with vblank interrupts still enabled.
> > 
> > Cc: <stable@vger.kernel.org> # dependency for subsequent patch
> 
> "subsequent" doesn't mean much when it is committed, give it a name
> perhaps?

It also looks a bit funny tbh, and a bit much like duct-tape. I need to
think through how this is supposed to work really.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

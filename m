Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80D33C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 06:39:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D73E561101
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 06:39:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D73E561101
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zITfSf2YOnBH+fhizW7XlJWpnO0rlCAYLuUxmhvJ13w=; b=LdrpSrLTusP+Id
	bJa57+81kJrydARUlfKyAOHuruUWoJHJwlAE1ZabNMptSwO9VzYFrsxYoqDXEggYAz56Bxe/gN0Gk
	53h7nUzG9Qrb7qxF8l43FCQG+MQxtKIdZ0D5kW+CLTE9YpFoZg6PIu2nNQKMpgnuvimludRiS1ci9
	cbu0EMnfnq4pBUijfm4s2BctQ0hD9440rTXHHPdMQE/2FmxqVNGhPISCsvwAaviduLCoFl0xcSLcG
	QJyNgnxrlJLXMW7bRQpkQ0xvMEuS5/6QrLDwMbaPDcL2iFzKbICjMgBd391x+GOJfRlLT/fCTp2Po
	bPVfpTzVktdnGtYyOm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnb5J-0070SD-BG; Thu, 18 Nov 2021 06:39:49 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnb5G-0070RU-Kg
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 06:39:48 +0000
Received: by mail-pj1-x102a.google.com with SMTP id
 gb13-20020a17090b060d00b001a674e2c4a8so4738049pjb.4
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 22:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FMI94b/yAujS84g8LGbPIlO0F6a4sIjHraHl0xC9qbA=;
 b=RXZYLWj+1PEiNsO61vCWFGwgPlLIfFJ/upevq6+bkOm+yNbUGWjZVdGe8mFaTU0sRM
 4y768qWlDzmvJhLSqREaYUui+WYrgxAaAtWKOHZHxm400qFBLt3jQiJhyDM0cRj2xJkn
 T2BjmVR5eDgKUOgoyvHFP/0MhvHy/inHT2HKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FMI94b/yAujS84g8LGbPIlO0F6a4sIjHraHl0xC9qbA=;
 b=tTTvtoqrKy+Kk0x6bdsJqJx0gmAyxnsOXnPtcT6ZU9SYAKGyV4izYRr2MiTBoDEiw6
 gKu7PFUKsmv0U+goU7kpACxF4VLx5AkG35CzJn12UYCgrCBPSsQ+kMq5GubdFdOExf4L
 72ATgZKT04rxBkkzSZLjQm43ZmlgpBJG2s21trOhXCAPi+0Zu1sfiwUMaAGPcU8jvvMM
 KG2pPnJNTejCMzXdlOt74jnSzqUST/iv4i2GILsTsV8jVaOf40CN2nm3Ogj3QFP0TF++
 XsjM5Wybi0uL1WYylb+I26UbjlFLyVeqrvuaJBVFzgFB2GdzogyGLxRD2+YYgoNL62CE
 +qsQ==
X-Gm-Message-State: AOAM53050Hkh97Afy3u3wPc1WFauHJ54lSTt5ot2OYhl1yzA5i+bs0d/
 1MytkTWQXFDOY6U23eEgPSFbR9M2iALmWuJuIlY7dg==
X-Google-Smtp-Source: ABdhPJxaTW+u+s1H+E8ZH+9vokchEDm3K3lC/3RDIg6F87zyZurnpOQ1SBHlrNPn0pFuECkb0RNA1ePDFrAYegdbiOg=
X-Received: by 2002:a17:903:185:b0:141:f5f3:dae with SMTP id
 z5-20020a170903018500b00141f5f30daemr63792446plg.56.1637217585625; Wed, 17
 Nov 2021 22:39:45 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
 <CAKMK7uHGNrgqjQh3DX4gChpNt+xhB_39sVrhdA3BFqnoW-ue2w@mail.gmail.com>
 <CA+ASDXPtWsZRTUmrGQKY2Sc-yaeg=e47QpkYWA=KpN5iYGafjQ@mail.gmail.com>
In-Reply-To: <CA+ASDXPtWsZRTUmrGQKY2Sc-yaeg=e47QpkYWA=KpN5iYGafjQ@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 18 Nov 2021 07:39:34 +0100
Message-ID: <CAKMK7uHS0vhZDk4d4MyBr1fJGitosmPXB21pJq6992nRCBnkoQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
To: Brian Norris <briannorris@chromium.org>
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
X-CRM114-CacheID: sfid-20211117_223946_742205_3803A306 
X-CRM114-Status: GOOD (  15.53  )
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

On Wed, Nov 17, 2021 at 8:37 PM Brian Norris <briannorris@chromium.org> wrote:
>
> On Wed, Nov 17, 2021 at 11:12 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > Can you pls resend with dri-devel on cc? scripts/get_maintainers.pl
> > should pick this up, you have all the maintainers but not the list.
>
> Oops, I don't know how that happened. I guess I sometimes have to trim
> get_maintainer output, since it likes to hoover up a bunch of
> barely-relevant previous committers. I must have been too aggressive.
>
> I'll plan on sending v2 to dri-devel, but let me know (privately if
> you'd like) if you'd prefer a pure RESEND of v1.

Nah just for next version is fine, assuming you include all the
context in in-patch changelog and all that so new readers can catch
up.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

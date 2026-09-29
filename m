Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 644E8CA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 22:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOd/hF0jGH2gD2+G5pPGucZwLMXNwOei5jgdmSjdR8Q=; b=WZIioxppWq/RIb
	JHSqJqQzuPy+sNpfaL40QeoKUaE+qvzB6nrOMGPt5UBrGivpPGEaS5c6ssDYsW2d4B7Auf/GrlM8f
	jO4TQyqgEwNyC2bPCfDpHf0KKwtY+qOC9bO2zUobk8eCbY502lvNmXj7mSvkYujsYEbwfV7zU97qv
	Rc7KUGcOs8H+S5Aaq0iNx7CgdVSnj8/Aqd6v56Z25oUNc8ntm0CzHXsCdzfA18xI1p5f2Oxmjg4NX
	BEnGnUEI4teJS3Gh92+nBsJgCihGpS7XbF2sytzD6SrtQyPSRXwt2n+V8dCuL0wyJQhJIo0XIE5tE
	1wD8JMaFsghuCbma9PvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBgCj-00000004h6M-2P5d;
	Tue, 29 Sep 2026 22:21:41 +0000
Received: from mail-qv2-x0f.google.com ([2607:f8b0:4864:33::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBgCh-00000004h5T-0mnR
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 22:21:40 +0000
Received: by mail-qv2-x0f.google.com with SMTP id 6a1803df08f44-9142e0b0668so49122706d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 15:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790720497; cv=none;
        d=google.com; s=arc-20260327;
        b=e4TnfcONODTVQsF89L+EM2TCd7yRc544l9nMXQGvaLIAPYG8krIbvhE9eq1BwjXsxr
         sXlEGXhtDvr0hn3AfJdF2i270ZZ+hRIsTw4ARAPfweGDPCkh1YNBmPTlCxlCu6g2+Bbi
         fTKsdGR+x2Az7PU9jbJg1JiAOk8dXTtmNxjJbLRLMowbyu0tqCRaVkDmW5m0l9/39U6c
         a6jcnJ2Sjg7gFNy2GkfQaH7pX7PnDgfHGHDEKEGe2m3ReEk590E8+469dwe1sy+4OzlO
         Re66Bp7E/WGF6cbhYV6H8N/AL/mpNUPgIaMyyGnU8zAlskqG5sK06Pqv79lOzye/NlbE
         Ovhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2h/b/s1hyf+hYHDXMhDwTwcRRjLZP5znf0gW0N5R0m0=;
        fh=vexjxkAYgrQ8+51K8zpfrN/aWk3xeAL1bqs0BpTQ2cQ=;
        b=iW0P2CTxsZzFiw6N7VciHxX8cJGWqYiWwyL9fG/nmYLIvwixqQ8AmJmc5cqrGo3qm1
         bMHQVz9491i9TxsCLi7AkvZZ6AoER1VjyJM4+G7K+0+stdZpMm1Ie7zZPDRccabxkfIp
         wZVx4Dt1rBZRcPa88SLzA59brKnyr7YUMVDXUUbSemqFjfNHEaPTfU/IOMwhzt9qcpRt
         2f+jzyBchTrCG3lUurhL2RsXTfOykyhprO47nXgBZSgeSw60x5Lb8ZmAizqaDRj2sudO
         LKoWEi/vwN04VDSGA2kCETIebw7geEiEoJcHqLlkRD/FaqgZVHX7GyeEOLM09TwpMJMO
         c6Ng==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790720497; x=1791325297; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2h/b/s1hyf+hYHDXMhDwTwcRRjLZP5znf0gW0N5R0m0=;
        b=Aib8cZwc6l8Ks+hH8g5h5/mds16brfDsVBTol2nl710u6Lr4Zp14UwHmZWmj/JknVa
         wtzXBNPmfudOX9atkiEJRcQve1mv+77aXs+M89ROmF9iAqVN7d/zZ/J5jykLOY7asmsI
         ro7mDAYKQlxOEjULeGJsWqhGpb0SlC1l2roRN8poMLK+bDxZHMiXkJVkwSuCNuyIZKbk
         RTIHY7AFouKxu6ffG9ZvUwRxUxIkvsIKYF3TlVt8jIfOlva1faeZM9EJGR8UI283JYTa
         p5XzMof6q7mOeWLmh8JaWVMbjKglNNe3p2w3ia2V3SnSnBiPJlDOvtxUqQhTVfbpqB6Q
         RJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790720497; x=1791325297;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2h/b/s1hyf+hYHDXMhDwTwcRRjLZP5znf0gW0N5R0m0=;
        b=Ym4OgyNskLfZZNTzWvqh8AQ2p/IQe2L9aQ9mz4B/C6rvt/aoCcUyc+6Nrog9Wyt23B
         +6zsuRxS/CoIduRDp2UWqBkmk17vEQvv9bZY9JY14EWydB128PJWPcgZ7LuiXsm2GO0C
         oWlUz2TcFBRbbZqGCHDI6P+MErD3vXxOVTPIlq0smTKTIJdz5PtWXBXF5qsUvA6Dah62
         Yc4xQ9ZEVr6eonS+tM33TbRoJQ8spj1usY9BwNhWBn/f7IosrboU9YZo/p4+3jDarIrY
         XyJlBUpHiR2g6FzWsvYiIAc0aF4XQ1OglH5URpoxKrFeC/f2bo0xvHKrBORQBEre5ZkD
         D6OA==
X-Forwarded-Encrypted: i=1; AKwUvBxlxpD7Llt5WYjz1zPM4f+DrCB2CiEDiWmBad624421hVhW6QCG6enjXjH1x5sApVgqKdgSJWXIPYw0ESPdUg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKbqz9ojJNLpfuxOq0Bd179/YtOwmKDa3Shfu3S4mfyS7Zn25nU
	AMCVrBNNWUULpoEgsvHKNgBZEraEYCaBW0fcOsRfB0rgu7ZxuriVTGwnlqTSzwXTc10n8T0OAbe
	/XB+8HZfOMq1Jk9MF3ZfXrFECYoguXi0=
X-Gm-Gg: AYBFou29SUbChbrkjvouqm58o0VKbPU7rXDMjUwupaEhUg3qeWQ8FnR0TM05BP+XLmG
	wqFG0HqfIgug1FxEul3cGPfU7RSN1c/t07LhZU393ouoBATojNH0mTYJ1CSRm3T4gvxxmCJ/Vyz
	xcaQ3r+eNninW6SLRwKR+BmGeddigH8+owqXrZ2fJh/ib4B4MwujUsysKnMbkLcKm7kEk1HqRAB
	fAg8dvnmwKycPNAHl/1XWXY65+2SWVgudYh6jh6wvWUxO3BHrKLjouhXY7XqatLOy+IdVw0wcV2
	/El8jyknlJ6/PZw1D2QXv8OPfo0/xksezQ/bqBgDo50s/fJwpLGVoAI=
X-Received: by 2002:a05:6214:3202:b0:914:4bd3:d984 with SMTP id
 6a1803df08f44-91799b4bd9fmr11450236d6.34.1790720497177; Tue, 29 Sep 2026
 15:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com> <1b722d71-93d2-93a4-acdd-bc02b9a36f95@nvidia.com>
In-Reply-To: <1b722d71-93d2-93a4-acdd-bc02b9a36f95@nvidia.com>
From: Xaver Hugl <xaver.hugl@gmail.com>
Date: Tue, 29 Sep 2026 18:21:25 -0400
X-Gm-Features: AclHuK-WotblnMwdXvS53G0qNfl2c2x7OSON_0NQQ-TSXMtSHUSKVbt3lVkA9wE
Message-ID: <CAFZQkGyvxO7Dty4XXJ89FfTTeD5YfirX=16tMW2Mzds7A2_bpQ@mail.gmail.com>
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
To: Vidith Madhu <vmadhu@nvidia.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, Leo Li <sunpeng.li@amd.com>, 
	Daniel Stone <daniels@collabora.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	"open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	Derek Foreman <derek.foreman@collabora.com>, wayland-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_152139_228382_50EA6A8B 
X-CRM114-Status: GOOD (  15.39  )
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

On Tue, 29 Sept 2026, 15:18 Vidith Madhu, <vmadhu@nvidia.com> wrote:
> My understanding is that flicker may also happen if the refresh rate
> fluctuates significantly within the sinks' range, although I don't know
> how common this is in practice. I would imagine these frame range limits
> would also be useful there to "dampen" the fluctuation.
Judging by our user complaints, it seems to be very common, and I've
been waiting for this API to do exactly that in KWin.

> In any case, if we expect userspace to use the frame range limits for the
> purpose of flicker avoidance, it may make sense to expose a read-only
> connector property for whether the display is susceptible to such
> flickering. For example, NVIDIA G-SYNC monitors are resilient to this and
> it would hinder the user experience to unnecessarily impose such a limit.
Sounds good to me. I think such flicker compensation would need to be
configurable by the end user, but having good defaults (and being able
to simplify display configuration if the driver gives good guarantees)
would be great.

- Xaver

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

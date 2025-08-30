Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DADE6CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWPDvvn35WLXYTBeAPzPjnKawKWZaohOQBJax+2xqA0=; b=cFpLZzSddB7KiH
	ytnOO//vk9WSB8gjhMjDcCDVifpdGCWeyljJWd9zuEC2abvrWpVc74CihuOYyZrFADpRTJMsHIlCn
	SmDT+dpubRTS+0HUtKbhvs5ftCDo9M44VJlirU8hPhE2AH8szUUJDq/83Tz+IO7n+0xN+tcovOVnH
	Ycuq7RYu0vuM/xbQRibr3kh6GUVhEUi68HbjthfT3KW/YpyACV+sl5UnHZ+HrREM9s0f0Bcj2kS41
	0tyQ23XVkNREwJm1J+YXQGqHRTcog2nf0WrsjB0EY/k1r0yN8ktApnYr0ImFsajPXRXdzG8B9bVyd
	/S3xfM9y2DJCeYMdVcOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usG2T-00000007XV3-1j7Q;
	Sat, 30 Aug 2025 07:30:17 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usG2P-00000007XU5-3nDZ
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 07:30:15 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4b2fa418ef3so27715811cf.0
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756539012; x=1757143812; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u5ZG8/bv7fEyY7/sBaZXohrNcXIrZPRq+HcTim4TiEo=;
        b=WYOkHE841+SPv/KecEk0DxrSIRjbo6HAFQpHD0PnOmiTc6wH21tqYsQBW9QWHZrzsz
         9/SsDEGLFl7/h++9WaO1iwFMxcBSAr3159hbQFO1raSn8jJT1ScnmHgEw0OC9+gSpiMy
         TiC6gzkB146/7htrEvLlzF/xN6DUVvVcpmMuh+qP+SysbWNqTfMz6VtAH5J5i9cJfRxI
         XIoaphtWUWlKlnu+k2dHy4bKUgOyrhLO7vKh9NT+dwAE1/AiVdNnkBwOMSCxb3UQiL+k
         Bw2EvrXas4g/vWaT+AtT6yXkUei3hm/z88pHPPd6rldH9qdBajrFYo+Btc17/jZj+j+x
         TK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756539012; x=1757143812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u5ZG8/bv7fEyY7/sBaZXohrNcXIrZPRq+HcTim4TiEo=;
        b=lQXGBrSDKaNsh8zvUfo3fqVRS3N4xMv9SXsOj3qRHp7vwIZSJMbLeD3m0J4vno5NPu
         3wH+qxks3edN0tNx7nMVhh51fZZHWD9Vhjxxyovhvz1HJculp4gH/WIEBHX6bCTU8Lwt
         cYBKCoijN9fhhI3xqnTaBTTnDvBP31Pqy83pZJp+FRstK2LZfAFPBXJRgDoLvoHj7Amh
         Yx21dc77TUzUWFe8tK5NFufEXCPGrxcPCmKlJCItZBs8iZhPYeIu/374DNCxbvJ7Nddq
         oyk3DAG7HM/LIqRyBOAYc+qaxv0iLo9ZA8ZJj6gDMdexI56E5/tbzcU2jYvuf3esQi5k
         4bjw==
X-Forwarded-Encrypted: i=1; AJvYcCWsByRazfkFoPlMUwR5CcRkdQRhC22Q8R1yjqpOkx4HTfTUXbw3U75QB7JFurK9N6f8UmM8aLnrUtS6QsMrRA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKdawuIbquCbsETUI1FrOlnI7hd2T7vSqNxWqZTeKhAYzSj/CH
	uLS9jk3e4iwHevXDts98F85FAXbUX/4b63YGt2PIUKGgLJAs9fYf00PH5MAiMswTbOGUciNHFGJ
	IXTaVWVC7FOG22dP5HZxD5dbio+UQBNeBn0jgh/e9GA==
X-Gm-Gg: ASbGncszkoistHJR95efyA8/2W8e5Na+NO/OOm3UabsAxlF4x6SyIqO1faAWmTwCE0X
	MWwO0fxjVkO0uXiHd5j/5bFk3vea6M3zkKaQUduGYFh61ntsDSbRSBCJSWf8Wxl/WUCuAbG39sG
	8R0rFUU0LzgxKWqa23SZd9xZWDaDNGa4aT+N0IMS99vqQOMdNmDdz0EBTOrGjvSL0Y9LKddTmzV
	nqwoXl8NvMUI5cO
X-Google-Smtp-Source: AGHT+IEoXuFZJwCV9cwGNvRYz37SGk7fTBsYXDUKkjm0VNio3cHCVlLucdjG7nkDJhE227CIqVsjn4jhHmK64RhHXes=
X-Received: by 2002:ac8:5a12:0:b0:4b2:d607:16cb with SMTP id
 d75a77b69052e-4b31d855a89mr14707801cf.22.1756539012519; Sat, 30 Aug 2025
 00:30:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
In-Reply-To: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sat, 30 Aug 2025 09:30:01 +0200
X-Gm-Features: Ac12FXwherP7pCCw1eIolUuD4CaoGI8lRnTYIDVTJZ8XE8BvqysFq5xqSgK9g3A
Message-ID: <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
Subject: Re: [PATCH v3 00/11] drm/connector: hdmi: limit infoframes per driver capabilities
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Liu Ying <victor.liu@nxp.com>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_003014_554373_B49E92EF 
X-CRM114-Status: GOOD (  15.40  )
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

Hi Dmitry,

On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
> It's not uncommon for the particular device to support only a subset of
> HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> a model of ignoring the unsupported Infoframes, but it's a bigger
> problem for the userspace: we end up having files in debugfs which do
> mot match what is being sent on the wire.
>
> Sort that out, making sure that all interfaces are consistent.

Thanks for the series, it's a really good cleanup.

I know that dw-hdmi-qp can support _any_ infoframe, by manually
packing it into the two GHDMI banks. So the supported set there is
'all of the currently well-known ones, plus any two others, but only
two and not more'. I wonder if that has any effect on the interface
you were thinking about for userspace?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

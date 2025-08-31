Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C093FCA0FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 13:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy9Gw3mtxufHos2f+FVOJcnzdecBJsm8k/1IPaxgQFs=; b=IXyaokX17BcR7U
	77bOW50jelZT2U8VR2D567X6gh9LQOEJqU83f4NjoTHFHWhYebXij8RL1/H5yyig5KDq2eQfUFnu+
	dWvIWU7GERK+SjfLZXEkq2rIHjFBp+IImr62mLOXPyUL++jGg/uPmywfLG09GOhwoBM6wlWG6VuM4
	ku8skufT1g1S9la7EW2a94XliMK8E8IZbJgwj/yK80Z27xJncCa7lWq8iLOTYRUUv+yTeok5GPIoo
	Nznn21ZwQmEuEO9+Yi+U9Uf9KIr6dpkMni/0IX4gizxvHHkTuh1WE/8G1b29qWCakSqGPrn849/ob
	w/uyGI2u21ExjqPpSiWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usiQx-0000000AFGa-16iA;
	Sun, 31 Aug 2025 13:49:27 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usiOF-0000000AF99-0VZI
	for linux-rockchip@lists.infradead.org;
	Sun, 31 Aug 2025 13:46:40 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7f7edf7621dso305904785a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Aug 2025 06:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756647996; x=1757252796; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jwybc7U/Gu47otp5cNNeYZoMPwQff+yr/8w72U7737w=;
        b=WYhk/xR+cecIdAMO3eum1H7gEUABxOloxBP/FN33ntSQe9mAzbu9qUI2G0n8w0mKsX
         /HWYqujJvloyZtjugDN6GCCJ3DACN/tn9K6asTI6lOJs0vYVXnZNYxw5DVxMwu+cCVu1
         L15KBd61Cxp96zrHBDMVjn+q6Gsn1xcVj8Aj27Y/SUXC2XUyeKa9M1jBjrK/dIqXuKoK
         dZ++NLGXvxf42Vfsw37FGS1vxy6y9SE54widMKIM+9LUS0tysBA6ytrwJH9mkWh/7fxi
         ROOxYSF9YYKX4lTV1IFuSMETvsneXy2l+BSa9NgPCHStqE+obHaCf2e+xO14u/7dFXeo
         22BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756647996; x=1757252796;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jwybc7U/Gu47otp5cNNeYZoMPwQff+yr/8w72U7737w=;
        b=KKoMWKr1C0BRImaqLSNlz3gLgRrzTyDcbDTWfUyo1Trmd7iUsKCJPvXs+ndpQzifZr
         Kj6OU/yvPnoRBxHTPRvAz5mrnA0RZ0JTw3jyaol/uTkOsgFdUGEfiZmnemCqQPBSrEyK
         VMXwv2zeMA/ZP71derw2ZBjx2ztFF8q9oQbMq3qPYKZV2rAspJVYC2ZeRvnTUgEZj8tR
         m9fBMgWU1d1ikX/Oom/G/4MfhMwSRJOUotnxqJMLnfAhCkO6JHuKObHdUDrrsxGjtbvS
         64yXJ62k0nkxbnWKS4yv8qDL876o4iCkPQWEyg7LArja10rVFZhLWN5pHXeB09tChawf
         U3mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUt4wDkTBikBVD06YkCE6zaaFL8otUr0osKeptL+uhK2UvT6EN6ZT1FKD2M/QEc6lxwTFhDc00Y6TqefWqdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDv1teya+irb7fj64WjVlN/nbiLxjXttCmVC7FHQ5yd9witLh2
	DgMCQbLBPvYCJcs0mhvHGHD1yOliu9zTHZ+FS3C2/IAPVL207s5E3CkmeJJCJz0hXaHW5Vg//jz
	VIymE49pdNRPR2SA+0vew/+aE2oYhw2qd+SGg37fKyA==
X-Gm-Gg: ASbGncvR0NQmoDOEiwYPbYfIiR2/IjrBK5XMWJU9wfpt7aHEC6AE6JXRQxjYOINHMR2
	FTPdxmzAmrn8nTtMVaSz3l7oUnnzLJ4WQelYuOls86yqlq/YOVu43EhE3sKmrkv5wYXyrCUxAzC
	FNqxd7zlMh3SpJ0pzSg2rPYOSvY77haOawJw7LY7BPAx8q5AUj3NID5QcB/XcbfyPEsOpHv1xxU
	R/hSg==
X-Google-Smtp-Source: AGHT+IF0dh6mtaD+ci0SXGWWOl3LWwfmYnKKOgfGlK7FZ7iXiuG8d9Mqq2iCDHrHKRWGSRl6Gppx/kRr2i15hBvQ/kA=
X-Received: by 2002:a05:620a:c43:b0:7f7:c2a3:eaa5 with SMTP id
 af79cd13be357-7ff2b9817c6mr503403385a.68.1756647996439; Sun, 31 Aug 2025
 06:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com> <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
In-Reply-To: <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sun, 31 Aug 2025 15:46:25 +0200
X-Gm-Features: Ac12FXyJd7t7ZABF85TqQwXSEhwFfQP0deD84tmrq8IHkkpEGuVOeuzNQcUs-Sw
Message-ID: <CAPj87rOSb90S_TeA8Cu5kd-M8bbfiE0fvPzgr9Gr4e9_rfZeFQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250831_064639_268659_6ADB6822 
X-CRM114-Status: GOOD (  23.52  )
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

On Sun, 31 Aug 2025 at 00:29, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
> On Sat, Aug 30, 2025 at 09:30:01AM +0200, Daniel Stone wrote:
> > I know that dw-hdmi-qp can support _any_ infoframe, by manually
> > packing it into the two GHDMI banks. So the supported set there is
> > 'all of the currently well-known ones, plus any two others, but only
> > two and not more'. I wonder if that has any effect on the interface
> > you were thinking about for userspace?
>
> I was mostly concerned with the existing debugfs interface (as it is
> also used e.g. for edid-decode, etc).
>
> It seems "everything + 2 spare" is more or less common (ADV7511, MSM
> HDMI also have those. I don't have at hand the proper datasheet for
> LT9611 (non-UXC one), but I think its InfoFrames are also more or less
> generic).  Maybe we should change debugfs integration to register the
> file when the frame is being enabled and removing it when it gets unset.

Oh right, that's really interesting.

> Then in the long run we can add 'slots' and allocate some of the frames
> to the slots. E.g. ADV7511 would get 'software AVI', 'software SPD',
> 'auto AUDIO' + 2 generic slots (and MPEG InfoFrame which can probably be
> salvaged as another generic one)). MSM HDMI would get 'software AVI',
> 'software AUDIO' + 2 generic slots (+MPEG + obsucre HDMI which I don't
> want to use). Then the framework might be able to prioritize whether to
> use generic slots for important data (as DRM HDR, HDMI) or less important
> (SPD).

Yeah, that sounds good! I wonder if we want to surface that from the
debugfs interface: maybe just files named 0..$numslots with the
content of the infoframes, one named 'slots' with the integer index,
which infoframe type it's currently carrying, and which types it's
capable of carrying. Then to preserve the current interface, symlinks
from the infoframe type name to the slot index.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

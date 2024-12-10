Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17415E7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2kEJidbchBEfP7ZUdp1W+0JD3tp/2pZeRWzaOe1EPM=; b=w/OB/XImffF9NT
	xeKIi8LOT8gqqibs/FiT43tj+JsWzbgnoe0KJyyKxQY9v2eOgEF+Ns28AK+Nz6yTEvrTfxl2k3qnH
	ev2cx1d4riTtg5C0OSQ64mVagxWFlT2ZRI5DBHxLRuk4MyLDLTyhBlqIuBnm0n/6qOfd9kcMF5KGk
	3vsI0j0MU5LA/ElMusTxOiiM18rg00WArgjRwNhBHvPIuAuveuLxloINhSXkC9kAnXIsgrdspAUht
	a1/i7UVJsmIAYJbN0B/AOV+shG0+Y6gWpnY/PeqbenK5+e8STJeeWtphqtEwLK/P26MH2JPXU7z/U
	Olm9qAWNXeHMsOQQgNXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKoeH-00000009m60-1vFj;
	Tue, 10 Dec 2024 01:02:49 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKodD-00000009lyw-28SU
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 01:01:45 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-540254357c8so365309e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 17:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733792502; x=1734397302; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L3LcvQjrTDMU2Xstb8PTcViDl9lW1bNhQu6ciqVQKbE=;
        b=Oh6E0liO0aPSe+tYS7W8cPq+2Qw4VKSclH0sT9BK3bHFGfXeiiMyZ3lPxsVoLQ6mxG
         Cn5y1CkD9okx3p9OkiKRwvgFbdzRGBC87u8gfUosudJVsn/0/G37NjfrOSQ0TXDmnRqM
         bE+Y6Rbp4w/lVMygEWNLpBBqoAXx0KOciqZrP0L+YutjAfak4nFMldLy/rgldmXvdv0B
         2K4hg+lTa/ZTBuL+i+eQqiuar6NjrZpkkd47RNqq+lNLbI9ilMDK/1vGr76ECqTWWInm
         /20e4dIZZdbkkKpwUpvqaNlaDuo53HpBbT5NtpLvbkKuHa38NsL1/NwMfU9yeDbMLT5J
         N0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733792502; x=1734397302;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L3LcvQjrTDMU2Xstb8PTcViDl9lW1bNhQu6ciqVQKbE=;
        b=TwOVKCx0BDlMnqBzesTE3pWpL5hiddcHiMGhFzWg9xKVY9gxjpehDvmlHILs5OTt3O
         qI//iXWdeProOn38iIa6h3l0WzGr4NkAS5zHuBL3NlPEt5rmRC1o5ivrS6kZpHjQCsds
         Yg8wNSiT35ngV27MoV6hkkLRqBGBQOOiVK+eCFKdeoZu7ZwLrQRe5LACjw2v7CeylxWI
         VxKCJSNIP7mkWWWtP8OGlVt6Lr9sgaU/Q9B2+uQDE1BoEkbZdszYkOm2al6InUrGI+kr
         dfEYzSGcm5bFf48wWzL/a3PNlMCJZvhsgHIimqtfv3Kqz8G5rdO46xpdf7EOp5KWptoo
         5qlw==
X-Forwarded-Encrypted: i=1; AJvYcCVQP7NFm6ZOZJvZS38zSObtJPiXCnYhgLDz6Sdzvjg/dfmbwr9flXoBVKCbxQq9YfbE3ELEKdG4ZvoAxuxafQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwD/ZwxkjRAVaAF6Bf1hQEuzvEdxFDzKTxm2yp5mF/eKgm/i4HX
	VzghbUCJuisdjLD368BDGpdJyGZgbQGY6i/g5vwe4eJRS5Nxf2IOqU/nVZdje/M=
X-Gm-Gg: ASbGncv1ZekM3T2g937GTJONjkDQ18zqwhEeI5d0CGkSKsf9ZbZ9I3XZMBovp43+R/O
	49vs/cMCV5Etp8kms/An2UVRyhhsr3cFHOV6WDK14f6/sVquekdo0DPNZhp+e09p7BQStycTBnI
	k1kcLsxnp1H+hkPlvGtHh/aklxr+UXLNkgTxTrXKiYf6eMiZW/nb5FLrEPqrjZyRZkXyyAbOBQ2
	GKQQsCVALuCoC7N3nOHr6qtSf5yJyNf0jUSW1hhN3usWftYgeQsZf/fCHQ7IdqCI6BnIarlXA5v
	wwiALT/N3CzKunnZd0ucAAvJe/LfOq2bzw==
X-Google-Smtp-Source: AGHT+IGILM694LFfCANVTXh/z3425jGIXUHVbOTTzyrGuCY/MpJfTZw0o+GZqr4bkrlnIoLzl3nnUg==
X-Received: by 2002:a05:6512:3b89:b0:53e:239b:6097 with SMTP id 2adb3069b0e04-54024115ffdmr968809e87.50.1733792501835;
        Mon, 09 Dec 2024 17:01:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3ab8dd61sm919009e87.44.2024.12.09.17.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 17:01:40 -0800 (PST)
Date: Tue, 10 Dec 2024 03:01:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Semkowicz <dse@thaumatec.com>, Diederik de Haas <didi.debian@cknow.org>, 
	andy.yan@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	quentin.schulz@cherry.de, rfoss@kernel.org, robh@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2
 controller
Message-ID: <ay5hbnqqjhopaqof6z7j2rzm2bc6xa2vbzan2ak3if6wzmyip2@kqh7gtrajnm2>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241209150619.33998-1-dse@thaumatec.com>
 <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org>
 <2203458.KiezcSG77Q@diego>
 <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_170144_359691_A4F06B53 
X-CRM114-Status: GOOD (  21.07  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Dec 10, 2024 at 08:50:51AM +0800, Andy Yan wrote:
> =

> =

> Hi,
> =

> At 2024-12-10 07:12:26, "Heiko St=FCbner" <heiko@sntech.de> wrote:
> >Am Montag, 9. Dezember 2024, 17:11:03 CET schrieb Diederik de Haas:
> >> Hi,
> >> =

> >> On Mon Dec 9, 2024 at 4:06 PM CET, Daniel Semkowicz wrote:
> >> > On 03.12.24 21:54, Heiko Stuebner wrote:
> >> > > This series adds a bridge and glue driver for the DSI2 controller =
found
> >> > > in the rk3588 soc from Rockchip, that is based on a Synopsis IP bl=
ock.
> >> > > =

> >> >
> >> > I did more tests with different LVDS displays. I tested following
> >> > configurations with DSI/LVDS bridge:
> >> > - 1024x600@60.01
> >> > - 1024x768@60.02
> >> > - 1280x800@60.07
> >> > - 1366x768@60.06
> >> >
> >> > All of them worked without issues, except 1366x768.
> >> > With this resolution, video is blurry, and offset incorrectly
> >> > to the left. There are also repeating errors on the console:
> >> >
> >> >   rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq e=
rr at vp3
> >> >
> >> > In correct operation with other resolutions, there is no error.
> >> > I am not sure if this is a problem in your series or rather in VOP2
> >> > driver.
> >
> >This really sounds like something is wrong on the vop side.
> >The interrupt is part of the vop, the divisable by 4 things likely too.
> =

> This is a hardware limitation on vop side:
> The horizontal resolution must be 4 pixel aligned.

Then mode_valid() and atomic_check() must reject modes that don't fit.

> =

> =

> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

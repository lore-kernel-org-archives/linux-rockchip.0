Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F5EECA1002
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH84g0UUrGh9UcyrayCMX1RyX+O0KLDNnoK6MagJndY=; b=I2Gs1XorwP+7hm
	AcZvgbWVBeMW+QXudicLlx7/nWcuI84ymer7T469GXpqBQvvO/mH/0C7QUFWrfLHWfB2DGnSn85q1
	36F82EU/hmRQT3igxj0hAaZo3xuol+4+UZqT4RzNNUCKnhFBMbJ0sF6ynjWlSOcxF3vEh4wx1OCNt
	Fh5jHmxLggbLPF8h0+bVmD7QI2fVFzpsgW3peHnGB99UbjnKa+W34KOHKp9txXXZBNF5//AG+OKnh
	TDgxRI3Xd+XgQy26DIA8wBy/Bgmqfzu4wvbEXLNNsrr2z929PAdO5zutivTFtAf5mmuEQhlkgxyAV
	zIQXxMXrezgYJDpVxVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us5An-00000006oMY-3M54;
	Fri, 29 Aug 2025 19:54:09 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0ju-000000069Tv-156v
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:10:08 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-7f6d8fcd106so304501085a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756480204; x=1757085004; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EGLIvrEeA6aZSH5bbWcCyh35lvNtwwlGEu4excYVUnY=;
        b=pLLpBzmI9+IoMu1DqJrFPLKjDBvHe1hHr8gTIK+JXMTmZB9t61Or4KQRq/ddMcd48c
         MdtlVPL+WeH2ILCy9uIfMKkAE8CtdxdUAgY2+UI9zNR/hF/8q/pDrfISYBnhoo85UJpc
         cjxA6WL5khG/m1lrAq5rPwXBiAdNyoVZkgrSoIfZSUXGzpRHVGoSaOvj8ZHwALw2oj3t
         sYbIVVGG3NNxH1ZgGg5jYEYbMueZyEL/wwieLhv6R2TV9BurkgzDHBCJntAh8suS75Fu
         Tsideg4pDkyJVPdxp0+JR14+n6UbhXIerlYPRq35Pwhpujbj14WYGB8h+D+TC4oCp7Nr
         lwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756480204; x=1757085004;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EGLIvrEeA6aZSH5bbWcCyh35lvNtwwlGEu4excYVUnY=;
        b=opfZ844Xl30MXnNLQOUrtRKrIRaxEyr/Yz+L3JZ7as6Bzgp+vR5pYgdowdz/YzmGqf
         EGGr1ZYSLU2x191Yn51fzPu4MC2MG95pxIO4d5ZUxNAgF/suSFHiiiC5PgvGvUwjxkd1
         MoO6zVrRqY4aRDNsqek3n31IPVs3HLNzNbecljSGQdKFhH7uyZk4WcCXmSn/tVTpu9+m
         xdZchMeZuLFbTUPPNP8u5FO+WuEdLB5uekZ7RsgSVr5EJoJezBRm8msCgzuTwqxklRBj
         EUchLIG1wELXt0CfT7h6WWPbkjIcio/TrKsv4GBRe1DDFJ0HWuneD7etxIP/LTS3WqHP
         /rkA==
X-Forwarded-Encrypted: i=1; AJvYcCWHf+xYEf1q+AWwfjSiLoOaM52LSjaSAV05mAF2HNSdOPfDI2ja87ImD8BCWCBgY2Unil8oBlaMgwVk9EAsLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRZKB+pkBCHvkmzqYxi6txKreFGYDXZW9c6pvkA04gxGSAbdX2
	okHIDNKAMKAzXQEDMI4SU4FVcBxwCNnDynJtNK0Vl7dXSiIvxE9IgauVz877OuRGCxH/YANcYv4
	avGawmHUzlJHNIhARUICGcUaavk819pfs00IFFHeDzw==
X-Gm-Gg: ASbGncuCGgxlSSOW2qSYoPzwDb+hrTLy/jQ0wZpTW7XwAmYT0KE+znw8lWzVSFg5+5m
	Q06svaJqSi0GW/K03K91Sxtz+wLfswYtkXd9zSYK5LtHFKWPrwOtLlqy0pHNEC7MEOkcf+obDYe
	xAMHFOve1GuvFmCxEHZTDYXuneVePvduVzbC5SoHoWNLRNJLJKOjUPEeagHsAKfzDEXHnQsif69
	qGARA==
X-Google-Smtp-Source: AGHT+IGKh7Y20GWjms5CEWqUFYK6Fhl4aSsCjrhVa2muuLuQNwyCT8KtW05eeJgqP4jwNECHf4vjyNzCIEKa9V1tI+Y=
X-Received: by 2002:a05:620a:269b:b0:7f9:98ca:af1f with SMTP id
 af79cd13be357-7f998cac79emr862285085a.32.1756480204505; Fri, 29 Aug 2025
 08:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-hdmi-cec-v3-0-95324fb22592@collabora.com> <20250825-rk3588-hdmi-cec-v3-3-95324fb22592@collabora.com>
In-Reply-To: <20250825-rk3588-hdmi-cec-v3-3-95324fb22592@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:09:53 +0200
X-Gm-Features: Ac12FXxjT2DMgVXZUD7stQTdp-evPmAyNIHAST4h_-TfcQ_juOKoIsGqjkI2p6g
Message-ID: <CAPj87rPhhhhEHrPqAcKNtWwAtCQRANp_=8sQtg3urqf5wcrmsA@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] drm/rockchip: dw_hdmi_qp: Improve error handling
 with dev_err_probe()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_081006_449032_229C2C2B 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

On Mon, 25 Aug 2025 at 10:57, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
> i.e. in some cases the error code is not included in the message, while
> in some other cases there is no check for -EPROBE_DEFER.
>
> Since this is part of the probe path, address the aforementioned issues
> by switching to dev_err_probe(), which also reduces the code a bit.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

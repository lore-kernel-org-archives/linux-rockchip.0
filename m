Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A383C27C54
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 23:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nv+UYzsSCO123ZS8c+zao7fcaYUYlAbOx8oFghPd/RI=; b=f0zWCo1aCnGLwI
	s3SkC38kYgTDqdLQoJE3akV80nkDCx2qZ4aImwKGvvvDoQCsH1Li4AQXDpfIVrCv6yiKcScR/0Jqb
	0VEA4jtJ2jyEQ/nxpaK0WgHC32UWhUaSMc0nMGWI0338HkGLFRQ8F8w1onadhF4sPdxb3T6Z6dXMp
	P62HAjWz8fAY05BWLZFaCHMc+2FO4rO6/U12Kj18kv/W+pat0QVvnKMp5EdGG892lgDlPLvh1NeZc
	PUPhqBChWQoLx2NANgVugQk2Re3FgUjo9BUc844l68qNsQsnfKUpChnRxRAHq3RLl4ly8XyrkQWw0
	YAhp6teyOBSZ/CQ/wzEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEduJ-00000004DcD-2Jn2;
	Tue, 04 Jun 2024 23:49:35 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEduF-00000004Dah-1qVm
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jun 2024 23:49:33 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2eaafda3b90so35899781fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2024 16:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717544969; x=1718149769; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OYlsPq/Nl2a6jpBnYLpUuE7MhnCmlQ2CakctggIcvoA=;
        b=vTIbC19gcQJ1NhdZY2i0feLeY4K83S1a4rJPM1Q1hQvtoOdYREGfLitrqgnPKQ9VZd
         vGTc2zatJIU+yEtxPpo5hmpNrofLldaly9/MF+E034p9RIHiTTHaY9455ARKAGm1y6Q8
         sNPm8+6chDZQKz2fekkb891oTma8vEHM7HK5nUxzfinKBC0sYXD7765GisFvg7IpMzcG
         sPr9IMIf3GPT/pC38c/ZhzaTvCoOmlSQuUJUtZmQlcZY0OSx/RsxJanU9M+IyWkVaMBj
         8F9jFyblyVixzfXnIlSBV7goUHvaQ6lPLCWnVFM0Kf0JvRc12G8REP9dSP89W81ANS9n
         nCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717544969; x=1718149769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYlsPq/Nl2a6jpBnYLpUuE7MhnCmlQ2CakctggIcvoA=;
        b=dginiEfZybJ0J9oTYcagr3BW2oqY7PF0mbTA95d0CzmiVC9hHZ9TPFdd2rs8GdOFUY
         GOnZ1mwlmfxJEU8yPPiMZFNJF+77AosNwDgbT272q9nNKetHNCfCk3AqdOyGlx+1cmUu
         RrXxrg+YuisbEL04/2yX6HopQUcGr4LeMahNaCtDqZizdSWP9GxCKJrWjr0JNWXDoXc/
         tW6oIzaJf8R8p3jdPWXxSNvffxNrzplEZUhdJJorMOE+KX2VzZNk1uYjyBECxT3/w+lT
         6ij6wh8o9KPBb1b08LUNOEzwOUy12XrL3geJVLIza7HqOpFa+vpUWSv75KqZ8Sd2H4xn
         eMoA==
X-Forwarded-Encrypted: i=1; AJvYcCUTuJYKwiutzlFBEhUIMlDUTsk+9GhCB3+vpPwqPhPh6pl2Hyr8RjtOUL4AODiibekNYolcltdf3BbvO5wKWS7AoYRKqqPGDrz9xtYBg5D/pxbT
X-Gm-Message-State: AOJu0YznUIwfQQ4Cey28q+zcV4xstOsASPacMjkO6umm8bj3qL1Mgsx2
	flflsP9+1I4KcOn1gkyPAj13HNXRJlNLxbuBeypdNFw6xgX/iiFlagkLe305G0I=
X-Google-Smtp-Source: AGHT+IEqt/1E9UYfq6hr7NwOOCvGfJFrmEaHjn1YhWsPZoauNt3zoMgMqQ+4sf+zBHTn4FHcfvCgIw==
X-Received: by 2002:a2e:bc08:0:b0:2e9:5011:f6b1 with SMTP id 38308e7fff4ca-2eac7a73140mr3969551fa.42.1717544968775;
        Tue, 04 Jun 2024 16:49:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91cc65cbsm16085851fa.73.2024.06.04.16.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 16:49:28 -0700 (PDT)
Date: Wed, 5 Jun 2024 02:49:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
Message-ID: <ymccadqprkxlvhv6ekyqr7utsgejxhqmxlki7nh23htgktlynl@7upjoc5whcy6>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
 <892b2070-2fd0-42b2-a8c2-811dc7382b0c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <892b2070-2fd0-42b2-a8c2-811dc7382b0c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_164931_559831_64A25FB3 
X-CRM114-Status: GOOD (  18.16  )
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

On Tue, Jun 04, 2024 at 10:44:04PM +0300, Cristian Ciocaltea wrote:
> On 6/1/24 7:32 PM, Dmitry Baryshkov wrote:
> > On Sat, Jun 01, 2024 at 04:12:22PM +0300, Cristian Ciocaltea wrote:
> >> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> >> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> >>
> >> It is HDMI 2.1 compliant and supports the following features, among
> >> others:
> >>
> >> * Fixed Rate Link (FRL)
> >> * 4K@120Hz and 8K@60Hz video modes
> >> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> >> * Fast Vactive (FVA)
> >> * SCDC I2C DDC access
> >> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> >> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> >> * Multi-stream audio
> >> * Enhanced Audio Return Channel (EARC)
> > 
> > It would be really nice if you can take a look at using the HDMI
> > connector framework (landed few days ago) with adaptations for the
> > drm_bridge / drm_bridge_connector ([1]). Your comments for the
> > drm_bridge patches would be defeinitely appreciated.
> > 
> > [1] https://lore.kernel.org/dri-devel/20240531-bridge-hdmi-connector-v4-0-5110f7943622@linaro.org/
> 
> I will definitely check and try to use it, but I'd rather wait a bit
> until this gets stabilized and focus instead on the mandatory changes
> required to upstream this driver. That's mostly because my limited
> availability and expertise on the matter, while trying to unblock other
> work depending on this.

Ack.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

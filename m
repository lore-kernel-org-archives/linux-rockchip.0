Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6326CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 07:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysjXy3Vvd1IsjMjAOOS+HbAZWBolKCF66ekid8S92fE=; b=zJIGAL7JZwiiXT
	OOi1kTxYrN6x/D9qg5VT9Ipu4XiekYQ+fR0nKl4Ntv/82O3ZnguptMiXgttXwOtShjP9Pk27f6izt
	5F7qZ/9jbda0o0NVeSJu/H4XPxhUjY4I4DHDUFn5ULkPIoi2xTFusNrJptTwD5+K8gr4igTJQCAVl
	uTRpH61MZPAbl89YqOekOBr4tz82koh5H2i0TAZGTdejl+mlnQoQ4Cuz2zKD4V8qMmetxp65a81Lm
	9zpa3P4X6kqidPQGAkuHl9Z6XMVFjsv5O3ZuMqRwxim9joKsnLKBGggFr5jB3NtyjWAaZfGBmlW0X
	POwGgXzHDFrXBI1qAd3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usG5D-00000007Xpl-2g1l;
	Sat, 30 Aug 2025 07:33:07 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usG2v-00000007XYw-34dC
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 07:30:46 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4b30d09da9dso15440671cf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756539045; x=1757143845; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3vk4uw/k5t/ngjT55OkWyZFL8hHut4oedMZiTZnhFuY=;
        b=gjepbiU6iBGMEr6Z38sSkMRFNBj5DKUFFnzlENY4LHGRGzTMhlRqNYo7YQGiM/81F3
         8Yz9h2Unde7vS51bTFdRUx2Hm91vlYLBf2UNXv6udcIaT+QelGiN1ABB/2/Fz3Y6vz+A
         pggDsQ6GTV1yFn+97Vnq83Bwe7bsGXOxM9b4XjJoiJxhn7aVU0mDWbTDS8IdmPCoBy+B
         w9Sl4AsSfkn+G58Nhx4bYUNW4O0PfgN+EzO7WZRjWfKlk37IVWKmEU/5kT7lfPflIWat
         V6+SgBz61y1/OGGBny0aaMV3CMxHFJHQlpogqU4gl7jFPSR1AjKqmFUZvAZ8tj1Q3yOK
         CUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756539045; x=1757143845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3vk4uw/k5t/ngjT55OkWyZFL8hHut4oedMZiTZnhFuY=;
        b=AzHQ9jp/ivFe/mYlFsa4+Mtz0IF3nEYYIstIAlhLGp5iV/sNAAcYYtqnkx2Qv1Iyho
         DvIoeMSZ5cVICQfAI5Pfkq4TRjYGBldue4f1XR7hYpKbKcTukWVKDvB5pyLSTnCSETgs
         hdtoc0X8k3taEUpWhpvlQ47Xwa9fWeNnuyDA8mHyEz/3dOONM1ZFt4v7QynYlQdt/IWt
         9DPKuNTgk1SPs4LArHzojI4tl7NcqbOby+JFyjZA1eaeI4QzroIBxcWwqCz0QtReeJt6
         y5TO/yhT1263LUKIr7iOa7VmigckMgWE9bZards0z6cCebLQPFtFyXjZQ8bRBPCXJ7NR
         JQgw==
X-Forwarded-Encrypted: i=1; AJvYcCUjY5Dt8M+sFpnkolbuZPQY3jIkAnzVt8yNb4JupBHANj9HgweCfMyO6r10ien7hhSufFuXnQ79KSApVciY3Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXDhZNphQovoZbNalwU2TWCWLOuWFKQHCKmI8dZ1ffuMAR4XWB
	zBJWRgqxNlsmANrTKn+pet9v4JuQLiI0jy3squpeQ+Zy0LfCDVzcJweMPHMNBtBX9Fov3ZUTvLh
	hXC2mP31k/S+NcFOXLprRzBFUtl/dLbdcn9SM96zMsg==
X-Gm-Gg: ASbGnctF1AS4b0d65wvwmWHONVmyVQXW6Osiyd1pTyu6g4GIbFWkNGxABrXJqbfjRhN
	joraxHyZ66/VKKpepbQHK6lEO6AcI3TQBsK0Jd1F78zyqVDWAC83k4D+kqKBycof0w/pXhO5fx1
	NUtaJhsOaR2jZR8qbY7t7SpC87AX/4EbmFlIuGgUDQU2Fay7HYO7pJUfXEWYaih631/jJgzcW58
	CCzAg==
X-Google-Smtp-Source: AGHT+IGOnM65THr0nrJ2LPLTiMMlk+HvsXaVUyczPlRtZjJ7WLdbodWtVaS7JfPnD9Na2PcQiHxYrYNu+VnO9BqbaFo=
X-Received: by 2002:a05:622a:1448:b0:4b1:103b:b67a with SMTP id
 d75a77b69052e-4b31b9c3777mr22814681cf.32.1756539044617; Sat, 30 Aug 2025
 00:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com> <20250830-drm-limit-infoframes-v3-5-32fcbec4634e@oss.qualcomm.com>
In-Reply-To: <20250830-drm-limit-infoframes-v3-5-32fcbec4634e@oss.qualcomm.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sat, 30 Aug 2025 09:30:33 +0200
X-Gm-Features: Ac12FXzpE91ILUTwZS_ZwZMq6UoPhvxeYv_akLo7dKmrA-yDSe19rsUZejc4hcM
Message-ID: <CAPj87rPSqJoJnUoP11qzWXuqvYPb_=vP-5-p7SEVA6JCfcYCuA@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] drm/bridge: synopsys/dw-hdmi-qp: declare
 supported infoframes
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
X-CRM114-CacheID: sfid-20250830_003045_785226_62D12AD4 
X-CRM114-Status: UNSURE (   5.98  )
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

On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
> Declare which infoframes are supported via the .hdmi_write_infoframe()
> interface.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

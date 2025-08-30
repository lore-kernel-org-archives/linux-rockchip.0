Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D011CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 07:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNdQY5EwK+RGAbAcMg78A/3IpIWH+kPkuPZEQKr9anE=; b=aZktSIPrL4Zx2Y
	5WUhfraXUFFfV75YrZ8kmpxHBFPmztZas048m/aoZ9cHh+G57KV50bIWQHJ77jgHbr9h1ilOCzkls
	6mfgqnq/ufAE/5r7abD+R9QUXcoTlHTYOuNs156frq3/XAuJtNsmBODP2uVO3/Ml1x0xHLT+fe2Vu
	ECCeNOWGtxJzueH1u2owaZBS3i2yHaD8CxdnSn3Yrb41KLm/EiOoFBAUEEebyokuSqcGuE4wWktcb
	CtfTXqHbk5lmBgdGeM+Ww2Nrt7QKGv48/U2jpOeKjjEIcOyC7onLmWayOljoi9H18CjW0RLZCJrWQ
	g74sEVGvn11KdtPptKOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usGB7-00000007YPC-0H2r;
	Sat, 30 Aug 2025 07:39:13 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usGB4-00000007YO1-1TI0
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 07:39:11 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-7fdddb25854so97166285a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756539547; x=1757144347; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7fzjqNbnl1FH7mVwqP6ExvQ8qLgU7/T3+Fqhp2L/qAI=;
        b=RHmojvI+WRLNAjEMQaz/OgwUK7ulgS6CJIjoW+VTwb6i/ESNRwdnhqsn+eihGjihrV
         cGet7NXTxaCzLoA9bB+MbUuEOxkzd1qtE/ezgbpklyIB6ffmf1HWl0U2tvHwEAU+wvBc
         hCZWkt5M8ciVJ/1LYiI7PlhC6mLVsHDqvHTi1NI63SwfHBZ+Y2tzTV9rsF48UwEUmhkB
         GWqFFGVYa6h0CzSMm0Mxlm2ImgZ0oFM2x/lp1AkhfEDMtF77Lto5LevLbkpEnZgebBz0
         JjzuOBPjkGZqteItBgdEdNcO9dz46Ov2jMvxmDPKIz3irFAvwn6jTkR7lOMMeNHI9waq
         Go8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756539547; x=1757144347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7fzjqNbnl1FH7mVwqP6ExvQ8qLgU7/T3+Fqhp2L/qAI=;
        b=MXlKB4AgzO/TozhUz2AkK7M+0l1f2cQ/Y0Nlt9CdqldJ05VeHhwGNYxXWQm+jS2mD4
         C7FvZCtPi+3d8bKWkDBO1ws74Yn6CX+jZ4l8OAA5KB3WF3lXdJN8ZFkgIgA3UOOIhz+A
         j24VOU/OXuKSwQuLRPN9hIfdrhYX3nnk6SmrNEhp/9GasxTlpM02JX3tvw+ho8rRizjk
         TfbNaWOj9L1tUHdAczDDaIacrMIIoYlCwfgspNFJf53R9S4NoiqJ8X8XdJtSgSBhX8DO
         aVwy1RTzoRNqVyI/aDZarFF3lj0SjMaMWpI3e2jweEWNevxSi8kygGMwWr2YflgAgKnJ
         WIgg==
X-Forwarded-Encrypted: i=1; AJvYcCX7QLsAqmQMo8VOXjKlX0732BTyLus3uZO4hM0gJD44sYBV9SnOJk+wOhJFhh6Rg38Lw2EIDufq2E790YeEGw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwagaJuOGH5B4LT1b0Zz/igVO/rp5zxZRzWGJGGi1UnMankeZCr
	SFdlMYqPR+WorwNlpEWaoRrT1ggpMwGZXtsadYERUkPxeMls8YNA7hJ/bNvEQIgIyO0leJzEacw
	ZZb/6equvbMwUTSzkA3QAi3LeHE0xdMVdH6JG3o5C7Q==
X-Gm-Gg: ASbGncs1ZInZgZMvkSIZdyV/G2swKJegs38B5/gxlXUIBjeN2WDaxUD0qM2FKSUshbG
	R8cMQa635SEkLBwP6jL1oBDZ2hmV7DzrVLp7E1dRlcn07krcFyGtjAoGHPPI+fzx/wwyy+tL+pg
	0aUuOibNDQUkL+1KDsnpngVxi/rmOYbxIRy3hcUmsNW8pmRZb5ULhH591sXWraBpbv8Lob6VHdQ
	ZKWzRL8AlPfk1gV
X-Google-Smtp-Source: AGHT+IGcdIb5Bh5zrCRPBVL3fLoDcfNzuR05JRese/yFeQ6WZnki9GRGlAQtC8Gf4B7czjKl7GD5FNu5efT2Tyeq4FE=
X-Received: by 2002:a05:620a:3194:b0:7e9:f820:2b72 with SMTP id
 af79cd13be357-7ff2c51b1dfmr138787485a.72.1756539547138; Sat, 30 Aug 2025
 00:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com> <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
In-Reply-To: <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sat, 30 Aug 2025 09:38:55 +0200
X-Gm-Features: Ac12FXzM9U8oA3u3fX5rkC_Acspb1Bpg3nyPrRsz__oJ7apEVkNTDxD29-I5hyE
Message-ID: <CAPj87rNz7PPqZ7P4JSKdnizFaEoaBMf2VFBYbpVn3VNt1giU0w@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250830_003910_391819_468D47FC 
X-CRM114-Status: GOOD (  14.73  )
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

On Sat, 30 Aug 2025 at 09:30, Daniel Stone <daniel@fooishbar.org> wrote:
> On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > It's not uncommon for the particular device to support only a subset of
> > HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> > a model of ignoring the unsupported Infoframes, but it's a bigger
> > problem for the userspace: we end up having files in debugfs which do
> > mot match what is being sent on the wire.
> >
> > Sort that out, making sure that all interfaces are consistent.
>
> Thanks for the series, it's a really good cleanup.

FWIW, the rest of the series is:
Acked-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

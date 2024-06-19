Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E27C27C79
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 17:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvBsU7luQG5n+xR3vVPTpSUrdPqfUzTHv83kkxzJe80=; b=ig9nXrYIrr0Hwo
	2q5W0ovJHlLagrSkT3HhHQ9UOSspPJmelERyEFeGQET6nC1aAUiGgrZdcETOu3UEhxwhdSwRHDCBE
	5rwU58lJbID+dLLZQQUhrI7PZ2vkg+kvE9+VKrO7g+Y1G8wSGlhQ/y+WGKDVM/alwiRYBGDZvx4WA
	CCgLvGdG45TlPSJZv5U1gsam6z/BD1WGF2p7mfKfVLLTm+RaQOMYRPCGJ0jNGZ6wsiBHM7fMCHPYH
	DZ8HhvtVB14cV7AzJSEzJ5tBIPUhLdJaaPaTfRG9sba8+VYOk3xvCdfmZtAQreZd1PErM7mIIIY1Q
	xQppWfaIi5fRXAV1EYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzOH-00000002Gep-3mik;
	Wed, 19 Jun 2024 17:46:38 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzOE-00000002GdW-0GlY;
	Wed, 19 Jun 2024 17:46:35 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-6fb2f398423so46708a12.0;
        Wed, 19 Jun 2024 10:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718819192; x=1719423992; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5UHgTKJnVvGzz0RhWWxAYapaJvaOUe+M0dNscdnn3ck=;
        b=ISn+xUouNAod02AFQ6T59wSGHrIu64QI+l/iwioPOvHGlcVxvuP+h/Qtlt9EHOsP1y
         EFx+0Y/KzAysNviGhg+JiEgu01DZGfI/JPJSJswwWFxNgbk6GL1+uXWeCw0Nhf2m6j8t
         LD5a0TjoNulalWbN5zgmKGl720H7Kth/lWJavsX1V0yrPl9vc9ryVTiZq1RYkMcU8GC+
         TTYgx38/3XHTK/SHUkYnnRj+gEq9r83YEe3mh9E6fwZBV+R3oKwnQtDMFDfxDV4hq8L8
         +BFQJgC8iOxb5GocOs4CLuOWgAb65KwbgU07cgy6fJNwKF4xQKGlYdrZX5QqRVa8RnMN
         xobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718819192; x=1719423992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5UHgTKJnVvGzz0RhWWxAYapaJvaOUe+M0dNscdnn3ck=;
        b=iYHFaxMS6gpgbg1YE/fMOkJFVeb0f8I4ye0e8Lz9jTzmCB+qMGN28WxfIzrcC2d4bU
         t7AQgYi+RmxIKtoxn9FbDNeHKAzHNMbCLt0B8ofP7NK+daYNEwmpQv9eJof0d5NaLbbo
         C32omekWY6ZeCe4S/84U4rKLNSyPYYL9hYPd1+LwjQ6HjUOvcxNtnAURym1kcDp96buz
         6cGgzp3GES0AIRRpQLgxbKW17Y5ar4LS64ofuWmXmyoAbnJRNL3O5bbuGEINPU3brsGX
         gOSTA262hzi/2TvwRm5qnHO9OuuhtpnfSIjv7fCDvv2B87Je6kYSERvueMno63hViiJd
         eh2g==
X-Forwarded-Encrypted: i=1; AJvYcCWATbu050eH1/gbiCSDfsInLMiNEufpKXXseW/FzKcCkoW7bjr3j35xQFAtAUeVi6yySc6AOvHFQ4RyH8roIwXFHPgiPlbUDCo0ClnORlncbfjVpwdHbY1kanX2R9yag3CXQpyZg/7zTEn57W/8CE07rgbJVwUNAsY=
X-Gm-Message-State: AOJu0YxY0rgRSIpOMIus10rBgmPb/M+LZXn3CVDKWqnZcilwmfP3tQfP
	Tt+AZat0UejBtNt0HVOh0lD002Z9guJbT8t/kIJZT7QOWalFDXbg
X-Google-Smtp-Source: AGHT+IH0tqeqkE1rjW4+gz7APWuek16GJuuOw7jkeXENxmGKwm/HYrhSwM4hQ5g0CoPb1P5AUDj4bw==
X-Received: by 2002:a17:90a:7087:b0:2c2:da02:a2c7 with SMTP id 98e67ed59e1d1-2c7b5dca970mr2971807a91.44.1718819191973;
        Wed, 19 Jun 2024 10:46:31 -0700 (PDT)
Received: from localhost.localdomain ([221.220.128.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c45ac5f3sm13364906a91.12.2024.06.19.10.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 10:46:31 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: detlev.casanova@collabora.com
Cc: andy.yan@rock-chips.com,
	benjamin.gaignard@collabora.com,
	boris.brezillon@collabora.com,
	conor+dt@kernel.org,
	daniel.almeida@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	ezequiel@vanguardiasur.com.ar,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	jonas@kwiboo.se,
	knaerzche@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com,
	paul.kocialkowski@bootlin.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 2/4] media: rockchip: Introduce the rkvdec2 driver
Date: Thu, 20 Jun 2024 01:46:23 +0800
Message-Id: <20240619174623.270706-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619150029.59730-3-detlev.casanova@collabora.com>
References: <20240619150029.59730-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_104634_137390_D82BDB00 
X-CRM114-Status: GOOD (  11.84  )
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

Hi Detlev,

On Wed, 19 Jun 2024 10:57:19 -0400, Detlev Casanova wrote:
>+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
>+		height *= 2;
>+
>+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
>+	    height > ctx->coded_fmt.fmt.pix_mp.height)
>+		return -EINVAL;

I did further invesatigation on chromium. I find that before real video
is decoded, chromium will call VIDIOC_STREAMON twice with value of
sps->flags 0:

At the first time width and height are 16; ctx->coded_fmt.fmt.pix_mp.width
and coded_fmt.fmt.pix_mp.height are 16, which are the min size of decoder;
At the second time width and height are still 16; while
coded_fmt.fmt.pix_mp.width is 1920 and coded_fmt.fmt.pix_mp.height is
1088, which are the real size of video.

So VIDIOC_STREAMON will fall at the first time call because sps->flags is
0 so V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is not set, and then height is
doubled to 32 which is larger than 16.

What do you think if we skip doubling height if sps->flags is 0 and at the
same time V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is not set? The following hack
did fix my chromium:

--- a/drivers/staging/media/rkvdec2/rkvdec2-h264.c
+++ b/drivers/staging/media/rkvdec2/rkvdec2-h264.c
@@ -767,7 +767,7 @@ static int rkvdec2_h264_validate_sps(struct rkvdec2_ctx *ctx,
         * which is half the final height (see (7-18) in the
         * specification)
         */
-       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
+       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) && sps->flags)
                height *= 2;
 
        if (width > ctx->coded_fmt.fmt.pix_mp.width ||

Best regards
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

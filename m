Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BBDDC27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 12:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBY2V2o3wmyiLpBFLBQzgyZPYIfXM4kL2VqX1h9qFO4=; b=HuQkqhSQQWFm6w
	mAM4R6Ns0RtpeisudUZ2lq/V9X7kScrIet8Hyi2WJeS5FLlhbdLDWHH6Lo/uGo0z+wdM0UESIrmHS
	a+h7ztSAYY/LWIGH/PWheH90hcULTolmBzJ3ngjeXnd45FwJLTKhw/2C45X7VkWrC4Mdigx8inR63
	EWjzLL8LPL4ozjX7q1KXxl4twY3AIN5J5XaHCgH9BEcRgRMWPsOtLcOk/As/tWudqakDw1QiSFyij
	H0NX3paWhPW+KWvBvx8CsEhHc0D+rZryTclG8sCeqB7LpfEog/4BCH0ldeTMYXY8/NouoI3Pd/xRl
	8dmJSepxtBAWREvqwPAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJXig-0000000EpWu-0GYt;
	Tue, 18 Jun 2024 12:13:50 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJXic-0000000EpUS-0k0y;
	Tue, 18 Jun 2024 12:13:47 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1f7028196f2so43670955ad.2;
        Tue, 18 Jun 2024 05:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718712823; x=1719317623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lzWwZ0WI5POwNAjxZ7T9jl0G8U0Jzav8kEKDeMCZmzo=;
        b=NNFVjkgiXF0iPki5wDeKpl1Tc5XxFsgfcQ6H5pmUPxnYRfoRSmRNkQF5Ap+bUXr2KX
         fqRZKZttMm3wMzl0RrVwM2UPJiIM/22B1dxSsDDQM8eKUQd9/7DJMyMZbGJa8TToSAzk
         JisWHRUCa4L0cydYFPYgF6bnqppOdSGa/vMASlluNGo1ptMsgYLatwtEoLDtH68rJSbf
         6n8IXSXB/A5NEkm+XbogyDpke/O/JOhSRCqTLXEZ7Fy7WPzCkS0uxu9ys8e9d5d4idwu
         l1z96kGmRy9+yiAhd5aCFRvWEav9MPIJ/sLMY8RmSLGeTwDQGpFUT4ijcp1MymthOYml
         zmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718712823; x=1719317623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lzWwZ0WI5POwNAjxZ7T9jl0G8U0Jzav8kEKDeMCZmzo=;
        b=tONt0iOZu8ZURC+OLAztJFRq0EOw00YT/t++tHVL3CiCaUIErf7+Cc1m3uez8yslNG
         kPKHUqkBJd0p6od9uA+YHy97eOIB2oxfPaxn2U7gj/KjMJLcrHn6tDvfxryO1kFpgpBX
         aTG6+4lrRO6/cb4oebZ5xnOUwNQQnQn3pB3S6ErO/du3pV3dd7/GrYbA6KM9tTlHFONB
         IOq3iEZSiOk2YJvrdx6epvqfahc8wdI39NmAiGatSzRm21TOPfzsHSbbWB1r+82GZ5uo
         9n3c6wZAewDtsRIiOi4UQwNK5qqE0H6cZy+AfV/Lc9FV8nuOgrygNuFjhyyim74iCGQz
         xpIw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ1qmsLexxsYf3eWMt1ZOo9lR0OqyZySIB5RPSc7WukK1VcDazsGNzz1hoLYEN2c4pZx2QW5hycz6ruZWbJSphbWo/pOEh1RKsth3Gl/KTX2QraDexOHWHz4DnNpW8qbv+ZmnmckFNG/rKlPOqp21/fVcrP0CD4qs=
X-Gm-Message-State: AOJu0Yz6lx1WlGH2r7yEaIaZsmjMhcx6O4rFGxnUNPqy/sAN3iWV0Q+5
	F1LXqenCTJ6UEwCrl4WnA0QRITTdmJ08kd3/H6el2ErAa9Yuescn
X-Google-Smtp-Source: AGHT+IHaKclJUc4Efl6Ydywur9YtKqbT47GJJBF4XJ29G0rvH83AABeR7Un9gk3CcGItoYkKQc5fmw==
X-Received: by 2002:a17:902:eb82:b0:1f7:ff:b477 with SMTP id d9443c01a7336-1f8628063cdmr141385545ad.55.1718712823074;
        Tue, 18 Jun 2024 05:13:43 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e5ba93sm96576865ad.3.2024.06.18.05.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 05:13:42 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: detlev.casanova@collabora.com
Cc: alchark@gmail.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	nicolas@ndufresne.ca,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Tue, 18 Jun 2024 20:13:29 +0800
Message-Id: <20240618121329.79936-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <4116468.VLH7GnMWUR@arisu>
References: <4116468.VLH7GnMWUR@arisu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_051346_237391_03FBC9F9 
X-CRM114-Status: UNSURE (   7.98  )
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

Hi Detlev,

On Fri, 14 Jun 2024 21:56:27 -0400, Detlev Casanova wrote:
>+		.frmsize = {
>+			.min_width = 16,
>+			.max_width =  65520,
>+			.step_width = 16,
>+			.min_height = 16,
>+			.max_height =  65520,
>+			.step_height = 16,
>+		},

I think the min/max width/height are incorrect. From rockchip's TRM V1.0
Part1 page 374, supported image size is 64x64 to 65472x65472. And my
chromium can't use rkvdec2 because min width/height are set to 16, which
will cause error at here in rkvdec2_h264_validate_sps:
>+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
>+	    height > ctx->coded_fmt.fmt.pix_mp.height)
>+		return -EINVAL;

width is 16, height is 32 while ctx->coded_fmt.fmt.pix_mp.width and
ctx->coded_fmt.fmt.pix_mp.height are both 16.

After changing them to 64 my chromium can use rkvdec2 to decode h264
videos now.

Anyway many thanks to your amazing work!

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

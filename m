Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECE7D59F6C
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Dec 2025 05:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aH2BCbOaXVcuBt6INHKkN/o2SwrZ58XEZWVcq3aNSv4=; b=0naLVaJTf8Xu/f
	LQfqM0VB7Pb4L0akV+17VwoDSQU0cm6iALon3j1G3H4j4aS9jQxzLFlOawd5cZXcQW/Hx8OP5bP2t
	rKygjFiHA+a7Fs/t6HZ0Y/SZxKYKfgUzQPMGWfwhy00fcRxNlNQoeZMRWuDsmE8q2q8WR2ft3Kp98
	67SYJRugq0EmLF5wriD1a5QagE+0ziNHIshzgaZNT3EK9E+iF5O9eOMF+ldAXcmhJSZCwXZagStGy
	S9ZaaUTnfjtmZnxOVdLT3HqrkH0v95WIjV5lCqy9glGvRXiFJfgXmPS4/w5amjPHZDXtHWghbtKg/
	06GlMfBjL0SSNiiGkvxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUIXE-00000001Qwg-1rtE;
	Sat, 13 Dec 2025 05:51:16 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUIXA-00000001Qvv-3gUl
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Dec 2025 05:51:14 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-29f2d829667so2148205ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Dec 2025 21:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765605071; x=1766209871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ucg9q3D0v6rAtcTIoC3bcbK6UjxarZfs96WicJi60fE=;
        b=bFUSGx9DDh8NzLdHKVzgz1YZMl8jMb5T8A/XAmZ2l3ga8yMnBYa0Kh5kM2bf3AgIyG
         ehSMHeFt1ZLI6ZIQHFHwK6jm1Ut8zLmvs6ObR1KhKMh+zOOLKZo6hAq/mc2HtVxb5Fkf
         xihekh7UcezxajSS07qAn0BpKDIwrCfU+0lZd/qolEPmB7eOu86mkIieP5hLXNnq03ep
         qWqRV6DwyXDV9BqDHVO4jUJxh6kGBEcqZgSBnVRNYGRzZjv4CGquEE3j4v+sVE66EvD7
         ZF60fMxCOIlqQoHFXm0LVpGMh1KX+sDRxLYKnAjMTgvJT7IbANqdUxCssv93aWiPRE+4
         w+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765605071; x=1766209871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ucg9q3D0v6rAtcTIoC3bcbK6UjxarZfs96WicJi60fE=;
        b=jglorBkQ/dqXKn0khs5O7xadjq3gUC7AWSpMbLa1RFoP9iICKIGXq2lNl2LLK+CNvC
         jE9Xl4v0vMOQiGJCWC+c0NEzUwLe0YcQGtUYs64dgiRrxWjvMLwkdFkq5uV++Oxim3M/
         z6QkWN3De0Sc/BYhXUfZQljJmZf9lZLeki+bN6RpvYsao4WsKbkuxwJZDXFwEg+Yy1bP
         kpcWouzqwpg5ghMcg1nIiawcaeJW3Y5toTa2egb44pLnphJV6swGITEV6nI8qlxKTSQ5
         FSdAyBUP6VtWj+BaX2BlUg7XOII65pckO0Lzv80rt/GJwNpzI9idBlQI+NYUeImkbsTg
         9Iaw==
X-Forwarded-Encrypted: i=1; AJvYcCU618/zx6PgEzC0C4pkrfaNJvYVVG9mwvBtrrXJot5UL0DkGdOapuNkVZXkjul0YiBC9YPYoGgrJXZi9j6RiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzbt+L8XPXPjUK6b65qWVyp15ABHlgVk0ZE/1gYbauApTIqcCkO
	07dkL0P2XZHjBqxxeWoDvWV13PqatuYAudWDyw+uISGYYr96d0PLp2rW
X-Gm-Gg: AY/fxX7JBrYwKxZTsL00UNh7gf4HLpPBb5lCvRe7herWAPZBg7vtI8GM8uG6HajcFsL
	cN47MME2ppohgiq0vDuEY/VCM0t9crN6Nn4wxHa/TwZrkmXNxN0AaPVgvGDOa7G3wSeWyhGBCeF
	jB3kJooR0hE1SbZVxyooOd4LBhofI15aGzFMClkCre8F4pFcg+2ZprjOIdZuu7J03rxvbvhOGiE
	1h9D1oFDpWnbtebPYC76rw74HCWZ40nTVN0Wzr08M02ZV6Dw150/X9XgcOcevC6Zc1DP6NcQhLo
	jG7GfaqaxOw/4ywQtrxXduHhVzdCjyWnrnFEII6y0no4QjLJzeGnJ5BE4fDCdOtcwgiG3+IN64r
	aia72VG3vpln6oh8WSPmu+PHYYo6mt1RvLrLfUwE3sfByA3tRz1plaYJmzbG0b+VeMlF0ElTlP0
	oS6dXD1+REuUqwZMEt7QYMOQ==
X-Google-Smtp-Source: AGHT+IEVdF3D+n6cGQxNGJqnrYCRTg/VLTUaOirWaicTa+47OE5NWo1Zj/EmbxRkTtSFJrNN1gu79A==
X-Received: by 2002:a17:903:2cd:b0:297:df7c:ed32 with SMTP id d9443c01a7336-29f237bac9dmr25852125ad.0.1765605070738;
        Fri, 12 Dec 2025 21:51:10 -0800 (PST)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea043d62sm69743215ad.82.2025.12.12.21.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 21:51:10 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: jonas@kwiboo.se
Cc: detlev.casanova@collabora.com,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	hverkuil@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com
Subject: Re: [PATCH] media: rkvdec: set ctx->image_fmt in rkvdec_s_capture_fmt
Date: Sat, 13 Dec 2025 13:50:52 +0800
Message-ID: <20251213055052.3046554-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <5c2dec91-667f-48f6-b958-e0cf81cab569@kwiboo.se>
References: <5c2dec91-667f-48f6-b958-e0cf81cab569@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_215112_923991_60718597 
X-CRM114-Status: UNSURE (   4.28  )
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

On Fri, 12 Dec 2025 17:43:35 +0100, Jonas Karlman wrote:
>Chromium should be fixed to follow spec at 4.5.3.2. Initialization [1]:

Hi Jonas,

Thank you for guiding me to the spec, I will look into chromium and try
to fix it.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8B68CDDE49
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 10:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1uqjgZlXLjby2C7v7bxlnAVwPMdYZ/FubG1CkWItu8=; b=Var7zbcgSYO/B3
	j1KhfvQx8RL6bQANTeYMREwXZBcn/VpEDK/V/WMIiQnxhkK3KP8E+cKrmgYh2RBoD3QEMEZWeo4LA
	KHq0nJzgc0k7SijlseAM8DQh8GV64lMaO2y7vcxNM+ugIWY1mToDcsDeAMWsBXvgPJpI8OE3x7w0X
	yxYC1cYuBXRiay1gAPtGGMrrzdcdLEZQvf7fin4vezShlq2Pja7G0gn1T4Ib4VrhPnFliXV4ZTtEN
	E7vXf0tuujcu8tI5neoLD7gtVF6/SL5SjsiVGhnNZBfJ+sz7uuDmFV5rp9swlsRPnOaOoB5hzREmE
	72Gco+TwQS0bLFOTUsGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3YTA-0000000DxZL-41m0;
	Wed, 23 Oct 2024 10:20:00 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3YG5-0000000DvU7-0Upq
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Oct 2024 10:08:29 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6e39bf12830so5295097b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729677987; x=1730282787; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a95S/TCmJUb9zAzOT/Z7FGsQTjMV4ZgF2D4dSS7l1HM=;
        b=rwb0iusKfS/G5Y2dsdgruqp3tfjghUNoYvtE+qq2h4+/8ZAlPGrPSrXpfl9sMW0+LW
         etA1Z/czXKsUnQaX1FOQmJU/YKAQ8rbV1ZGOaTItLX9+eB9Qy71pZRSpA7oB2OJ/tGX9
         7iQTj+AI/smABWe5MiChuiQY7PMcd5QDrg6EBbbZJI5RiwwnmdOdFsH4OahWfw7AK0uG
         8Ik+fSzyCC7Z8Ev5aO/9aeSWkQGNYNCxdIV7CgSYiDfCDzaBmcoZQEdetDN5Bg8JJxTJ
         +I+fMpEbfbFiGMcnPYU7+Br+hPJ7OI6zFGEcgvHBd9WWfziVVEILQHvB2yJ7Ivo5T6BL
         rOAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729677987; x=1730282787;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a95S/TCmJUb9zAzOT/Z7FGsQTjMV4ZgF2D4dSS7l1HM=;
        b=gLgV91WXSUjENeJwsb/S44kR3uxjEjrgSQe/kYRpmbHfuNWgqY709yl0aFgr0mT15r
         IdSWofOhuVu6/CHt5CFWlU81b6hYxDFc+M07DyyIFzr20AgfC1C/46G2cnwsP1Zed+v2
         PsWop7cdVLQJTKhgyUWhybw6j816ScG4Ii0F7UzPj/8O4YrRG/SmZPX21/eEk03ha6tD
         20YS2n2kGr3awm0su2KCEXqBmQZl7CN1jOX86anNumOIKQVArUN6xzesFhyN22EX/Ej5
         r/59BgXrvu689siWbtArBYL+Q+J5az6zOzspx9eGivL3v6U2y1ZdBhu38ldOal0grtqM
         KcyA==
X-Forwarded-Encrypted: i=1; AJvYcCUA28WgDxi2jKeDpA1sYSgo6QxUEspMkhKv6Q+P1iEMswD470LNEZz7LVyZ3vkyYjORdO0cCYT6ydty/jRrsg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWAA0bq6kzF5FyzrEFmGLKywiOdnzeyZcN/lTBfZUW8fLVJv3a
	RU19RqDpRHpyfmtqeUFnbrGGgJ3yJwY6BdG73QmNpUkpIqw2FE3zXeu+ivQZ/FYaqAHXNkrz/PB
	uBKe44rxmfkxQ84hMb1Fw+RHGF6BntTKlBIUKOQ==
X-Google-Smtp-Source: AGHT+IFwOZBv/9xV3wiaI1U67V6VvBJcsk2sGD6YUBFHxuleavk/W9fHcm2zNaYIQVNokSq8zuqqKdyHygLlMwbU20o=
X-Received: by 2002:a05:690c:fc7:b0:6e2:b262:bebc with SMTP id
 00721157ae682-6e7f060d560mr19960777b3.0.1729677987373; Wed, 23 Oct 2024
 03:06:27 -0700 (PDT)
MIME-Version: 1.0
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
In-Reply-To: <20241022154508.63563-1-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 23 Oct 2024 12:05:51 +0200
Message-ID: <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
To: Mark Brown <broonie@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_030629_181572_0BFA9852 
X-CRM114-Status: GOOD (  23.45  )
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

On Tue, 22 Oct 2024 at 17:45, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
>
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
>
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
>
> This series is now based on the pull request from Mark Brown:
> https://lore.kernel.org/linux-pm/ZvsVfQ1fuSVZpF6A@finisterre.sirena.org.uk/
>
> I added one more patch, which adds devm_of_regulator_get without the
> _optional suffix, since that is more sensible for the Rockchip usecase.
> Longer explanation can be seen in patch 6, which adds the handling to
> the Rockchip driver. My merge suggestion would be that Mark adds the
> regulator patch on top of the immutable branch and creates a new pull
> request.

The merge strategy seems reasonable to me. But I am fine with that
whatever works for Mark.

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

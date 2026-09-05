Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07566C624D6
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0RNIqHYMDzWUW/5jItutELQoc6VCa4fzzzHnrbQe3s=; b=SFwDxp+04Fhms6
	PEC6iU+rIpTvVKRaM6MA3fPAZOehFgqe/oJ2SQPdHaADV5zCCKDhym2CbYP261KbJt+5vzJlXp8HR
	VKK+Jw4oW2t4qLuHhVwlB5FEw0t+bUabeQ1PxWbnRmlVOj3Yx3msIIVJI/aiuCBRrPQal2p3zRr9B
	u58vLFxEz8ubgR8UZGB7n2SGu+qBbpCtJQ3mNhcHOkLBGxxY/En+kca593BQH1ru4ZDwVWDl3EWKa
	4bsvyXdkHwDbZZlHow9FWIy8pB9qZwYqMm2OMxvu+2sq4OsKfMkOBQNTI+HUslIfCmnfLyI8kY5xD
	eCk0L7YtRsp6bSsB8gDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sJh-00000004CAF-2LQU;
	Sat, 05 Sep 2026 15:28:29 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sJe-00000004C9R-2vxe
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 15:28:28 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-485843116d2so99467f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 08:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788622105; x=1789226905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bby5XNssOK47IVbU90Y61XfgVLTccI/hRlNdabb9YVk=;
        b=LXPA6bIp0bh51AFePKktKa1mtfzOuwT5xZdwZI0/wXeOYYtHcozVP+Js5TcUZ/fdf8
         MnMCPvdev/bA4rRO4g48hDAiR6/A+2aZFwAMVD+lM0HyrunBp44a8nflw/m/vpCrnyHW
         aWaDounCcyrYwJ/s1a/QHgx/4OwgzkrLo6gnIq4bV0yESDokIg9fnMaaoNJUcsoYL8tG
         YeKfJ0n0gGc2LMakPgHHFI7Bo8ZkNAFnKoeaeXDYLu7jAWLI/U6uaHTiSgUWcfnUY6Ji
         NeZzrqNoYL/RSkycRkc7/HQBXdwbSlcZAhOcsveJiunu9Ds2QVR10NBF0/fK3FoQIAhZ
         1rZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622105; x=1789226905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bby5XNssOK47IVbU90Y61XfgVLTccI/hRlNdabb9YVk=;
        b=n6jlnv9Ya7xdeFKrzgtIokl+Y2XcCSofsEG7ULqVoHZApbz+fJ57/UG2lpsT103mS3
         hpwvlebLP9xjZy3sdJwY1b2zF/Atu92Py8ulMIuexgDSZ3bOcHa3MHNNotR0f0K6ymuE
         nPb8F4lM86c34hjW2lgw1TeNydppnKmQuFkAdDLHSz+GThytv3zm7Zc9ZwEmwMTHa2zm
         CQffaLeKA37B8fPdXjPzWD+1pTAnD+J5WAS8+hCcvFXzwyP2GN/7l+r6myIAnsMMPiCI
         hnR73md53CNQ5sHzv1e8Ws+37D2hLir2ZdiKR4YvK4y+mMykrCmGvyUCq3WBLi8m3gs5
         aaEQ==
X-Forwarded-Encrypted: i=1; AKwUvBw1XPxkhmMvXtpDz25OGsL6uBlUY+uHI2XWAW6V/B4aoZfKNQX3kllSwwh6nFo2anryiYc+XCGQ7UQv7h3lPA==@lists.infradead.org
X-Gm-Message-State: AFuF++mQ+QetnMbqqYkw4if3A4O+DjY6eZUcLs+PWbOG1Giv+WsNUJNb
	neLxw3QZbK+V0A0+KPb56033Lu9rtXfYvv4OblgruRTFyAd41Oi1Etka
X-Gm-Gg: AYBFou1bRJ+MXfhU1aeX/b2ION2/uxcNu73jRk0boBgia9+PUbyE4vCiDsUhP6mtmTk
	p/MkrfK0MxD1kx7t+qWikwOqK+XAGEny8Uao6pXj8unbomrwrhphdEEOesfY6mVLavaCr1DQ8kW
	Wx/OZz0+r3WgaibQrzRgY3MwpZC+U2dZHE3vpf/kqvpIFX6XAQgKLpAcuNvfgp9V2GyeiGo58qb
	b/btNujjoO9Ea0LY4XWQC5j7aXjchykfAq2DicJpFxXK0/MUlhNg/GNoFcs/7uFEohfT+DSAfWK
	jOEx0sAgRbPYURjPQTkjogvUfUDC1wGe14UuKXusrgonbfj5LcEHvKvmD0OdBiO6pSZ0ZpLel4F
	3PbI7LoZURu47PEotMXY3keqdflivWwfeKUjhVrWij06bcFGFZ9ToxnWfjUsb1+NcGLWWYM1vge
	aQpIaomF9hIz3SUvg3YTITUchzzDrr/C6+NaEDVJ5gUd5l4a5E3K+xbt04e06tmU+R+ZD5Rolsw
	yj7z07VHLwcUhF7sm3rh9L8UYcxJ6cPtILTv/Rzcc71rxyPifuTZ7Hd88n/XoIw8A==
X-Received: by 2002:a05:600c:3b25:b0:49b:910c:76fb with SMTP id 5b1f17b1804b1-49d01dd415bmr45799875e9.2.1788622104748;
        Sat, 05 Sep 2026 08:28:24 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B950E0061C002CD703C2CBB.dsl.pool.telekom.hu. [2001:4c4e:1b95:e00:61c0:2cd:703c:2cbb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce831af89sm178425195e9.1.2026.09.05.08.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:28:24 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: sashiko-bot@kernel.org
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accel/rocket: search every core slot when looking up a scheduler
Date: Sat,  5 Sep 2026 17:27:59 +0200
Message-ID: <20260905152804.9822-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260905151815.3BE7F1F00A3A@smtp.kernel.org>
References: <20260905150432.7477-1-royalnet026@gmail.com> <20260905151815.3BE7F1F00A3A@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082827_353494_7EB4CA8F 
X-CRM114-Status: GOOD (  11.79  )
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

> - [Critical] The patch introduces a compilation failure by referencing an
>   undefined struct member `max_cores` in `struct rocket_device`.

Correct on its own, and my fault for leaving it to a trailer.

max_cores is added by "accel/rocket: search every core slot when a core is
removed", still on the list:

  https://lore.kernel.org/dri-devel/20260904125936.26234-1-royalnet026@gmail.com/

This patch declares that dependency as prerequisite-patch-id, and the id in
it matches git patch-id of that patch exactly. On top of it the build is
clean with W=1. On its own it does not build, as you say - it should have
said so in plain text below the --- as well, not only in the trailer. I
will do that on any patch of mine that depends on a pending one.

The pre-existing issues are useful, and two of them are already in hand: the
global rdev left holding an ERR_PTR, and the devm allocations on drm_dev->dev
that are never freed. The reset work cancelled after drm_sched_fini, and the
iommu_group reference taken in the IRQ handler, I had not seen. I will not
send patches for them until I have reproduced them on hardware - the two bugs
I did send this week both looked different once a KASAN kernel had printed
the trace.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D47C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 15:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aj5tVG6iISUZf470xWMQXsMzrCqcTOXLlaAVTMSOQx0=; b=aP21WnwpNtkYXK
	FIxKJUIgiJPdV5/8uBPSfF7D5VOkaF3tLizPQ6xsQY1TsgaFOWgW45/KAbyaKYkKNpe//J3llzMXF
	YbACKVmxygA9yunKnLs4MFkBV/b+yrlTeW0x/XV7Q+A78dYmRt5L84LZyuCPuKrDDVWV9p4t0Y18z
	+cScjte9zxgof64r6BYnyGzseHoM3zCMrzuWCDzfyTDbiWjmmSkXdhe+M1XoXMBRLs98PYTh6Dh6q
	VfFdc+uwIunKK/NJWyAKwotKJNWfh1Y11UZ+FuN6n5vl6se+L7QL9kLDdaXjv3lpJJgSjXAJv7wIY
	MsXYbhiaZ9UOYUB+YKhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZwNw-002gOv-4K; Thu, 31 Mar 2022 15:06:52 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZwNs-002gMD-Do; Thu, 31 Mar 2022 15:06:50 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 5so42050321lfp.1;
 Thu, 31 Mar 2022 08:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iEeqXgqN7qNwmQ7SU0adYJu3zAo5+AxJKS/k66U7Uuw=;
 b=cSdCZGdJoMjReN01pR3Q7RjqXLfM/ds+zF+IGB5HU994zhdMp0MUwm7zC4myMiGEIC
 8R5ssSK40FIlevjSNoHjC8kXgJFSILuT/JItQh4qmwXwKnutMvBXuiRdQBnp1jv0iemr
 kYZR0Vrlwu9rj6pF+2LiP+biOfQkfK+kamY1vle2Ye0KNJpORClIuM25P/G9ndQMo3ka
 Evb7/Q2iWADK9ySutmkfanI748dH8qelFdtI4CcrD8H4HJt4lWpqRuif896AdevqTW+B
 ZCS+6ITiFb7poKmgiSIoEX9A+zj6J0QeufKFHyLIf563VeF3Kt0tf9WxGuhXAAS4zobe
 F+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iEeqXgqN7qNwmQ7SU0adYJu3zAo5+AxJKS/k66U7Uuw=;
 b=z8E1VAXh93Ny9GqJegCAX1lSAJWgcAgAz48MYV0diuWz6BlLCzERgI/2QtyKDvxJhG
 ZpyNcJt8LtU52BFY7eHa0egshsEhWGIFvHPe6ME67zp3hCLOVgWx7HeK2HOVIuh5iTTZ
 HOgKcF+UrGO1ceVPfA2ycwq87Uhssg4rfZBHdqRM6AetBqWOMrxTG9NJwVvCCjxGU6nQ
 VriZd2DZHWbZTCt3lmrvSkBOKPRkCVDNpGjYKYgDIvmommGJ1fnb2SgyainPlXi9gEgQ
 4pa09TvMI71KzO5QeHlHFYNgQU6KbpHoXX+9NHv/6EFi7ZDjj1+97uAvophTqPRjTT5W
 bN4w==
X-Gm-Message-State: AOAM532tmHYBcGL+0l7JWtM+oMqUTMtc44SEJGsU/17kuQ2z6UIiuqRe
 A8+5N7EO9we6QtLJK78Wtxs=
X-Google-Smtp-Source: ABdhPJwqfhKwVkGEAlyRMgBOZAf1wO/XCh9gwyq4jSKNAmK7zbJ0HROyx7wXfMKYpLhCy8ArHZKcZg==
X-Received: by 2002:a05:6512:3f86:b0:448:9448:5561 with SMTP id
 x6-20020a0565123f8600b0044894485561mr10757975lfa.489.1648739198577; 
 Thu, 31 Mar 2022 08:06:38 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 e3-20020a196743000000b0044311216c42sm2694691lfj.307.2022.03.31.08.06.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Mar 2022 08:06:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220331150056.GH4012@pengutronix.de>
Date: Thu, 31 Mar 2022 17:06:35 +0200
Cc: Andy Yan <andy.yan@rock-chips.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <3A5C5A71-0CE0-4072-9502-75385C1C43F7@gmail.com>
References: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <20220331150056.GH4012@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_080648_489974_DF4ED33A 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDMxLjAzLjIwMjIsIG8gZ29kei4gMTc6MDA6Cj4gCj4gCj4gSGF2
ZSB5b3UgYXBwbGllZCB0aGUgYnVnZml4IEkgc2hhcmVkIHdpdGggeW91IGhlcmU6Cj4gCj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDIyMDMzMDA3MjgyMi5HWDEy
MTgxQHBlbmd1dHJvbml4LmRlLwo+IAoKb29vb3BzCgpub29vb29vCmRpZG4ndCBub3RpY2VkIDot
KAoKbGV0IG1lIHRyeSB3aXRoIGl0IQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

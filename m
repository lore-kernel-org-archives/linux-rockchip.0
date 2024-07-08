Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA97C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 08:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlYl6DA+1tgaZ8tJJ4m+CHpoCJkt93DSHSMvX6roh2k=; b=e1SIr91czVI0FD
	jCY/iQ2B8yD1GKHWS59MvDrK0X0KxbWuigGyTTxokmluOiyGoieySqkmt9fDj//0Ofw2rKqVVSNDw
	fBAyZdiVP/BbR0KvZlp7EfrsOJNqjDsL/T+yJc5Eka5Prw8CP4N9BfArbxMdSqHV2VzarkHgeQp7F
	NClE0JDRnBCDb/DjzOoOD4ffwWjq/BGZzTU6YU0M1YEPdIljcDG2trs3x4WaVZe399abjdvaskpeP
	Sek4ZLllFYc0rrFvGonUVoXHh7+4nO3AkJAocEdXSHCmilukKhvuvFYsyaIbuxy/t3necqY0KkHmU
	4X0rcH/3Oav9bkoIz5bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjI9-000000036qB-3C9Q;
	Mon, 08 Jul 2024 08:00:09 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjHv-000000036mm-0lQ0;
	Mon, 08 Jul 2024 07:59:56 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4463b71d5b0so31029591cf.1;
        Mon, 08 Jul 2024 00:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720425593; x=1721030393; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rs6JcL6vNDmIMyLHr4sEqjRKenwYOM5DCBPg4j4VF0E=;
        b=YETJeQWxDYer0WC893M/Tgzx6tF9BeRvUqGr41DjhXIM4YLAczRwQfBzmsNAu5bNOR
         YPGfeWmNmW8cuW61VskMfyGrRTiXQgG7LCBT2Wa3J+wjQRIQKtNHh4KbWkNuKcgKBBD0
         qt3OPYTs7xbFKron4ZdqFXZ+PqZ+wocWZ8qPsrqOcRrI5uQrRh70Y0/gOFg/cpyHbBP5
         hw3TmWSc6qzt1/Wxj5IEhwn41a0kw3CV8Yj1yBmccb+Pnsm75QBzHO/taHcQMSA0P6KS
         +FMMdV7PatLvvT3tUlqgzFSVSfNRxONhMObPolj4bljjrS0uXfLoAxfKTdCz5hEdSAbW
         p4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720425593; x=1721030393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rs6JcL6vNDmIMyLHr4sEqjRKenwYOM5DCBPg4j4VF0E=;
        b=Q/wlZO2fA6suISPsp2H0MjcES0PoHVB/x0eroK3PmGD/Wv3UZ8u99UMpK+K2Ng5V9D
         89LvsHozdUEpaX1uLHuwXSivIYaiJLih2quRlTCOoSZM2oJibiXc2bau/BphtiIpSIlL
         sKN0r/ZdSZw3QP0ZeB2h+UaReVSqQrpRfrYSkK3JW66VYRrkDIa1SnECc6oOT47pubWt
         RBpSJWM67jB4CIkjhk3i0CrYiZn5UpqMzE6tZ5xH+gz37A7rqlttIdD8r5dWw3hS8Fa8
         dMMliSiCoQFbkmf7Ow2zaxH6PMKWhgCUiJsom7yTo6klrH+EGWR6npl9QiifFRaJNLap
         o43w==
X-Forwarded-Encrypted: i=1; AJvYcCWc7vT7o1lqGUany4Dzd790Q1y8/vGCemnoqAFhKKsctLaVZIDW7g2cAw0p76iGId6CuYeZbSTlUMw54Ccx6d4WrPf1nf1zys4XnVqtQDoMkRHkUotUK0fMMGlir0h3mOGeghdadM8xXN3Nu35S2I5qUFtKjtk0kbE=
X-Gm-Message-State: AOJu0Yyr2q4f52i09QpGEyEqys3ahqURsdXMuvkgIeUGeYoPeIpcRhGD
	2ZZM6OtcE9QBKohzqMABMrOhjjqG+2J6iXoR/lxQlRrwMmmBnNDrZEi3KPP7afM3o35PRGIOi/9
	9sJegRWGpvWzxmI1jWpAKc+k+PcY=
X-Google-Smtp-Source: AGHT+IH/VkfDIhs6MN4moaEli4OluWsChfXFbrXfH1W4zaZXzfmzxCus8rkkzYzz2iIioaZ3+7DwykAmfvpfNMasWUw=
X-Received: by 2002:a05:622a:40c:b0:446:6824:166a with SMTP id
 d75a77b69052e-447cced7b40mr172582011cf.10.1720425593179; Mon, 08 Jul 2024
 00:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
 <0418B5BB-6759-4BFA-BE6E-F5C7FA0CBF4F@gmail.com> <2236519.ZfL8zNpBrT@diego>
 <1E6ED98C-BD49-485D-9FE9-9E7CAEDB4564@gmail.com> <503ECE3A-CA1C-43A7-AEB2-C0000A930B3A@gmail.com>
In-Reply-To: <503ECE3A-CA1C-43A7-AEB2-C0000A930B3A@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 8 Jul 2024 10:59:42 +0300
Message-ID: <CABjd4YyY68dcA+Z0nWAUq1UmVLeLw52Pg6NGpzcW=WMNX8ioqA@mail.gmail.com>
Subject: Re: [PATCH v5 0/8] RK3588 and Rock 5B dts additions: thermal, OPP and fan
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Dragan Simic <dsimic@manjaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_005955_263678_839768B1 
X-CRM114-Status: UNSURE (   9.88  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUGlvdHIsCgpPbiBTdW4sIEp1bCA3LCAyMDI0IGF0IDk6MzLigK9QTSBQaW90ciBPbmlzemN6
dWsKPHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGVpa28sIEFsZXhleSwK
Pgo+IEFmdGVyIHNvbWUgbW9yZSB0ZXN0czogaXMgdmFyeWluZyBmYW4tc3BlZWRzIHdvcmtpbmcg
c3RhYmxlIGZvciB5b3U/CgpZZXMsIGluIG15IHRlc3Rpbmcgb24gUm9jayA1QiBpdCdzIGJlZW4g
c3RhYmxlLgoKPiBJbiBteSBjYXNlIC0gMSBwZXIgZmV3IHJlYm9vdHMgcmVzdWx0cyB3aXRoIGJv
YXJkIGVudGVycyBzdGF0ZSB3aXRoOiBjb25zdGFudCBmdWxsIHNwZWVkIGFuZCBubyBhbnkgcmVh
Y3Rpb24gZm9yIGNwdSB0ZW1wLgo+IEluIHN1Y2ggc3RhdGUgLSBJIG5lZWQgbXVsdGlwbGUgaHcg
cG93ZXJvZmZzIChyZW1vdmUgdXNiLWMgcGx1ZykgdG8gZ2V0IGZhbi1zcGVlZHMgd29ya2luZyBh
Z2Fpbi4KPiBXaGVuIGJvYXJkIGlzIHN1Y2ggc3RhdGUgLSBhbGwgc2VlbXMgdG8gd29yayBvayAo
ZnJlcXVlbmN5IHNjYWxpbmcsIGV0YykgZXhjZXB0IGZhbiBpcyBjb25zdGFudGx5IGZ1bGwgc3Bl
ZWTigKYKCk9uZSB0aG91Z2h0OiBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHdoaWNoIHRoZXJtYWwg
Z292ZXJub3IgZ2V0cwpsb2FkZWQ/IEkgdXNlZCBzdGVwd2lzZSBpbiBteSB0ZXN0aW5nLgoKQmVz
dCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

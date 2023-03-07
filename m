Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3CCAC6FD1B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 16:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFgoLml3O7D2+I5ORoALsR83mY/J2oV994I8vK/RoTk=; b=FgetdDsMAJF8Hg
	86r5NUCirg+gCVUfIigKux8BqhSPed+0omeQF46cQtlDIOdcqHYcPjO2ms6iJj/wM8ZM4Y34Zj3cK
	mc4PWo5p4cxhDl0lJwdl2P1FLEr0rkU2TAEMJlFof02co7xJ0wkw0vpKMFp9j+tG1PYX9ERdPkihb
	6SznIT3CmVXXOU/9t5m2TPST4fzuXCnCbzSA+D62VfrzomyV3AmshcKYjj+w+Lp95YYnO8qjSoQ8d
	RBfba6cgc5MC93EbbTC9Hv0mxUtdUwzKKCz/wlawDgSS9HAtziNlkrNdrh/Gcci4+4NmcTUXPc26+
	UtKfpeT64i18m1h215pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZaJS-001a5e-8C; Tue, 07 Mar 2023 16:37:18 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZaJC-001ZwL-IT
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 16:37:05 +0000
Received: by mail-il1-x12a.google.com with SMTP id w4so4507748ilv.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Mar 2023 08:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678207017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux+HwDDquJHkOY/OMFVQ579Sl0VkYcKa5LT1wJs7xN4=;
        b=BnFLUAjUOkKd62/QQGDXYegmnAWNcOT/4lVqtfFTEC1OELACehy6GuNtB9U7g3Xf1m
         gzS5HgoemwNlSiTtaP3XdBlxlnU+11cHis3C2u1T8cg4SzXXIbPM7RKa1TyBQEFuQUWo
         uJKs2DNjKNd8/3qJtdZXTJwJENRCP0jh79z8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678207017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ux+HwDDquJHkOY/OMFVQ579Sl0VkYcKa5LT1wJs7xN4=;
        b=q0umGRjMtbzDFnchjnGTuNFwolIBqv0VqPQc0oVHRc/jvbuDyskLgytPOvfBralfyA
         wEa0AcD0gmKenZxjiAtvKmzIxUxPyTOc0ufY+d2+EDQ8WaE1udl+hPjoJGXIbz13l1c1
         6CUmYkJYS7ZGuvoBZGfOR4yKYfi26IVJ6cxj2j7lBzSf8MJCinXPA4kws3HYdp/pVIyY
         XxAPJS6sqAJ2KQTJHLmNItw1PzSMkLRkXuWD1g0qfZjAjBH2iGoJ3cn8GezZXD9kJPrv
         cZuNfJO9t9xeYpxoHvLOAKfa/bgSfCTTm8zU12A0WFkpKq/vxcAqOhhLw9act9+vWRoq
         W3sw==
X-Gm-Message-State: AO0yUKUKeojB/Pkxx/bGsu+lSq05FA/HW+qaSROfSC+vdbhf1wINODrP
	v6n3K4Pu3pKRnmfIJ40mZIhEkCCE+j8FMu3afsg=
X-Google-Smtp-Source: AK7set95ZPMFgSYcnky3/kWNsIIGPQ4GcxCAW/FzM3YKJQ0Oo6ZJ5HqHU6noQ+7cGoWaPlFSEbzFGg==
X-Received: by 2002:a05:6e02:174b:b0:316:f0e9:e136 with SMTP id y11-20020a056e02174b00b00316f0e9e136mr13886129ill.18.1678207017469;
        Tue, 07 Mar 2023 08:36:57 -0800 (PST)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id t19-20020a02c493000000b003a2cb2937cdsm4188920jam.31.2023.03.07.08.36.56
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 08:36:56 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id b12so5127370ilf.9
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Mar 2023 08:36:56 -0800 (PST)
X-Received: by 2002:a92:c5c1:0:b0:310:a298:1c95 with SMTP id
 s1-20020a92c5c1000000b00310a2981c95mr6900094ilt.6.1678207016401; Tue, 07 Mar
 2023 08:36:56 -0800 (PST)
MIME-Version: 1.0
References: <20230307095516.4116827-1-heiko@sntech.de>
In-Reply-To: <20230307095516.4116827-1-heiko@sntech.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 Mar 2023 08:36:44 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V0fZaD=ptgbUrq-2ai=md08q4cEDLGbLiXb_ec42w4EQ@mail.gmail.com>
Message-ID: <CAD=FV=V0fZaD=ptgbUrq-2ai=md08q4cEDLGbLiXb_ec42w4EQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, briannorris@chromium.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_083702_643409_69D83CC8 
X-CRM114-Status: GOOD (  11.60  )
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

SGksCgpPbiBUdWUsIE1hciA3LCAyMDIzIGF0IDE6NTXigK9BTSBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEFsbCBvZiB0aGVtIGhhdmUgYW4gaW50ZXJuYWwgZW1t
YyB0aGF0IGJlY29tZXMgbW1jMCBhbmQKPiBkZXZpY2VzIGluY2x1ZGluZyB0aGUgc2RtbWMgc25p
cHBldCBnZXQgbW1jMSBmb3IgdGhlIGV4dGVybmFsCj4gc2Qgc2xvdCBvbiBzdWl0YWJsZSBkZXZp
Y2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
PiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zZG1tYy5kdHNpIHwgNiAr
KysrKysKPiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpICAgICAgIHwgNCAr
KysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKUmV2aWV3ZWQtYnk6IERv
dWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

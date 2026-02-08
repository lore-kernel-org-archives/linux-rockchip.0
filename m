Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 269B4EF06E8
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Feb 2026 22:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YOts65t5aYtFbmlYTCYwpwDioKDgsVieHX2+qbKZLg=; b=mt80VlGBRPu1VL
	rM/7kDwjJIZSrMEyhwO+x1k9IGbI/soACBfbR8NpfEVpiBeJBflBmF/XEzCBEMKbaR/Fo3kL7mCn7
	D01iLd10U4QyBG4JTiHSmnqoollPDWRNC6fugrTC2iIORXPql81pQ2KkEjAGsfScHguCexjkQxIDU
	e+OU7QbUR7IfN4ZIOH8U0WQ53fI68eJg2cY7u4PGqWqwTgZ+gLa5MV/WG6OLADcSUb2t6upgIraWU
	lBU1QtG05CLewcDEh4oneGR73jlP0lACobTfeC6mA0T+edYQVSqvE0nwx6mnuHEFW4Kn8W8BwNGEY
	S1M4cHp8DLzZFBpt+ThQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpDGV-0000000EWUr-11EW;
	Sun, 08 Feb 2026 22:28:27 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpDGS-0000000EWUB-1qLw
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Feb 2026 22:28:25 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-383153e06d6so35021491fa.0
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Feb 2026 14:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770589702; cv=none;
        d=google.com; s=arc-20240605;
        b=EMChiQ3MR7MFEbHMtVcpdcRCc0O2rYClKunN4A81LJ0FSnisdYlAuCxJ3nLRAjzvPc
         xCWi9LfGcu0/6tSovyKcBKrgVNPpAgo0MFakPdR/FuIi372SQ1BzbfgeaxiO0zIHyXE4
         MnuxVyNOcDQAEKNfc89edSX+IKtUZWoCuOOD3df5dYHE5Xp30SHrUWdEuoaAnjaXPrD5
         II29lG5lvoER5SCCHgBBa/f/Rc1sBOChq0V90EGl1QG1/7zAOyL6rwja5+sHJIoEa5lX
         AUaf60a+ZuF0Anz7c7p3nu1VuvboJwEv9F3FoeFMpIs+5UvEODUX3V7KCNZttN+RyB19
         38GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        fh=+zKzOWZ42TKXcB/0oqg3XckYC2KfgCQg3/LzjgeZKRU=;
        b=FSs/D95759h7F1+0+JhAHkEMK8hh0VDo2dkR+V8x/UI/tLPnCqjQ0OHCorUbZZ/Do5
         3kLtrbszVRRT8YRYaFs5VXan5rh+g05ad92cgRqzUGRJ21CMWjsYGumvqgnsVMC9ucsO
         wmoGFCroKZs4PUoWb9uyLcyuv3PXqyK7JjclAzSeChS6W7pR/Kb04VRJb3ZSkYcAO9+Y
         6lMv3D1lH+BVmzeS7xR5M77RAL+43LX3HTG/Y0X65/egFBmPQU/ghWN9UWvSHDhR08jl
         5knf8XARNdDmcG4FoDyjvqW1gQP/sqSqm3iR+/0vB6dbdUtI0ljL5DiDVVSVIYVim0AP
         OaHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770589702; x=1771194502; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        b=S7KcBPqKdwYGaqyYdQ0ciS3ErbeeNQxlCIOkRjtrEf9Q7q8/XAi/3aO0mgCCMjBJtk
         PDicXUrEvPAEqD3bRrRwyc1Di1L1X2KSf32ipN/lIvv+Ruq/xgp1gCwc/bEWh5Aq2iID
         BOfnMr0EHSVrUJAMHFIgAnz7WGlbnliXdZGliI/66eWCvUjr3ledt3eCQk4dsZOhdQiC
         atJi69U2y1pMcuctREEjkgmVlk15r2DurkYocg8ZifpKM6+wAeDIiTanqCFSZDknLjgI
         sQUj4h3gpON3eErpolnB7WNGLkmMWcgtPLBM1qr7Y//JVJnPWK/UdWbBOevzPV/XrXyu
         eApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589702; x=1771194502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        b=boBwUAA4CLBMaOsDQryx6WuRICkUInwvDoRPE16XJrcq7KJLs6eWpC27aUTVBr3nJe
         PeA3Z0wTKEpEwFMu88MLDeVj2Al3qPG2pLW0h+3Zzg74Qsi05ULixXjFwpUM0ZhAJCDz
         jT4COGkKSpzjaFCB5SHH6zbrq3ccQyyIQ31JAsC86bGR3K9F/KaVV3EYKGsg2AUkZvLh
         uBGhpDC3vzOBBBZ1chxJ6o8U4esSa2AmWz8Wr4q3CGOuh4Ec+VbEFAClaUoh7BF/wArh
         c66OtrUIbU5cKsYlNC/lQA/kGjonZ34jN9gI38R+7rfJ6KOsHyramt29re/2cekBTY4A
         nWRw==
X-Forwarded-Encrypted: i=1; AJvYcCXPwzWyZEZJPg6Txk+hJPn30f6t63X7DPCEcZgN12JrEnwg1Ty8cvOh3eVRULiRZPBsVK5+X6EQCAxjwBQJug==@lists.infradead.org
X-Gm-Message-State: AOJu0YzebaARIOcQVGKZjsJKNrVxcXpqctRy+odIZmULCA0RZyw5nL2H
	BlQLeAiLLZfg0ulHPmUxJyq0bt1ziSilaGJDb/wHUHMgIXGXtT4xNR9Ov74rW0XDsDK7mejy+jz
	TXI8ggvgk/YxJRKkek64wV+wA7Ar8cCE=
X-Gm-Gg: AZuq6aIyFj2ZNs0QM7GkVGh3SisdUO7QBsKq6+oxfrLrO83A78YiP7AsQUNKStyDE7J
	dU1eeSAaMHMUxOrwKs8N/8vl5az4C901W7oO/6gls+EndLzg0CX4+MLs2w4CDUpY0CE6zslOjfz
	1wehY1ZsGQErThgSXemuqCrJISVNWkKOKtA/ygUQWNg/WGOqRO3QHpyuZOBpGT2vhzh3MZJ3INm
	nQ5Xif6iaSOQot0ljwqI5koVZ3sqFaovBQscsXga+aYiwQ+YeG+/epf6tlRt61XFHghng7AmdzQ
	pg7XCnm+bD4Yk4toypjyF3gNg1k=
X-Received: by 2002:a2e:a99e:0:b0:37c:c84a:99b9 with SMTP id
 38308e7fff4ca-386b51021c8mr30790411fa.24.1770589702112; Sun, 08 Feb 2026
 14:28:22 -0800 (PST)
MIME-Version: 1.0
References: <20260207130256.2832815-1-festevam@gmail.com> <3a2f5dad-84de-4afd-baaf-42f7d68cba7b@kwiboo.se>
In-Reply-To: <3a2f5dad-84de-4afd-baaf-42f7d68cba7b@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:28:11 -0300
X-Gm-Features: AZwV_Qg6wsoSm7cqb4mIkth99O4iiDNLzMYIcaRuYUhewzGI5MxNyrD6qDZWrzE
Message-ID: <CAOMZO5BCbcENT3oDF94XVOxbze7O2A-0Aje0+zy1wj+Dm_3k7Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
To: Jonas Karlman <jonas@kwiboo.se>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_142824_497280_D365EFFA 
X-CRM114-Status: GOOD (  12.42  )
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

SGkgSm9uYXMsCgpPbiBTdW4sIEZlYiA4LCAyMDI2IGF0IDc6MjLigK9QTSBKb25hcyBLYXJsbWFu
IDxqb25hc0Brd2lib28uc2U+IHdyb3RlOgoKPiBUaGlzIHNob3VsZCBwcm9iYWJseSBhbHNvIGlu
Y2x1ZGUgdGhlIHJlc2V0IGluZGljZXMgb3Igd2lsbCB0aGF0IGJlIGEKPiBzZXBhcmF0ZSBzZXJp
ZXMgdG8gZXh0ZW5kIHRoaXMgY2xvY2sgYW5kIHJlc2V0IGR0LWJpbmRpbmc/CgpUaGUgY3VycmVu
dCBSVjExMDNCIGRldmljZXRyZWUgSSdtIHVzaW5nIGlzIGEgbWluaW1hbCBvbmUgdG8gcHJvdmlk
ZQptaW5pbWFsIGJvb3Qgc3VwcG9ydCBpbiBib3RoIFUtQm9vdCBhbmQgTGludXguCgpUaGUgY3Vy
cmVudCBzdXBwb3J0ZWQgZGV2aWNlcyBkbyBub3QgbmVlZCB0aGUgcmVzZXQgZHQtYmluZGluZ3Mu
IFdoZW4KbW9yZSBwZXJpcGhlcmFscyBhcmUgYWRkZWQsIHRoZSByZXNldCBkdC1iaW5kaW5ncyB3
aWxsIGJlIGFkZGVkLgoKPiBCZWxvdyBpcyB0aGUgaW5kaWNlcyBkZWNvZGVkIGFuZCByZW51bWJl
cmVkIGZyb20gdmVuZG9yIGtlcm5lbCwgYWxvbmcKPiB3aXRoIHNvbWUgbWFjcm9zIHRoYXQgY2Fu
IHBvc3NpYmxlIGJlIHVzZWQgd2l0aCB0aGUgcmVzZXQgZHJpdmVyIHBhcnQuCj4KPiBHZW5lcmF0
ZWQgYnkgYSBzbWFsbCBzY3JpcHQgSSB1c2VkIHdpdGggcmVzZXRzIGZvciBlLmcuIHJrMzUyOC4K
ClRoYW5rcyBhIGxvdCBmb3Igc2hhcmluZyB0aGUgcmVzZXQgaW5kaWNlcy4gSSBhcHByZWNpYXRl
IGl0LgoKV2lsbCB1c2UgdGhlbSB3aGVuIGV4dGVuZGluZyBzdXBwb3J0IGZvciB0aGUgUlYxMTAz
IEIuCgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

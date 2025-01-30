Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35711C0218A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 10:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWK6MdDRJh1jofTH8hp4xb0eh97TlNMMZoGIj/Sf3pY=; b=wZzzB8p+WP0uIL
	Q5/K1b2XRI28vdK3aDKV6iUjGYNcroP4J8IwhxGwGFOpnYFDuOoW4XoLobPtpZDD8Mp7137NrAFkl
	3TBr/0QFz5UBbBY4FWsmIgLctXVtUw9Ry3tsEEIKZntW1oBWUBaB9WBSm0P3fBuCDF54tE0TJ0nue
	psVpXXE743ZjS2Kejvdwfl8INs6sbKyN3ScbtqkP5SXVnEFtCe4TkTRyCX6n13bFgxAnanBfbedcg
	HpytqAi68S/ckdKhLtXKB0jdUnllnqeeoqcxgyaMXEJ8I8sB+NlQd4zLC0xBxLc+WUpx7eNFTzNfB
	YcVQZc24tv79AuweEJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdRiO-00000008cOK-2TmT;
	Thu, 30 Jan 2025 10:24:04 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdRh3-00000008bsl-0ECX;
	Thu, 30 Jan 2025 10:22:42 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ab2b29dfc65so106186566b.1;
        Thu, 30 Jan 2025 02:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738232559; x=1738837359; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4+bp2b1ViozWo8E/9w0GJxuWnjNWQF/PE+csQWrg+E=;
        b=dD0MDZOoC+RfgtWAUADT/fAust/DmlAOx0XchBxMiWdStVU6+UX0tYzZvPpPHXoLtO
         SG83C1SpYbFD1issiP1tHW0DIe9+c7fA7j9Emn7BDYwpRp8hCzFUMdOZAnjgrqiuQwx1
         sD6biQMLok+qY/iEd7kxeh2mPdHD4eJUSlzD9dNWsuFgdfqWLv/TpRmxHgGw7DFBAOHU
         KevxzKtuSnRUgl9Acfm9kiVqjAQIWAWH+j/GwX3RGRNDC0Zqrdr3ujodOHRnq5ETRANM
         oVxlCi/t424XCx1gTmm0ouH/qQZYRIGooaaGkx5l6zbmvd+0KKVAyPhVZ2RAvBNhu/ih
         n5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738232559; x=1738837359;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4+bp2b1ViozWo8E/9w0GJxuWnjNWQF/PE+csQWrg+E=;
        b=Pk8yDyxayfY0sqWHzQoW6x9h37A/o1T3AG6RtX4y7aZrBXo78jq57qIG9OZ2j2e9JO
         snT43v/WYSC08RTfDDPM5LInZVuPEnIq7k1lZqG8gZxbLm8lj0nA+Kfic24uR87o70SF
         mlRjArweUklLtRulhcTECpBS+NPQQAQFcxvBADyZgc3xFKlRumi60n27INE5G5kMN8Ya
         WyIdPdYVNsR92fmnyxEh0daMDNh6W323mZye0TZJteLaJV7QIkQ4WirNiJtDAhJgwj0H
         Wx+pim248bzT7iFruegX4Ag3IgDGbnnOYkf7ybt8bZHvBMIKHk/xl0L6u706iX0S3WmB
         UkNw==
X-Forwarded-Encrypted: i=1; AJvYcCUC1ydL4/2Pw4ornm8rpj9ntqPe/h8kMndQMQXvJ0Z8dqE1m+V2rNEDMatMSlkrYbw7ceGx/oXmrEtqVqJsV2gE@lists.infradead.org, AJvYcCW3tjJR545gl0ylRUDl7SXZrG6H/aDUxVm9sI9L+1N7CN4mAr454fXfD9z7p63EIDb6jiU3VQLOMWOhOOXUKvg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+5vN/w8bVuLQy1pCgvaI8jBTHQw1lnwbXF7ePiRkIjeI96Uc2
	c2jJzXV5n/2McpwlAjPV0+PV0mikTXGjH3ufEfDGgnBGBpMl9Dpc
X-Gm-Gg: ASbGncvlmlK3j+5PUmbjo/Vz077rgfuKs4WaDEgob9+D7l73JpGLVnKwB7QQcjbQPjI
	94/aV0PNUtjRF1sRksw2kxnqS++pvXe+w0KuyVl4ZSBYfC1Vq265N++cCrFdpQ4IUWAYI18OLEd
	Ps/os2wWoy9Iv42g0LoTjQRECmULFSE7zkqS3ZzMDt6Nk+j4jGiE6nqZdbNRhOWyEPwdisGlMIJ
	U+T4XSP9IaftfBV4c8iyVqiqsb7bU1EjgVTuLg94Dsa/YQDRg9+/Xn2SK0pAMroEnXj8ennaSaz
	4+eZ2g9/vgA3vrhRehcBaFdCY6QPjxVMnAfjB2D06OOJ/tFYG+D8poONWvZhXIrveTRSoy0N
X-Google-Smtp-Source: AGHT+IH6fi2JsJCdV1ZJxiNR7fFgOilQuJF8BsN86Z3dOweQ3P5ERklBaSx+eh4geAQyzNLMc51j1Q==
X-Received: by 2002:a17:907:9704:b0:aae:bd4c:2683 with SMTP id a640c23a62f3a-ab6cfe12da4mr678404366b.49.1738232558971;
        Thu, 30 Jan 2025 02:22:38 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47a7ffasm96854766b.7.2025.01.30.02.22.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jan 2025 02:22:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <bd5abd7f1e29853729c1c9b57b62e2e4a9524e6d.camel@ndufresne.ca>
Date: Thu, 30 Jan 2025 11:22:26 +0100
Message-Id: <171D4C9F-AA88-4DC5-87F2-142D642ECACE@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
 <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
 <bd5abd7f1e29853729c1c9b57b62e2e4a9524e6d.camel@ndufresne.ca>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_022241_094867_1C0724B0 
X-CRM114-Status: GOOD (  12.68  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNA
bmR1ZnJlc25lLmNhPiB3IGRuaXUgMjkgc3R5IDIwMjUsIG8gZ29kei4gMTc6MjA6Cj4gCj4gSGkg
UGlvdHIsCj4gCj4gTGUgbWVyY3JlZGkgMjkgamFudmllciAyMDI1IMOgIDE1OjQ4ICswMTAwLCBQ
aW90ciBPbmlzemN6dWsgYSDDqWNyaXQgOgo+PiAKPiAKPiBBcyBmb3IgbW9zdCBjb2RlYywgd2hl
biB3b3JraW5nIHdpdGggbGFyZ2VyIGdyb3VwIG9mIGRldmVsb3BwZXJzLCBpdHMgYmV0dGVyIHRv
Cj4gc3RhcnQgd2l0aCBnZXR0aW5nIHRoZSBJVFUgY29uZm9ybWFuY2UgdGVzdHMgcGFzc2luZy4g
T25jZSB3ZSByZWFjaCBhbiBleGNlbGxhbnQKPiBzY29yZSB0aGVuIHdlIGNhbiBzdGFydCBsb29r
aW5nIGF0IHNwZWNpZmljIHN0cmVhbXMuIFRoZSBiZW5lZml0IGlzIHRoYXQgSVRVCj4gY29uZm9y
bWFuY2UgY2FuIGJlIHJ1biB3aXRoIGZsdXN0ZXIgd2hpY2ggcmVtb3ZlcyBhIGxvdCBvZiBwb3Nz
aWJsZSBodW1hbgo+IGVycm9ycy4KPiAKCkFoIGluZGVlZC4KSVRVIGNvbmZvcm1hbmNlIGFwcHJv
YWNoIGlzIGZvciBzdXJlIGJlc3Qgb25lLgoKQnkgYXNraW5nIGZvciB3YXkvdG9vbCB0byBhbmFs
eXNlIG9mIHBsYXlpbmcvZmFpbGluZyBzYW1wbGVzIEkgd2FzIGp1c3QgY3VyaW91czogaXMgdGhl
cmUgYW55IHBhdHRlcm4gaGVyZSAoZS5nLiBzcGVjaWZpYyBlbmNvZGluZyBtb2RlOyBldGMpLgpJ
IGFzc3VtZWQgLSBpdCB0aGVyZSBpcyAtIHRoaXMgbWlnaHQgYmUgZ29vZCBwb2ludGVyIGluIG5h
cnJvd2luZyBkZWNvZGVyIGNvZGUgd2hpY2ggbmVlZHMgZml4aW5nLiAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

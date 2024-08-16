Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9677C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 08:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQSfsKcP3GUiUUZd8zz5YFV59n15rRDNr0uyBbvm0FU=; b=doI1PxQCy80G4+
	ropVu8ph78KWDOwOxhDWRaOxK/OlDKETF+B1ixcsKIhyTjG2sFkDoBY5b3xkHjYm7xrmNL5S3D5li
	qN46bZoBCrPmFt00Zeu4KQ6bBa+9FTflFGA3v0Kj21gc1fmW8eCqAipvkcHuRTlXpKc6VFVumkIIn
	PEyak/CtOH05+rjo7znn6IhYgLpVnPAeUz7oD+2wD4iqZGjYM87uqCdPYqU2bgCpXjbd0uF3Hycz9
	CXZIvfjOhceueRrIR57vmy+51lPOiHmsjMfG9T13MAQKPqyURE73Y/k0be7XGYfJTRsN/h4ru6pzn
	idu8YJRKlPgrCbS59RAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1servn-0000000CDMJ-0Fw0;
	Fri, 16 Aug 2024 08:03:31 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1servj-0000000CDKn-1QPH
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 08:03:28 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6b2e6e7ad28so1329067b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 01:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723795405; x=1724400205; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VR26oQJGUDskARtTbfBCHHqlsRCVMlxxfj+UcLee/2U=;
        b=jXcdEva0H3XRpKGQQ7Cc8p2WGmiT3w7n0Q2+WTs8KZLSxFp5y89YWuzWxtHK0ev6/A
         0DjtokZrUXM0dM84+jUYO4Pss6x1QGy+Y5bt1AM6iIDESD3Jwl1vvXss2qy1QOKlk+fs
         ixACIhvobAUCFrrsb80VcWwFotFeBfiaGVIhRVG6oilHGklO6Loysp+20BA8W5q64Ejv
         5JRvS4IFZBMozkEbauMaRvLfQ0HyEs5vgSRbX99ZuqYqBvz3Ff2CwU8IeqFbXTXZfnFg
         gc9dPuAnbwD02rbVSyrqjczF/STApy/I2P2Z+7A0YoYVyLC9ni8KDt9TvAmEeONH1k86
         8sIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723795405; x=1724400205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VR26oQJGUDskARtTbfBCHHqlsRCVMlxxfj+UcLee/2U=;
        b=u5TFeRHl6hVMj+lGAWOh0Npo8hiG/fiOAyQ1PYxA/M/VtgeFwXhr+U+eCGwWbZJ7Ss
         ZKS7n8kym6cWiz3IR/Gzhix8E/YrU5APjbge95V28ZcusSC5+mVoBViv6R5WrwX2P9q5
         cJHvqG/D7rRM3wni0S8r7Sc4+fR57xpV0SaRSplTKkk71RmHj5WqoaKb9nVBximPgBy/
         Q8rhMQxBMHcIQP2NJ1gweAYgb9KSBXmdLrKysQQUqtdvfrySqLlnCjfHzbjXN+2Z9/rT
         zfFfFbNg/MyhPCei2MpOGJgvERX8wnHEzUM/7iISD8kMeWNmZUwlJUgegWUCm/AFwdeE
         Iocg==
X-Forwarded-Encrypted: i=1; AJvYcCW8w934AIq4nhZlSaJvMtNZuIDltR2NvS617hTiSRJm84d7Gs36I0ua7DLXKjUBasNZGQanerH7dI3oUtEjymqQOXUdWYGTL5hEC2fCC5VnTiz/
X-Gm-Message-State: AOJu0YxTi6vorbjvFst47DCm4+YEqCtfsy9eHPZPfVZBV7LJb2MIyX4/
	ahxwvti93vG4bBeFEMwnGv4QVEikhDBAgqTzutnfhIxNkGaBz8EM6U7KXyorH/uq0ssbUO2Pmfi
	TohI+POhiWrmAcqj9XIR/bmzS2AyuahRO/p2vVA==
X-Google-Smtp-Source: AGHT+IFPXaGhgnB1O38F+OQxY8qufXLZWG9hoZgdNA43kJdPxtWrN+zVXWCoEb1vrisLWBNqibFhFqz0HaYdqSO/ADM=
X-Received: by 2002:a05:690c:397:b0:6af:a6aa:2b59 with SMTP id
 00721157ae682-6b1ee4e050emr14403077b3.5.1723795405222; Fri, 16 Aug 2024
 01:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240810211438.286441-1-heiko@sntech.de> <20240810211438.286441-2-heiko@sntech.de>
 <172340442666.7060.12608274118090495917.b4-ty@linaro.org> <12584345.NizCu2HIMA@diego>
In-Reply-To: <12584345.NizCu2HIMA@diego>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 16 Aug 2024 10:03:14 +0200
Message-ID: <CACMJSesFVdJDkJXyC4o5NZxeDB8kkg6Ks0_x6G1Bywr+_ONZVw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	ukleinek@debian.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_010327_400759_A65F097D 
X-CRM114-Status: GOOD (  13.80  )
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

T24gVGh1LCAxNSBBdWcgMjAyNCBhdCAxODo0OCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEFtIFNvbm50YWcsIDExLiBBdWd1c3QgMjAyNCwgMjE6
Mjc6MTMgQ0VTVCBzY2hyaWViIEJhcnRvc3ogR29sYXN6ZXdza2k6Cj4gPiBGcm9tOiBCYXJ0b3N6
IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPgo+ID4KPiA+
IE9uIFNhdCwgMTAgQXVnIDIwMjQgMjM6MTQ6MzcgKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3Rl
Ogo+ID4gPiBUaGUgZ3QyNGMwNGEgaXMganVzdCB5ZXQgYW5vdGhlciAyNDA0IGNvbXBhdGlibGUg
ZWVwcm9tLCBhbmQgZG9lcyBub3QKPiA+ID4gZm9sbG93IHRoZSBnZW5lcmljIG5hbWluZyBtYXRj
aGluZywgc28gYWRkIGEgc2VwYXJhdGUgY29tcGF0aWJsZSBmb3IgaXQuCj4gPiA+Cj4gPiA+Cj4g
Pgo+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4KPiA+IFsxLzJdIGR0LWJpbmRpbmdzOiBlZXByb206
IGF0MjQ6IEFkZCBjb21wYXRpYmxlIGZvciBHaWFudGVjIEdUMjRDMDRBCj4gPiAgICAgICBjb21t
aXQ6IGE4MjVkZWEyY2QyN2EzMGU0OTgxNmYxOGI3YmMxNjU0NWQ1ZjBmODkKPgo+IGp1c3QgZm9y
IG15IHVuZGVyc3RhbmRpbmcsIHdoZXJlIGlzIHRoaXMgY29tbWl0IGxpdmluZyBub3c/Cj4KPiBC
ZWNhdXNlIGxpbnV4IG5leHQgc2VlbXMgdG8ga25vdyBpdCBbMF0sIGJ1dCBhbHNvIHNheXMgdGhh
dAo+ICJOb3RpY2U6IHRoaXMgb2JqZWN0IGlzIG5vdCByZWFjaGFibGUgZnJvbSBhbnkgYnJhbmNo
LiIKPgo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+IFswXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC8/aWQ9YTgy
NWRlYTJjZDI3YTMwZTQ5ODE2ZjE4YjdiYzE2NTQ1ZDVmMGY4OQo+Cj4KCkl0IGxpdmVzIGluIG15
IGtlcm5lbC5vcmcgdHJlZVsxXS4gWW91IGNhbiBnZXQgdGhhdCBpbmZvcm1hdGlvbiBmcm9tCnRo
ZSBNQUlOVEFJTkVSUyBmaWxlLgoKQmFydAoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2JyZ2wvbGludXguZ2l0L2xvZy8/aD1hdDI0L2Zvci1uZXh0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

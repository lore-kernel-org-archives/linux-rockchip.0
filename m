Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D4BBC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 08:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yqabpbwp8S+YW8w9Bc5Vi/9amQNGt4spDMSF9iTukAs=; b=yxGTPkfZsQI8vI
	pvoifSrBAwnmC9cvvPWTVlEqC4MNDfA6ECaQELMX/+A8lalLTOSQa0/J8VGJaKTlwbTIYOxWFACGA
	Fp1dS3BW6cH9xQMM8B1QzJAsiCZ8gALLZyhtLUtavNCfivAOA4C9N29Vxw8QCXoghz9YxhW1Q1bKo
	T3OJutchsuEHMJ4VjAjKgGz0G/koI8BEI28RCO+zhDIeRUJejpFsBxj9d1KlWUxJmExVNj5SnA11+
	teBU3INRb82Cis1WnMn2nYdKnklUWVfsJa1m9iB53N8nc8+RT72PVemahtbwfdreRTCt3FN/4/Uil
	vg1Gwvl5C4goIJFlApSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWcX-00F5Bh-0X;
	Fri, 08 Dec 2023 08:54:05 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWcT-00F5Ae-0M
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 08:54:02 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54bfa9b3ffaso2638039a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 00:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1702025639; x=1702630439; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZznzSpsp3ftowq6O5Q/Cg5o9GO0Eay4RAUCcfPR/vuE=;
        b=SYxmw7/k85bPmBgSY29JoCTNgsqeC7BjjXZAc8DAk6q6UQZgfLe9wtqf0VtRQj+D8x
         vYT+Nwa6NHFVsUVbaNCjFoPvlL6AxXRIxtUIOoEWlbsQg21sZnXx4rezgxH7f3h12Zld
         MDHtWbriQZmmaFXCxj7Ri9HuwrzJUVBVComccOytgUUucO3TeSZOwxnl8hEPCtb5sfDN
         hl9Q2ZA41Hk+K323dGkVgK9/0EFXEn2L6kBgwuOxGLJR8bCFaQFEDqHl0buSsa8napZj
         xohY2BH3UXA7D4xLEmymmQUJlDS1Pl4YG3/u7N1Fh0BnGXPUQWgd+uRMOURgcCtQxsZU
         O5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702025639; x=1702630439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZznzSpsp3ftowq6O5Q/Cg5o9GO0Eay4RAUCcfPR/vuE=;
        b=VaaAjrt+/hIKcpY3TZ8UPaaFs+bF0zKAfjvw5hhzkrtLnXzo6HRoe7ZxdJ3j4QDJMY
         MENgY0leeoYae36hO6wQrhSzAAUot5p9xi3c8Z2mK3jWj+FDWjJW5k0JD867tQ/E1m6O
         MkIjVbot1ZVfgn5uuToyZSvDg42Ewh2F9BwCyvzKAzA/G5ZLudSAB1SqrKXq7/0ej1uD
         UhGniARfV3myALZ7ZbDvgyxtn5fdc/vEFNfApQgYU+SnlyToA6M+6SiHZ84A82Cq1rUW
         Q1XrYKNNmGNULcC7ngWunq1i0Fgt2R7qkNbqE80ZTomJtpT5KzPtXuUEnIHbtjKDtHRe
         X90A==
X-Gm-Message-State: AOJu0YxUEwJjNCoOfyR1dwAojforHSRsAh9caIrMm0J4JZeZh8DsbJAp
	tr1yO2DCw8mSj9B32lLht3NwWabpdKV9r4nOOP2AMw==
X-Google-Smtp-Source: AGHT+IG6wWYNBrrrHbbpkx0reOlvqmH2SLrfVA+FsX8/gXSUGmBCwnqS4MaSnlIwYSWUKYoWn9oTxFidRIiBD1QBaxM=
X-Received: by 2002:a50:a6d6:0:b0:54c:4837:9a9f with SMTP id
 f22-20020a50a6d6000000b0054c48379a9fmr2315391edc.70.1702025638968; Fri, 08
 Dec 2023 00:53:58 -0800 (PST)
MIME-Version: 1.0
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
 <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org> <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
 <5e11553952c02ad20591992be4284bbd@manjaro.org> <95cc7716-ba01-e239-e7c0-eba0b7da7955@collabora.com>
In-Reply-To: <95cc7716-ba01-e239-e7c0-eba0b7da7955@collabora.com>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Fri, 8 Dec 2023 16:53:47 +0800
Message-ID: <CAMpZ1qENxWsDnvke4jMvK9tYpta3dThHUHxjDWO-u2JV+8dZdQ@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>, 
	Benjamin Bara <bbara93@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_005401_361851_507EECAD 
X-CRM114-Status: GOOD (  24.96  )
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

T24gRnJpLCBEZWMgOCwgMjAyMyBhdCAxMjowMOKAr0FNIERtaXRyeSBPc2lwZW5rbwo8ZG1pdHJ5
Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gMTIvNy8yMyAxNzoxMCwgRHJh
Z2FuIFNpbWljIHdyb3RlOgo+ID4gT24gMjAyMy0xMi0wNyAxMDoyNSwgSmVuc2VuIEh1YW5nIHdy
b3RlOgo+ID4+IE9uIFRodSwgRGVjIDcsIDIwMjMgYXQgNDozN+KAr1BNIERyYWdhbiBTaW1pYyA8
ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiA+Pj4KPiA+Pj4gT24gMjAyMy0xMi0wNyAwOToy
MSwgSmVuc2VuIEh1YW5nIHdyb3RlOgo+ID4+PiA+IFBvc3NpYmxlIGRlYWRsb2NrIHNjZW5hcmlv
IChvbiByZWJvb3QpOgo+ID4+PiA+IHJrM3hfaTJjX3hmZXJfY29tbW9uKHBvbGxpbmcpCj4gPj4+
ID4gICAgIC0+IHJrM3hfaTJjX3dhaXRfeGZlcl9wb2xsKCkKPiA+Pj4gPiAgICAgICAgIC0+IHJr
M3hfaTJjX2lycSgwLCBpMmMpOwo+ID4+PiA+ICAgICAgICAgICAgIC0tPiBzcGluX2xvY2soJmky
Yy0+bG9jayk7Cj4gPj4+ID4gICAgICAgICAgICAgLi4uCj4gPj4+ID4gICAgICAgICA8cmszeCBp
MmMgaW50ZXJydXB0Pgo+ID4+PiA+ICAgICAgICAgLT4gcmszeF9pMmNfaXJxKDAsIGkyYyk7Cj4g
Pj4+ID4gICAgICAgICAgICAgLS0+IHNwaW5fbG9jaygmaTJjLT5sb2NrKTsgKGRlYWRsb2NrIGhl
cmUpCj4gPj4+ID4KPiA+Pj4gPiBTdG9yZSB0aGUgSVJRIG51bWJlciBhbmQgZGlzYWJsZS9lbmFi
bGUgaXQgYXJvdW5kIHRoZSBwb2xsaW5nCj4gPj4+IHRyYW5zZmVyLgo+ID4+PiA+IFRoaXMgcGF0
Y2ggaGFzIGJlZW4gdGVzdGVkIG9uIE5hbm9QQy1UNC4KPiA+Pj4KPiA+Pj4gSW4gY2FzZSB5b3Ug
aGF2ZW4ndCBhbHJlYWR5IHNlZW4gdGhlIHJlbGF0ZWQgZGlzY3Vzc2lvbiBsaW5rZWQgYmVsb3cs
Cj4gPj4+IHBsZWFzZSBoYXZlIGEgbG9vay4gIEkgYWxzbyBhZGRlZCBtb3JlIHBlb3BsZSB0byB0
aGUgbGlzdCBvZiByZWNpcGllbnRzLAo+ID4+PiBpbiBhbiBhdHRlbXB0IHRvIG1ha2UgZXZlcnlv
bmUgYXdhcmUgb2YgdGhlIGRpZmZlcmVudCBhcHByb2FjaGVzIHRvCj4gPj4+IHNvbHZpbmcgdGhp
cyBpc3N1ZS4KPiA+Pj4KPiA+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzY1NTE3N2Y0
LjA1MGEwMjIwLmQ4NWM5LjNiYTBAbXguZ29vZ2xlLmNvbS9ULyNtNmZjOWMyMTQ0NTJmZWM2Njgx
ODQzZTdmNDU1OTc4YzM1YzZmNmM4Ygo+ID4+Cj4gPj4gVGhhbmsgeW91IGZvciBwcm92aWRpbmcg
dGhlIGluZm9ybWF0aW9uLiBJIGhhZG4ndCBzZWVuIHRoaXMgbGluayBiZWZvcmUuCj4gPj4gQWZ0
ZXIgY2FyZWZ1bGx5IGxvb2tpbmcgaW50byB0aGUgcmVsYXRlZCBkaXNjdXNzaW9uLCBpdCBhcHBl
YXJzIHRoYXQKPiA+PiBEbWl0cnkgT3NpcGVua28gaXMgYWxyZWFkeSB3b3JraW5nIG9uIGEgc3Vp
dGFibGUgcGF0Y2guIFRvIGF2b2lkCj4gPj4gZHVwbGljYXRpb24KPiA+PiBvciBjb25mbGljdHMs
IG15IHBhdGNoIGNhbiBiZSBkaXNjYXJkZWQuCj4gPgo+ID4gVGhhbmsgeW91IGZvciByZXNwb25k
aW5nIHNvIHF1aWNrbHkuICBQZXJoYXBzIGl0IHdvdWxkIGJlIGJlc3QgdG8gaGVhcgo+ID4gZnJv
bSBEbWl0cnkgYXMgd2VsbCwgYmVmb3JlIGRpc2NhcmRpbmcgYW55dGhpbmcuICBJdCdzIGJlZW4g
YSB3aGlsZQo+ID4gc2luY2UgRG1pdHJ5IHdyb3RlIGFib3V0IHdvcmtpbmcgb24gdGhlIHBhdGNo
LCBzbyBoZSBtaWdodCBoYXZlCj4gPiBhYmFuZG9uZWQgaXQuCj4KPiBUaGlzIHBhdGNoIGlzIG9r
YXkuIEluIGdlbmVyYWwsIHdpbGwgYmUgYmV0dGVyIHRvIGhhdmUgSVJRIGRpc2FibGVkIGJ5Cj4g
ZGVmYXVsdCBsaWtlIEkgZGlkIGluIG15IHZhcmlhbnQsIGl0IHNob3VsZCBhbGxvdyB0byByZW1v
dmUgdGhlIHNwaW5sb2NrCj4gZW50aXJlbHkuIE9mIGNvdXJzZSB0aGlzIGFsc28gY2FuIGJlIGRv
bmUgbGF0ZXIgb24gaW4gYSBmb2xsb3cgdXAKPiBwYXRjaGVzLiBKZW5zZW4sIGZlZWwgZnJlZSB0
byB1c2UgbXkgdmFyaWFudCBvZiB0aGUgcGF0Y2gsIGFkZCBteQo+IHMtby1iK2NvLWRldmVsb3Bl
ZCB0YWdzIHRvIHRoZSBjb21taXQgbXNnIGlmIHlvdSdsbCBkby4gT3RoZXJ3aXNlIEknbGwKPiBi
ZSBhYmxlIHRvIHNlbmQgbXkgcGF0Y2ggbmV4dCB3ZWVrLgoKVGhhbmsgeW91IGZvciB0aGUgc3Vn
Z2VzdGlvbi4gSSd2ZSB1cGRhdGVkIHRoZSBwYXRjaCB0byB5b3VyIHZhcmlhbnQsIGFuZAphcyBj
b25maXJtZWQgYnkgb3RoZXJzLCByZWJvb3RzIGFyZSBmdW5jdGlvbmluZyBjb3JyZWN0bHkuIEkg
bWVhc3VyZWQgdGhlCm92ZXJoZWFkIG9mIGVuYWJsZV9pcnEvZGlzYWJsZV9pcnEoKSBieSBjYWxj
dWxhdGluZyBrdGltZSBpbiB0aGUKdXBkYXRlZCB2ZXJzaW9uLAphbmQgb24gcmszMzk5LCB0aGUg
bWluaW11bSBkZWx0YSBJIG9ic2VydmVkIHdhcyAyOTEvODc1IG5zLiBUaGlzIGV4dHJhCmNvc3Qg
bWF5IGltcGFjdCBtb3N0IGludGVycnVwdC1iYXNlZCB0cmFuc2ZlcnMuIFRoZXJlZm9yZSwgSSBw
ZXJzb25hbGx5IGxlYW4KdG93YXJkcyB0aGUgY3VycmVudCB2MiBwYXRjaCBhbmQgaGFuZGxlIHRo
ZSBzcGlubG9jayBhbmQgaXJxc2F2ZS9yZXN0b3JlIGluCmEgZm9sbG93IHVwIHBhdGNoLiBJJ2Qg
bGlrZSB0byBoZWFyIGV2ZXJ5b25lJ3MgdGhvdWdodHMgb24gdGhpcy4KCi0tCkJlc3QgcmVnYXJk
cywKSmVuc2VuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

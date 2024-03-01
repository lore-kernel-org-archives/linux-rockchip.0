Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F9AC5478C
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 08:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqlvrcG94FoKLSt+JsVgmgzJy/mVnLlDdVqSHZdil78=; b=y882VcigjNpFpz
	lR0EIRMkXzKlHL9pOR3/2Y2TA3SyONZViw+Tsyy2oiXw1R2YWUh2h4o/z6V6RKK2eTcA73h8BTr5q
	tqJhhEi5qqVAhyfMdNxD971gT/pb8S0K9qQhiBS/E4YSVeiCxltCSd1Kd7SXMm6cq9017l5uP6Ewp
	3Z/yIl3FhyNNrgG9+6qVI+V/JFKxDS0LvxnKUSoiOfWxb27XYSQEKhM5vrZxZC641lVJUToJfTFW4
	skXn6I+ntQvZb1jKb0t5oZA4es0mA0mb4IPruHtKQafFOz/x0kukgxzmmkPPBulBS1iqrv0+PUGEy
	f5pxdGAyvHRahAN/tTrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfyHm-0000000GubX-29sk;
	Fri, 01 Mar 2024 08:30:30 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfyHj-0000000GuZy-0cIv;
	Fri, 01 Mar 2024 08:30:28 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a443d2b78caso241872766b.1;
        Fri, 01 Mar 2024 00:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709281825; x=1709886625; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qV7g20c61SLdcO3hJdJz8nvxom42Edf9pzms73nygYQ=;
        b=HrfXdKngvBZXTjADNc92jOTG8lVJNdb/m8xK2JAiZIcv7Tp1QYG3Np1Iyf0qx7tJMt
         xHYNB74rsCnwrY54s4bVPewem1F/9Ij7V9QOGLaab2IQlTLZXxKhB3ZomQG3n3szq7JW
         8bl0gHOv58Zr48krVgXWPgDgTDN1ZHGV7AdgsyepatIiSTCAtvm9/2nU4MogNojbTQqq
         jV4G0/F20gE34rqJUl+LTBTVNre/O3bNUoPNTVUXop3pU9c1gJBEj0q8jEuldt8IeYBb
         eB1uNzGmyDltgMNum1DFSpPQ5OyN9HCOUww+bkuzs7Po19xfFscHBvYEt0kkWsGTFDyO
         2Z8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709281825; x=1709886625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qV7g20c61SLdcO3hJdJz8nvxom42Edf9pzms73nygYQ=;
        b=SwQEWNrXGuCHyXjtnk02FdlzHnDylVoP0S0gJ1tBogKJprtJEsSo2fkn6tcF3D14hn
         YpwjS8nYKQkxnxd1IEQZLXKqsNACvsU4DqrCnGTViXP8F3pwV1uE+pHxpqFNI7NDaes+
         0XkDJ/+q8X37otCRQ49o5jHktRirR0GndHnZQ7IJhkmyDhsNRFX4ia0WVxPBIXW1ysez
         8Z3AXFkNfGFznKskTX6ErfSicG1NgWGN5E274OM74mtVzmWf4pOkPsTV2HWEg/oYw7o1
         Tts1cdZDTfoEG1+sfdmsUSbUo4hkwcJI7g2RD38XWCUZoRfR5vy7NnaioZ8mDZuAIVBb
         +2aA==
X-Forwarded-Encrypted: i=1; AJvYcCWoTjQBiKnrEyhJi8v3Ac38DsgT9VIuI4uWbzOduSA1XbcjXbIaOwd2fE0eK+TQDKtFV1bxh3+M5/uK0c0OfTmgim//KOEec140fmigt1bQiXEPsfjvXZUY99Ubgn4KXPoG0zoFhfK5jTEMzggLDHIoMkZAXtupA2U=
X-Gm-Message-State: AOJu0YxlWAUaA1CzX5+OSFS22MRv6DmZLDEgKQQB2YPyMRGTAi5mNtue
	O3rRAcKpz+rfw+dEjlL9GnhLsDRAQh/UqYuLpJe/8FXAhDVhy+QYMdRTTGbacOd0J2hPoXDvL68
	cc08f84czdzC0KCugHzvtjm4e34g=
X-Google-Smtp-Source: AGHT+IE+14OaOL2S1nEWF9pejEJNM+Y86qN34hhKNmuQ+PcOJOR+7Ftc71QqTn1J1VkQogD0UG7NN6abk3ewaAcfTsw=
X-Received: by 2002:a17:906:5ad0:b0:a43:900a:31c5 with SMTP id
 x16-20020a1709065ad000b00a43900a31c5mr756052ejs.4.1709281825127; Fri, 01 Mar
 2024 00:30:25 -0800 (PST)
MIME-Version: 1.0
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com> <823379825559bb76088c31f44f998dd3@manjaro.org>
 <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
 <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org> <b16f1d40549554598a3658679ceba9bf@manjaro.org>
In-Reply-To: <b16f1d40549554598a3658679ceba9bf@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 1 Mar 2024 12:30:14 +0400
Message-ID: <CABjd4YwAq28C6gKTJKJdZQ_Fw1oEjR475oTS96xEXRj=XQ5_pg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_003027_205708_A26DA960 
X-CRM114-Status: GOOD (  19.42  )
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

T24gRnJpLCBNYXIgMSwgMjAyNCBhdCAxMjoyNeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IE9uIDIwMjQtMDMtMDEgMDc6MTcsIERyYWdhbiBTaW1pYyB3
cm90ZToKPiA+IE9uIDIwMjQtMDMtMDEgMDY6MjEsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+
IE9uIEZyaSwgTWFyIDEsIDIwMjQgYXQgMToyNeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPgo+ID4+IHdyb3RlOgo+ID4+PiBPbiAyMDI0LTAyLTI5IDIwOjI2LCBBbGV4ZXkg
Q2hhcmtvdiB3cm90ZToKPiA+Pj4gPiBUaGlzIGxpbmtzIHRoZSBQV00gZmFuIG9uIFJhZHhhIFJv
Y2sgNUIgYXMgYW4gYWN0aXZlIGNvb2xpbmcgZGV2aWNlCj4gPj4+ID4gbWFuYWdlZCBhdXRvbWF0
aWNhbGx5IGJ5IHRoZSB0aGVybWFsIHN1YnN5c3RlbSwgd2l0aCBhIHRhcmdldCBTb0MKPiA+Pj4g
PiB0ZW1wZXJhdHVyZSBvZiA2NUMgYW5kIGEgbWluaW11bS1zcGluIGludGVydmFsIGZyb20gNTVD
IHRvIDY1QyB0bwo+ID4+PiA+IGVuc3VyZSBhaXJmbG93IHdoZW4gdGhlIHN5c3RlbSBnZXRzIHdh
cm0KPiA+Pj4KPiA+Pj4gSSdkIHN1Z2dlc3QgdGhhdCB5b3UgcmVwbGFjZSAiYXV0b21hdGljIGFj
dGl2ZSBjb29saW5nIiB3aXRoICJhY3RpdmUKPiA+Pj4gY29vbGluZyIgaW4gdGhlIHBhdGNoIHN1
YmplY3QuICBJIGtub3csIGl0IG1heSBzZWVtIGxpa2UgbW9yZSBvZiB0aGUKPiA+Pj4gdW5uZWNl
c3Nhcnkgbml0cGlja2luZywgOikgYnV0IEkgaG9wZSB5b3UnbGwgYWdyZWUgdGhhdCAiYXV0b21h
dGljIgo+ID4+PiBpcyBhY3R1YWxseSByZWR1bmRhbnQgdGhlcmUuICBJdCB3b3VsZCBhbHNvIG1h
a2UgdGhlIHBhdGNoIHN1YmplY3QKPiA+Pj4gYSBiaXQgc2hvcnRlci4KPiA+Pj4KPiA+Pj4gQW5v
dGhlciBvcHRpb24gd291bGQgYmUgdG8gcmVwbGFjZSAiYXV0b21hdGljIGFjdGl2ZSBjb29saW5n
IiB3aXRoCj4gPj4+ICJhdXRvbWF0aWMgZmFuIGNvbnRyb2wiLCB3aGljaCBtYXkgYWN0dWFsbHkg
YmUgYSBiZXR0ZXIgY2hvaWNlLgo+ID4+PiBJJ2QgYmUgaGFwcHkgd2l0aCB3aGljaGV2ZXIgb25l
IHlvdSBwcmVmZXIuIDopCj4gPj4KPiA+PiBTb3VuZHMgZ29vZCB0byBtZSwgdGhhbmtzIQo+ID4K
PiA+IEknbSBnbGFkIHRoYXQgeW91IGxpa2UgaXQuIDopCj4gPgo+ID4+PiBPdGhlcndpc2UsIHBs
ZWFzZSBmZWVsIGZyZWUgdG8gYWRkOgo+ID4+Pgo+ID4+PiBSZXZpZXdlZC1ieTogRHJhZ2FuIFNp
bWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPj4KPiA+PiBUaGFuayB5b3UgRHJhZ2FuLCBtdWNo
IGFwcHJlY2lhdGVkIQo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgcHV0dGluZyB1cCB3aXRoIG15IG5p
dHBpY2tpbmcuIDopCj4KPiBQZXJoYXBzIHRoZSBmb2xsb3dpbmcgdGFnIHdvdWxkIGFsc28gYmUg
ZGVzZXJ2ZWQgZm9yIHRoaXMgcGF0Y2g6Cj4KPiBIZWxwZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNp
bWljQG1hbmphcm8ub3JnPgo+Cj4gSSBob3BlIHlvdSBhZ3JlZS4gOikKCkRlZmluaXRlbHkhIFRo
YW5rcyBhZ2FpbiBmb3IgeW91ciBmZWVkYmFjayBhbmQgY29udHJpYnV0aW9uIQoKQmVzdCByZWdh
cmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

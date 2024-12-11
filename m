Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E07E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 19:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOxqDFtt70GyTpGF0Mmx/B+nyo5wGLkbNrz46lxskqY=; b=f1b24SFkCvpmOs
	4jGZZJvBl0h8YKwCrXUuKX81vBbv/z7oKC9u2WdNRIB51bgmqM/AAMyDlB6LNGfcBScjrXOzACWV9
	C7Wl4QLMUiONAGrswA029khd5G9KCBp5QzFysLkWiIrA3H481BK8jMynQviAV/s2edzHuHOLuMOWF
	nbsYa38vMP/FJhWoUapxROoHEpGwPOqwSGq+5Q0QbV5tA0KADhiTMIIxRbPp0If6t15GzJpph2Mz8
	lsd9/Wyp9Fwo2AvyrVmWAz1LIt/Ap1Gj7g9LShuHlp0ncrK6HS30+st5ty3xDB405MfTPHYtpUYDn
	CCjZ+PvKcMMTZU4GaNbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLSmO-0000000FyEN-2KAB;
	Wed, 11 Dec 2024 19:53:52 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLSmL-0000000FyDH-2eKG
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 19:53:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5d3e6f6cf69so7108562a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 11:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733946828; x=1734551628; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pUkg/yF7ykYCR3YM3sPZ1dL76jj3S9T17dsWcGrfYpk=;
        b=Z7OwW0XfCJ9A2n85xCxki85uB7aEOdEo1sMiU96Y/1QG5Mev2R77D3Nj8hJdF4g5PT
         j3SHS4nq126ASs456+0C+bV05FdV5/IjJVgyuEukmUHFMDtTqSg44WBFm4EwKVZPrGq1
         bWB+OYRfr1n2/Yx9tOAXR3KLp9lEkXh5BjawDZirLe9Din2th2uOcobi1DH9CDfqB2oE
         Y/MCiU6MrxWIKLbNYjlPODip+RW3Ocx0bLtko3gXukPyf29WfOWKtYTki6qDx//nZkR0
         tb4878QNksJDggMxV8+1gnYZHmzw6RyDZ6xkQpzyka+1QGoQYgWQE0zZQ/pvtqTSP4lP
         ZecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733946828; x=1734551628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUkg/yF7ykYCR3YM3sPZ1dL76jj3S9T17dsWcGrfYpk=;
        b=LClRVofyVGW9H6pavpv4SLE2/kESWoMII0WSmC9QQdt6vWIocw/MlWtI1Mfej5UmHP
         O42GGwElptuk88ruKDE+kc6iLump8ws5WRzbhzJYHYDsPgdD27UQUjUSERBZCzqxIXrW
         isOJagBKecokX9C6OCbiWenxV35Tf5FESQXaHvd7IhL0DQPoXXifYWd9Uq9PeWmVu6wT
         4D3duK/SBto5mN9AqLApQVmEUDPCQU6q5fDmtqR3STsni4nhdu5Z8KQQHT0iSsRygCqk
         cTK9TVX2TALYqmx+xfDzLV1hqs26AlGnWcRSmXjCvW8UFNBVWOzmAy3XZhs4JAEQocQ1
         +YDA==
X-Forwarded-Encrypted: i=1; AJvYcCWRqxFoiU6EfdcdtQtn3qG9CUxc6P/inThvq6sj8GvD6yZhiazdvxOChFcea9nvA3x+m6z0HsRCg3v19Xr97A==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywd2BazJOS06c3Mxdqof1BoC6PUz3FoyzyeMzTCkBQBYObk+XPt
	4qfwxssoUM/r6qDOu2vcRT7hDcLvnIwCVW06JhUMqMlDGxo+BUX0fQ5wiGqbkGxMLwYIMul48Qp
	ZAgopc/Pt7LcnxXdZMqO5Ig0gMdM=
X-Gm-Gg: ASbGncv3nWPHoc7c+y41q2LtPozsEkFNmV0L87F6WPRuW94Exd/2g2E8n71JoXXTu6T
	AChgYZmQ/8TyK+27tQqYfHKDvM5gBXcGrDFNO
X-Google-Smtp-Source: AGHT+IFv9Sczsd0mQ9Rbff05mKNUzboS24htjzD9Z2VVbj8mRpyVeCykSOxdH3C+PWYJ9RVkG/vNjP/KNUylPlL22qo=
X-Received: by 2002:a17:906:23f1:b0:aa6:a228:afa9 with SMTP id
 a640c23a62f3a-aa6c1ab6290mr122294366b.3.1733946827671; Wed, 11 Dec 2024
 11:53:47 -0800 (PST)
MIME-Version: 1.0
References: <20241211143044.9550-1-sebastian.reichel@collabora.com> <20241211143044.9550-4-sebastian.reichel@collabora.com>
In-Reply-To: <20241211143044.9550-4-sebastian.reichel@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 11 Dec 2024 14:53:34 -0500
Message-ID: <CAMdYzYqLq=kSC8fiBapRS_8w0s8PaL9Yd46VgM56YbTEmUG1xA@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain
 errors
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com, 
	Dragan Simic <dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_115349_668151_AFAD708E 
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgOTozMuKAr0FNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEN1cnJlbnRseSByb2NrY2hp
cF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbiBwcmludHMgYSB3YXJuaW5nIGlmIHRoZXJlCj4gaGF2
ZSBiZWVuIGVycm9ycyB0dXJuaW5nIG9uIHRoZSBwb3dlciBkb21haW4sIGJ1dCBpdCBkb2VzIG5v
dCByZXR1cm4KPiBhbnkgZXJyb3JzIGFuZCByb2NrY2hpcF9wZF9wb3dlcigpIHRyaWVzIHRvIGNv
bnRpbnVlIHNldHRpbmcgdXAgdGhlCj4gUU9TIHJlZ2lzdGVycy4gVGhpcyB1c3VhbGx5IHJlc3Vs
dHMgaW4gYWNjZXNzaW5nIHVucG93ZXJlZCByZWdpc3RlcnMsCj4gd2hpY2ggdHJpZ2dlcnMgYW4g
U0Vycm9yIGFuZCBhIGZ1bGwgc3lzdGVtIGhhbmcuCj4KPiBUaGlzIGltcHJvdmVzIHRoZSBlcnJv
ciBoYW5kbGluZyBieSBmb3J3YXJkaW5nIHRoZSBlcnJvciB0byBhdm9pZAo+IGtlcm5lbCBwYW5p
Y3MuCgpHb29kIEFmdGVybm9vbiwKCkkgdGhpbmsgd2Ugc2hvdWxkIG1lcmdlIHlvdXIgcGF0Y2gg
aGVyZSB3aXRoIG15IHBhdGNoIGZvciByZXR1cm5pbmcKZXJyb3JzIGZyb20gcm9ja2NoaXBfcG11
X3NldF9pZGxlX3JlcXVlc3QgWzFdLgoKPgo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgo+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KPiBUZXN0ZWQtYnk6IEFkcmlhbiBMYXJ1bWJlIDxhZHJpYW4ubGFydW1iZUBjb2xsYWJv
cmEuY29tPiAjIE9uIFJvY2sgNUIKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wbWRvbWFp
bi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAzNCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2
ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IGExNjFlZTEzYzYzMy4u
OGY0NDBmMjg4M2RiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0t
ZG9tYWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMK
PiBAQCAtNTMzLDE2ICs1MzMsMTcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbXVfZG9tYWluX21l
bV9yZXNldChzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCkKPiAgICAgICAgIHJldHVybiBy
ZXQ7Cj4gIH0KPgo+IC1zdGF0aWMgdm9pZCByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFp
bihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBib29sIG9uKQo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX2Rv
X3BtdV9zZXRfcG93ZXJfZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBvbikKPiAgewo+
ICAgICAgICAgc3RydWN0IHJvY2tjaGlwX3BtdSAqcG11ID0gcGQtPnBtdTsKPiAgICAgICAgIHN0
cnVjdCBnZW5lcmljX3BtX2RvbWFpbiAqZ2VucGQgPSAmcGQtPmdlbnBkOwo+ICAgICAgICAgdTMy
IHBkX3B3cl9vZmZzZXQgPSBwZC0+aW5mby0+cHdyX29mZnNldDsKPiAgICAgICAgIGJvb2wgaXNf
b24sIGlzX21lbV9vbiA9IGZhbHNlOwo+ICsgICAgICAgaW50IHJldDsKPgo+ICAgICAgICAgaWYg
KHBkLT5pbmZvLT5wd3JfbWFzayA9PSAwKQo+IC0gICAgICAgICAgICAgICByZXR1cm47Cj4gKyAg
ICAgICAgICAgICAgIHJldHVybiAwOwo+Cj4gICAgICAgICBpZiAob24gJiYgcGQtPmluZm8tPm1l
bV9zdGF0dXNfbWFzaykKPiAgICAgICAgICAgICAgICAgaXNfbWVtX29uID0gcm9ja2NoaXBfcG11
X2RvbWFpbl9pc19tZW1fb24ocGQpOwo+IEBAIC01NTcsMTYgKzU1OCwyMSBAQCBzdGF0aWMgdm9p
ZCByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9t
YWluICpwZCwKPgo+ICAgICAgICAgd21iKCk7Cj4KPiAtICAgICAgIGlmIChpc19tZW1fb24gJiYg
cm9ja2NoaXBfcG11X2RvbWFpbl9tZW1fcmVzZXQocGQpKQo+IC0gICAgICAgICAgICAgICByZXR1
cm47Cj4gKyAgICAgICBpZiAoaXNfbWVtX29uKSB7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IHJv
Y2tjaGlwX3BtdV9kb21haW5fbWVtX3Jlc2V0KHBkKTsKPiArICAgICAgICAgICAgICAgaWYgKHJl
dCkKPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsgICAgICAgfQo+Cj4g
LSAgICAgICBpZiAocmVhZHhfcG9sbF90aW1lb3V0X2F0b21pYyhyb2NrY2hpcF9wbXVfZG9tYWlu
X2lzX29uLCBwZCwgaXNfb24sCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpc19vbiA9PSBvbiwgMCwgMTAwMDApKSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIocG11
LT5kZXYsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgImZhaWxlZCB0byBzZXQgZG9tYWluICcl
cycsIHZhbD0lZFxuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICBnZW5wZC0+bmFtZSwgaXNf
b24pOwo+IC0gICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICByZXQgPSByZWFkeF9wb2xs
X3RpbWVvdXRfYXRvbWljKHJvY2tjaGlwX3BtdV9kb21haW5faXNfb24sIHBkLCBpc19vbiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaXNfb24gPT0gb24sIDAsIDEw
MDAwKTsKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgZGV2X2VycihwbXUt
PmRldiwgImZhaWxlZCB0byBzZXQgZG9tYWluICclcycgJXMsIHZhbD0lZFxuIiwKPiArICAgICAg
ICAgICAgICAgICAgICAgICBnZW5wZC0+bmFtZSwgb24gPyAib24iIDogIm9mZiIsIGlzX29uKTsK
PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAgICAgICAgIH0KPiArCj4gKyAgICAgICBy
ZXR1cm4gMDsKPiAgfQo+Cj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGRfcG93ZXIoc3RydWN0IHJv
Y2tjaGlwX3BtX2RvbWFpbiAqcGQsIGJvb2wgcG93ZXJfb24pCj4gQEAgLTU5Miw3ICs1OTgsMTEg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWlu
ICpwZCwgYm9vbCBwb3dlcl9vbikKPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcF9w
bXVfc2V0X2lkbGVfcmVxdWVzdChwZCwgdHJ1ZSk7Cj4gICAgICAgICAgICAgICAgIH0KPgo+IC0g
ICAgICAgICAgICAgICByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbihwZCwgcG93ZXJf
b24pOwo+ICsgICAgICAgICAgICAgICByZXQgPSByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2Rv
bWFpbihwZCwgcG93ZXJfb24pOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGNsa19idWxrX2Rpc2FibGUocGQtPm51bV9jbGtzLCBwZC0+
Y2xrcyk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKCkxvb2tpbmcgYXQg
aXQsIHdlIHNob3VsZG4ndCByZXR1cm4gZGlyZWN0bHkgZnJvbSBoZXJlIGJlY2F1c2UgdGhlCm11
dGV4IG5ldmVyIGdldHMgdW5sb2NrZWQuCkluc3RlYWQgb2YgcmVwZWF0aW5nIGNsa19idWxrX2Rp
c2FibGUgYW5kIHJldHVybiByZXQgZm9yIGVhY2ggZmFpbHVyZSwKd2UgY2FuIGluaXRpYWxpemUg
cmV0ID0gMCwgaGF2ZSBhIGdvdG86IG91dCBwb2ludGluZyB0bwpjbGtfYnVsa19kaXNhYmxlLCBh
bmQgY2hhbmdlIHJldHVybiAwIHRvIHJldHVybiByZXQgYXQgdGhlIGVuZC4KCldoYXQgZG8geW91
IHRoaW5rPwoKVmVyeSBSZXNwZWN0ZnVsbHksClBldGVyIEdlaXMKClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MTIxMDAxMzAxMC44MTI1Ny0yLXBnd2lwZW91
dEBnbWFpbC5jb20vCgo+ICsgICAgICAgICAgICAgICB9Cj4KPiAgICAgICAgICAgICAgICAgaWYg
KHBvd2VyX29uKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgLyogaWYgcG93ZXJpbmcgdXAs
IGxlYXZlIGlkbGUgbW9kZSAqLwo+IC0tCj4gMi40NS4yCj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

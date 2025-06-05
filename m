Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13DB5C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 14:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VomLC3oOyNJiEXEx+fmi3/C5JnRH46KtnZNlUQrq1kU=; b=OEm6sOPJ7ummcg
	yWGwOUhC6exHVqIjkE79zk+/NTB94nhNs8686+W/3KQKNcQhm4Ua/m4/T8dra/DnRqCUnuL8EjYO7
	7lTxKPVwjBTjcbII0vRt5RjPI5bAe22QiQgFIO4RRx3igmcGnWaqAz2+8EsI5Rv+zWuGVNkhkZcfO
	KG11O72k9T1BoxQJbUrC7n7WJ0Lo7i/XPjBYIyKy/eK1m0t+gIJ7OCMOMn5SUsADm1uyULzAzh16o
	SMI97WOvXLDS+jHN6dGnKG2FwsCz++oQnVOREINpPiztLsdfFwG6wl9cuffPsOlQb5Rt8q0BhpdNk
	asHA/3wU0lbTujUDYi5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBS5-0000000Fkp7-1n2q;
	Thu, 05 Jun 2025 14:20:17 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBMo-0000000FkLm-0OO4;
	Thu, 05 Jun 2025 14:14:51 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4a56cc0def0so15575561cf.3;
        Thu, 05 Jun 2025 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749132889; x=1749737689; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkpL8b/AS9RsSObYgLJmIHBt5nNILWA82P2+A8mQBU8=;
        b=TShuCVEaTMTt1XXFA8D6JAGBONsiOD/fI4LXg+a8VCoi8mNMCcsk077xUVlrzvmXPx
         Ej74uTCav5bC48hnjj/1R7SNlG/Z5e6hHWGEbWXXjfevR2Wekz165yO5t/3JnkTec5/M
         wp4X26oJJR710FDrk9l8NwbldX4BIBbn/RWkPFF7So/u9OT2CNC9jI5RaAV6CL3sPaVy
         fj96nUt/QxOi89S0qDP9evRY0K2JSlOQZOY1poDelk0qBHCLqZ3CF+0DzSj8Ph7F9dri
         zLICwg2NR7rbD+TPZX1k75zHSliqh52Nm2WFp9GKTyXp3ClXufTwSt6m9z58WqQox/8x
         QkQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749132889; x=1749737689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EkpL8b/AS9RsSObYgLJmIHBt5nNILWA82P2+A8mQBU8=;
        b=CcNSnoiJPv7jI+PsHcQlKh2qncOKXMw8xaJjKgGtLBneUeANX2EPpFjhlRpQyatqUa
         1OKzP5oeym4obQ+rD1MIEzJY2ySwP+oE4XkT8NCXTunDv5/O2DxIp3vQgEFHu/DcxX8Q
         HCYZsdLv0qhdz+DUoXRn4P6jxF6weQiG5t2UsXpf6ivI5WoElF70/pYJMJm7yjfVtR+0
         pzPq47dg+obAi8XDOZ7Ps7+RMqoDfJgN2iPsSnLx2Eo48uXzJE6alYrfeJzI38hRZIv5
         04Ovrx8YeLr58KA5axWRvPFpNsVLZoBgQrNIM/zFdDbI27T5+KFKpMFKXsoiIDPONtjz
         AJ1g==
X-Forwarded-Encrypted: i=1; AJvYcCUbV4v9+up7dLnvlzTe5CqGoqHQFNaSibSRGyT/MweCvc+57orzLCutrzJYxaywAWP7UpIyGuhzsDQHOQuMIn0=@lists.infradead.org, AJvYcCX6yzUFnOXB8kwt0kf5G41ntdWb18aEpDWd4z/uUOQwRYqBwAOs4llp1Bd+3Wz2UycKggKnh+/K7umr8ZwynyKy@lists.infradead.org
X-Gm-Message-State: AOJu0Ywp1vEHPwP6oGMeDZgHq+kJUUzdP0DGnd5+g4v/kTx8VdCHAj6Y
	6opqrRzldckwxBkKAz+0A8FXUS7yZP2jvZq5lXJml42ABPQyRrisSF/etKoGS/bWmsA7c2ecvto
	EWoVQVoJL1JsDfuNgGEKya/yKMSjkCEU=
X-Gm-Gg: ASbGnctQPw9GC13foYK+Cvd3oGuS/MfPCBbXO/xjjJ630Ij2Jmt4iyF3RkUZjIFFDHh
	2RYadIbyRtiCxHRjXsuw14OxWNE+Mz8RRlTx9RtPWnFZ0pGKVWV3vRkYC8d8HxOVF+mGIg7JpPI
	6+IJ5GPOX6FadKOj97HPMJsGxjrh7f+9cYAFM38wMyOqp/
X-Google-Smtp-Source: AGHT+IGa9rjNtqi2gcZ+Jy9RBTcGFMFtkIHolkdkm7GT5pfvGPDtmpQYLeHP/w7YNZqumqgJlkxOAca7Kn7xJSgw5Xg=
X-Received: by 2002:a05:622a:2597:b0:477:ea0:1b27 with SMTP id
 d75a77b69052e-4a5a585940emr88797861cf.26.1749132888682; Thu, 05 Jun 2025
 07:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-3-717e8ce4ab77@gmail.com> <CALWfF7JOJSihtfqrFiZtTxnzvoU6FP3WXuWjYOVaAvjPJZWWgg@mail.gmail.com>
 <CABjd4Yyw5xStJYU5c5snUGpBjEYL8=qoj=bWYLnuzSWzr8shaA@mail.gmail.com>
In-Reply-To: <CABjd4Yyw5xStJYU5c5snUGpBjEYL8=qoj=bWYLnuzSWzr8shaA@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 5 Jun 2025 18:14:41 +0400
X-Gm-Features: AX0GCFsmALQLaM1XKsOi1NqcR0aDewH5t0oKv8VcCgYbI3soKcm6cUbwmVeg7L0
Message-ID: <CABjd4YxfG3WZxRL3ihQLtdVdp_3Hq=TKKrZJktJ_C5i+xCM2Ag@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable wifi on ArmSoM Sige5
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_071450_137095_E74DD05D 
X-CRM114-Status: GOOD (  19.55  )
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

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCAxMDozMuKAr0FNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1biA1LCAyMDI1IGF0IDY6NDPigK9BTSBK
aW1teSBIb24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gPgo+ID4gPiAr
JnNkaW8gewo+ID4gPiArICAgICAgIGJ1cy13aWR0aCA9IDw0PjsKPiA+ID4gKyAgICAgICBjYXAt
c2Rpby1pcnE7Cj4gPiA+ICsgICAgICAgZGlzYWJsZS13cDsKPiA+ID4gKyAgICAgICBrZWVwLXBv
d2VyLWluLXN1c3BlbmQ7Cj4gPiA+ICsgICAgICAgbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+
Owo+ID4gPiArICAgICAgIG5vLXNkOwo+ID4gPiArICAgICAgIG5vLW1tYzsKPiA+ID4gKyAgICAg
ICBub24tcmVtb3ZhYmxlOwo+ID4gPiArICAgICAgIHNkLXVocy1zZHI1MDsKPiA+ID4gKyAgICAg
ICBzZC11aHMtc2RyMTA0Owo+ID4gPiArICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3Mz
PjsKPiA+ID4gKyAgICAgICB2cW1tYy1zdXBwbHkgPSA8JnZjY18xdjhfczM+Owo+ID4gPiArICAg
ICAgIHdha2V1cC1zb3VyY2U7Cj4gPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiAr
fTsKPiA+Cj4gPiBXaGVuIHlvdSBlbmFibGUgdGhlIHNkaW8gbm9kZSBvbiB5b3VyIHYxLjIgYm9h
cmQgd2l0aCB0aGUgYnJvYWRjb20KPiA+IGNoaXAgKHVzaW5nIFNZTjQzNzUyKSwgZG9lcyB0aGUg
YnRzZGlvLmtvIGJpbmQgdG8gdGhlIGRldmljZSBhbmQKPiA+IGNyZWF0ZSBhbiBleHRyYSByZmtp
bGwgYmx1ZXRvb3RoIG5vZGU/Cj4KPiBHb29kIHF1ZXN0aW9uLCBJIGRpZG4ndCBoYXZlIGl0IGVu
YWJsZWQgaW4gbXkgYnVpbGQ6Cj4KPiAjIENPTkZJR19CVF9IQ0lCVFNESU8gaXMgbm90IHNldAo+
Cj4gTGV0IG1lIGFkZCBpdCBhbmQgcmVwb3J0IGJhY2suCgpTbyBJJ3ZlIHJlYnVpbHQgaXQgd2l0
aCBidHNkaW8ua28gbW9kdWxlIGVuYWJsZWQuIEFzIEkgYm9vdCB0aGUKc3lzdGVtLCBXaUZpICh2
aWEgU0RJTykgYW5kIEJsdWV0b290aCAodmlhIFVBUlQpIGRyaXZlcnMgZ2V0IHByb2JlZAphbmQg
bG9hZCB0aGVpciByZXNwZWN0aXZlIGZpcm13YXJlcy4gYnRzZGlvLmtvIGRvZXNuJ3QgZ2V0CmF1
dG8tbG9hZGVkLiBJZiBJIGxvYWQgaXQgbWFudWFsbHkgYWZ0ZXIgYm9vdGluZywgaXQgZG9lc24n
dCBiaW5kIHRvCmFueXRoaW5nIGFuZCBkb2Vzbid0IGNyZWF0ZSBhbnkgZXh0cmEgcmZraWxsIG5v
ZGVzLgoKSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBJIG5lZWQgdG8gY2hlY2sgb3IgbG9vayBvdXQg
Zm9yPwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCj4gPiBJZiBzbywgeW91J2xsIHdhbnQgdG8gYmxh
Y2tsaXN0IHRoZSBTWU40Mzc1MiBjaGlwIGluIHRoZSBidHNkaW8ua28uCj4gPiBTaW1pbGFyIHRv
IGh0dHBzOi8vZ2l0aHViLmNvbS9qaW1teWhvbi9saW51eC9jb21taXQvODFjMTRkYzJkZWEyY2Vh
ZWE4ZDM5MDE4OGIzNTJkMzJlMjc4YWJjOAo+ID4gVGhlIG9yaWdpbmFsIGxvZ2ljIHdhcyBpbnRy
b2R1Y2VkIGluCj4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2RyaXZlcnMvYmx1ZXRvb3RoL2J0c2Rpby5j
P2lkPWI0Y2RhYmEyNzQyNDdjOWM4NDFjNmE2ODJjMDhmYTkxZmIzYWE1NDkKPgo+IEkgd2lsbCBj
aGVjaywgdGhhbmsgeW91IGZvciB0aGUgcG9pbnRlcnMhCj4KPiBCZXN0IHJlZ2FyZHMsCj4gQWxl
eGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

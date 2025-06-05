Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA5D1C5B559
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 11:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Nbr28c6Xr5DCv7JYE4iRbsQTae8suY4b9qemxLRZaU=; b=fI1755nup5wat2
	w7EPugS3RNXOGVNkgDFW6tZ1J/jMwwisL18w8DSw2ZqoJ7beXRJH0VYnEfn9LcjovNARy86FF9d+E
	xY2zehSl6mC1Fw8jWH3HPvbJeMY1K/ZfvETWAz4rvIrHT7Wgv2hFZy5+c10sBhJzNnZta81i64KSg
	rN9z36Od7NzFcMys50AxoFPoh1521CTqD+2vl3xlZQEaZKrEZ1510KQc2ftQwse6HGx/8x4tZw9B/
	gtLasyQsHpaU9IER28M7Cyv2JCiYs+Rs0XLQ4b54zbWI6wAqPJdpCXyBWGyQ0/cAfoPDzfL/NRv6v
	AeF8kGGbEtIST1ngkgQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tR-0000000FNDq-3kHy;
	Thu, 05 Jun 2025 11:36:21 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8gv-0000000FLxT-18nv;
	Thu, 05 Jun 2025 11:23:26 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4a4bb155edeso9668631cf.2;
        Thu, 05 Jun 2025 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749122604; x=1749727404; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDizFze/hyxfmmFH+Z9n7Pgzu80dINVRGBjV8qhWnzA=;
        b=RYgnbj3Rbqqy4KqP52HZ+L5ewOUPJeyHe2qE4jxA1mf8qWgwlGnTHRiXQtMctQIf29
         lVRHQ/cxNnulcCYldEEIT1H+4buLpZPNyNk+YBu67YddmsGj0Kh7pfBWIOF+Coq88k+c
         maipLwlAs3LXkewbJ3963wdJxIAyBnf4C1xEVdkidQcDEpNs78lNg5m4ve0a1U0tED63
         gjRyyEQlyDY7eEUpBgKhL7eofNXhkHxhCBaKwFcz1Tmo6UxV7dcKFjONglaQv9B5fklT
         et4RDhMJMGXsK8oCuc6WO0gHTzox6NpVjHU58gMTnOaKnUDv/k9Qz0mUBz2uJZHcskT4
         jjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749122604; x=1749727404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDizFze/hyxfmmFH+Z9n7Pgzu80dINVRGBjV8qhWnzA=;
        b=RtTiNf+CxqyYb+a2/YApzv6CXIZJ6/TWEMstMPbX/ZJexDMcETeZQXJt3t+baISvbs
         V1TGkP9vHk+QP24o4omx9R3HM1p9umzALA5doIgxNWs+knM/1Uhzg/Yv74T8LhtieiS8
         CweJ4vBuiBvjMIRW7sq4Y/L2HF0rCBGyRnrfHGn02XeFAl1G4IB10fPpAGn1Jl6cLsYa
         ADiY55yr8Yt82mbhsEIly+BvNiXH0PwLnQgPqfB3ANtM/4SkUeuYZX2qCdVjqb5oOfmP
         ZWto5A9MAUlICO8+SUj527XhXQxNWYqsrbXmmjUFinHHzYAXItp+rFscERBFLVvcQEfJ
         xRXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV13GlgZSN2ZfLllsoNULqnTRaUU5ZfWN1zWiLLSIH8dlocguVBXBLcw3gn3KhgawdT1+RQ4cX86EfOf794PcI=@lists.infradead.org, AJvYcCXX5UbG4u2+dom4vcgWfIrYjZq2H2MbyU+2P+VRbaM4AIxTDYIIn0NideZIme8fdbtQdxo6yg6UuEVJMZzmA0n2@lists.infradead.org
X-Gm-Message-State: AOJu0YyVkiX+B8oDpH3ZGDEOxZj3VsBFV++EhN0NUiLRtqy2pvV1XrW/
	WgpT3hMdSND6vkwz/tXXampOjJ2oP4Wpiywgd72f1xWInNRVjzkzLDiioyvy+WPjOGUQG87db8t
	0VR3nGHvJhWDQhWhbyVpX4QsLzX836u0=
X-Gm-Gg: ASbGncsZc0EB49BVg9RVX7/BmDamh51Y6H7wrAeOhMNqsbCDK1tz9s8F2o6CakC+g9Y
	1bvl6mwhgOUKkNCfz38tuad6C7OKBK8aj6QBjIgNYbnBsk9C7h0Cd3VI9dMjCn/3xRWv8QzQR/E
	rKudXgr+AufRXeDOEv34cvUEHMNclBBep3xhl4Tcrf9g==
X-Google-Smtp-Source: AGHT+IFxaSe8SmfOVrKj5PzC+PDhsrX1HEfaz65+xtZxnKyLtWkEJUtGUuyZJdJWYe7NQXeqgh0Qo15kLkJ4vnPGagY=
X-Received: by 2002:ac8:5cd5:0:b0:48c:c121:7e27 with SMTP id
 d75a77b69052e-4a5a584733cmr119373931cf.50.1749122603602; Thu, 05 Jun 2025
 04:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <DAEK3EQVNWQX.24DOM2VICSGCP@cknow.org>
In-Reply-To: <DAEK3EQVNWQX.24DOM2VICSGCP@cknow.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 5 Jun 2025 15:23:16 +0400
X-Gm-Features: AX0GCFsY4gmlZjHIBycyRoHQVN5KjE-g17VnqUGnair-V8LWvXbVvGhXOwb0_dY
Message-ID: <CABjd4YzyGx60AeyxL049UrEFkhN_03+wHo64DLL778FimDvGeg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042325_310990_D96B07C3 
X-CRM114-Status: GOOD (  13.09  )
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

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCAzOjE44oCvUE0gRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5k
ZWJpYW5AY2tub3cub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSBKdW4gMywgMjAyNSBhdCA3OjAxIFBN
IENFU1QsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gTGlzdCBib3RoIENQVSBzdXBwbHkgcmVn
dWxhdG9ycyB3aGljaCBkcml2ZSB0aGUgbGl0dGxlIGFuZCBiaWcgQ1BVCj4gPiBjbHVzdGVycywg
cmVzcGVjdGl2ZWx5LCBzbyB0aGF0IGNwdWZyZXEgY2FuIHBpY2sgdGhlbSB1cC4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gPiAtLS0K
PiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdlNS5kdHMgICAgICB8
IDI4ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0
aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NzYtYXJtc29tLXNpZ2U1LmR0cwo+ID4gaW5kZXggYjA5ZTc4OWM3NWM0N2ZlYzdjZjdlOTgx
MGFiMGRjY2EzMmQ5NDA0YS4uZDljMTI5YmU1NWEwZDk5N2UwNGU2ZDY3N2NkYzk4ZmI1MDM1MzQx
OCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFy
bXNvbS1zaWdlNS5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LWFybXNvbS1zaWdlNS5kdHMKPiA+IEBAIC0yMDcsNiArMjA3LDIyIEBAIHZjY18zdjNfdWZz
X3MwOiByZWd1bGF0b3ItdmNjLXVmcy1zMCB7Cj4gPiAgICAgICB9Owo+ID4gIH07Cj4gPgo+ID4g
KyZjcHVfYjAgewo+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iaWdfczA+Owo+ID4g
K307Cj4gPiArCj4gPiArJmNwdV9iMSB7Cj4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1
X2JpZ19zMD47Cj4gPiArfTsKPiA+ICsKPiA+ICsmY3B1X2IyIHsKPiA+ICsgICAgIGNwdS1zdXBw
bHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZjcHVfYjMgewo+ID4g
KyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iaWdfczA+Owo+ID4gK307Cj4gPiArCj4gPiAg
JmNvbWJwaHkwX3BzIHsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+Cj4gVGhl
ICZjcHVfYk4gbm9kZXMgc2hvdWxkIGNvbWUgYWZ0ZXIgdGhlICZjb21icGh5MF9wcyBub2RlLgoK
VHJ1ZSwgdGhhbmtzIGZvciBzcG90dGluZyBpdC4gRG9uJ3Qga25vdyB3aHkgdGhleSBlbmRlZCB1
cCBzZXBhcmF0ZWQKZnJvbSAmY3B1X2wqCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

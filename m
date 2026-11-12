Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EF5606A32D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 13:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XDZKg66t;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=BLeK8GL8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XNBHFrWc2DDmRKCte+xQyz4wgoXQGaXEOak/xSsfnI4=; b=XDZKg66tCuZAZJBcyMhEItkH+Z
	2grKSpkSwPPXDwaiRNx7tmKHJnJMqzR4euVuNMYWK2zT3aZD+jsGUfZcP5pMoyDQigQwm6emAdJoO
	fqs2R2erveYBJfsRomvddmaU+4DtZ9SoyWZBkjO1MfBy4Zawwzm6ABmoW0sA/Ak1318X9XkJySXiQ
	NBHJygB73g3fRaqmF/F6RewiqFR6B8NRPmY78YuWyCxZ7To9lZRmeFuk01itRuFi5CTjxy3ntTeYt
	vPeqLR9C2JqQ0H06Zw9RzLk6WraDT90O24Yt+Md5PQcaLGb2prn3BBJ13bo2sD9O6iEhYaQWN7jJ8
	At+JXa2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUo9-0000000A3rN-37y3;
	Thu, 12 Nov 2026 13:25:41 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUo7-0000000A3oI-0k59
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 13:25:40 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6b5973a4b4cso5020481a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 05:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794489937; cv=none;
        d=google.com; s=arc-20260327;
        b=V+/RpnM4f147o5vpgqgv9nbzU0kG6qLCrxWjb3YJTSHsg2wiSZItRHXaKAvibmXhe5
         0uSzxmrvEQ+xQPQDSNhrzDk+CJ0GBYfJUhK/Q8UNXC+cY43xiWsGUN4WBdWdMtRUBYYn
         4St2NzUOynjAWFcAqw2NDcTOkF6pNgJbTRAI+F01fpa64IJUp1CDCsFnW4PHaURqyqUU
         +qLWpEGGBYGNsBxXii47+WuqGPqMoPQgmLzPfyp1tkeRN6WtSJWzh5iihPLWKA4uAO4a
         wnZhPE8Ric8LnomBh85s1pn/TC3EWDy8UaZgvAA8MzNFjc3SEvfVD97VOXrsbcua7v+O
         4Y4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y7Re7D8sh20+8UvmpEtbEexH0DREKJTutui6y5r8LDI=;
        fh=JjQfW3VdN3+eqbkpZ/x1wN7iYiii3AJlR1DUR/mQ4BQ=;
        b=jaq8SX2m3ThBa9GUrFnC03cO+5Xve57PMJkMjVEbxyRkZKlsH6Md3ZduMc2RR6KW8A
         wWgthW9Uivv5JeIujUo3hRVxw23YGHI4EUj3uHjrFTfQzZEAhIobyn9l+oXBeUxM/0Pl
         BbScDW3FBjmqlCBaao5EvjvDipl9xEIITtoPxADT3FaXUzsq+CLPa4X/SPJs2q8/9+M6
         JuVacXMPfRVRO0yI+uaG56/HFqUFxHZjlK213tgZn+ETTz1v0yDQrBJr89nrXd2CIawd
         LTpaCTut46ypDUuMH2YPCeMaTLYJmGvoigEZSJv0tLOixA+QV0GVAon30eFs5IV56rmC
         eUuA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794489937; x=1795094737; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=y7Re7D8sh20+8UvmpEtbEexH0DREKJTutui6y5r8LDI=;
        b=BLeK8GL8jc3Iih2Ah1QREq6b9z6Id9iWxhBXi60lPBLeYVg++d9wZikn/JmrPIRyvq
         xGCpoBok8V4MJWHWKUe90FrPl5idjEWf7vLcY9Gf9ypn6xF21L315xnu6Bt5/IAbKXMi
         jpni4DwSX3E9qOqxifYQJeIrmdZafXoyqIIf39pQtkvGLaYza0k4dj3rfOw3eXRLV7Xg
         L1dwIVVWzvSq7Er/cyjBLFXBZL4+ZDN9mysW0m2nAdkokEuwbHapVcoW4OoWJnk7/boX
         olCw8xBMJI+kyKHmdCSDz5lt+Ychix4DNkL0ER7ALsAXUblomR7jQ+aKnC8515BQF5Ks
         xpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794489937; x=1795094737;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y7Re7D8sh20+8UvmpEtbEexH0DREKJTutui6y5r8LDI=;
        b=CIoUDEqRYiwgSY+KLi5XIe8D9bGThaDAzjqm57CkqEHdAlzQbqROI0Or6z2QIC4hUo
         JZLsLixZc6gMMkdKCGYcVp+rTiMq9gsV557NGFbORISa32yc05qDe3FE+IKNm2l+Df34
         xJyQYm4d+Hf7WgmBszMxFt2SJau8yMoY85IzMn3bui6zf4zEtHkgEMt83wF5uL25ecD+
         THjLbHdoyVwHX3lqlj0X3BpFHbFv3f3T6+klUsmAzixMji2RSnVTkA/BNI1Jne4n2rZW
         yOlBhDRaUPWZNVu/8jLueFY8zIlZvUYjtGzasol1ZzMQeIwTRYzrtwwW3UF1CTVfCD4v
         Eenw==
X-Forwarded-Encrypted: i=1; AL+hErHsvPhanZHIXW4V79ocosauMhWp1zgu53ev6lTdHXv4+U4Uu+Rp84PNwemxqwfKopeCfZXzGCUgsuCxOPOU1A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9PZcksnQ2aS5v9lJSr5+VmcLWUSL0TFIiqytMFtkUy5+7inbwl
	QbeRioGCJUZx5IYZHWN5Jwjzv07irGI2dwLm3fHnXxSD6ioxY7muDD3DrZeyOTYm5iaR+HfanBA
	HeGDvxA/uLg0mE/zUD1guV1Z9LDBjqs4WSdfgL+427w==
X-Gm-Gg: AYBFou2Gn+Mtu6pbfCVlC+MxBA8NxpqeYe++xA2RwRSFC3Hxps5zHLlDTjVmfZra5nC
	QSk3nCTfricWVCd9E1ZdcbbSocEwn+aj7Rer1bnyi4q3aIHmuLTszjxuQHrUfHAPPko3Iymkg6g
	0CStSfw3bJNeAqICW3y2BeeD5uynj77lHZb2b203DOI6PLAyR7y3JW1+Ks7cx44hDmQSTj6xc94
	oLq0ke1OwDgvZuYqa4PRBN4pxD/APY8xer0yKnwUbR8CV7/6yapWDDGrqYa1VrDb06Ge8EKl/E7
	DnxzNTQhyqMJkHcEcgrNVE4027355VrDBDajlDjIFgMipDpnrwcKn+Rdap8GrEFhlsUR6KhLq41
	hZBFvzyhdRkXUQSmmnw+cXcz0ZmwPQDan4PYV6qwMKgxEsQF9jAKS3vtpnUwsEoghzusj
X-Received: by 2002:a17:906:4a8e:b0:c50:750a:6a1b with SMTP id
 a640c23a62f3a-c50750a6a81mr275760466b.29.1794489937376; Thu, 12 Nov 2026
 05:25:37 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
 <dd59d491-82b0-4047-ae98-f8070f6be112@rock-chips.com> <CAKTNdwHbxnknob9NdjqWUcGU2fURO5B7V4kTTK+fvEYjNDOLCA@mail.gmail.com>
 <dd25880e-be2d-4adc-8384-fa4a7160a4df@rock-chips.com>
In-Reply-To: <dd25880e-be2d-4adc-8384-fa4a7160a4df@rock-chips.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 12 Nov 2026 17:25:26 +0400
X-Gm-Features: AclHuK-ae6rK5KLX865N1ZAAiK3m-L1yS3bWzPXEljeOEVs3lx4mmzdXwRyUZxQ
Message-ID: <CAKTNdwGHS5M4yNKEqfKV8hEJRAYf3wnY1Z6jOWQx7e4cipTF9A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576 EVB1
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_052539_278181_9ABA2B17 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgMTIsIDIwMjYgYXQgNTowMeKAr0FNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIaSBBbGV4ZXksCj4KPiBPbiAxMS8xMS8yMDI2
IDY6NDUgUE0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gSGkgQ2hhb3lpLAo+ID4KPiA+IE9u
IFdlZCwgTm92IDExLCAyMDI2IGF0IDE6MzHigK9QTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5A
cm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGkgQWxleGV5LAo+ID4+Cj4gPj4gT24g
MTEvNy8yMDI2IDE6NTIgQU0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+PiBSSzM1NzYgRVZC
MSBoYXMgaXRzIFVTQkRQIFBIWSByb3V0ZWQgdG8gYSBUeXBlLUMgcG9ydCB3aXRoIGEgSFVTQjMx
MSBDQwo+ID4+PiBjb250cm9sbGVyIGFuZCBhIGZpeGVkLXZvbHRhZ2UgVkJVUyBzdXBwbHkuCj4g
Pj4+Cj4gPj4+IERlc2NyaWJlIGl0IGluIHRoZSBkZXZpY2UgdHJlZSwgaW5jbHVkaW5nIHRoZSB3
aXJpbmcgZm9yIGJvdGggdGhlIFVTQiBhbmQKPiA+Pj4gdGhlIERQIHNpZGUuCj4gPj4+Cj4gPj4+
IFRoaXMgbWFrZXMgdGhlIGRhdGEgcm9sZXMgZm9sbG93IHRoZSBUeXBlLUMgcG9ydCdzIG5lZ290
aWF0aW9uLCBzbyB0aGUKPiA+Pj4gcG9ydCBzdG9wcyBiZWluZyBob3N0IG9ubHkuIEl0IGFsc28g
bGVhdmVzIHRoZSBWQlVTIHJlZ3VsYXRvciB0byBiZQo+ID4+PiBtYW5hZ2VkIGJ5IFRDUE0gaW5z
dGVhZCBvZiBiZWluZyBoYXJkd2lyZWQgdmlhIHRoZSB0YW5nZW50aWFsbHkgcmVsYXRlZAo+ID4+
PiBwaHktc3VwcGx5IG9uIGEgVVNCIGNvbnRyb2xsZXIuIERQIGxhbmVzIGFyZSBhbHNvIG11eGVk
IGR5bmFtaWNhbGx5IGJ5Cj4gPj4+IHRoZSBVU0JEUCBQSFkgYmFzZWQgb24gdGhlIFR5cGUtQyBw
b3J0J3MgbmVnb3RpYXRpb24sIHNvIHRoZSBoYWNreSBmaXhlZAo+ID4+PiBsYW5lIG11eGluZyBh
bHNvIGdvZXMgYXdheS4KPiA+Pj4KPiA+Pgo+ID4+IEhhdmUgeW91IHRlc3RlZCB0aGlzPyBBcyBm
YXIgYXMgSSBrbm93LCBkdy1kcCBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydAo+ID4+IFR5cGUtQyBI
UEQgeWV0Lgo+ID4KPiA+IEkgZGlkIC0gaXQgd29ya3MgZmluZSBmb3IgbWUgdW5kZXIgTGludXgg
d2l0aCBTZWJhc3RpYW4ncyBwYXRjaGVzLiBNeQo+ID4gcHJpbWFyeSBtb3RpdmF0aW9uLCBob3dl
dmVyLCB3YXMgVS1Cb290LCB3aGVyZSB0aGUgY3VycmVudCBwaHktc3VwcGx5Cj4gPiBoYWNrIGJy
ZWFrcyBVU0IgZGF0YSByb2xlIHN3aXRjaGluZywgZHVlIHRvIFZCVVMgYmVpbmcgZm9yY2VkCj4g
PiBhbHdheXMtb24uIFdpdGggdGhpcyBwYXRjaCBpdCB3b3JrcywgYW5kIG5vdyB0aGUgRFQgYWN0
dWFsbHkgZGVzY3JpYmVzCj4gPiB0aGUgaGFyZHdhcmUsIGFzIGl0IGlzIHN1cHBvc2VkIHRvLgo+
ID4KPgo+IE9oLCBJIGFsbW9zdCBmb3Jnb3QgYWJvdXQgdGhhdC4gSSB0aGluayBpdCBzaG91bGQg
YmUgdGhpcyBwYXRjaCBzZXJpZXNbMF0sIHJpZ2h0Pwo+Cj4gQnV0IEkgdGhpbmsgd2UgcHJvYmFi
bHkgbmVlZCBtb3JlIHRoYW4ganVzdCB0aGlzIHNlcmllcywgYmVjYXVzZQo+IHJpY2h0ZWsscnQx
NzExaCBkb2VzIG5vdCByZWdpc3RlciB0aGUgSFBEIGJyaWRnZSwgc28gd2Ugd2lsbCBnZXQgdGhp
czoKPgo+IFsgICAxNC44Mjg5ODNdIGF1eGlsaWFyeSBhdXhfYnJpZGdlLmF1eF9icmlkZ2UuMDog
ZGVmZXJyZWQgcHJvYmUgcGVuZGluZzogYXV4X2JyaWRnZS5hdXhfYnJpZGdlOiBmYWlsZWQgdG8g
YWNxdWlyZSBkcm1fYnJpZGdlCj4KPiBNYXliZSB5b3UgaGF2ZSBhbHJlYWR5IGFkZGVkIHRoZSBj
b3JyZXNwb25kaW5nIHBhdGNoIHlvdXJzZWxmPwo+IEFub3RoZXIgb3B0aW9uIGlzIHRvIHVzZSB0
aGUgZ2VuZXJpYyBBVVggSFBEIHBhdGNoWzFdLiA6KQo+Cj4gWzBdOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDgwNi1zeW5vcHN5cy1kdy1kcC1pbXByb3ZlbWVu
dHMtdjExLTAtMGQ1MDg1MDVmMzgzQGNvbGxhYm9yYS5jb20vCj4gWzFdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjEwMjAwNzI4MTYuMTgwLTEta2VybmVsQGFpcmt5aS5jb20vCgpZ
ZXMsIG9uIG15IGRhaWx5LXVzZSBicmFuY2ggWzBdIEkndmUgZ290IGEgbG9jYWwgY29tbWl0IGVu
YWJsaW5nIHRoZQpIUEQgYnJpZGdlIHNwZWNpZmljYWxseSBmb3IgVENQQ0kgKDY5YjdjODA2YjMz
NCkuIEJ1dCB0aGF0J3MgYWxsCmRyaXZlciB0ZXJyaXRvcnksIHNvIG91dCBvZiBzY29wZSBmb3Ig
RFQgZGlzY3Vzc2lvbiA7LSkKClswXSBodHRwczovL2dpdGh1Yi5jb20vZmxpcHBlcmRldmljZXMv
ZmxpcHBlci1saW51eC1rZXJuZWwKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

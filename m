Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C3FCC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 11:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ehu/fTsy7ujzdFNsGvp47VlCXfJo/W3YenZ5TvMmlA=; b=qRsytjvWaz7BZ2
	p2cJ1toME3wtZOFsk9P0ems50IoBg9h7dmegOWfLaWNYG6dAsg6HaStd1tcuUh/KZtYAwNpJctgAM
	hnvjLHMbEwQbcU97zw3iOQSiUoloPtmhR2gqDKXTi3SKDXewVh7oUEjHfkb90yRUt35BLkWnoIN7h
	i3pRa3BuGYhlcsuQtFOMgc3I3LJCjjxv/y4O3f1tHsAaM7iNEXhBGz4evKvLFx4hhJxlTZBotj6mG
	BMbLHTur2IlxPsSBK92PetdFTwNT7NsffTzDCQnBY5Bv+WHz9qe37Rio6aBgRyNV2MjcA/qbeWxtY
	g36kQeSrf3lmqH6Tt4IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiwK-00Ac1X-0e;
	Mon, 25 Dec 2023 11:16:08 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiwF-00Ac13-0I
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 11:16:06 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a23566e91d5so425564766b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 03:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703502958; x=1704107758; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dXi18wD5F8B0IVpNQTf4KKlVHNTmCJCFVlgBLsUHb7k=;
        b=i18IAMOAS3Zp/HxmyUvbg++DM08OoaaiLXgP+NrY/VHsorF0hqpFtFrHyT4Wlw5NpE
         ejJlQ8+W+PAar5BeAiszntA8GjtpQxTjlDCwXHmUtweMxEZUY2P1zFfNVveKt24dxhy5
         17LtgKslU4KrCmzK9iVkNjzMRZuLuybHYV5Gk5yDv2CiMVF/GYWsqDzxQ3EgujWvTDnk
         CBCIqvA61jM8js2vVtTcB9znDDiKnl5yb2g+TvUUA0TXtI4h/HIIoaJE3hkLCAQx9ZOj
         yv/mJRXrby7BJdsv6BKm3dyZNtKS4RRy+0xBvvsPlWP+pLloXpWzEooR3YJYhVhIma6p
         X8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703502958; x=1704107758;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXi18wD5F8B0IVpNQTf4KKlVHNTmCJCFVlgBLsUHb7k=;
        b=VlzgnDU3/6GUrxncwUsmDOOHK4N9isyy6gA05i5ltyyqqrioUvq0H/HiPb3EfLsyYh
         02auF3ZoiPrHnPaHPspB2zI+aUMzdP1kJmj0oAlwg25luApPkBejv0ps0RunLQSFgAsA
         7gngXg7yX4Y51S+jL3YFwax7O9HRO1mauE/dQsHDcPSUnX2Exxe4wpI4OAgMyn9CvT1X
         QdXP6pH/QdAcCgXgTAUVH1LygOc3zU4mIfamaj7rNBuhCA4k+aARnoLG47zQgyOywHZw
         y7Ykp7Axuug3CEGuN3Edv6NeYx7gHEwjp+gRXesW0iNn6SL8yrHxVtM/+7aTzqvh5HO/
         WuIQ==
X-Gm-Message-State: AOJu0YwdRigny42QEEdMygHYzZ6UPhNhUPIF6PMSQKmnxGC++B1bnw3M
	nAy2MS3B8qjwDexGo9vPXIQVigeQynYDNw==
X-Google-Smtp-Source: AGHT+IG0A7aYigqaZjderOf4XSKNlDanoNKqTytMgVuefHUkA63sWmryFPIqPF7d0C0GGgrCBdaBnw==
X-Received: by 2002:a17:906:3e09:b0:a23:5b48:f1fa with SMTP id k9-20020a1709063e0900b00a235b48f1famr1630699eji.39.1703502957898;
        Mon, 25 Dec 2023 03:15:57 -0800 (PST)
Received: from [192.168.0.22] ([78.10.206.178])
        by smtp.gmail.com with ESMTPSA id z25-20020a1709060ad900b00a23499f1d7dsm4741968ejf.209.2023.12.25.03.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Dec 2023 03:15:57 -0800 (PST)
Message-ID: <cea2f30d-174e-4c51-b884-125d8f4dda2a@linaro.org>
Date: Mon, 25 Dec 2023 12:15:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: support poweroff on the rock-5b
To: John Clark <inindev@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20231225090856.3890-1-inindev@gmail.com>
 <20231225102030.10617-1-inindev@gmail.com>
 <576f22ba-c8c2-4796-8226-aee8a1d9d57b@linaro.org>
 <13a83ffa-f0e3-4afb-1701-cd6c8fdf8031@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <13a83ffa-f0e3-4afb-1701-cd6c8fdf8031@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_031603_193524_76C8C311 
X-CRM114-Status: GOOD (  14.34  )
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

T24gMjUvMTIvMjAyMyAxMTo1MSwgSm9obiBDbGFyayB3cm90ZToKPiBPbiAxMi8yNS8yMyA1OjQz
4oCvQU0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDI1LzEyLzIwMjMgMTE6MjAs
IEpvaG4gQ2xhcmsgd3JvdGU6Cj4+PiBBbGxvdyB0aGUgcm9jay01YiB0byBwb3dlcm9mZiBpdHMg
cG1pYy4gV2hlbiBpc3N1aW5nIGEgInNodXRkb3duIC1oIG5vdyIgb24KPj4+IHRoZSByb2NrLTVi
IGl0IHJlYm9vdHMgaW5zdGVhZC4gIFVzaW5nIHRoZSAnc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIn
IGFsbG93cwo+Pj4gdGhlIHJrODA2IHRvIHBvd2VyIGRvd24gaW5zdGVhZC4KPj4+Cj4+PiBDb21t
aXQgYzY5OWZiZmRmZDU0NjMwZmM1MWI5NmRhNTc3ZjAyZTdiNzcyZWIzNyBzaW1pbGFybHkgcmVz
b2x2ZXMgdGhpcwo+Pj4gaXNzdWUgZm9yIHRoZSBuYW5vcGMtdDYuCj4+IFRoYXQncyBub3QgdGhl
IHN5bnRheCBJIGFza2VkIGZvci4gV2hlcmUgaXMgaXRzIHN1YmplY3Q/IFN5bnRheCBpczoKPj4g
Y29tbWl0IGZvbyAoInN1YmplY3QiKSwgcmVzcGVjdGluZyB0aGUgbGVuZ3RoIG9mIFNIQSwgYXMg
Y2hlY2tlZCBieQo+PiBjaGVja3BhdGNoLgo+Pgo+PiBZb3Ugc3RpbGwgbWlzcyB2MiBhbmQgY2hh
bmdlbG9nLiBJIGFsc28gd3JvdGUgYWJvdXQgdGhpcy4gYjQgZG9lcyBpdCBmb3IKPj4geW91LCBi
dXQgaWYgeW91IGRlY2lkZSB0byB1c2UgZ2l0IG1hbnVhbGx5LCB0aGVuIHlvdSBoYXZlIHRvIGFk
ZCBpdC4KPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPj4KPiBUaGUgZG9jdW1lbnRh
dGlvbiBmb3LCoCAtLWluLXJlcGx5LXRvPTxpZGVudGlmaWVyPiBjbGVhcmx5IHN0YXRlcyB0aGF0
IGl0IAoKTm8sIGl0IGRvZXMgbm90IHN0YXRlIHRoYXQuCgo+IHdpbGwgZ2VuZXJhdGUgdGhlIHYy
IHNlbWFudGljcyBmb3IgdGhlIHN1YmplY3QsIHlldCBpdCBkaWQgbm90LsKgIEkgdXNlZCAKCkJl
Y2F1c2UgaXQgZG9lc24ndC4uLgoKPiB0aGUgbWVzc2FnZS1pZCBmcm9tIHRoZSBmaXJzdCBtZXNz
YWdlIHNpbmNlIGl0IHdhcyBhIHR3byBlbWFpbCBwYXRjaCB0byAKCldoaWNoIHlvdSBzaG91bGQg
bm90LiBFYWNoIHN1Ym1pc3Npb24gaXMgaXRzIG93biB0aHJlYWQsIHdoaWNoIGlzCmFscmVhZHkg
ZXhwcmVzc2VkOgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuNy1yYzcvc291
cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w3ODIKCj4g
YmVnaW4gd2l0aC7CoCBJdCBpcyBub3QgY2xlYXIgdG8gbWUgd2h5IHRoaXMgZGlkIG5vdCBoYXBw
ZW4uwqAgSSB3aWxsIHNlZSAKPiBpZiBJIGNhbiBmaW5kIGEgc2FuZGJveCB0byBwcmFjdGljZSBt
eSBnZXQtc2VuZC1lbWFpbCBza2lsbHMgaW4uCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

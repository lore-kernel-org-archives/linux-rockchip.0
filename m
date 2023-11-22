Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D92C61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obuCbRhxL3UEGWMr971SozoxyVdfvSvsq58qL6aKkLk=; b=sgGEDAHkohu0ZsM7Rll8r5bHdz
	OOYNJvuKIexgZQfO6FWO+cHkryeJDvcDZhu0SXKxCn5u69pJ/D2rWgPK2SyGaKglN7R+7x8gg6VsH
	jIfT4VPnoPu3nABJ2gefOEk6lh4iHZWR3pgMY2Y9EqURus+FkKNM0zLsrMTtHJYfre+/t8sblRH5Q
	lnCCcFxnqIVeV6xFE4UpRD9KU/wfURv5JUxDUnoeUDJ2j0+GM5ytV2vFDh6OHrOLS0zwoZcpanp+t
	+IRrdBGddV/rxKUeuwKK4VvqDvs8LV/QE3YFq9LsM5iJaCPby7+vAdfDfeANzdcUb4lEWdOMElnx1
	b1chpOfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iOH-0011aY-2u;
	Wed, 22 Nov 2023 08:15:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iOC-0011Yp-2R;
	Wed, 22 Nov 2023 08:15:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1700640909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=344eE/zF04wdsbwUUyPMJHUHm7b7bgjWnD7hX0tAWOs=;
	b=y00lX2yoRuI5GcAvxxLqMeutqSIajRKfUc1DiFHsAu/omK2D9ON8PZh/mrwmVkn0jV1O9v
	8ku/Cr+kckgScDhXDY3WIJ1QbFDku3no72CtSv6go/hhUlnWJjQ+VcqEX3vLBdlanMvLGZ
	otWOZmmQraYaw+F3aqp0AA4yW8eOoWxjHLpZJpemedJ5Yc/Fp77ed4lCr+PYRBtczCKOS+
	rNj7Vw5OLhUbtwb1x4V051jPcs6xFo+IQkX/ddwUFvV/E+6lpihXxvmFwqv36Brgqhk8ga
	Ujq6mLpzvHwYNEpk/6MvJaQkf284cPLivRDsjI1xcRG10WsnjlMZNWhuk3OKbg==
Date: Wed, 22 Nov 2023 09:15:08 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Michal Simek
 <michal.simek@amd.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson
 <andersson@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko
 Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof
 Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <26b5fd29-fcd0-4c68-8bfe-a73a660fb2c9@linaro.org>
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <19358871-009d-4498-9c13-90d5338b1e9f@amd.com>
 <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
 <6c80a285-27fc-4d61-9eef-af4744a9decc@amd.com>
 <cc57dcf1-3c32-426e-920c-6f0741027797@linaro.org>
 <CAMuHMdVGyXizPw9Rggj8fQeNdbx3udRcsHFhz_sqYZzjN1CnZQ@mail.gmail.com>
 <26b5fd29-fcd0-4c68-8bfe-a73a660fb2c9@linaro.org>
Message-ID: <be7b6656e2c8064ebf1f1e6a301aa83b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_001517_439016_9930C766 
X-CRM114-Status: GOOD (  17.22  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMS0yMiAwOTowMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyMS8x
MS8yMDIzIDE3OjA0LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+IEhpIEtyenlzenRvZiwK
Pj4gCj4+IE9uIFR1ZSwgTm92IDIxLCAyMDIzIGF0IDE6MzbigK9QTSBLcnp5c3p0b2YgS296bG93
c2tpCj4+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4gT24gMjEv
MTEvMjAyMyAxMjo1NSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+Pj4+Pj4gZGV2aWNlLXRyZWUgc3Bl
Y2lmaWNhdGlvbiB2MC40LiBDaGFwdGVyIDIuMi4xL1RhYmxlIDIuMSBpcyAKPj4+Pj4+IGRlc2Ny
aWJpbmcgbXVjaCBtb3JlCj4+Pj4+PiB2YWxpZCBjaGFyYWN0ZXJzIGZvciBub2RlIG5hbWVzLgo+
Pj4+Pj4gSXQgbWVhbnMgYWJvdmUgZGVzY3JpcHRpb24gaXMgbm90IGFjY3VyYXRlIG9yIERUIHNw
ZWMgc2hvdWxkIGJlIAo+Pj4+Pj4gdXBkYXRlZC4KPj4+Pj4gCj4+Pj4+IFNwZWMgYWxsb3dzIHdh
eSB0byBtdWNoLiBkdGMgZG9lc24ndC4KPj4+Pj4gT25lIHRoaW5nIGlzIHRoZSBzcGVjLCBzZWNv
bmQKPj4+Pj4gdGhpbmcgaXMgY29kaW5nIHN0eWxlLgo+Pj4+IAo+Pj4+ICBGcm9tIG15IHBvaW50
IG9mIHZpZXcgc3BlYyBpcyBwcmltYXJ5IHNvdXJjZSBvZiB0cnV0aC4gSWYgc3BlYyBpcyAKPj4+
PiBzYXlpbmcgbmFtZQo+Pj4+IGNhbiB1c2UgdXBwZXIgY2FzZSB0aGVuIEkgY2FuIHVzZSBpdC4g
SWYgdXBwZXIgY2FzZSBpcyBub3QKPj4+PiByZWNvbW1lbmRlZC9kZXByZWNhdGVkIGJlY2F1c2Ug
b2Ygd2hhdGV2ZXIgcmVhc29uIHNwZWMgc2hvdWxkIGJlIAo+Pj4+IHVwZGF0ZWQgdG8KPj4+PiBy
ZWZsZWN0IGl0Lgo+Pj4+IEkga25vdyB0aGF0IERUQyBpcyByZXBvcnRpbmcgb3RoZXIgaXNzdWVz
IGJ1dCBpc24ndCBpdCB0aGUgcmlnaHQgd2F5IAo+Pj4+IHRvIHJlZmxlY3QKPj4+PiBpdCBiYWNr
IHRvIHRoZSBzcGVjPwo+Pj4gCj4+PiBUaGVuIHdoeSBhcmVuJ3QgeW91IHB1dHRpbmcgTGludXgg
Q29kaW5nIFN0eWxlIGludG8gQyBzcGVjPyBJIGRvIG5vdCAKPj4+IHNlZQo+Pj4gYW55IHJlbGF0
aW9uIGJldHdlZW4gc3BlY2lmaWNhdGlvbiBvZiB0aGUgbGFuZ3VhZ2UgYW5kIHRoZSBjb2Rpbmcg
Cj4+PiBzdHlsZQo+Pj4gY2hvc2VuIGZvciBnaXZlbiBwcm9qZWN0Lgo+Pj4gCj4+PiBaZXBoeXIg
Y2FuIGdvIHdpdGggdXBwZXItY2FzZS4gV2h5IGl0IHNob3VsZCBiZSBkaXNhbGxvd2VkIGJ5IHRo
ZSAKPj4+IHNwZWM/Cj4+IAo+PiBJIHRob3VnaHQgdGhlcmUgd2FzIG9ubHkgT25lIERUIHRvIGJp
bmQgdGhlbSBhbGw/Cj4+IElNSE8gaXQgd291bGQgYmUgYmV0dGVyIHRvIGFsaWduIERUIHVzYWdl
IG9mIFplcGh5ciBhbmQgTGludXggKGFuZAo+PiBhbnl0aGluZyBlbHNlKS4KPiAKPiBJIGFjdHVh
bGx5IGRvbid0IGtub3cgd2hhdCBaZXBoeXIgZGVjaWRlcywgYnV0IHVzZWQgaXQgYXMgZXhhbXBs
ZSB0aGF0Cj4gaXQgbWlnaHQgd2FudCBkaWZmZXJlbnQgY29kaW5nIHN0eWxlLiBKdXN0IGxpa2Ug
QyBzdGFuZGFyZCBhbGxvd3MgdG8KPiBoYXZlIGFsbCB2YXJpYWJsZXMgKGluY2x1ZGluZyBsb2Nh
bCBvbmVzKSB1cHBlci1jYXNlLCB3ZSBkbyBub3QgaGF2ZQo+IHN1Y2ggY29kaW5nIHN0eWxlLiBB
bmQgbm8gb25lIHByb3Bvc2VzIHRvIHVwZGF0ZSBDIHNwZWMgdG8gbWF0Y2ggTGludXgKPiBjb2Rp
bmcgc3R5bGUuIDopCgpJIGFsc28gYWdyZWUgYWJvdXQgdGhlIG5lZWQgdG8gZGlmZmVyZW50aWF0
ZSB0aGUgY29kaW5nIHN0eWxlcyBmcm9tIHRoZSAKdW5kZXJseWluZyBzcGVjaWZpY2F0aW9ucy4g
IEFsc28sIGFzIHdlIGtub3csIHRoZSBDIGxhbmd1YWdlIGlzIHRoZSAKdW5pZnlpbmcgZmFjdG9y
IGJldHdlZW4gdmFyaW91cyBwcm9qZWN0cywgYnV0IHdpdGggd2lsZGx5IGRpZmZlcmluZyAKY29k
aW5nIHN0eWxlcy4gIEV4cGVjdGluZyBhbGwgdGhvc2UgcHJvamVjdHMgdG8gaGF2ZSB0aGVpciBD
IGNvZGluZyAKc3R5bGVzIGFsaWduZWQgd291bGRuJ3QgYmUgcmVhc29uYWJsZSwgaWYgeW91IGFn
cmVlLgoKQlRXLCBoYXZpbmcgdGhpcyBkb2N1bWVudCBhcyBwYXJ0IG9mIHRoZSBrZXJuZWwgZG9j
dW1lbnRhdGlvbiB3aWxsIGJlIApncmVhdCwgYW5kIGl0J3MgaW4gZmFjdCBxdWl0ZSBvdmVyZHVl
LCBpZiB5b3UgYWdyZWUuICBIdWdlIHRoYW5rcyB0byAKZXZlcnlvbmUgd29ya2luZyBvbiBpdCEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

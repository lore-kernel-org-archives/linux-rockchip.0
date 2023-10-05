Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B81CE82CDE
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 10:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLx4EgoMDBxrT93+YvFVC8SINJHy5WFEFBPFNpBriVA=; b=orLOMxr2Y/p63J
	YXcQbqSpSZ6byBwQ9lyYzYlA6A+r5CpdvjuJtjb7Rqi/Y9/CByxn7gnD+Lg0Y+0D9JgPkSPLqzPD9
	WVCzeLAIcWELFtSV0xvSR5mRo2mcDz14LlnBaP2sK9mzPpPhGJlOPmhJA+E70WCorjYiORU8H6Gk1
	nRpiW6VKN3ru98MVTm4cBbaRRg5gxFCp4P/EbCvQwmxhpYcdEEJmJnHTS52J/uHCOiqRV2tij5kYU
	WMe/so5hBhrBCH4tkEvYbgSn+/P6a8cxs8iX8JObhgy/zooNUH4Nyb5+6YerJoQ69PHrG0dTP7l28
	LgItHKwyWbEtEQASanvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoLG7-001rFt-2v;
	Thu, 05 Oct 2023 10:07:07 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoLG4-001rEZ-0E;
	Thu, 05 Oct 2023 10:07:06 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b95622c620so152315966b.0;
        Thu, 05 Oct 2023 03:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696500420; x=1697105220; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZhNCejINv/rvRMnwXFbkozy89uWTZdk6L4MDx6KXZ3M=;
        b=huS98tRD6vSKWnnveU86ipsS+hdt13Ae8QzpdEaYhYQBrmtLEGRa8rzyB9lpyLrbWs
         vS/ECBx9yQ8KjGNxW+QTweXs8H91jObaXbOc9EOT2pD1oQad1VeCKiB6sEnXSfU8c8gm
         5udHE0VoFbYx+i4I8IfZKrLFRYybMOopaYbQUQCwUHcBCTSLMRyuFTkyGDrfHHm6QXCY
         gpa+32bZ5EuR2fU1K1lFndJQZgmxywI0ZcNmZdDji9TzVQENuUEgT3uViw91dwprgYGs
         3bw/WFX0WQk8UAGnXFyuwRWH5mCiaQXGIzKigQ5AOKS4p2UuyFbpFvAc+jXkBNCnX3rG
         pfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696500420; x=1697105220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhNCejINv/rvRMnwXFbkozy89uWTZdk6L4MDx6KXZ3M=;
        b=XRsThRoMhV38JkNGNf8El4x3aYDwmjr/AXg4jFtSdjtyrmBQNDOjV7fTZZ2x3ivP1f
         lQcuNAwj+qNiwLgxniUvWSJkLPA4R96wTVnCIg4prUEOXobHsynPJMOThN7TWFBEAZgz
         AXLxTlgRtyXk/6aXPVlqnMrqeL/2bONPXSD3gvsbvd63bHoh5WYtBu5QIz4Y2g5mI/pA
         B+gWWqy0mCzE0D/Umib9hBQY9q6ZLLDzSfTISZMpsxVCWCDl4Cb1e6hL0AtcFaCMElZx
         R3spSW2lgmbKpkjMZCR61epyaApiGjpioET8Otqu3jyCvmKgRU0jXK76oHazwiJ/RG0H
         QRvQ==
X-Gm-Message-State: AOJu0Yw01YAmKidkw3++FO9Q6RVET4yNm2p4cQsXu1e3zoSkvyba7UGQ
	AE1ysu5+UetxdulKruB5Dg==
X-Google-Smtp-Source: AGHT+IGtUzYRQnJzanS5pJVO4ZNw7dC55MP4rIku1b1FoShJe1HuVaSF4EtOHELw98Bx/KD+mJHU+g==
X-Received: by 2002:a17:906:220c:b0:9b8:a556:87a5 with SMTP id s12-20020a170906220c00b009b8a55687a5mr3963317ejs.22.1696500419691;
        Thu, 05 Oct 2023 03:06:59 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4300:8342:fd16:599d:c630? ([2a02:810b:f40:4300:8342:fd16:599d:c630])
        by smtp.gmail.com with ESMTPSA id q23-20020a17090622d700b009930308425csm915447eja.31.2023.10.05.03.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Oct 2023 03:06:59 -0700 (PDT)
Message-ID: <db6476ad-361c-427e-8f57-1ad51861b2ed@gmail.com>
Date: Thu, 5 Oct 2023 12:06:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] ARM: dts: rockchip: Disable non-required timers
 for RK3128
To: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230829203721.281455-4-knaerzche@gmail.com>
 <20230829203721.281455-14-knaerzche@gmail.com>
 <101f3b88-7151-af5c-3bd4-feb13763228b@arm.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <101f3b88-7151-af5c-3bd4-feb13763228b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_030704_116047_965E2EF4 
X-CRM114-Status: GOOD (  27.48  )
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

SGkgUm9iaW4sIEhpIEhlaWtvLAoKQW0gMzAuMDguMjMgdW0gMjA6MTcgc2NocmllYiBSb2JpbiBN
dXJwaHk6Cj4gT24gMjAyMy0wOC0yOSAyMTozNywgQWxleCBCZWUgd3JvdGU6Cj4+IFRoZSBSb2Nr
Y2hpcCB0aW1lciBsaW51eCBkcml2ZXIgY2FuIGhhbmRsZSBhIG1heGltdW0gb2YgMiB0aW1lcnMg
YW5kIAo+PiB3aWxsCj4+IGdldCBjb25mdXNlZCBpZiBtb3JlIG9mIHRoZW0gZXhpc3QuCj4KPiBX
b3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8gZml4IHRoYXQ/IEl0IGxvb2tzIHRyaXZpYWwgdG8gZG8s
IGFuZCBmcmFua2x5IAo+IGl0J3MgYSBiZWhhdmlvdXIgdGhhdCBkb2Vzbid0IG1ha2Ugc2Vuc2Ug
YW55d2F5LiBPZiBjb3Vyc2UgYSBzeXN0ZW0gCj4gY2FuIGhhdmUgbW9yZSBoYXJkd2FyZSBhdmFp
bGFibGUgdGhhbiBMaW51eCB3YW50cyB0byB1c2U7IHRoYXQncyBub3QgCj4gYW4gZXJyb3IsIGl0
J3MganVzdCBMaW51eCdzIGNob2ljZSB0byBub3QgdXNlIGl0ISBTZWUgY29tbWl0IAo+IGE5ODM5
OWNiYzFlMCAoImNsb2Nrc291cmNlL2RyaXZlcnMvc3A4MDQ6IEF2b2lkIGVycm9yIG9uIG11bHRp
cGxlIAo+IGluc3RhbmNlcyIpIGZvciBleGFtcGxlLgo+Cj4gRFRzIHNob3VsZG4ndCBiZSB0cmVh
dGVkIGxpa2UgTGludXggYm9hcmQgZmlsZXMsIHNvIGN1cmF0aW5nIHRoZW0gCj4gYXJvdW5kIExp
bnV4LXNwZWNpZmljIGRyaXZlciBiZWhhdmlvdXIgaXMgaW5hcHByb3ByaWF0ZTsgRnJlZUJTRCBv
ciAKPiBVLUJvb3Qgb3Igd2hhdGV2ZXIgYXJlIHBlcmZlY3RseSBlbnRpdGxlZCB0byBtYWtlIHVz
ZSBvZiA1IHRpbWVycyBhdCAKPiBvbmNlIGlmIHRoZXkgY2FuLgoKVGhhdCdzIGZ1bGx5IHRydWUs
IHRoYW5rcyBmb3IgdGhlIGhpbnQuCgpUaGUgY29tbW9uIFJvY2tjaGlwIHdvcmthcm91bmQgY3Vy
cmVudGx5IHNlZW1zIHRvIGJlIHRvIGp1c3QgZXhwb3NlIHRoZSAKdGltZXIocykgaW4gdGhlIERU
IHdoaWNoIGNhbiBiZSBoYW5kbGVkIGJ5IHRoZSBsaW51eCBkcml2ZXIuwqAgUkszMjg4LCAKZm9y
IGluc3RhbmNlLCBoYXMgNyB0aW1lcnMgYnV0IHRoZXJlJ3MgYSBzaW5nbGUgb25lIHByZXNlbnQg
aW4gdGhlIFNvQyAKRFQgLi4uIGFuZCBhbm90aGVyIG9uZSBpcyBlbmFibGVkIGluIHRoZSBjb21t
b24gUksgbWFjaC1jb2RlLCAuLi4uIHVwcwoKQW55d2F5OiBJJ2xsIGhhdmUgYSBsb29rIGluIHRo
ZSBSSyB0aW1lciBkcml2ZXIgYW5kIHRyeSB0byBmaXggaXQuIApUaG91Z2gsIEknbSBub3Qgc3Vy
ZSBpZiBqdXN0IGlnbm9yaW5nIHRoZSBvdGhlcnMgbGlrZSBzcDgwNCBkcml2ZXIgZG9lcyAKaXMg
c3VmZmljaWVudCwgYXMgd2Ugc3RpbGwgd2lsbCBoYXZlIHRvIGFkZCB3b3JrYXJvdW5kcyB0byB0
aGUgY2xvY2sgCmRyaXZlciBpbiBvcmRlciB0byBrZWVwIHRoZSBjbG9ja3MgZW5hYmxlZCBmb3Ig
dGhvc2UgdGltZXJzIHdoaWNoIGFyZSAKbm90IHVzZWQgYnkgbGludXgsIGJ1dCBhcmUgcmVxdWly
ZWQgKGFzIHNvdXJjZSBmb3IgdGhlIGFybSB0aW1lciwgZm9yIAppbnN0YW5jZSkuCgpUaGUgZHdf
YXBiX3RpbWVyIGRyaXZlciBzZWVtcyB0byByZWdpc3RlciB0aGUgc2Vjb25kIHRpbWVyIGFzIApj
bG9ja3NvdXJjZS0gYW5kIGFsbCBvdGhlcnMgYXMgY2xvY2tldmVudC10aW1lcnMgLi4uLiB0aGF0
IGxvb2tzIGxpa2UgCnRoZSAiYmV0dGVyIiBhcHByb2FjaCBhcm91bmQgdGhhdCBpc3N1ZS4KClJl
Z2FyZHMsCgpBbGV4Cgo+Cj4gVGhhbmtzLAo+IFJvYmluLgo+Cj4+IFJLMzEyOCBvbmx5IG5lZWRz
IHRpbWVyMCwgdGltZXIxIGFuZCB0aW1lcjUuIFRoZSBsYXR0ZXIgaXMgdGhlIHNvdXJjZQo+PiBm
b3IgdGhlIGFybS10aW1lciBhbmQgaXQncyBjbG9jayBpcyBwcmV2ZW50ZWQgZnJvbSBiZWluZyBk
aXNhYmxlZCBpbiB0aGUKPj4gY2xvY2sgZHJpdmVyIHNvIGl0IGNhbiBnZXQgZGlzYWJsZWQgaW4g
dGhlIGRldmljZSB0cmVlLCB0b28uCj4+Cj4+IEZpeGVzOiBhMDIwMWJmZjYyNTkgKCJBUk06IGR0
czogcm9ja2NoaXA6IGFkZCByazMxMjggc29jIGR0c2kiKQo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4
IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzEyOC5kdHNpIHwgNCArKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzEyOC5kdHNpIAo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzEyOC5kdHNp
Cj4+IGluZGV4IDg4YTRiMGQ2ZDkyOC4uZjNmMDc4ODE5NWQyIDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMxMjguZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9yb2NrY2hpcC9yazMxMjguZHRzaQo+PiBAQCAtMjUyLDYgKzI1Miw3IEBAIHRpbWVyMjog
dGltZXJAMjAwNDQwNDAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDU5IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tz
ID0gPCZjcnUgUENMS19USU1FUj4sIDwmY3J1IFNDTEtfVElNRVIyPjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGNsb2NrLW5hbWVzID0gInBjbGsiLCAidGltZXIiOwo+PiArwqDCoMKgwqDCoMKgwqAg
c3RhdHVzID0gImRpc2FibGVkIjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCDCoMKgwqDCoMKgIHRp
bWVyMzogdGltZXJAMjAwNDQwNjAgewo+PiBAQCAtMjYwLDYgKzI2MSw3IEBAIHRpbWVyMzogdGlt
ZXJAMjAwNDQwNjAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDYwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0g
PCZjcnUgUENMS19USU1FUj4sIDwmY3J1IFNDTEtfVElNRVIzPjsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGNsb2NrLW5hbWVzID0gInBjbGsiLCAidGltZXIiOwo+PiArwqDCoMKgwqDCoMKgwqAgc3Rh
dHVzID0gImRpc2FibGVkIjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCDCoMKgwqDCoMKgIHRpbWVy
NDogdGltZXJAMjAwNDQwODAgewo+PiBAQCAtMjY4LDYgKzI3MCw3IEBAIHRpbWVyNDogdGltZXJA
MjAwNDQwODAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDYx
IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZj
cnUgUENMS19USU1FUj4sIDwmY3J1IFNDTEtfVElNRVI0PjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGNsb2NrLW5hbWVzID0gInBjbGsiLCAidGltZXIiOwo+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHVz
ID0gImRpc2FibGVkIjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCDCoMKgwqDCoMKgIHRpbWVyNTog
dGltZXJAMjAwNDQwYTAgewo+PiBAQCAtMjc2LDYgKzI3OSw3IEBAIHRpbWVyNTogdGltZXJAMjAw
NDQwYTAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDYyIElS
UV9UWVBFX0xFVkVMX0hJR0g+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUg
UENMS19USU1FUj4sIDwmY3J1IFNDTEtfVElNRVI1PjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNs
b2NrLW5hbWVzID0gInBjbGsiLCAidGltZXIiOwo+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0g
ImRpc2FibGVkIjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCDCoMKgwqDCoMKgIHdhdGNoZG9nOiB3
YXRjaGRvZ0AyMDA0YzAwMCB7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

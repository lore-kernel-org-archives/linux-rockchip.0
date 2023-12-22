Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBB54C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bg1S1DW0l24qnarV8zKdYSD34Rxd5e4axGSX4nIa3iU=; b=wMk35NndUf1Rc4
	iDIn+FzgLFHHOZvv6xhEXWP1OH3WT43ci0Bv9aCGDetfnZOWwb9mais00wRpcVxAj5fRn2OpHEKhb
	BMHHvYy+0J3Lnz2l5ef68KZfl9LTSCmC8FlTl3s8JChsQhFwb/6YTEIMYCpXjS1TPBBpPpzvQUSW4
	lbQrIsD06IVxenDsWEGF3ZLSDq+d4rKzgE0FVwBGrtuUGWfQEFEIXaJzdIqQQtdYdXM+A6SLy3hQO
	sRD8+vkvURBStPErloRNu6EWGQcABNHNvlbMnqmI8zLYhsvTLOXA4Yog/bfBZcby532+drJvZMBXW
	pwJ4+jdrzkKjOfIVRwtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjgq-006ay4-1X;
	Fri, 22 Dec 2023 17:52:04 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjgf-006atx-26;
	Fri, 22 Dec 2023 17:51:55 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ccabf5a4beso9030331fa.2;
        Fri, 22 Dec 2023 09:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703267511; x=1703872311; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0dJEbxddZykrxGq+8fDRLJfMAa7JxIMNTLEIMv/B4fQ=;
        b=Ck8OumW5YQt/sTpc4Wm19R/jmRVbojKdUFyoDrOCseqG08GEjkCWxpApKP5TeyyJii
         uPfCiJyUFmPcSKGOJ7sUuIX/GbJLZN5mc9o7OkeYM98Dqz+oelLApXyum4hXzkbG32j8
         zjDD0hZPDnDzqwCQPomMat8eaJpHbNkP2vAzr732v/mS2BQTZUsvD4had9Qe1y2LtcVg
         5xZN8aZSJ+o68NOeyNmrM5SidhZMIRJAFnuhKtWICqSXgwkyIiCgNG5L03Q2o1Syxe3h
         IXiecbPbGbemy3bO4wlwo4jty45uvK+9owB49bqAG7P2PL0/BXN+28mLGrrMuiGrw1qp
         ykew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703267511; x=1703872311;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0dJEbxddZykrxGq+8fDRLJfMAa7JxIMNTLEIMv/B4fQ=;
        b=nenqioOD1JT3cFwKvo+PHVRnpiBuL8gzQTm21TVYe1V56HXv5mshygmO1t7udwpJE4
         /Ff3P9Xda9Jt0NwBYg4HaPUSxWV7F9NHzGEMgadAnaBflWkd41jJ3WvNcGqQTz2CHsVK
         +9nzhDPXtdSzDZuM9pMJyiMFSPfRDZwXx8CL+IGJ5McN834cJNnuzwhYpHH7nxvHIOw9
         Td52h4y5D46V5gt7ZuYotDrtBd8NB34wV/XWulGjO5O93EoV3YguvWeyycRwliOXVZmx
         RrNFeskGhdaV3veuG9FI/CHHDRe+jC5VFvUgSaQRJhSWjAB4fTZqprVSpr0CwAT/46Bf
         aVsA==
X-Gm-Message-State: AOJu0YxgyTlQYTO30PQBodNuXJ7hV+rb2ow4IN+MruZA1HU2ycrOeOq7
	Cb4GRJEZJZKjHK+Fymy3EA==
X-Google-Smtp-Source: AGHT+IGg6N4Sdte4pVXHtfKFyXwvpS+HCjlULl+zL38GRufki+8ZgaUWV81tV7LCLJJv0KeT/EWolg==
X-Received: by 2002:a2e:9611:0:b0:2cc:9548:8d31 with SMTP id v17-20020a2e9611000000b002cc95488d31mr453765ljh.184.1703267511314;
        Fri, 22 Dec 2023 09:51:51 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:f3ae:2788:7e03:f44? ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id n13-20020a05640204cd00b00554745eca8csm377398edw.59.2023.12.22.09.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Dec 2023 09:51:50 -0800 (PST)
Message-ID: <ebe86636-95aa-4766-b8d8-de5d81218537@gmail.com>
Date: Fri, 22 Dec 2023 18:51:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 19/27] drm/rockchip: inno_hdmi: Move tmds rate to
 connector state subclass
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-20-knaerzche@gmail.com>
 <xte5vjc3o77wnlozz6sy5yysiezdxbzvbwdblhbqb5s2nwnnv5@xxknftdeo6uk>
 <cbb7866c-5e72-4656-966e-9c2244afedbd@gmail.com>
In-Reply-To: <cbb7866c-5e72-4656-966e-9c2244afedbd@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_095153_687967_EA336B4F 
X-CRM114-Status: GOOD (  37.61  )
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

SGkgTWF4aW1lLAoKQW0gMTguMTIuMjMgdW0gMTM6NDkgc2NocmllYiBBbGV4IEJlZToKPgo+IEFt
IDE4LjEyLjIzIHVtIDExOjA2IHNjaHJpZWIgTWF4aW1lIFJpcGFyZDoKPj4gSGksCj4+Cj4+IE9u
IFNhdCwgRGVjIDE2LCAyMDIzIGF0IDA1OjI2OjMwUE0gKzAxMDAsIEFsZXggQmVlIHdyb3RlOgo+
Pj4gU2ltaWxhciB0byB0aGUgb3RodGVyIG1lbWJlcnMgb2YgaW5ub19oZG1pX2Nvbm5lY3Rvcl9z
dGF0ZSB0aGUgCj4+PiB0bWRzX3JhdGUgaXMKPj4+IG5vdCBhIHByb3BlcnR5IG9mIHRoZSBkZXZp
Y2UsIGJ1dCBvZiB0aGUgY29ubmVjdG9yIHN0YXRlLiBNb3ZlIGl0IHRvCj4+PiBpbm5vX2hkbWlf
Y29ubmVjdG9yX3N0YXRlIGFuZCBtYWtlIGl0IGEgbG9uZyB0byBjb21wbHkgd2l0aCB0aGUgY2xv
Y2sKPj4+IGZyYW1ld29yay4gVG8gZ2V0IGFycm91bmQgdGhlIGlzc3VlIG9mIG5vdCBoYXZpbmcg
dGhlIGNvbm5lY3RvciAKPj4+IHN0YXRlIHdoZW4KPj4+IGlubm9faGRtaV9pMmNfaW5pdCBpcyBj
YWxsZWQgaW4gdGhlIGJpbmQgcGF0aCwgZ2V0dGluZyB0aGUgdG1kcyByYXRlIGlzCj4+PiB3cmFw
cGVkIGluIGZ1bmN0aW9uIHdoaWNoIHJldHVybnMgdGhlIGZhbGxiYWNrIHJhdGUgaWYgdGhlIGNv
bm5lY3Rvcgo+Pj4gZG9lc24ndCBoYXZlIGEgc3RhdGUgeWV0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiBjaGFuZ2VzIGlu
IHYyOgo+Pj4gwqAgLSBuZXcgcGF0Y2gKPj4+Cj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvaW5ub19oZG1pLmMgfCAzNiAKPj4+ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jIAo+
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKPj4+IGluZGV4IGY5YmZh
ZTFlOTdhMi4uNjc5OWQyNDUwMWI4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2lubm9faGRtaS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5u
b19oZG1pLmMKPj4+IEBAIC00NywxNCArNDcsMTMgQEAgc3RydWN0IGlubm9faGRtaSB7Cj4+PiDC
oCDCoMKgwqDCoMKgIHN0cnVjdCBpbm5vX2hkbWlfaTJjICppMmM7Cj4+PiDCoMKgwqDCoMKgIHN0
cnVjdCBpMmNfYWRhcHRlciAqZGRjOwo+Pj4gLQo+Pj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgdG1k
c19yYXRlOwo+Pj4gwqAgfTsKPj4+IMKgIMKgIHN0cnVjdCBpbm5vX2hkbWlfY29ubmVjdG9yX3N0
YXRlIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGXCoMKgwqAgYmFz
ZTsKPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbmNf
b3V0X2Zvcm1hdDsKPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb2xvcmltZXRyeTsKPj4+ICvCoMKgwqAgdW5zaWduZWQgbG9uZ8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdG1kc19yYXRlOwo+Pj4gwqAgfTsKPj4+IMKgIMKgIHN0YXRpYyBzdHJ1Y3QgaW5u
b19oZG1pICplbmNvZGVyX3RvX2lubm9faGRtaShzdHJ1Y3QgZHJtX2VuY29kZXIgCj4+PiAqZW5j
b2RlcikKPj4+IEBAIC0xMzMsMTEgKzEzMiwzMyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaGRtaV9t
b2RiKHN0cnVjdCBpbm5vX2hkbWkgCj4+PiAqaGRtaSwgdTE2IG9mZnNldCwKPj4+IMKgwqDCoMKg
wqAgaGRtaV93cml0ZWIoaGRtaSwgb2Zmc2V0LCB0ZW1wKTsKPj4+IMKgIH0KPj4+IMKgICtzdGF0
aWMgdW5zaWduZWQgbG9uZyBpbm5vX2hkbWlfdG1kc19yYXRlKHN0cnVjdCBpbm5vX2hkbWkgKmhk
bWkpCj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0g
JmhkbWktPmNvbm5lY3RvcjsKPj4+ICvCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUgPSBjb25uZWN0b3ItPnN0YXRlOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgaW5ub19o
ZG1pX2Nvbm5lY3Rvcl9zdGF0ZSAqaW5ub19jb25uX3N0YXRlOwo+Pj4gKwo+Pj4gK8KgwqDCoCBp
ZiAoY29ubl9zdGF0ZSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlubm9fY29ubl9zdGF0ZSA9IHRv
X2lubm9faGRtaV9jb25uX3N0YXRlKGNvbm5fc3RhdGUpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiBpbm5vX2Nvbm5fc3RhdGUtPnRtZHNfcmF0ZTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4g
K8KgwqDCoCAvKgo+Pj4gK8KgwqDCoMKgICogV2hlbiBJUCBjb250cm9sbGVyIGhhdmVuJ3QgY29u
ZmlndXJlZCB0byBhbiBhY2N1cmF0ZSB2aWRlbwo+Pj4gK8KgwqDCoMKgICogdGltaW5nLCB0aGVu
IHRoZSBUTURTIGNsb2NrIHNvdXJjZSB3b3VsZCBiZSBzd2l0Y2hlZCB0bwo+Pj4gK8KgwqDCoMKg
ICogUENMS19IRE1JLCBzbyB3ZSBuZWVkIHRvIGluaXQgdGhlIFRNRFMgcmF0ZSB0byBQQ0xLIHJh
dGUsCj4+PiArwqDCoMKgwqAgKiBhbmQgcmVjb25maWd1cmUgdGhlIEREQyBjbG9jay4KPj4+ICvC
oMKgwqDCoCAqLwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gY2xrX2dldF9yYXRlKGhkbWktPnBj
bGspOwo+Pj4gK30KPj4+ICsKPj4+IMKgIHN0YXRpYyB2b2lkIGlubm9faGRtaV9pMmNfaW5pdChz
dHJ1Y3QgaW5ub19oZG1pICpoZG1pKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBpbnQgZGRjX2J1
c19mcmVxOwo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIHRtZHNfcmF0ZSA9IGlubm9faGRtaV90
bWRzX3JhdGUoaGRtaSk7Cj4+PiDCoCAtwqDCoMKgIGRkY19idXNfZnJlcSA9IChoZG1pLT50bWRz
X3JhdGUgPj4gMikgLyBIRE1JX1NDTF9SQVRFOwo+Pj4gK8KgwqDCoCBkZGNfYnVzX2ZyZXEgPSAo
dG1kc19yYXRlID4+IDIpIC8gSERNSV9TQ0xfUkFURTsKPj4+IMKgIMKgwqDCoMKgwqAgaGRtaV93
cml0ZWIoaGRtaSwgRERDX0JVU19GUkVRX0wsIGRkY19idXNfZnJlcSAmIDB4RkYpOwo+Pj4gwqDC
oMKgwqDCoCBoZG1pX3dyaXRlYihoZG1pLCBERENfQlVTX0ZSRVFfSCwgKGRkY19idXNfZnJlcSA+
PiA4KSAmIDB4RkYpOwo+Pj4gQEAgLTQzMSw3ICs0NTIsNyBAQCBzdGF0aWMgaW50IGlubm9faGRt
aV9zZXR1cChzdHJ1Y3QgaW5ub19oZG1pICpoZG1pLAo+Pj4gwqDCoMKgwqDCoMKgICogRENMS19M
Q0RDLCBzbyB3ZSBuZWVkIHRvIGluaXQgdGhlIFRNRFMgcmF0ZSB0byBtb2RlIHBpeGVsCj4+PiDC
oMKgwqDCoMKgwqAgKiBjbG9jayByYXRlLCBhbmQgcmVjb25maWd1cmUgdGhlIEREQyBjbG9jay4K
Pj4+IMKgwqDCoMKgwqDCoCAqLwo+Pj4gLcKgwqDCoCBoZG1pLT50bWRzX3JhdGUgPSBtb2RlLT5j
bG9jayAqIDEwMDA7Cj4+PiArwqDCoMKgIGlubm9fY29ubl9zdGF0ZS0+dG1kc19yYXRlID0gbW9k
ZS0+Y2xvY2sgKiAxMDAwOwo+Pj4gwqDCoMKgwqDCoCBpbm5vX2hkbWlfaTJjX2luaXQoaGRtaSk7
Cj4+PiDCoCDCoMKgwqDCoMKgIC8qIFVubXV0ZSB2aWRlbyBhbmQgYXVkaW8gb3V0cHV0ICovCj4+
PiBAQCAtODIzLDEzICs4NDQsNiBAQCBzdGF0aWMgaW50IGlubm9faGRtaV9iaW5kKHN0cnVjdCBk
ZXZpY2UgKmRldiwgCj4+PiBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgZ290byBlcnJfZGlzYWJsZV9jbGs7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3CoMKg
wqAgLyoKPj4+IC3CoMKgwqDCoCAqIFdoZW4gSVAgY29udHJvbGxlciBoYXZlbid0IGNvbmZpZ3Vy
ZWQgdG8gYW4gYWNjdXJhdGUgdmlkZW8KPj4+IC3CoMKgwqDCoCAqIHRpbWluZywgdGhlbiB0aGUg
VE1EUyBjbG9jayBzb3VyY2Ugd291bGQgYmUgc3dpdGNoZWQgdG8KPj4+IC3CoMKgwqDCoCAqIFBD
TEtfSERNSSwgc28gd2UgbmVlZCB0byBpbml0IHRoZSBUTURTIHJhdGUgdG8gUENMSyByYXRlLAo+
Pj4gLcKgwqDCoMKgICogYW5kIHJlY29uZmlndXJlIHRoZSBEREMgY2xvY2suCj4+PiAtwqDCoMKg
wqAgKi8KPj4+IC3CoMKgwqAgaGRtaS0+dG1kc19yYXRlID0gY2xrX2dldF9yYXRlKGhkbWktPnBj
bGspOwo+Pj4gwqDCoMKgwqDCoCBpbm5vX2hkbWlfaTJjX2luaXQoaGRtaSk7Cj4+IEkgc3RpbGwg
dGhpbmsgbXkgcGF0Y2ggaXMgYmV0dGVyIHRoZXJlLgo+PgpJIGZvdW5kIGEgd2F5IG5vdyBhbmQg
YWRkZWQgeW91ciBwYXRjaCB3aGljaCByZW1vdmVzIHRoZSB0bWRzX3JhdGU6IEkKbm90aWNlZCBw
b3dlcmluZyB1cCB0aGUgcGh5IGluaXRpYWxseSBpc24ndCBuZWNlc3NhcnkgYXQgYWxsIChhbmQg
bWFrZXMgbm8Kc2Vuc2UpLiBJIHJlZmFjdG9yZWTCoGlubm9faGRtaV9zZXRfcHdyX21vZGUgaW4g
dHdvIGZ1bmN0aW9ucyAoaW4gYSBzaW1pbGFyCndheSB5b3UgZGlkIGZvciB0aGUgaW5mb2ZyYW1l
KSwgc28gdGhhdCB0aGUgdG1kcyByYXRlIChwaXhlbGNsb2NrKSBpcyBvbmx5Cm5lZWRlZCBhcyBw
YXJhbWV0ZXIgd2hlbiBhIG1vZGUgaXMgc2V0LgoKQWxleAoKPj4gVGhlcmUncyB0d28gcGxhY2Vz
IHRoYXQgdXNlIHRoZSBpbm5vX2hkbWkudG1kc19yYXRlIGZpZWxkOiB0aGUgdHdvCj4+IGNhbGxl
cnMgb2YgaW5ub19oZG1pX2kyY19pbml0KCkuIE9uZSBpcyBhdCBiaW5kIHRpbWUgYW5kIG5lZWRz
IHRvCj4+IGluaXRpYWxpc2UgaXQgd2l0aCBhIHNhbmUgZGVmYXVsdCBzaW5jZSB3ZSBkb24ndCBo
YXZlIGEgbW9kZSBzZXQgeWV0LAo+PiB0aGUgb3RoZXIgaXMgdG8gdXBkYXRlIHRoZSBpbnRlcm5h
bCBjbG9jayByYXRlIHdoaWxlIHdlIGhhdmUgYSBtb2RlIHNldC4KPiBUaGF04oCZcywgdW5mb3J0
dW5hdGVseSwgbm90IGZ1bGx5IHRydWU6IGlubm9faGRtaV9zZXRfcHdyX21vZGUgbm90IG9ubHkK
PiBjYWxsZWQgYXQgbW9kZV9zZXQtdGltZSwgYnV0IGFsc28gaW4gaW5ub19oZG1pX3Jlc2V0IHdo
aWNoIGlzIGNhbGxlZCAKPiBpbiB0aGUKPiBiaW5kIHBhdGggKHdoZXJlIHdlIGRvIG5vdCBoYXZl
IGEgbW9kZSkuIFRoYXTigJlzIHRoZSBwb2ludCB3aHkgSSB0aG91Z2h0Cj4gZXh0cmFjdGluZyB0
aGlzIGluIGZ1bmN0aW9uIG1ha2VzIHNlbnNlLiBPdGhlcndpc2UgSSB3b3VsZCBoYXZlIHRvIAo+
IHBhc3MgdGhlCj4gdG1kc19yYXRlIHRvIGlubm9faGRtaV9zZXRfcHdyX21vZGUgKGFsc28gZm9y
IHRoZSBMT1dFUl9QV1ItY2FzZSB3aGVyZSBJCj4gZG9uJ3QgbmVlZCBpdCkgb3IgZG8gdGhhdCB3
aG9sZSBmYWxsYmFjay1pZi1uby1tb2RlIHRoaW5nIGluCj4gaW5ub19oZG1pX3NldF9wd3JfbW9k
ZSBkaXJlY3RseS4gTmVpdGhlciB3b3VsZCBtYWtlIHRoZSBjb2RlIGVhc2llciB0bwo+IGZvbGxv
dy4gQmVpbmcgYWJsZSB0byB1c2UgaXQgaW4gaW5ub19oZG1pX2kyY19pbml0IGFsc28gaXMgYSBu
aWNlIAo+IGdpbW1pY2suCj4gSSBhZ3JlZSwgaGF2aW5nIGl0IGluIHRoZSBjdXN0b20gY29ubmVj
dG9yIHN0YXRlIGlzIG5vdCBzdHJpY3RseSAKPiByZXF1aXJlZCwKPiBidXQgSSdkIHJlYWxseSBs
aWtlIHRvIGtlZXAgdGhlIHdyYXBwaW5nIGZ1bmN0aW9uLgo+Cj4gQWxleAo+Cj4+IFNpbmNlIHRo
ZXJlJ3MgYSBzaW5nbGUgIm1vZGVzZXQiIHVzZXIsIHRoZXJlJ3Mgbm8gbmVlZCB0byBzdG9yZSBp
dCBpbgo+PiB0aGUgc3RhdGUgc3RydWN0dXJlIGF0IGFsbDogaXQgY2FuIGJlIGEgbG9jYWwgdmFy
aWFibGUuCj4+Cj4+IEFuZCBpbiB0aGUgYmluZCBmdW5jdGlvbiwgeW91J3JlIG5vdCBnb2luZyB0
byB1c2UgdGhlIHN0YXRlIHN0cnVjdHVyZQo+PiBlaXRoZXIgc2luY2UgdGhlcmUncyBubyBzdGF0
ZSwgYW5kIGl0J3MganVzdCBhIGRlZmF1bHQgdGhhdCBoYXMgbm8KPj4gcmVsYXRpb24gdG8gdGhl
IG1vZGVzZXQgY29kZSBhdCBhbGwuCj4+Cj4+IFlvdXIgZnVuY3Rpb24gb24gdGhlIG90aGVyIGVu
ZCB0cmllcyB0byByZWNvbmNpbGUgYW5kIGhhbmRsZSB0aGUgdHdvLgo+PiBCdXQgdGhlcmUncyBu
byByZWFzb24gdG8sIGl0IGp1c3QgbWFrZXMgdGhlIGNvZGUgaGFyZGVyIHRvIGZvbGxvdy4gSnVz
dAo+PiBwYXNzIHRoZSBwYXJlbnQgcmF0ZSB5b3Ugd2FudCB0byBpbml0IHdpdGggYXMgYW4gYXJn
dW1lbnQgYW5kIGl0J3MgZWFzeQo+PiB0byByZWFkIGFuZCBtYWludGFpbi4KPj4KPj4gTWF4aW1l
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

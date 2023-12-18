Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C51EC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 12:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqD1qMZltWJd20+oX+It7Sy8edll/LT0RwZtds5tgRA=; b=0iJlAd1sga2bOC
	6rN46aZuTJOIEOeLSV8uwSpQsVrPMdkzTuA2IXofSEeSeJiKRerEjYkrgmtj/hme53a2a9P/WTbkn
	meqAAfNUKHJDYUzXe4jr3cbFgoP2nIMxdEDbHMnkblfpKydIAPedsXeUezwpefiymfie50TNoDeNz
	c1iAzfr4/5CMQm1F3DvyhSEx9m3ph3rxUFePuPyfKrc8DBmJWas5xSsIHaq/X/drwec23bJ+Y0pqe
	kBNRKs4vLF5+wJUGUpq/1etP2haJVXrXvgKCUFL1Qg/RnfjJ2INy7hVYej9J05ZTuxJhd+T8IoEST
	N76o+fHeiyskJntNMJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFD4N-00AhQk-1V;
	Mon, 18 Dec 2023 12:50:03 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFD4J-00AhNY-0Z;
	Mon, 18 Dec 2023 12:50:00 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a1ca24776c3so762003066b.0;
        Mon, 18 Dec 2023 04:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702903794; x=1703508594; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T14bfi8c3k3Cq7TyZI+9Bh5hDSnSWfc6TpVsvOYBPic=;
        b=ZP6b1v+kfTAbQNSNFaH6AXULhRNmSPPSjNrZHXzx67VSydgRRGForC2tW5Qdf4ruXn
         F3+kBZNSZ/B9WY0IzFeHLw5W6fd6z1pmaZTcSbklPt/ZKGrUWCiGxQ8RJKMxzwAlXutn
         SYwBbg8lZRRJI/aGJxrrxivMiTdRfWhYcCsExhZ8I1QMXGODcZQz9hZk70rFFkqGfinz
         XKr3dwoNmmoUdWArrf5ixklcsaRrY2aGXc+2fGZnkrAk2UCpnOxP7uJaGunBbKQiZGXZ
         VzwJFBXHH+xI4roVcV6xSQJCWTdf6+Wq66BRS7O5TyXmJuLtDvzpZpWbYm0yTQET5Aeg
         1sBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702903794; x=1703508594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T14bfi8c3k3Cq7TyZI+9Bh5hDSnSWfc6TpVsvOYBPic=;
        b=DPlsQSpXr2HGoE+KaJluWSEyKn16m+bEUG/eD8PdzUW/0SMCGpqi64k67Zf/Mh5WFY
         oY/VRMG11ahi0r+1TphxU263zD6Rp3O6nj1shf+9bG3q6vh7u/0qmvJ1KJ2tCCkCfbQ4
         YUvm2MZn0qUAB9SYIlvGaehZjVq4mVSBB5pdmPMM4/DaKIjmNcm32uyYi7cIRCDeSFD9
         ELKq6dbtHdNMqhlPZh9jd5ZQLeeq7mU4rcA3V4irE4D+CQurmr4JJOfoZSdYFVmPMOy4
         EfaXM2/++/20Ws2X+oah/pzgjYohDYkP1j3rMiJ4lOcSp074l5RoqRnpBfA7HtvFpxbs
         SR6Q==
X-Gm-Message-State: AOJu0Yw+uGSIPlE7GdpHvdoj+3VNucMmJ7+vr6fwJ4P0A42Cf6RIQG3f
	KjxHt7MJJTOSE63xLHIZig==
X-Google-Smtp-Source: AGHT+IGfWK90TdMckm2zjiMGKfCaGR5Yp/VaGkOH1VvcUP7n1r7V+E8WHGK7QCmauy9RUW/2J23nTg==
X-Received: by 2002:a17:906:241:b0:a1e:842d:ccd5 with SMTP id 1-20020a170906024100b00a1e842dccd5mr14599317ejl.48.1702903793489;
        Mon, 18 Dec 2023 04:49:53 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:4847:f8df:b40e:3aa8? ([2a02:810b:f40:4300:4847:f8df:b40e:3aa8])
        by smtp.gmail.com with ESMTPSA id vu8-20020a170907a64800b00a1d5c52d628sm14063947ejc.3.2023.12.18.04.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 04:49:53 -0800 (PST)
Message-ID: <cbb7866c-5e72-4656-966e-9c2244afedbd@gmail.com>
Date: Mon, 18 Dec 2023 13:49:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 19/27] drm/rockchip: inno_hdmi: Move tmds rate to
 connector state subclass
Content-Language: en-US, de-DE
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
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <xte5vjc3o77wnlozz6sy5yysiezdxbzvbwdblhbqb5s2nwnnv5@xxknftdeo6uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_044959_215140_D630798A 
X-CRM114-Status: GOOD (  38.89  )
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

CkFtIDE4LjEyLjIzIHVtIDExOjA2IHNjaHJpZWIgTWF4aW1lIFJpcGFyZDoKPiBIaSwKPgo+IE9u
IFNhdCwgRGVjIDE2LCAyMDIzIGF0IDA1OjI2OjMwUE0gKzAxMDAsIEFsZXggQmVlIHdyb3RlOgo+
PiBTaW1pbGFyIHRvIHRoZSBvdGh0ZXIgbWVtYmVycyBvZiBpbm5vX2hkbWlfY29ubmVjdG9yX3N0
YXRlIHRoZSB0bWRzX3JhdGUgaXMKPj4gbm90IGEgcHJvcGVydHkgb2YgdGhlIGRldmljZSwgYnV0
IG9mIHRoZSBjb25uZWN0b3Igc3RhdGUuIE1vdmUgaXQgdG8KPj4gaW5ub19oZG1pX2Nvbm5lY3Rv
cl9zdGF0ZSBhbmQgbWFrZSBpdCBhIGxvbmcgdG8gY29tcGx5IHdpdGggdGhlIGNsb2NrCj4+IGZy
YW1ld29yay4gVG8gZ2V0IGFycm91bmQgdGhlIGlzc3VlIG9mIG5vdCBoYXZpbmcgdGhlIGNvbm5l
Y3RvciBzdGF0ZSB3aGVuCj4+IGlubm9faGRtaV9pMmNfaW5pdCBpcyBjYWxsZWQgaW4gdGhlIGJp
bmQgcGF0aCwgZ2V0dGluZyB0aGUgdG1kcyByYXRlIGlzCj4+IHdyYXBwZWQgaW4gZnVuY3Rpb24g
d2hpY2ggcmV0dXJucyB0aGUgZmFsbGJhY2sgcmF0ZSBpZiB0aGUgY29ubmVjdG9yCj4+IGRvZXNu
J3QgaGF2ZSBhIHN0YXRlIHlldC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtuYWVy
emNoZUBnbWFpbC5jb20+Cj4+IC0tLQo+PiBjaGFuZ2VzIGluIHYyOgo+PiAgIC0gbmV3IHBhdGNo
Cj4+Cj4+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jIHwgMzYgKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9pbm5vX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWku
Ywo+PiBpbmRleCBmOWJmYWUxZTk3YTIuLjY3OTlkMjQ1MDFiOCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+PiBAQCAtNDcsMTQgKzQ3LDEzIEBAIHN0cnVjdCBpbm5v
X2hkbWkgewo+PiAgIAo+PiAgIAlzdHJ1Y3QgaW5ub19oZG1pX2kyYyAqaTJjOwo+PiAgIAlzdHJ1
Y3QgaTJjX2FkYXB0ZXIgKmRkYzsKPj4gLQo+PiAtCXVuc2lnbmVkIGludCB0bWRzX3JhdGU7Cj4+
ICAgfTsKPj4gICAKPj4gICBzdHJ1Y3QgaW5ub19oZG1pX2Nvbm5lY3Rvcl9zdGF0ZSB7Cj4+ICAg
CXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlCWJhc2U7Cj4+ICAgCXVuc2lnbmVkIGludAkJCWVu
Y19vdXRfZm9ybWF0Owo+PiAgIAl1bnNpZ25lZCBpbnQJCQljb2xvcmltZXRyeTsKPj4gKwl1bnNp
Z25lZCBsb25nCQkJdG1kc19yYXRlOwo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIHN0cnVjdCBp
bm5vX2hkbWkgKmVuY29kZXJfdG9faW5ub19oZG1pKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rl
cikKPj4gQEAgLTEzMywxMSArMTMyLDMzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBoZG1pX21vZGIo
c3RydWN0IGlubm9faGRtaSAqaGRtaSwgdTE2IG9mZnNldCwKPj4gICAJaGRtaV93cml0ZWIoaGRt
aSwgb2Zmc2V0LCB0ZW1wKTsKPj4gICB9Cj4+ICAgCj4+ICtzdGF0aWMgdW5zaWduZWQgbG9uZyBp
bm5vX2hkbWlfdG1kc19yYXRlKHN0cnVjdCBpbm5vX2hkbWkgKmhkbWkpCj4+ICt7Cj4+ICsJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9ICZoZG1pLT5jb25uZWN0b3I7Cj4+ICsJc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUgPSAgY29ubmVjdG9yLT5zdGF0ZTsK
Pj4gKwlzdHJ1Y3QgaW5ub19oZG1pX2Nvbm5lY3Rvcl9zdGF0ZSAqaW5ub19jb25uX3N0YXRlOwo+
PiArCj4+ICsJaWYgKGNvbm5fc3RhdGUpIHsKPj4gKwkJaW5ub19jb25uX3N0YXRlID0gdG9faW5u
b19oZG1pX2Nvbm5fc3RhdGUoY29ubl9zdGF0ZSk7Cj4+ICsJCXJldHVybiBpbm5vX2Nvbm5fc3Rh
dGUtPnRtZHNfcmF0ZTsKPj4gKwl9Cj4+ICsKPj4gKwkvKgo+PiArCSAqIFdoZW4gSVAgY29udHJv
bGxlciBoYXZlbid0IGNvbmZpZ3VyZWQgdG8gYW4gYWNjdXJhdGUgdmlkZW8KPj4gKwkgKiB0aW1p
bmcsIHRoZW4gdGhlIFRNRFMgY2xvY2sgc291cmNlIHdvdWxkIGJlIHN3aXRjaGVkIHRvCj4+ICsJ
ICogUENMS19IRE1JLCBzbyB3ZSBuZWVkIHRvIGluaXQgdGhlIFRNRFMgcmF0ZSB0byBQQ0xLIHJh
dGUsCj4+ICsJICogYW5kIHJlY29uZmlndXJlIHRoZSBEREMgY2xvY2suCj4+ICsJICovCj4+ICsK
Pj4gKwlyZXR1cm4gY2xrX2dldF9yYXRlKGhkbWktPnBjbGspOwo+PiArfQo+PiArCj4+ICAgc3Rh
dGljIHZvaWQgaW5ub19oZG1pX2kyY19pbml0KHN0cnVjdCBpbm5vX2hkbWkgKmhkbWkpCj4+ICAg
ewo+PiAgIAlpbnQgZGRjX2J1c19mcmVxOwo+PiArCXVuc2lnbmVkIGxvbmcgdG1kc19yYXRlID0g
aW5ub19oZG1pX3RtZHNfcmF0ZShoZG1pKTsKPj4gICAKPj4gLQlkZGNfYnVzX2ZyZXEgPSAoaGRt
aS0+dG1kc19yYXRlID4+IDIpIC8gSERNSV9TQ0xfUkFURTsKPj4gKwlkZGNfYnVzX2ZyZXEgPSAo
dG1kc19yYXRlID4+IDIpIC8gSERNSV9TQ0xfUkFURTsKPj4gICAKPj4gICAJaGRtaV93cml0ZWIo
aGRtaSwgRERDX0JVU19GUkVRX0wsIGRkY19idXNfZnJlcSAmIDB4RkYpOwo+PiAgIAloZG1pX3dy
aXRlYihoZG1pLCBERENfQlVTX0ZSRVFfSCwgKGRkY19idXNfZnJlcSA+PiA4KSAmIDB4RkYpOwo+
PiBAQCAtNDMxLDcgKzQ1Miw3IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX3NldHVwKHN0cnVjdCBp
bm5vX2hkbWkgKmhkbWksCj4+ICAgCSAqIERDTEtfTENEQywgc28gd2UgbmVlZCB0byBpbml0IHRo
ZSBUTURTIHJhdGUgdG8gbW9kZSBwaXhlbAo+PiAgIAkgKiBjbG9jayByYXRlLCBhbmQgcmVjb25m
aWd1cmUgdGhlIEREQyBjbG9jay4KPj4gICAJICovCj4+IC0JaGRtaS0+dG1kc19yYXRlID0gbW9k
ZS0+Y2xvY2sgKiAxMDAwOwo+PiArCWlubm9fY29ubl9zdGF0ZS0+dG1kc19yYXRlID0gbW9kZS0+
Y2xvY2sgKiAxMDAwOwo+PiAgIAlpbm5vX2hkbWlfaTJjX2luaXQoaGRtaSk7Cj4+ICAgCj4+ICAg
CS8qIFVubXV0ZSB2aWRlbyBhbmQgYXVkaW8gb3V0cHV0ICovCj4+IEBAIC04MjMsMTMgKzg0NCw2
IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
ZGV2aWNlICptYXN0ZXIsCj4+ICAgCQlnb3RvIGVycl9kaXNhYmxlX2NsazsKPj4gICAJfQo+PiAg
IAo+PiAtCS8qCj4+IC0JICogV2hlbiBJUCBjb250cm9sbGVyIGhhdmVuJ3QgY29uZmlndXJlZCB0
byBhbiBhY2N1cmF0ZSB2aWRlbwo+PiAtCSAqIHRpbWluZywgdGhlbiB0aGUgVE1EUyBjbG9jayBz
b3VyY2Ugd291bGQgYmUgc3dpdGNoZWQgdG8KPj4gLQkgKiBQQ0xLX0hETUksIHNvIHdlIG5lZWQg
dG8gaW5pdCB0aGUgVE1EUyByYXRlIHRvIFBDTEsgcmF0ZSwKPj4gLQkgKiBhbmQgcmVjb25maWd1
cmUgdGhlIEREQyBjbG9jay4KPj4gLQkgKi8KPj4gLQloZG1pLT50bWRzX3JhdGUgPSBjbGtfZ2V0
X3JhdGUoaGRtaS0+cGNsayk7Cj4+ICAgCWlubm9faGRtaV9pMmNfaW5pdChoZG1pKTsKPiBJIHN0
aWxsIHRoaW5rIG15IHBhdGNoIGlzIGJldHRlciB0aGVyZS4KPgo+IFRoZXJlJ3MgdHdvIHBsYWNl
cyB0aGF0IHVzZSB0aGUgaW5ub19oZG1pLnRtZHNfcmF0ZSBmaWVsZDogdGhlIHR3bwo+IGNhbGxl
cnMgb2YgaW5ub19oZG1pX2kyY19pbml0KCkuIE9uZSBpcyBhdCBiaW5kIHRpbWUgYW5kIG5lZWRz
IHRvCj4gaW5pdGlhbGlzZSBpdCB3aXRoIGEgc2FuZSBkZWZhdWx0IHNpbmNlIHdlIGRvbid0IGhh
dmUgYSBtb2RlIHNldCB5ZXQsCj4gdGhlIG90aGVyIGlzIHRvIHVwZGF0ZSB0aGUgaW50ZXJuYWwg
Y2xvY2sgcmF0ZSB3aGlsZSB3ZSBoYXZlIGEgbW9kZSBzZXQuClRoYXTigJlzLCB1bmZvcnR1bmF0
ZWx5LCBub3QgZnVsbHkgdHJ1ZTogaW5ub19oZG1pX3NldF9wd3JfbW9kZSBub3Qgb25seQpjYWxs
ZWQgYXQgbW9kZV9zZXQtdGltZSwgYnV0IGFsc28gaW4gaW5ub19oZG1pX3Jlc2V0IHdoaWNoIGlz
IGNhbGxlZCBpbiB0aGUKYmluZCBwYXRoICh3aGVyZSB3ZSBkbyBub3QgaGF2ZSBhIG1vZGUpLiBU
aGF04oCZcyB0aGUgcG9pbnQgd2h5IEkgdGhvdWdodApleHRyYWN0aW5nIHRoaXMgaW4gZnVuY3Rp
b24gbWFrZXMgc2Vuc2UuIE90aGVyd2lzZSBJIHdvdWxkIGhhdmUgdG8gcGFzcyB0aGUKdG1kc19y
YXRlIHRvIGlubm9faGRtaV9zZXRfcHdyX21vZGUgKGFsc28gZm9yIHRoZSBMT1dFUl9QV1ItY2Fz
ZSB3aGVyZSBJCmRvbid0IG5lZWQgaXQpIG9yIGRvIHRoYXQgd2hvbGUgZmFsbGJhY2staWYtbm8t
bW9kZSB0aGluZyBpbgppbm5vX2hkbWlfc2V0X3B3cl9tb2RlIGRpcmVjdGx5LiBOZWl0aGVyIHdv
dWxkIG1ha2UgdGhlIGNvZGUgZWFzaWVyIHRvCmZvbGxvdy4gQmVpbmcgYWJsZSB0byB1c2UgaXQg
aW4gaW5ub19oZG1pX2kyY19pbml0IGFsc28gaXMgYSBuaWNlIGdpbW1pY2suCkkgYWdyZWUsIGhh
dmluZyBpdCBpbiB0aGUgY3VzdG9tIGNvbm5lY3RvciBzdGF0ZSBpcyBub3Qgc3RyaWN0bHkgcmVx
dWlyZWQsCmJ1dCBJJ2QgcmVhbGx5IGxpa2UgdG8ga2VlcCB0aGUgd3JhcHBpbmcgZnVuY3Rpb24u
CgpBbGV4Cgo+IFNpbmNlIHRoZXJlJ3MgYSBzaW5nbGUgIm1vZGVzZXQiIHVzZXIsIHRoZXJlJ3Mg
bm8gbmVlZCB0byBzdG9yZSBpdCBpbgo+IHRoZSBzdGF0ZSBzdHJ1Y3R1cmUgYXQgYWxsOiBpdCBj
YW4gYmUgYSBsb2NhbCB2YXJpYWJsZS4KPgo+IEFuZCBpbiB0aGUgYmluZCBmdW5jdGlvbiwgeW91
J3JlIG5vdCBnb2luZyB0byB1c2UgdGhlIHN0YXRlIHN0cnVjdHVyZQo+IGVpdGhlciBzaW5jZSB0
aGVyZSdzIG5vIHN0YXRlLCBhbmQgaXQncyBqdXN0IGEgZGVmYXVsdCB0aGF0IGhhcyBubwo+IHJl
bGF0aW9uIHRvIHRoZSBtb2Rlc2V0IGNvZGUgYXQgYWxsLgo+Cj4gWW91ciBmdW5jdGlvbiBvbiB0
aGUgb3RoZXIgZW5kIHRyaWVzIHRvIHJlY29uY2lsZSBhbmQgaGFuZGxlIHRoZSB0d28uCj4gQnV0
IHRoZXJlJ3Mgbm8gcmVhc29uIHRvLCBpdCBqdXN0IG1ha2VzIHRoZSBjb2RlIGhhcmRlciB0byBm
b2xsb3cuIEp1c3QKPiBwYXNzIHRoZSBwYXJlbnQgcmF0ZSB5b3Ugd2FudCB0byBpbml0IHdpdGgg
YXMgYW4gYXJndW1lbnQgYW5kIGl0J3MgZWFzeQo+IHRvIHJlYWQgYW5kIG1haW50YWluLgo+Cj4g
TWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

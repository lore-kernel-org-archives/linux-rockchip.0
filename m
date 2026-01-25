Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C31DE63CBF
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jan 2026 18:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnC1uP1Tbs75nUXHsieEwpmTzeA/KZtWgNtLCeQAoog=; b=Xqk4gigYnO59DS
	aVV2Q4Cpom4RDuOhwOFqMJPWJXr6csXWWdnfMIf42rk+LB1D+vu30ImXwLRFbbY4idUx//eUTX6ie
	UimmtOiv17KVQ+zP1sKgL5j3xvMiN9RaBxWaOB25Wcvmc+GqHM/qnnuqwCuiN/70BGnVJQ2Ig5+BK
	+A0iMFiyzpwGCiCGTjVN4xHNe+aW6V21YMjOhfhp6TG6fRMzK86fy3DSRR7TWNW4+jaR+vB8akfgx
	adoRbRDewmci8h/0MGXFIN51XFt1/iDVrDSlZqI9QUbod06fKPH45dQy7SSKeTHqCCrxxaLWaVdlP
	MPx7S2AIvvwAoxvtqBDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk57V-0000000BPPP-4C4v;
	Sun, 25 Jan 2026 18:45:58 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk57T-0000000BPOO-1qeN;
	Sun, 25 Jan 2026 18:45:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5E0F641B4A;
	Sun, 25 Jan 2026 19:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1769366752; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ZrG6WDsV+mJXUtMhDV9DQtV1cfGpkAXeDDeqY6eDHFk=;
	b=GRhGLAsoB0NY3YG2IuRCx3e9PAqd0NKFa3vesTIaHF5rkGyeIgJPillci5hzU87ywXXxQj
	97jJj/cAp1OhCCW7VLzDqVoEwju0X7UcHyl2MBOYfVWXtsjw6gSQxlQoM+UWSlKbaoJ45Q
	QnH5UAReI7bPmTj7j6znid6Kba5zSi2vmQbPYx52qHntuhaR3S2YcDfiTf4Q5+sEW8RV1s
	knaPhlp+T+k64OiMV+mD/VfLFY0DqL4Pw9Il8D3pviNP7PK5JoYkjFBqOrtegvkcKccSHj
	IWfRw3DVsiF0BZgpefixgTaJ0EAOABg7ijpX5SaNqQGp4teqJu3nmHmBjxBQlQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260125181228.25145-1-sigmaris@gmail.com>
References: <20260125181228.25145-1-sigmaris@gmail.com>
Date: Sun, 25 Jan 2026 19:45:51 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
MIME-Version: 1.0
Message-ID: <8b1a5b5e-c917-f101-6472-9071afb145d0@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= add pwm-fan for NanoPC-T6
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_104555_652655_1B5C5459 
X-CRM114-Status: GOOD (  13.47  )
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

SGVsbG8gSHVnaCwKCk9uIFN1bmRheSwgSmFudWFyeSAyNSwgMjAyNiAxOToxMCBDRVQsIEh1Z2gg
Q29sZS1CYWtlciA8c2lnbWFyaXNAZ21haWwuY29tPiB3cm90ZToKPiBGcmllbmRseUVMRUMgb2Zm
ZXJzIGFuIG9wdGlvbmFsIGhlYXRzaW5rIGFuZCBmYW4gYWRkb24gWzFdIGZvciB0aGUKPiBOYW5v
UEMtVDYgYW5kIFQ2IExUUywgd2hpY2ggcGx1Z3MgaW4gdG8gdGhlIGZhbiBjb25uZWN0b3Igb24g
dGhlIGJvYXJkCj4gZHJpdmVuIGJ5IHB3bTEuIEFkZCB0aGUgZmFuIGFzIGFuIGFjdGl2ZSBjb29s
aW5nIGRldmljZSBmb3IgdGhlIFNvQyBwYWNrYWdlLgo+IFRoZSBQV00gZHV0eSBjeWNsZSB2YWx1
ZXMgYXJlIHRha2VuIGZyb20gdGhlIHZlbmRvcidzIHNvdXJjZSBbMl0uCj4gCj4gU2lnbmVkLW9m
Zi1ieTogSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFpbC5jb20+Cj4gCj4gWzFdOiBodHRw
czovL3d3dy5mcmllbmRseWVsZWMuY29tL2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L3Byb2R1Y3Qm
cHJvZHVjdF9pZD0zMDUKPiBbMl06IGh0dHBzOi8vZ2l0aHViLmNvbS9mcmllbmRseWFybS9rZXJu
ZWwtcm9ja2NoaXAvYmxvYi80OTQ0NjAyNTQwYjYyZjVhYWQxMzlmZTYwMmE3NmNmN2MzMTc2MTI4
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9waTYtcmV2MDEuZHRzI0w3
NS1MOTAKPiAtLS0KPiBDaGFuZ2VzIGZyb20gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LXJvY2tjaGlwLzIwMjUxMTA5MTkyMTI4LjcyNTI3LTEtc2lnbWFyaXNAZ21haWwuY29tLwo+
ICogU2V0IHRyaXAgcG9pbnRzIHRvIDU1IGFuZCA2NcKwQyAoRHJhZ2FuKQo+IAo+IENoYW5nZXMg
ZnJvbSB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNTEwMjYx
OTQ4NTguOTI0NjEtMS1zaWdtYXJpc0BnbWFpbC5jb20vCj4gKiBhZGQgdGhlIGZhbiB0byB0aGUg
YmFzZSBib2FyZCBkdHNpIGluc3RlYWQgb2Ygb3ZlcmxheSAoSGVpa28pCj4gKiBqdXN0IHVzZSAy
IHRyaXAgcG9pbnRzIGZvciB3YXJtIGFuZCBob3QgdGVtcGVyYXR1cmVzIChEcmFnYW4sIEFsZXhl
eSkKPiAKPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSAgIHwg
MzkgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1u
YW5vcGMtdDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9w
Yy10Ni5kdHNpCj4gaW5kZXggOTBlN2ZlMjU0NDkxYi4uODRiNmI1M2YwMTZhYiAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNp
Cj4gQEAgLTExLDYgKzExLDcgQEAKPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0
Lmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLmg+Cj4gICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9zb2Mvcm9ja2NoaXAsdm9wMi5oPgo+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy91c2IvcGQu
aD4KPiAgI2luY2x1ZGUgInJrMzU4OC5kdHNpIgo+ICAKPiBAQCAtODksNiArOTAsMTQgQEAgdXNy
X2xlZDogbGVkLTEgewo+ICAJCX07Cj4gIAl9Owo+ICAKPiArCWZhbjogcHdtLWZhbiB7Cj4gKwkJ
Y29tcGF0aWJsZSA9ICJwd20tZmFuIjsKPiArCQljb29saW5nLWxldmVscyA9IDwwIDM1IDY0IDEw
MCAxNTAgMjU1PjsKPiArCQlmYW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiArCQlwd21zID0g
PCZwd20xIDAgNTAwMDAgMD47Cj4gKwkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gKwl9Owo+ICsK
PiAgCXNvdW5kIHsKPiAgCQljb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiAgCQlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IEBAIC01OTAsNiArNTk5LDM2IEBAICZpMnM2Xzhj
aCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsmcGFja2FnZV90aGVybWFsIHsK
PiArCXBvbGxpbmctZGVsYXkgPSA8MTAwMD47Cj4gKwo+ICsJdHJpcHMgewo+ICsJCXBhY2thZ2Vf
d2FybTogcGFja2FnZS13YXJtIHsKPiArCQkJdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+ICsJCQlo
eXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQl0eXBlID0gImFjdGl2ZSI7Cj4gKwkJfTsKPiArCj4g
KwkJcGFja2FnZV9ob3Q6IHBhY2thZ2UtaG90IHsKPiArCQkJdGVtcGVyYXR1cmUgPSA8NjUwMDA+
Owo+ICsJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQl0eXBlID0gImFjdGl2ZSI7Cj4gKwkJ
fTsKPiArCX07Cj4gKwo+ICsJY29vbGluZy1tYXBzIHsKPiArCQltYXAwIHsKPiArCQkJdHJpcCA9
IDwmcGFja2FnZV93YXJtPjsKPiArCQkJY29vbGluZy1kZXZpY2UgPSA8JmZhbiBUSEVSTUFMX05P
X0xJTUlUIDE+Owo+ICsJCX07Cj4gKwo+ICsJCW1hcDEgewo+ICsJCQl0cmlwID0gPCZwYWNrYWdl
X2hvdD47Cj4gKwkJCWNvb2xpbmctZGV2aWNlID0gPCZmYW4gMiBUSEVSTUFMX05PX0xJTUlUPjsK
PiArCQl9Owo+ICsJfTsKPiArfTsKPiArCj4gICZwY2llMngxbDAgewo+ICAJcmVzZXQtZ3Bpb3Mg
PSA8JmdwaW80IFJLX1BCMyBHUElPX0FDVElWRV9ISUdIPjsKPiAgCXZwY2llM3YzLXN1cHBseSA9
IDwmdmNjXzN2M19wY2llMjA+OwoKVGhhbmtzIGZvciB0aGUgdjMgb2YgdGhpcyBwYXRjaCwgaXQn
cyBsb29raW5nIGdvb2QgdG8gbWUsIGFzIGV4cGxhaW5lZApmdXJ0aGVyIGluIG15IGNvbW1lbnRz
IG9uIHRoZSB2MSBhbmQgdjIuCgpQbGVhc2UgZmVlbCBmcmVlIHRvIGluY2x1ZGUKClJldmlld2Vk
LWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E810C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 01:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdsdVXFE5kywydWsLkNFTFeEHcULRsSbZMG4vOBmgO4=; b=COB9rKm2y4rslx
	U3+ErxkAFTwO41jCEOBzXsw22n+BkTzkdNSzFhdcwX9bU8GIc0tzAlJDSDqywdfij8Q0J28XsKU4B
	4aNN1iHnusLIIV2orcCsKND4h0fNZwkD6jcXXX6YbSC6VRCZotFUCBOQQV80wC4qFqlDVwO3jmHK1
	ntv5uIa+DRkGzmjamlklju3odC0VlBjOqEZsD3reoYUWqyjkksu8TIVRWri3TjjF3lfQnbBdUrue/
	/NwAYX+7o9X2QdiyxsoAkOgxbhHI1IzvQGWmr/f4A0phHa2dEDB7ykecxzkj6OEp5lVsWfg30IE2o
	QDvbvL5beAb6JGnZKSbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rG7XN-001PW1-2d;
	Thu, 21 Dec 2023 01:07:45 +0000
Received: from mail-m25478.xmail.ntesmail.com ([103.129.254.78])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rG7XJ-001PVL-19;
	Thu, 21 Dec 2023 01:07:44 +0000
DKIM-Signature: a=rsa-sha256;
	b=VhNvvwdbjPo7R61TzOR7Aoq7UhGk90latFKZasp/5FxmK2Zjgf2YfDe0ZBFJecM7NR1DXcqoUsW3nK8cXmZgzOuYE/TAa3QnMX32jVmW/gxqfreP9IFqU4cYuEpns3ENMq+AZ+R+yAYnR2JwuFqd61hBXnyypD0j6XJNr0ult9o=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sgNbKKH79HHBf3IgFv/B9H2If9G4Vjiqig3E0NMzJhk=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 3FEEA780171;
	Thu, 21 Dec 2023 09:07:14 +0800 (CST)
Message-ID: <28216be5-810f-40d6-850b-a0fc590ffa3c@rock-chips.com>
Date: Thu, 21 Dec 2023 09:07:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 zhengxing@rock-chips.com
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-2-andyshrk@163.com>
 <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhOSFYeQ0NIS0NMQkoZGUJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8c89e98fafb24fkuuu3feea780171
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ME06Sio6EDw0LyFLHC1WFUxK
	TTwKCRFVSlVKTEtISklLQ0hOS05JVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSENDQzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_170741_966710_239F50F0 
X-CRM114-Status: GOOD (  17.39  )
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

SGkgQWxleDoKCk9uIDEyLzIwLzIzIDE5OjE2LCBBbGV4IEJlZSB3cm90ZToKPiBIaSBBbmR5LAo+
IEFtIDE4LjEyLjIzIHVtIDExOjU1IHNjaHJpZWIgQW5keSBZYW46Cj4+IEZyb206IEFuZHkgWWFu
IDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gVGhlIHN5c3RlbSB3aWxsIGhhbmcgYXQg
YnJpbmd1cCBzZWNvbmRhcnkgQ1BVcwo+PiB3aXRob3V0IHBzY2kgbm9kZS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pgo+PiAtLS0KPj4K
Pj4gKG5vIGNoYW5nZXMgc2luY2UgdjEpCj4+Cj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzAzNi5kdHNpIHwgNSArKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMw
MzYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4+IGluZGV4
IDc4Njg2ZmM3MmNlNi4uNTM0NDgwMzQ0MmExIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290
L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9yazMwMzYuZHRzaQo+PiBAQCAtNjcsNiArNjcsMTEgQEAgZGlzcGxheS1zdWJzeXN0ZW0g
ewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydHMgPSA8JnZvcF9vdXQ+Owo+PiDCoMKgwqDCoMKg
IH07Cj4+ICvCoMKgwqAgcHNjaSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFy
bSxwc2NpLTEuMCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBtZXRob2QgPSAic21jIjsKPj4gK8KgwqDC
oCB9Owo+PiArCj4gSSBkb24ndCB0aGluayB0aGF0J3MgYW4gZ29vZCBpZGVhLiAKCldoeT8KCj5Z
b3UgbW9zdCBsaWtlbHkgbmVlZCB0aGF0IGJlY2F1c2UgeW91IGhhdmUgZG93bnN0cmVhbSBib290
bG9hZGVyIGluc3RhbGxlZCBvbiB0aGlzIGJvYXJkLiBQU0NJIGltcGxlbWVudGF0aW9uIHRha2Vz
IHBsYWNlIGluIFRFRS1PUyBmb3IgUm9ja2NoaXBzIEFSTSBTb0NzLiBUaGVyZSBpcyBubyBzdXBw
b3J0IGZvciBSSzMwMzYgaW4gdXBzdHJlYW0gb3AtdGVlIE9TLiBJdCdzIHByZXR0eSBtdWNoIHRo
ZSBzYW1lIGZvciBSSzMxMjggYW5kIFJLMzI4OC4KPiBJZiB5b3UgdXNlIHVwc3RyZWFtIHUtYm9v
dCBpdCBzaG91bGQgYmUgZ29vZCBhcy1pcy4KClVuZm9ydHVuYXRlbHksIHVwc3RyZWFtIHUtYm9v
dCBhbHNvIGNhbm5vdCBib290IHVwIG9uIHRoaXMgYm9hcmQuCkF0IHByZXNlbnQsIEkgaGF2ZW4n
dCBoYWQgdGltZSB0byBkZWJ1ZyB3aGF0IGlzIGdvaW5nIG9uLgoKQW5vdGhlciByZWFzb24gSSB3
YW50IHRvIHVzZSBkb3duc3RyZWFtIHUtYm9vdCBpdCBpczogSSB0cnkgcnVuCnRoaXMgYm9hcmQg
d2l0aCBtYWlubGluZSBqdXN0IGJlY2F1c2UgaSB3YW50IHRvIHRlc3Qgc29tZSBjb21tdW5pdHkK
cGF0Y2hlcyBhYm91dCBpbm5vLWhkbWkgZHJpdmVyLCBhcyB5b3Ugc2FpZCAidGhlIGlubm8taGRt
aSBkcml2ZXIgY3VycmVudGx5IGdldHMgYSBsb3Qgb2YgYXR0ZW50aW9uIlswXQoKV2l0aCBhIGRv
d25zdHJlYW0gdS1ib290IEkgY2FuIGVhc3kgc3dpdGNoIGJldHdlZW4gdXBzdHJlYW0ga2VybmVs
IGFuZCBkb3duc3RyZWFtIGtlcm5lbChubyBuZWVkIHRvIHJlcGxhY2Ugb3RoZXIgY29tcG9uZW50
cykKaWYgSSBmb3VuZCBzb21lIGZ1bmN0aW9uIGlzIG5vdCB3b3JrIGFzIGV4cGVjdGVkLgoKClsw
XWh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9jb3Zl
ci8yMDIzMTIxOTE3MDEwMC4xODg4MDAtMS1rbmFlcnpjaGVAZ21haWwuY29tLwo+IAo+IEFsZXgK
Pj4gwqDCoMKgwqDCoCB0aW1lciB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0g
ImFybSxhcm12Ny10aW1lciI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBhcm0sY3B1LXJlZ2lzdGVy
cy1ub3QtZnctY29uZmlndXJlZDsKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

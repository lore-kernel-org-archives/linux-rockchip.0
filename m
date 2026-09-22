Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E14C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 16:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0wBmGJsuOA9CvVRcOGIZ626EjqFwS/1m4ymWPiKMPM=; b=sPkUFEfjQ0lSoM
	SjCl3UF5UmuixLNLig1bZin2L4kRnglXtm1h6L1LADgqWsnU8J3mV3IDcSsJtnFGImDUbCcJeqYQs
	6K2a7/hrOr1zTq1yWw4wRwbhafwbHwnQprV05OLW+nbvw2PhkQLOdzRg8ICjjoHg8VboYHG8q3Z7T
	wcYtFprgl7zsEbc7AVv9pRODiLxzE0jF3eVGj1Klr1ZzGZeJ0XXAjIKPcbH+oMGbPlqS9ECVaumvi
	5GPVHbCoA0vhOo75Ug67m8jgTzY1otCpj92f/gIbmQxnBMQH0XcQFGC+D0D7hwV8BeIYdG5e4tgJc
	1Ht2Ghn8BfKtBTpSeBXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x92ym-00000005zsl-2NqN;
	Tue, 22 Sep 2026 16:04:24 +0000
Received: from [95.181.193.9] (helo=mail.auroraos.dev)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x92yi-00000005zq5-3hgV;
	Tue, 22 Sep 2026 16:04:23 +0000
Received: from [192.168.2.104] (91.79.44.40) by exch16.corp.auroraos.dev
 (10.189.209.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Tue, 22 Sep
 2026 19:04:08 +0300
Message-ID: <f38e4d45-5a4b-4526-b630-7189bd187b77@auroraos.dev>
Date: Tue, 22 Sep 2026 19:04:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in
 rockchip_pm_add_one_domain()
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson <ulfh@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, <linux-pm@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>
CC: Caesar Wang <wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
 <ee8bf4cf-b2bd-4cbd-ba8c-2e7a871203e1@rock-chips.com>
 <140e4538-d493-40a7-a682-00be091332f0@auroraos.dev>
 <1d8950b4-315f-44a4-9fc8-fcb35ac33043@rock-chips.com>
Content-Language: en-US
From: Sergey Shtylyov <s.shtylyov@auroraos.dev>
In-Reply-To: <1d8950b4-315f-44a4-9fc8-fcb35ac33043@rock-chips.com>
X-Originating-IP: [91.79.44.40]
X-ClientProxiedBy: exch16.corp.auroraos.dev (10.189.209.38) To
 exch16.corp.auroraos.dev (10.189.209.38)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090420_919483_52D82539 
X-CRM114-Status: GOOD (  14.33  )
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

T24gOS8yMi8yNiAzOjQ3IEFNLCBTaGF3biBMaW4gd3JvdGU6CgpbLi4uXQoKPj4+PiBJbiByb2Nr
Y2hpcF9wbV9hZGRfb25lX2RvbWFpbigpLCB0aGVyZSdzIHRoZSBjaGVjayAobW9zdCBwcm9iYWJs
eSBmb3IKPj4+PiB0aGUgY2FzZSB3aGVyZSB0aGUgInJlZyIgcHJvcCBoYXMgYW4gdW5leHBlY3Rl
ZCB2YWx1ZT8pIHdoaWNoIGRvZXNuJ3QKPj4+Cj4+PiBBZ3JlZWQgdGhhdCBjaGVjayBpbmRlZWQg
bWFrZXMgbGl0dGxlIHNlbnNlLiBCdXQgIm1vc3QgcHJvYmFibHkgZm9yIHRoZQo+Pj4gY2FzZSB3
aGVyZSB0aGUgcmVnIHByb3AgaGFzIGFuIHVuZXhwZWN0ZWQgdmFsdWUiIGRvZXMgbm90IGhvbGQ6
IGFuCj4+Cj4+IMKgwqDCoCBJIHRyaWVkIHRvIGd1ZXNzIHdoYXQgdGhlIGNoZWNrIGluIHF1ZXN0
aW9uIHdhcyBhY3R1YWxseSBpbnRlbmRlZCBmb3IKPj4gKGRlc3BpdGUgbWFraW5nIGEgbGl0dGxl
IHNlbnNlIGFzIGl0IGlzIG5vdykuLi4KPj4KPj4+IG91dC1vZi1yYW5nZSByZWcgdmFsdWUgaXMg
YWxyZWFkeSByZWplY3RlZCBieSB0aGUgImlkID49IHBtdS0+aW5mby0KPj4+PiBudW1fZG9tYWlu
cyIgY2hlY2sgYWJvdmUsIGFuZCBudW1fZG9tYWlucyBlcXVhbHMKPj4KPj4gwqDCoMKgIEkgbm90
aWNlZC4gOi0pCj4+Cj4+PiBBUlJBWV9TSVpFKGRvbWFpbl9pbmZvKSBmb3IgZXZlcnkgU29DLCBz
byB0aGVyZSBhcmUgbm8gaG9sZXMgaW4gdGhlCj4+PiB0YWJsZSB0aGF0IHRoZSBuZXcgY2hlY2sg
Y291bGQgY2F0Y2ggd2l0aCB0aGUgY3VycmVudCBkYXRhLiBBRkFJQ1QsIHRoaXMKPj4KPj4gwqDC
oMKgIE9oLCB0aGVyZSBhcmUgaG9sZXMhIDotKQo+PiDCoMKgwqAgSWYgeW91IGxvb2sgYXQgKGFu
ZCBiZWhpbmQpIHRoZSBpbmRleGVkIGluaXRpYWxpemVycyBvZiAqX3BtX2RvbWFpbnNbXSwKPj4g
eW91J2xsIHNlZSB0aGF0IHRoZSBpbmRleGVzIGRvbid0IGFsd2F5cyBzdGFydCBhdCAwLCBhbmQg
c28gdGhlIGFycmF5cyBhcmUKPj4gYWN0dWFsbHkgc3BhcnNlLi4uCj4gCj4gTG9va2VkIG1vcmUg
Y2xvc2VseSBieSBlYWNoIG9uZSwgeW91J3JlIHJpZ2h0LgoKICAgUGVyaGFwcyBJIGp1c3Qgc2hv
dWxkJ3ZlIGJlZW4gbW9yZSB2ZXJib3NlIGluIHRoZSBwYXRjaCBkZXNjcmlwdGlvbi4uLgoKPj4+
IHBhdGNoIGRvZXMgbm90IGNoYW5nZSBhbnkgcnVudGltZSBiZWhhdmlvdXI7IGl0IG9ubHkgdHVy
bnMgZGVhZCBjb2RlCj4+PiBpbnRvIGEgZGVmZW5zaXZlIGNoZWNrIG9uIHRoZSBtYXRjaC1kYXRh
IHRhYmxlcy4KPj4KPj4gwqDCoMKgIEkgaG9wZSB5b3Ugc2VlIG5vdyB0aGF0IHRoaXMgZGVmZW5z
aXZlIGNoZWNrIG1ha2VzIGEgYml0IG1vcmUgc2Vuc2UuLi4KPj4KPj4+PiBtYWtlIG11Y2ggc2Vu
c2UgYXMgdGhlIHZhcmlhYmxlIHBkX2luZm8gd2lsbCBiZSBOVUxMIGlmZiBwbXUtPmluZm8tPgo+
Pj4+IGRvbWFpbl9pbmZvIGlzIE5VTEwgYW5kIHRoZSB2YXJpYWJsZSBpZCBpcyAwLsKgIFdoYXQg
ZG9lcyBtYWtlIHNlbnNlCj4+Pj4gdGhlcmUgaXMgY2hlY2tpbmcgcGRfaW5mby0+cHdyX21hc2sg
YW5kIHBkX2luZm8tPnJlcV9tYXNrIHdoaWNoIChhcwo+Pj4+IHNlZW1zIHRvIGZvbGxvdyBmcm9t
IHRoZSBjb2RlKSBjYW4ndCBib3RoIGJlIDAgZm9yIGEgdmFsaWQgZG9tYWluLi4uCj4+Pgo+Pj4g
VGhhdCBtZWFucyB0aGVyZSBpcyBubyBidWcgYmVpbmcgZml4ZWQgaGVyZSwgc2hvdWxkIHdlIGRy
b3AgdGhlIGZpeGVzIHRhZz8KPj4KPj4gwqDCoMKgIEknZCBsaWtlIHRvIGtlZXAgaXQgKGJ1dCB0
aGF0J3MgdXAgdG8gdGhlIG1haW50YWluZXJzLCBvZiBjb3Vyc2UpLi4uCj4gCj4gU3VyZSwgaXQn
c8KgIFVsZidzIGNhbGwuIEFueXdheSwgZmVlbCBmcmVlIHRvIGFkZAo+IAo+IFJldmlld2VkLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCiAgIFRoYW5rIHlvdSEKClsu
Li5dCgpNQlIsIFNlcmdleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

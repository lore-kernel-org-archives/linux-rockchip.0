Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D66CF8840
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Oct 2024 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aS7TDmaprQek00jRXV7woq0lLQ8i+KpOEAJWohfu71U=; b=lyNVCypuzqLeah
	XHj4UADK6nkUjfOLG3WtUjLjkBPKNq0EdzfzC0satjG/j7ZB/X+sZ1WsivgmkwGjZi4SdnSnYqccB
	pgTzUAryXIbHan67HmAQZLOHF8HecnMkdSn2S1+KWoftZinWYZB6+VJmsVXcMZ0LgNaetD1Paxcfo
	Tv2BoxasFcDNHqrvN2ZyjIDUe6c/lX9Y5gLik9BgUvDKwQvbTnF+XC2Ud3do+ugNRIX9pjt5GFUvX
	oWAJeH+VGf3YjXNmZeUBCpigTVzjRTshprjnTYaJwRdssCl7ZWRf/muEqaNzC3n8ium5/AyFgrWv4
	IE7NzCnnJkU+tPsLbjGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swmEf-0000000DYC3-3XUD;
	Fri, 04 Oct 2024 17:37:01 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swmCj-0000000DXbJ-3CE8;
	Fri, 04 Oct 2024 17:35:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94FCA339;
	Fri,  4 Oct 2024 10:35:28 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD75C3F640;
	Fri,  4 Oct 2024 10:34:57 -0700 (PDT)
Message-ID: <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
Date: Fri, 4 Oct 2024 18:34:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card
 detect
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Jaehoon Chung
 <jh80.chung@samsung.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <4920950.GXAFRqVoOG@diego>
 <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_103502_153246_EB95B247 
X-CRM114-Status: GOOD (  17.41  )
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

T24gMDIvMTAvMjAyNCAxMDo1NSBwbSwgVWxmIEhhbnNzb24gd3JvdGU6Cj4gT24gU2F0LCAxNCBT
ZXB0IDIwMjQgYXQgMTM6NTIsIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3Rl
Ogo+Pgo+PiBBbSBEb25uZXJzdGFnLCAxMi4gU2VwdGVtYmVyIDIwMjQsIDA5OjI2OjE0IENFU1Qg
c2NocmllYiBLZXZlciBZYW5nOgo+Pj4gSW4gb3JkZXIgdG8gbWFrZSB0aGUgU0QgY2FyZCBob3Rw
bHVnIHdvcmtpbmcgd2UgbmVlZCB0aGUgY2FyZCBkZXRlY3QKPj4+IGZ1bmN0aW9uIGxvZ2ljIGlu
c2lkZSB0aGUgY29udHJvbGxlciBhbHdheXMgd29ya2luZy4gVGhlIHJ1bnRpbWUgUE0gd2lsbAo+
Pj4gZ2F0ZSB0aGUgY2xvY2sgYW5kIHRoZSBwb3dlciBkb21haW4sIHdoaWNoIHN0b3BzIGNvbnRy
b2xsZXIgd29ya2luZyB3aGVuCj4+PiBubyBkYXRhIHRyYW5zZmVyIGhhcHBlbi4KPj4+Cj4+PiBT
byBsZXRzIHNraXAgZW5hYmxlIHJ1bnRpbWUgUE0gd2hlbiB0aGUgY2FyZCBuZWVkcyB0byBkZXRl
Y3RlZCBieSB0aGUKPj4+IGNvbnRyb2xsZXIgYW5kIHRoZSBjYXJkIGlzIHJlbW92YWJsZS4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29t
Pgo+Pgo+PiBTbyBmb3IgdGhlIGNoYW5nZSBpdHNlbGYgdGhpcyBsb29rcyBnb29kLCBpLmUuIGl0
IGZpeGVzIGFuIGlzc3VlIGZvciBiYW9yZHMgcmVseWluZwo+PiBvbiB0aGUgb24tY2hpcC1jYXJk
LWRldGVjdC4KPj4KPj4KPj4gQnV0IGZvciBib2FyZHMgZG9pbmcgdGhhdCwgdGhlIGNvbnRyb2xs
ZXIgd2lsbCBiZSBydW5uaW5nIF9hbGwgdGhlIHRpbWVfCj4+IGV2ZW4gaWYgdGhlcmUgaXMgbmV2
ZXIgYW55IGNhcmQgaW5zZXJ0ZWQuCj4+Cj4+IFNvIHJlbHlpbmcgb24gdGhlIG9uLXNvYyBjYXJk
LWRldGVjdCB3aWxsIGVmZmVjdGl2ZWx5IGluY3JlYXNlIHRoZSBwb3dlci0KPj4gY29uc3VtcHRp
b24gb2YgdGhlIGJvYXJkIC0gZXZlbiBpdCBpdCdsbCBuZXZlciB1c2UgYW55IHNkLWNhcmQ/Cj4g
Cj4gR29vZCBwb2ludCEgQSBiZXR0ZXIgb3B0aW9uIGlzIHRvIHVzZSBhIHBvbGxpbmcgYmFzZWQg
bWVjaGFuaXNtIC0gYW5kCj4gd2UgaGF2ZSBNTUNfQ0FQX05FRURTX1BPTEwgZm9yIGV4YWN0bHkg
dGhhdC4KPiAKPiBNb3Jlb3Zlciwgb24gRFQgYmFzZWQgcGxhdGZvcm1zIG9uZSBjYW4gZXZlbiB1
c2UgdGhlICJicm9rZW4tY2QiCj4gcHJvcGVydHkgdG8gaW5kaWNhdGUgdGhpcy4KCkV4Y2VwdCB0
aGF0IGdvZXMgZnVydGhlciB0aGFuIGlzIG5lZWRlZCBoZXJlLCBzaW5jZSBpdCB3b3VsZCBmYWxs
IGJhY2sgCmVudGlyZWx5IHRvIHNvZnR3YXJlLWJhc2VkIHBvbGxpbmcgZm9yIGNhcmQgcHJlc2Vu
Y2UuIEluIHRoaXMgY2FzZSB0aGUgCkNEIGZ1bmN0aW9uIGlzIG5vdCBicm9rZW4gaW4gdGVybXMg
b2YgYWN0dWFsbHkgZGV0ZWN0aW5nIGEgY2FyZCwgaXQganVzdCAKZG9lc24ndCB3b3JrIHRvIHdh
a2UgdGhlIGNvbnRyb2xsZXIgdXAgZnJvbSBzdXNwZW5kIGJlY2F1c2UgaXQgY2FuJ3QgCmZpcmUg
aXRzIG93biBpbnRlcnJ1cHQgd2hpbGUgcG93ZXJlZCBvZmYuIEluIHByaW5jaXBsZSBhbGwgd2Ug
c2hvdWxkIApyZXF1aXJlIGhlcmUgaXMgdG8gcGVyaW9kaWNhbGx5IHJlc3VtZS9zdXNwZW5kIHRo
ZSBkZXZpY2UsIHRvIHByb3ZpZGUgYSAKd2luZG93IGZvciB0aGUgaW50ZXJydXB0IHRvIHdvcmsg
YW5kIG5vcm1hbCBvcGVyYXRpb24gdG8gdGFrZSBvdmVyIGlmIAphcHByb3ByaWF0ZS4KCk9mIGNv
dXJzZSB0aGUgcmVhbGx5IGNsZXZlciB3YXkgd291bGQgYmUgZm9yIHN1c3BlbmQgdG8gc3dpdGNo
IHRoZSBwaW4gCmludG8gR1BJTyBtb2RlLCBhbmQgc2V0IHRoZSBHUElPIGludGVycnVwdCBhcyBh
IHdha2V1cCB0byB0cmlnZ2VyIHJlc3VtZSAKYW5kIHN3aXRjaCBpdCBiYWNrIGFnYWluLCBidXQg
cGVyaGFwcyB0aGF0J3MgYSBiaXQgdHJpY2t5IHdpdGhvdXQgCmV4cGxpY2l0IHBpbmN0cmwgc3Rh
dGVzIGluIHRoZSBEVCA6LwoKVGhhbmtzLApSb2Jpbi4KCj4gCj4gWy4uLl0KPiAKPiBLaW5kIHJl
Z2FyZHMKPiBVZmZlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

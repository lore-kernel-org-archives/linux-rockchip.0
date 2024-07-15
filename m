Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F592C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 18:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LwcWUNlWuVyXL+Jj0Xb9IGA5+cZcGqfPo5KQuAEiuyA=; b=TF+mm9nUV2f5gnBbiRxOI08pEt
	OVeqNqVfeBMyANwGQTKSLcvHwhlTHo5YlJGOwTaMS5jStQR7VphNVjf2ugz355o7JCs8dMmFLmkBu
	gTEV0uZRyTfy/CvyYhqwezOl9KEB9FrBUgV/4PZVd2DR5GxvouUfMt9TS6IerdmbfNElIBY6z4+Hu
	4OQYBfg1UETtTGV73mBxAklmsCKQsKeK67nVN36vL94teg+zJdTSxhnGgXgby7JpC4N2F8aCNMV+5
	0qEUI3VcKMUWEUyDXw7J8U5dEFu3zCudEVIoY9dSgAu0CAZIBOSgaucfr9tiW1H3Wq/SX3jTTtj7Z
	6RyH4s9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTQ1Q-00000007wvt-25AH;
	Mon, 15 Jul 2024 18:02:00 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTQ15-00000007wpX-2Szc;
	Mon, 15 Jul 2024 18:01:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721066495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yeO8aJl/IzUQi8xRcxq4p918nJT45vn5xNQbkPy3aAY=;
	b=UbThJeP6VidW1MFNuqSAV0zqSYP2j81Zj8faTffFzPVYMWh92MH0YsqWXggiXNaovhU7Ck
	8XNRTUywPPp6shDoExSB/o0OYowSbwYCu0laFqHnnnhcgTDEg3ZjVKlmxRPkGcrcrlNMQA
	ejnu8WA2fp5ZAorGvARIqlKiKNya1oqsRYeHSEo3xBGSTqPif22YWr8GrDug2MCMOTJCgf
	zlhtLEP7ylC7HdCofQntvYqSn6WYHT6svy1DZEs/GSo3xJa570SPrn7FclnS7fc2BdZIrB
	BSZ6SLJB8FIk/3EZVOGMN0q55vEnWc0MAzUGSkGZ+R6HrkIRDF00xv/lwRUHCA==
Date: Mon, 15 Jul 2024 20:01:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
In-Reply-To: <2832997.XrmoMso0CX@diego>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <ec84dc37e2c421ee6d31294e08392d57@manjaro.org> <2832997.XrmoMso0CX@diego>
Message-ID: <3f0c241d39c5fedb674d7f9808d0be8f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_110139_950421_9862411B 
X-CRM114-Status: GOOD (  29.69  )
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

T24gMjAyNC0wNy0xNSAxOTo0NiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAx
NS4gSnVsaSAyMDI0LCAxNzoxNTo0NSBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiBPbiAy
MDI0LTA3LTE1IDEzOjAyLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4gPiBJbiBjb250cmFzdCB0
byBmaXhlZCBjbG9ja3MgdGhhdCBhcmUgZGVzY3JpYmVkIGFzIHVuZ2F0ZWFibGUsIGJvYXJkcwo+
PiA+IHNvbWV0aW1lcyB1c2UgYWRkaXRpb25hbCBvc2NpbGxhdG9ycyBmb3IgdGhpbmdzIGxpa2Ug
UENJZSByZWZlcmVuY2UKPj4gPiBjbG9ja3MsIHRoYXQgbmVlZCBhY3R1YWwgc3VwcGxpZXMgdG8g
Z2V0IGVuYWJsZWQgYW5kIGVuYWJsZS1ncGlvcyB0byBiZQo+PiA+IHRvZ2dsZWQgZm9yIHRoZW0g
dG8gd29yay4KPj4gPgo+PiA+IFRoaXMgYWRkcyBhIGJpbmRpbmcgZm9yIHN1Y2ggb3NjaWxsYXRv
cnMgdGhhdCBhcmUgbm90IGNvbmZpZ3VyYWJsZQo+PiA+IHRoZW1zZWxmLCBidXQgbmVlZCB0byBo
YW5kbGUgc3VwcGxpZXMgZm9yIHRoZW0gdG8gd29yay4KPj4gPgo+PiA+IEluIHNjaGVtYXRpY3Mg
dGhleSBvZnRlbiBjYW4gYmUgc2VlbiBhcwo+PiA+Cj4+ID4gICAgICAgICAgLS0tLS0tLS0tLS0t
LS0tLQo+PiA+IEVuYWJsZSAtIHwgMTAwTUh6LDMuM1YsIHwgLSBWREQKPj4gPiAgICAgICAgICB8
ICAgIDMyMjUgICAgICB8Cj4+ID4gICAgR05EIC0gfCAgICAgICAgICAgICAgfCAtIE9VVAo+PiA+
ICAgICAgICAgIC0tLS0tLS0tLS0tLS0tLS0KPj4gPgo+PiA+IG9yIHNpbWlsYXIuIFRoZSBlbmFi
bGUgcGluIG1pZ2h0IGJlIHNlcGFyYXRlIGJ1dCBjYW4gYWxzbyBqdXN0IGJlIHRpZWQKPj4gPiB0
byB0aGUgdmRkIHN1cHBseSwgaGVuY2UgaXQgaXMgb3B0aW9uYWwgaW4gdGhlIGJpbmRpbmcuCj4+
ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
PiA+IC0tLQo+PiA+ICAuLi4vYmluZGluZ3MvY2xvY2svdm9sdGFnZS1vc2NpbGxhdG9yLnlhbWwg
ICAgfCA0OSArKysrKysrKysrKysrKysrKysrCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNl
cnRpb25zKCspCj4+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NAo+PiA+IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jbG9jay92b2x0YWdlLW9zY2lsbGF0b3IueWFtbAo+PiA+Cj4+ID4g
ZGlmZiAtLWdpdAo+PiA+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L3ZvbHRhZ2Utb3NjaWxsYXRvci55YW1sCj4+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvY2xvY2svdm9sdGFnZS1vc2NpbGxhdG9yLnlhbWwKPj4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+PiA+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjhiZmY2YjBmZDU4MmUKPj4gPiAtLS0g
L2Rldi9udWxsCj4+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ns
b2NrL3ZvbHRhZ2Utb3NjaWxsYXRvci55YW1sCj4+ID4gQEAgLTAsMCArMSw0OSBAQAo+PiA+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkK
Pj4gPiArJVlBTUwgMS4yCj4+ID4gKy0tLQo+PiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL2Nsb2NrL3ZvbHRhZ2Utb3NjaWxsYXRvci55YW1sIwo+PiA+ICskc2NoZW1hOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4gPiArCj4+ID4g
K3RpdGxlOiBWb2x0YWdlIGNvbnRyb2xsZWQgb3NjaWxsYXRvcgo+PiAKPj4gRnJhbmtseSwgSSBm
aW5kIHRoZSAidm9sdGFnZS1vc2NpbGxhdG9yIiBhbmQgInZvbHRhZ2UgY29udHJvbGxlZAo+PiBv
c2NpbGxhdG9yIiBuYW1lcyBhd2t3YXJkLiAgSW4gZ2VuZXJhbCwgImNsb2NrIiBpcyB1c2VkIHRo
cm91Z2hvdXQKPj4gdGhlIGVudGlyZSBrZXJuZWwsIHdoZW4gaXQgY29tZXMgdG8gbmFtaW5nIGZp
bGVzIGFuZCBkZWZpbmluZwo+PiAiY29tcGF0aWJsZSIgc3RyaW5ncy4gIFRodXMsIEknZCBzdWdn
ZXN0IHRoYXQgImNsb2NrIiBpcyB1c2VkIGhlcmUKPj4gaW5zdGVhZCBvZiAib3NjaWxsYXRvciIs
IGJlY2F1c2UgaXQncyBjb25zaXN0ZW50IGFuZCBzaG9ydGVyLgo+PiAKPj4gSG93IGFib3V0IHVz
aW5nICJnYXRlZC1jbG9jayIgZm9yIHRoZSAiY29tcGF0aWJsZSIgc3RyaW5nLCBhbmQKPj4gIlNp
bXBsZSBnYXRlZCBjbG9jayBnZW5lcmF0b3IiIGluc3RlYWQgb2YgInZvbHRhZ2UgY29udHJvbGxl
ZAo+PiBvc2NpbGxhdG9yIj8gIEJlc2lkZXMgc291bmRpbmcgYXdrd2FyZCwgInZvbHRhZ2UgY29u
dHJvbGxlZAo+PiBvc2NpbGxhdG9yIiBtYXkgc3VnZ2VzdCB0aGF0IHRoZSBjbG9jayBnZW5lcmF0
b3IgY2FuIGJlIGFkanVzdGVkCj4+IG9yIHByb2dyYW1tZWQgc29tZWhvdyBieSBhcHBseWluZyB0
aGUgdm9sdGFnZSwgd2hpbGUgaXQgY2FuIG9ubHkKPj4gYmUgZW5hYmxlZCBvciBkaXNhYmxlZCB0
aGF0IHdheSwgd2hpY2ggaXMgYnkgZGVmaW5pdGlvbiBjbG9jawo+PiBnYXRpbmcuICBUaHVzLCAi
Z2F0ZWQtY2xvY2siIGFuZCAiU2ltcGxlIGdhdGVkIGNsb2NrIGdlbmVyYXRvciIKPj4gd291bGQg
Zml0IHZlcnkgd2VsbC4KPiAKPiBUaGUgbmFtaW5nIGNhbWUgZnJvbSBTdGVwaGVuIC0gb25lIG9m
IHRoZSBjbG9jayBtYWludGFpbmVycyA7LSkKPiBTZWUgZGlzY3Vzc2lvbiBpbiB2MS4gV2hvIGFs
c28gZGVzY3JpYmVkIHRoZXNlIHRoaW5ncyBhcwo+ICJ2b2x0YWdlLWNvbnRyb2xsZWQtb3NjaWxs
YXRvcnMiLgo+IAo+IEFuZCBmcm9tIHRoYXQgZGlzY3Vzc2lvbiBJIGFsc28gZ290IHRoZSBpbXBy
ZXNzaW9uIHdlIHNob3VsZCBhaW0gZm9yCj4gbW9yZSBzcGVjaWZpYyBuYW1pbmcgLSBlc3BlY2lh
bGx5IHdoZW4gdGFsa2luZyBhYm91dCBkdC1iaW5kaW5ncywgZm9yIAo+IHRoaXMKPiAidXNhZ2Ug
aW4gdGhlIExpbnV4IGtlcm5lbCIgYWN0dWFsbHkgaXNuJ3QgYSBzdWl0YWJsZSBtZXRyaWMgYW5k
Cj4gImdhdGVkLWNsb2NrIiBpcyBwcm9iYWJseSB3YXkgdG9vIGdlbmVyaWMgSSB0aGluay4KCkkg
c2VlLCB0aGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLiAgVGhvdWdoLCB0aGUgZ2VuZXJpYyBu
YXR1cmUgb2YKImdhdGVkLWNsb2NrIiBhcyB0aGUgbmFtZSBtYXkgYWN0dWFsbHkgbWFrZSB0aGlz
IGRyaXZlciBhIGJpdCBtb3JlCmZ1dHVyZS1wcm9vZiwgYnkgYWxsb3dpbmcgc29tZSBvdGhlciBm
ZWF0dXJlcyB0byBiZSBhZGRlZCB0byBpdCBhdApzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGF2
b2lkaW5nIHRoYXQgd2F5IHRoZSBuZWVkIGZvciB5ZXQgYW5vdGhlcgprZXJuZWwgZHJpdmVyLgoK
PiBUaG91Z2ggSSdtIG5vdCBhdHRhY2hlZCB0byBhbnkgc3BlY2lmaWMgbmFtaW5nLCBzbyB3ZSds
bCBzaW1wbHkKPiB3YWl0IGZvciB0aGUgY2xvY2stIGFuZCBkdC1tYWludGFpbmVycyB0byB3ZWln
aCBpbiA7LSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

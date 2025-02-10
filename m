Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363D3C021A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 18:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwC1aR16NmGFBvQS1z5QRHKvd60rd7wey0ZWf4sJ5AA=; b=D3YxHYcpKyUIvQu0T5RmX92HSG
	F4VqD0xeEwuBmhByaN5rkK2bklR6sExJuPzyHWfed6cig7KfiU/XizLwnHirPlFyuk/rGP5NVdM1u
	4Fe4tlrnY4+AXe0ZtKm5mjuDQRAve8Fi7fDQlx9zxikyMW3+nyQ4JXcNTeDTQU6pM2e922omf573F
	Y/BF0iNsY+eB2eqxpWCikiF0oUeMoOPe6Wpx9wfkG6V4RXSUqGCiNPm163NJmDQS9PqrLVcS1/Eq2
	O5EoK3Yikf0iU6KQRB5SiwjNYkwdSUSJmguw5jtr8bSHu5MZLhMQvX11sqm3opeRiZ4wl1IAWh7Cn
	W5lbtSgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thYfo-00000000xGR-2tAs;
	Mon, 10 Feb 2025 18:38:24 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thYRI-00000000u8G-3mhf;
	Mon, 10 Feb 2025 18:23:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1739211802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cdqhCB4hXabwkdtEITMDy97ItQnEBoqzYanBuxH4qII=;
	b=KzB7fxZt+phnih+KMdT/jFC0YLXuIQhPmG8vJjua9rAgZ1NtFI3C6JlbR0BRirFJqzAsT4
	rtG60hlkMhJ8vZm8pKh8/jDC/mpnoXRWHhwljYZiMl2hfXqLSTeFp4mA7GKsdaqbbCMaSG
	Uoj9iwRa4i1mpLsUOVCEOYiWG72c636UWOx8q2wn3V8bgu3YXH5MgAX/3Ikd3vaayFBKlI
	vHKGEZFkcohZ0P7gxQpOvSFxrAanDqYd/obwH1nFeVNfhlIU7pJLXXKKc0k5NtibPaCO70
	Qyww5e6cL+5dU6zAw40kcCmvZyxeXAS8nCMCibjlabJcaQsS4tMswhYMX47KXg==
Date: Mon, 10 Feb 2025 19:23:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki
 <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/4] arm64: dts: rockchip: add overlay test for
 WolfVision PF5
In-Reply-To: <9615521e-8a2a-44d7-99ea-5571f5de1e57@cherry.de>
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
 <20250207-pre-ict-jaguar-v5-1-a70819ea0692@cherry.de>
 <ef9133d217bc35f611ef390da8042510@manjaro.org>
 <9615521e-8a2a-44d7-99ea-5571f5de1e57@cherry.de>
Message-ID: <3cadb698a9bf7a898c91c0d851233ac1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_102325_237472_834FCB13 
X-CRM114-Status: GOOD (  18.18  )
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

SGVsbG8gUXVlbnRpbiwKCk9uIDIwMjUtMDItMTAgMTg6NTYsIFF1ZW50aW4gU2NodWx6IHdyb3Rl
Ogo+IE9uIDIvMTAvMjUgOTo0NiBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI1LTAy
LTA3IDE2OjE5LCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4+IEZyb206IFF1ZW50aW4gU2NodWx6
IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4+PiAKPj4+IFRoZSBXb2xmVmlzaW9uIFBGNSBj
YW4gaGF2ZSBhIFBGNSBWaXN1YWxpemVyIGRpc3BsYXkgYW5kIFBGNSBJTyAKPj4+IEV4cGFuZGVy
Cj4+PiBib2FyZCBjb25uZWN0ZWQgdG8gaXQuIFRoZXJlZm9yZSwgbGV0J3MgZ2VuZXJhdGUgYW4g
b3ZlcmxheSB0ZXN0IHNvIAo+Pj4gdGhlCj4+PiBhcHBsaWNhdGlvbiBvZiB0aGUgdHdvIG92ZXJs
YXlzIGFyZSB2YWxpZGF0ZWQgYWdhaW5zdCB0aGUgYmFzZSBEVEIuCj4+PiAKPj4+IFN1Z2dlc3Rl
ZC1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Pgo+Pj4g
UmV2aWV3ZWQtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5l
dD4KPj4+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVy
cnkuZGU+Cj4+PiAKPj4+IC0tLQo+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlCj4+PiBpbmRleAo+Pj4gZGVmMTIyMmMxOTA3ZWIxNmIyM2NmZjZkNTQwMTc0YTRlODk3
YWJjOS4uNTM0ZTcwYTY0OWVlYWRhN2Y5YjZmMTI1OTZiODNmNWM0N2IxODRiNAo+Pj4gMTAwNjQ0
Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+PiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+PiBAQCAtMTcwLDMgKzE3
MCwyNSBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy0gCj4+PiBvcmFu
Z2VwaS01LmR0Ygo+Pj4gwqBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1v
cmFuZ2VwaS01Yi5kdGIKPj4+IMKgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4
OHMtcm9jay01YS5kdGIKPj4+IMKgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4
OHMtcm9jay01Yy5kdGIKPj4+ICsKPj4+ICsjIE92ZXJsYXkgYXBwbGljYXRpb24gdGVzdHMKPj4+
ICsjCj4+PiArIyBBIC5kdGJvIG11c3QgaGF2ZSBpdHMgb3duCj4+PiArIwo+Pj4gKyPCoCBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gPG92ZXJsYXk+LmR0Ym8KPj4+ICsjCj4+PiArIyBl
bnRyeSwgYW5kIGF0IGxlYXN0IG9uZSBvdmVybGF5IGFwcGxpY2F0aW9uIHRlc3QgLSBpZGVhbGx5
IAo+Pj4gcmVmbGVjdGluZyBob3cgaXQKPj4+ICsjIHdpbGwgYmUgdXNlZCBpbiByZWFsIGxpZmUg
LToKPj4gCj4+IEhtbSwgd2hhdCdzICItOiIgYWN0dWFsbHkgZG9pbmcgaW4gdGhlIGxpbmUgcmln
aHQgYWJvdmU/wqAgSSBtZWFuLAo+PiBpdCdzIGEgbWlub3Igbml0cGljaywgc28gbWlnaHQgYmUg
d29ydGggYWRkcmVzc2luZyBvbmx5IGlmIHRoZXJlCj4+IHdpbGwgYmUgdGhlIHY2Li4uwqAgQWxz
bywgInRlc3QgLSBpZGVhbGx5IiBtaWdodCBiZSByZXBsYWNlZCBieQo+PiAidGVzdCwgaWRlYWxs
eSIsIGJlY2F1c2Ugc3BsaWNpbmcgc2VudGVuY2VzIHRvZ2V0aGVyIHVzaW5nIGVtL2VuCj4+IGRh
c2hlcyBpcyBnZW5lcmFsbHkgZnJvd25lZCB1cG9uLiA6KQo+IAo+IFRoYXQgd2FzIHN1cHBvc2Vk
IHRvIGJlIGFuIGVtLWRhc2ggeWVzLgoKSSBzZWUuICBUbyBleHBsYWluIGl0IGEgYml0IGZ1cnRo
ZXIsIGhlcmUncyBob3cgaHlwaGVucywgZW4gYW5kIGVtCmRhc2hlcyBzaG91bGQgbG9vayBsaWtl
IHdoZW4gYW4gdW5wcm9wb3J0aW9uYWwgZm9udCBpcyB1c2VkOgoKLSBXaGVuIGl0IGNvbWVzIHRv
IGh5cGhlbnMsIGl0J3MgYSBzb21ld2hhdC1saW1pdGVkIG9wdGlvbi4KLSBVc2luZyBlbiBkYXNo
ZXMgLS0gYXMgdmlzaWJsZSBoZXJlIC0tIGlzIGEgYml0IG1vcmUgaW52b2x2ZWQuCi0gSWYgeW91
IHVzZSBlbSBkYXNoZXMtLS1saWtlIGhlcmUtLS1pdCBnZXRzIGJvcmRlcmxpbmUgdWdseS4KCj4g
LCBhbmQgYXQgbGVhc3Qgb25lIG92ZXJsYXkgYXBwbGljYXRpb24gdGVzdCAoaWRlYWxseSByZWZs
ZWN0aW5nIGhvdyBpdAo+IHdpbGwgYmUgdXNlZCBpbiByZWFsIGxpZmUpOgo+IAo+IFdvdWxkIHRo
YXQgd29yaz8gSSBkb24ndCBsaWtlIHRoZSA6IGZvbGxvd2luZyAiaWRlYWxseSByZWZsZWN0aW5n
IGhvdwo+IGl0IHdpbGwgYmUgdXNlZCBpbiByZWFsIGxpZmUiIGFzIGl0IGFwcGxpZXMgdG8gIm92
ZXJsYXkgYXBwbGljYXRpb24KPiB0ZXN0IiBhbmQgbm90IHRoZSBlbmQgb2YgdGhlIHNlbnRlbmNl
LgoKSXQgd29ya3MsIGFsdGhvdWdoIEknZCBzdWdnZXN0IHRoYXQgYSBjb21tYSBpcyBhZGRlZCBh
ZnRlciAiaWRlYWxseSIuClRlY2huaWNhbGx5LCBpdCB3b3VsZCBiZSBiZXR0ZXIgbm90IHRvIHVz
ZSBwYXJlbnRoZXNlcyBoZXJlLCBidXQgaXQncwpzdGlsbCBmaW5lLiAgVGhvdWdoLCBoZXJlJ3Mg
YW5vdGhlciBvcHRpb24gZm9yIHRoZSB3b3JkaW5nOgoKICAgLCBhbmQgYXQgbGVhc3Qgb25lIG92
ZXJsYXkgYXBwbGljYXRpb24gdGVzdCB0aGF0IHJlcHJlc2VudHMKICAgdGhlIG92ZXJsYXkncyBp
bnRlbmRlZCByZWFsLWxpZmUgdXNlOgoKPj4+ICsjCj4+PiArI8KgIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSA8bmFtZSBvZiBvdmVybGF5IGFwcGxpY2F0aW9uIAo+Pj4gdGVzdD4uZHRi
Cj4+PiArI8KgIDxuYW1lIG9mIG92ZXJsYXkgYXBwbGljYXRpb24gdGVzdD4tZHRicyA6PSA8YmFz
ZT4uZHRiCj4+PiA8b3ZlcmxheS0xPi5kdGJvIFs8b3ZlcmxheS0yPi5kdGJvIC4uLl0KPj4gCj4+
IEFzIGFub3RoZXIgbWlub3Igbml0cGljaywgSSdkIHN1Z2dlc3QgdGhhdAo+PiAKPj4gIMKgwqDC
oCAiPG5hbWUgb2Ygb3ZlcmxheSBhcHBsaWNhdGlvbiB0ZXN0Pi5kdGIiCj4+IAo+PiBpcyByZXBs
YWNlZCB3aXRoCj4+IAo+PiAgwqDCoMKgICI8bmFtZS1vZi1vdmVybGF5LWFwcGxpY2F0aW9uLXRl
c3Q+LmR0YiIKPiAKPiBPSy4KClRoYW5rcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

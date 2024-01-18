Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A746EC4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 03:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRvm3YbQdKXtkKmTDvC8leGFytnD5nLKe03F/MMwbj4=; b=0DWDAKwuqjIKPF
	5gu32eqt8R/tBh6CXW0WQqsPofg577r5RRzH96/VBS6p1x9UoRm2N9+WXKzQyDsiceoFdpvNtMn20
	g2sRkqBR3ldUj9VgVkpdM3K13HED6gYU3TbHthj2jxua0umzxaO6n1VK43RVOrT51V8B/Q4DqVYMI
	wWKwjHD3ln281WoicFNo1is5oCgefpLe9xjCJWpRN/JO+EgDl09de/RE4jwF2LP8w/Uih0wrRfdX4
	gIbL+jJQx4HJg7l4H5ZlFsVlNEx0rHe4BXY7bZB52hr2igs+s5gR5eQqWTSm4GCLlKp+kQfGWFLFa
	gLAMf3dL5HEbWnMDlmBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQJFA-001WuT-1R;
	Thu, 18 Jan 2024 03:39:04 +0000
Received: from mail-m17235.xmail.ntesmail.com ([45.195.17.235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQJF6-001WtH-31
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jan 2024 03:39:03 +0000
DKIM-Signature: a=rsa-sha256;
	b=cmK82geU7RaEJK2HJGQbmBlxcBfxE0UgKeedzfhrq2kV2+43jzzocglsGjjqczSQ02b6qB9wlyN80BJMCU3yEYpVss4aj/H01qRRzzIxlT4ng073lv6YQtcIqxElH+2wFdTuTcWV8OrIwxjMrXZEtC/uPp56ozmqbUal/EQ+3UQ=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uPODjKJ818MatOBVasUMiBLlgM7zi+iSWrkqaARNb/I=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.93] (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 86E8A900268;
	Thu, 18 Jan 2024 11:38:45 +0800 (CST)
Message-ID: <61fa5f2f-1847-4831-a3f2-8acab93fb964@rock-chips.com>
Date: Thu, 18 Jan 2024 11:38:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Black and White Artifact on BMP (24BPP) logo during boot
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>,
 Anatolij Gustschin <agust@denx.de>, Simon Glass <sjg@chromium.org>,
 Andy Yan <andyshrk@163.com>,
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nikhil M Jain <n-jain1@ti.com>,
 Andre Przywara <andre.przywara@arm.com>
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <CAMty3ZCq_d24p68fg1EfWCqmHyDVKZ54UgPDF09GVy0mh4ME=Q@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <CAMty3ZCq_d24p68fg1EfWCqmHyDVKZ54UgPDF09GVy0mh4ME=Q@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGklJHVZLS0xPHUhKSxoYQx1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8d1aa658a42eafkusn86e8a900268
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRQ6KDo6LTwtTREtHyoRCSE4
	AUkwCQFVSlVKTEtOTk9CSklNSUJCVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPT01ONwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_193901_174369_E25CD85D 
X-CRM114-Status: GOOD (  19.08  )
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

SGkgSmFnYW4sCgogwqDCoMKgIEhhdmUgeW91IGNoZWNrIHRoZSBtZW1vcnkgYXJlYSwgZG9lcyBp
dCBtYXliZSBvdmVybGFwIHdpdGggb3RoZXIgCmFyZWE/IGVnLiBoZWFwLCBzdGFjaywgbWFsbG9j
IGFyZWEgYW5kIGV0Yy4KCgpUaGFua3MsCgotIEtldmVyCgpPbiAyMDI0LzEvMTcgMTg6MzYsIEph
Z2FuIFRla2kgd3JvdGU6Cj4gSGkgQWxsLAo+Cj4gQXJ0aWZhY3Qgb2NjdXJyZWQgb25seSBkdXJp
bmcgYm9vdCBidXQgbG9hZGluZyB2aWEgdGhlIGJtcCBjb21tYW5kIG9uCj4gdGhlIHUtYm9vdCBj
b25zb2xlIHNlZW1zIGZpbmUuCj4KPiBJIGhhdmUgb2JzZXJ2ZWQgdGhlIGNvbnRlbnRzIG9mIGJt
cCBoZXggY29kZXMgaGF2ZSBjaGFuZ2VkIGR1cmluZyB0aGUKPiBmdW5jdGlvbiBzd2l0Y2ggYWZ0
ZXIgbWVtb3J5IHRvIGRkciBhZGRyZXNzLiAoVGhlIHNhbWUgY2Fubm90IGhhcHBlbgo+IG9uIGRv
d25zdHJlYW0gdS1ib290KQo+Cj4gZGlmZiAtLWdpdCBhL2NvbW1vbi9zcGxhc2guYyBiL2NvbW1v
bi9zcGxhc2guYwo+IGluZGV4IDY4MjBkYjY4M2IuLmY5N2VkZjg3MzIgMTAwNjQ0Cj4gLS0tIGEv
Y29tbW9uL3NwbGFzaC5jCj4gKysrIGIvY29tbW9uL3NwbGFzaC5jCj4gQEAgLTE3NSw2ICsxNzUs
MTEgQEAgaW50IHNwbGFzaF9kaXNwbGF5KHZvaWQpCj4KPiAgICAgICAgICBzcGxhc2hfZ2V0X3Bv
cygmeCwgJnkpOwo+Cj4gKyAgICAgICBpZiAobWVtY21wKCh2b2lkICopYWRkciwgYm1wX2xvZ29f
Yml0bWFwLCBsZW4yKSA9PSAwKQo+ICsgICAgICAgICAgICAgICBwcmludGYoIiVzOiBTQU1FXG4i
LCBfX2Z1bmNfXyk7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgIHByaW50ZigiJXM6
IE5PVFNBTUVcbiIsIF9fZnVuY19fKTsKPiArCj4gICAgICAgICAgaWYgKENPTkZJR19JU19FTkFC
TEVEKEJNUCkpCj4gICAgICAgICAgICAgICAgICByZXQgPSBibXBfZGlzcGxheShhZGRyLCB4LCB5
KTsKPiAgICAgICAgICBlbHNlCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vYm1wLmMgYi9k
cml2ZXJzL3ZpZGVvL2JtcC5jCj4gaW5kZXggYmFiNmZhNzI2NS4uZGMyOTI4Y2NkYiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3ZpZGVvL2JtcC5jCj4gKysrIGIvZHJpdmVycy92aWRlby9ibXAuYwo+
IEBAIC0xMTEsMTAgKzExMSwxNSBAQCBpbnQgYm1wX2Rpc3BsYXkodWxvbmcgYWRkciwgaW50IHgs
IGludCB5KQo+ICAgewo+ICAgICAgICAgIHN0cnVjdCB1ZGV2aWNlICpkZXY7Cj4gICAgICAgICAg
aW50IHJldDsKPiAtICAgICAgIHN0cnVjdCBibXBfaW1hZ2UgKmJtcCA9IG1hcF9zeXNtZW0oYWRk
ciwgMCk7Cj4gICAgICAgICAgdm9pZCAqYm1wX2FsbG9jX2FkZHIgPSBOVUxMOwo+ICAgICAgICAg
IHVuc2lnbmVkIGxvbmcgbGVuOwo+Cj4gKyAgICAgICBpZiAobWVtY21wKCh2b2lkICopYWRkciwg
Ym1wX2xvZ29fYml0bWFwLCBsZW4yKSA9PSAwKQo+ICsgICAgICAgICAgICAgICBwcmludGYoIiVz
OiBTQU1FXG4iLCBfX2Z1bmNfXyk7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgIHBy
aW50ZigiJXM6IE5PVFNBTUVcbiIsIF9fZnVuY19fKTsKPiArCj4gKyAgICAgICBzdHJ1Y3QgYm1w
X2ltYWdlICpibXAgPSBtYXBfc3lzbWVtKGFkZHIsIDApOwo+ICAgICAgICAgIGlmICghKChibXAt
PmhlYWRlci5zaWduYXR1cmVbMF0gPT0gJ0InKSAmJgo+ICAgICAgICAgICAgICAgIChibXAtPmhl
YWRlci5zaWduYXR1cmVbMV0gPT0gJ00nKSkpCj4gICAgICAgICAgICAgICAgICBibXAgPSBndW56
aXBfYm1wKGFkZHIsICZsZW4sICZibXBfYWxsb2NfYWRkcik7Cj4KPiBTbywgdGhlIGNvbnRlbnRz
IGluIHNwbGFzaF9kaXNwbGF5IHNob3cgU0FNRSBhbmQgdGhlIGNvbnRlbnRzIGluCj4gYm1wX2Rp
c3BsYXkgc2hvdyBOT1RTQU1FLgo+Cj4gVGhpcyBpc3N1ZSBpcyByZXByb2R1Y2luZyBvbiBzcGVj
aWZpY3MgbGlrZQo+IC0gMjQtYml0IEJNUCAoYXR0YWNoZWQpLgo+IHJvY2tjaGlwLmJtcDogUEMg
Yml0bWFwLCBXaW5kb3dzIDk4LzIwMDAgYW5kIG5ld2VyIGZvcm1hdCwgNDgwIHggMjcwIHggMjQK
PiAtIFJvY2tjaGlwIDY0LWJpdCBTb0MgKDMyLWJpdCwgUkszMjg4IGhhcyBubyBpc3N1ZSkuCj4g
LSBBbGx3aW5uZXIgNjQtYml0IFNvQyBzZWVtcyBubyBpc3N1ZXMuCj4gLSBEb3duc3RyZWFtIHUt
Ym9vdCByb2NrY2hpcCBoYXMgbm8gaXNzdWVzLiAod2l0aCBtYWlubGluZSB2aWRlCj4gZHJpdmVy
cyBub3Qgd2l0aCBkcm0gZHJpdmVycykKPiAtIElzc3VlIG9ic2VydmVkIGluIGJvb3QgYnV0IGxv
YWRpbmcgdmlhIGJtcCBjb21tYW5kIG9uIHUtYm9vdCBjb25zb2xlCj4gc2VlbXMgbm8gaXNzdWUu
Cj4KPiBJIGRpZCBjaGVjayB0aGUgY2xvY2ssIGNhY2hlLCBhbmQgbWVtb3J5IGJ1dCBub25lIG9m
IHRoZW0gc2hvd2VkIGFueQo+IGNsdWUuIEkgZGlkIHBvcnQgY2xvY2ssIG1hY2gtcm9ja2NoaXAg
Y29kZSB0byByb2NrY2hpcCB1LWJvb3QgYnV0IG5vbmUKPiBvZiB0aGUgY2FzZXMgcmVzdWx0ZWQg
aW4gdGhlIHNhbWUuCj4KPiBBbnkgaW5wdXQgb24gdGhpcyBpcyBhcHByZWNpYXRlZC4KPgo+IFRo
YW5rcywKPiBKYWdhbi4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

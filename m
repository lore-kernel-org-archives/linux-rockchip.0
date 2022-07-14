Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAC9BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 13:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYqza2mU+nWB2Di9jGUa97Vab4JogC51Mz/R9n4V3X4=; b=ba2C8bwXi5N2gX
	lc5Y5ROMWPymEsOiZn+M0e+0+jAJg8rBE4A5F+3W4sUpEZaDXrwsFnu0DbrabRqwPNWU66PfjwqeO
	0i42RALNi/Rp603LHXkWS51BPLzq6WsPBxJDVSgDepWz1Hfz13c6GcNkstcrC0/Vc9uC5hjLACa4x
	Kv6WDu+pW+2Gwcz6xy3+tu//R8rhL1VPUeSKF/tAxotoTGQzdpTTPXOd0mDHCL0mQdHv0m+TpVr7/
	S3/YnpzdG9tPj3CTS5DXsds1xXbSxYZW1IJS3XQLGdGRk7U+VjLZ3OV5Sx1qwyoPzjUZWv1mOESfD
	Jk+Pe4pUpjChGU9MTBYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByg6-00EcAS-NY; Thu, 14 Jul 2022 13:14:50 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByg3-00Ec6F-44; Thu, 14 Jul 2022 13:14:49 +0000
Received: from p5098d998.dip0.t-ipconnect.de ([80.152.217.152] helo=hermes.fivetechno.de); authenticated
	by wp126.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oByfy-0001bF-4V; Thu, 14 Jul 2022 15:14:42 +0200
X-Virus-Scanned: by amavisd-new 2.12.2 using newest ClamAV at
	linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
	(authenticated bits=0)
	by hermes.fivetechno.de (8.15.2/8.16.1/SUSE Linux 0.8) with ESMTPSA id 26EDEd4W012445
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 14 Jul 2022 15:14:40 +0200
Message-ID: <3b808af9-5bbc-0b58-860e-dbb8ac1e3be9@fivetechno.de>
Date: Thu, 14 Jul 2022 15:14:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Content-Language: de-DE
To: =?UTF-8?Q?Christian_Kohlsch=c3=bctter?= <christian@kohlschutter.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
In-Reply-To: <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
X-bounce-key: webpack.hosteurope.de;m.reichl@fivetechno.de;1657804487;ad497dfb;
X-HE-SMSGID: 1oByfy-0001bF-4V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_061447_349915_0876CFFA 
X-CRM114-Status: GOOD (  26.39  )
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

SGkgQ2hyaXN0aWFuLEFtIDE0LjA3LjIyIHVtIDE0OjE0IHNjaHJpZWIgQ2hyaXN0aWFuIEtvaGxz
Y2jDvHR0ZXI6Cj4+IEFtIDE0LjA3LjIwMjIgdW0gMTM6NDEgc2NocmllYiBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPjoKPj4gCj4+IE9uIDIwMjItMDctMTQgMDA6NDEsIEhlaWtv
IFN0w7xibmVyIHdyb3RlOgo+Pj4gSGkgQ2hyaXN0aWFuLAo+Pj4gQW0gRG9ubmVyc3RhZywgMTQu
IEp1bGkgMjAyMiwgMDA6MjI6MjMgQ0VTVCBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVy
Ogo+Pj4+IG1tYy9TRC1jYXJkIGluaXRpYWxpemF0aW9uIG1heSBzb21ldGltZXMgZmFpbCBvbiBO
YW5vUGkgcjRzIHdpdGgKPj4+PiAibW1jMTogcHJvYmxlbSByZWFkaW5nIFNEIFN0YXR1cyByZWdp
c3RlciIgLwo+Pj4+ICJtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2Fy
ZCIKPj4+PiAKPj4+PiBNb3Jlb3ZlciwgcmVib290aW5nIHdvdWxkIGFsc28gc29tZXRpbWVzIGhh
bmcuCj4+Pj4gCj4+PiBOaXQ6IGhlcmUgdGhlIGNvbW1pdCBtZXNzYWdlIHNob3VsZCBjb250aW51
ZSB3aXRoIHNvbWV0aGluZyBsaWtlOgo+Pj4gLS0tLS0KPj4+IFRoaXMgaXMgY2F1c2VkIGJ5IHRo
ZSB2Y2MzdjAtc2QgcmVndWxhdG9yIHJlZmVyZW5jaW5nIHRoZSB3cm9uZyBncGlvLgo+Pj4gRml4
IHRoZSByZWd1bGF0b3IgdG8gdXNlIHRoZSBjb3JyZWN0IHBpbiBhbmQgZHJvcCB0aGUgYWx3YXlz
LW9uIHByb3BlcnR5Lgo+Pj4gLS0tLS0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29o
bHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaSB8IDYgKysrLS0t
Cj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+
Pj4gCj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LW5hbm9waTQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9w
aTQuZHRzaQo+Pj4+IGluZGV4IDhjMGZmNmM5NmUwMy4uOTE3ODk4MDFhYjAzIDEwMDY0NAo+Pj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRz
aQo+Pj4+IEBAIC02NywxMCArNjcsMTAgQEAgdmNjMXY4X3MzOiB2Y2MxdjgtczMgewo+Pj4+ICAJ
dmNjM3YwX3NkOiB2Y2MzdjAtc2Qgewo+Pj4+ICAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZp
eGVkIjsKPj4+PiAgCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4+Pj4gLQkJZ3BpbyA9IDwmZ3BpbzAg
UktfUEExIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+ICsJCWdwaW8gPSA8JmdwaW8wIFJLX1BENiBH
UElPX0FDVElWRV9ISUdIPjsKPj4+IFRoZSBpbnRlcmVzdGluZyBxdWVzdGlvbiB3b3VsZCBiZSBo
b3cgbmFuby1waS1zcGVjaWZpYyB0aGF0IGdwaW8gaXMuCj4+PiBJLmUuIHRoaXMgaXMgdGhlIHJr
MzM5OS1uYW5vcGk0LmR0c2kgdGhhdCBpcyBzaGFyZWQgYnkgbXVsdGlwbGUgYm9hcmQgdHlwZXMs
Cj4+PiBzbyBjYW4geW91IGNoZWNrIGluIHNjaGVtYXRpY3MgaWYgZ3BpbzAtZDYgaXMgYWx3YXlz
IHVzZWQgb24gYWxsIG9mIHRoZW0/Cj4+IAo+PiBPbiB0aGUgUjRTIHNjaGVtYXRpYywgdGhpcyBp
cyBHUElPMF9BMSBzYW1lIGFzIHRoZSBvdGhlcnMuIEdQSU8wIGRvZXNuJ3QgZXZlbiBoYXZlIGEg
YmFuayBEIG9uIFJLMzM5OSwgaXQgb25seSBnb2VzIHVwIHRvIEI1IDovCj4+IAo+Pj4gVGhhbmtz
Cj4+PiBIZWlrbwo+Pj4+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gIAkJcGlu
Y3RybC0wID0gPCZzZG1tYzBfcHdyX2g+Owo+Pj4+IC0JCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+
Pj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4+Pj4gIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8MzAwMDAwMD47Cj4+Pj4gIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47
Cj4+Pj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YwX3NkIjsKPj4+PiBAQCAtNTgwLDcgKzU4
MCw3IEBAIHdpZmlfcmVnX29uX2g6IHdpZmktcmVnX29uLWggewo+Pj4+ICAgIAlzZG1tYyB7Cj4+
Pj4gIAkJc2RtbWMwX2RldF9sOiBzZG1tYzAtZGV0LWwgewo+Pj4+IC0JCQlyb2NrY2hpcCxwaW5z
ID0gPDAgUktfUEE3IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPj4+PiArCQkJcm9ja2No
aXAscGlucyA9IDwwIFJLX1BENiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4+IAo+PiAu
Li5hbmQgY2xhaW1pbmcgdGhlIGNhcmQgZGV0ZWN0IGlzIG9uIHRoZSBzYW1lIG5vbi1leGlzdGVu
dCBwaW4gYXMgdGhlIHJlZ3VsYXRvciBlbmFibGUgaXMgY2xlYXJseSBldmVuIG1vcmUgd3Jvbmcu
Cj4+IAo+PiBJcyB0aGlzIGFub3RoZXIgY2FzZSB3aGVyZSBhIFVIUyBjYXJkIGlzIGludm9sdmVk
LCBzdWNoIHRoYXQgVkNDX1NESU8gZ2V0cyBsZWZ0IGF0IDEuOFYgYWZ0ZXIgYSByZWJvb3QsIHNv
IHN1YnNlcXVlbnQgYXR0ZW1wdHMgdG8gZG8gdGhlIGluaXRpYWwgaGFuZHNoYWtlIHdoZXJlIHRo
ZSBjYXJkIGlzIGV4cGVjdGluZyAzViBsb2dpYyBsZXZlbHMgZmFpbD8gKEFLQSB0aGUgVGlua2Vy
Ym9hcmQgcHJvYmxlbSkuIEhvYmJsaW5nIHRoZSByZWd1bGF0b3Igc3VjaCB0aGF0IExpbnV4IGNh
biBuZXZlciBhY3R1YWxseSB0dXJuIFZDQzNWMF9TRCBvZmYsIHRodXMgdGhlIGNhcmQgbmV2ZXIg
Z2V0cyByZXNldCwgbWlnaHQgYXBwZWFyIHRvICJ3b3JrIiwgYnV0IGlzbid0IHRoZSByaWdodCB0
aGluZyB0byBkby4KPj4gCj4+IFJvYmluLgo+IAo+IFJpZ2h0LCB0aGlzIGlzIGFsbCB2ZXJ5IHN0
cmFuZ2UuCj4gCj4gSW5kZWVkLCBJIGhhdmUgYSBVSFMgY2FyZCBhbmQgdGhlIHByb2JsZW0geW91
IGRlc2NyaWJlLgo+IEkndmUgYWN0dWFsbHkgbG9va2VkIGludG8gdGhlIG90aGVyIFJLMzM5OSBk
dHMgZmlsZXMgdG8gY29tZSB1cCB3aXRoIHRoYXQgcGF0Y2ggKGUuZy4gcmszMzk5LXJvYy1wYy5k
dHNpLCB3aGljaCBkb2VzIHRoaXM7IGFsc28gc2VlIFsxXSkKCnJrMzM5OS1yb2MtcGMgdXNlcyBH
UElPNC1ENiBmb3IgU0RNTUMwX1BXUiB0byBlbmFibGUgVkNDM1YwX1NELgoKPiAKPiBJIHVuZGVy
c3RhbmQgdGhhdCB3ZSBzaG91bGQgZG8gdGhlIHJpZ2h0IHRoaW5nLCBidXQgSSBhbSBieSBubyBt
ZWFucyBzdXJlIHdoYXQgdGhlICJyaWdodCIgdGhpbmcgZm9yIHRoaXMgcHJvYmxlbSBpcy4KPiBU
aGF0IHNhaWQsIEkgd2lzaGVkIHNvbWVvbmUgd2l0aCBleHBlcnRpc2UgYW5kIGF1dGhvcml0eSBp
biB0aGUgbW1jL3JvY2tjaGlwIGNvbW11bml0eSB3b3VsZCBmaXggdGhpcyBmb3IgZ29vZC4KPiAK
PiBUaGVyZSBhcmUgc2V2ZXJhbCBwYXRjaGVzIGFyb3VuZCB0aGlzIDEuOFYvM1Ygdm9sdGFnZSBk
YW5jZSB0aGF0IGRvIHdvcmssIGdldCB1c2VkIGJ5IHNldmVyYWwgZGlzdHJpYnV0aW9ucyBidXQg
ZGlkbid0IGdldCBtZXJnZWQgdG8gbWFpbmxpbmUgYmVjYXVzZSwgd2VsbCwgdGhlcmUgY291bGQg
YmUgYSBiZXR0ZXIgcmlnaHQgdGhpbmcgdG8gZG8gKGxpa2UgWzJdLCB3aGljaCBpcyBhbHNvIHN0
aWxsIG5lZWRlZCB3aGVuIHVzaW5nIG1haW5saW5lIHUtYm9vdCkuCj4gCj4gR2l2ZW4gdGhlIHN0
YXRlIG9mIHRoaXMgaXNzdWUsIGF0IGxlYXN0IGFsaWduaW5nIHRoZSBjb2RlIHRvIG1hdGNoIGFu
b3RoZXIgYm9hcmQncyBmaXgg4oCUIHdoaWNoIGFscmVhZHkgaXMgaW4gdGhlIG1haW5saW5lIGtl
cm5lbCDigJQgc2VlbXMgYSBzZW5zaWJsZSBhcHByb2FjaCB0byBtZS4gSXQgdW5ibG9ja3MgdXNl
cnMgbGlrZSBtZSB3aG8gd291bGQgcGVyaGFwcyBvdGhlcndpc2UganVzdCBnaXZlIHVwIG9uIHVz
aW5nIHRoZXNlIGRldmljZXMuCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LW1tYy8zMzY0ODEzLkFQYlczMk5sZ0pAcGhpbC9ULyNtMWIyM2NkMmM0M2I2MDBiNWE2ZjA4NDQ2
MWFlNTNlNDgyYWQ2NTMxNgo+IFsyXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2pl
Y3QvbGludXgtbW1jL3BhdGNoL0FNM1BSMDNNQjA5NjY0MTYxQTdGQTJCRDY4QjI4MDBBN0FDNjIw
QEFNM1BSMDNNQjA5NjYuZXVycHJkMDMucHJvZC5vdXRsb29rLmNvbS8KPiAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpH
cnXDnywKLS0gCk1hcmt1cyBSZWljaGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

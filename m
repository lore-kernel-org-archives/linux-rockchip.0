Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B71C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 11:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bwXETxN/L7iRP67zT88tg+Zipk6CoP1qcy2e2Lwq2v8=; b=k+dnOxFr0GvgvdQShyzeAuatmj
	Cg+YSWVhnmSOfiPGd2P0yPD3fOaPufKkuRClSo89pydr4K53nOYIiZsrlXcT1m5KRLZzNjwZ7PcEy
	hGm8hVUkJhI+zHjEU3wn0EyXHGsDPFuuNXg2BdN3dOGY5Dy5ALin6GDNqtP/r63i+7GYBkqg4dP3c
	0lKS3ix4xaPpS/LhmdU+IX8kdJwZc5poPyy0HUBaZqod3dwnXR0cwNUxTx9Pa5aeeg79Ws/cdIaop
	AYAyO26pJd/oTGvjTrf7+kDKUK1JPLKG03Q55+h7Ym0gIoMexroZfeqPsgiFi8zBoyUB8dxUnYRQo
	OOqPVUng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBxDi-00DrsU-PV; Thu, 14 Jul 2022 11:41:26 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBxDV-00DrlY-Sc; Thu, 14 Jul 2022 11:41:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0E2613D5;
	Thu, 14 Jul 2022 04:41:10 -0700 (PDT)
Received: from [10.57.86.49] (unknown [10.57.86.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 685453F792;
	Thu, 14 Jul 2022 04:41:09 -0700 (PDT)
Message-ID: <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
Date: Thu, 14 Jul 2022 12:41:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Content-Language: en-GB
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_Kohlsch=c3=bctter?= <christian@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <12878108.O9o76ZdvQC@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_044114_060595_D6A7B673 
X-CRM114-Status: GOOD (  20.54  )
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

T24gMjAyMi0wNy0xNCAwMDo0MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgQ2hyaXN0aWFu
LAo+IAo+IEFtIERvbm5lcnN0YWcsIDE0LiBKdWxpIDIwMjIsIDAwOjIyOjIzIENFU1Qgc2Nocmll
YiBDaHJpc3RpYW4gS29obHNjaMO8dHRlcjoKPj4gbW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24g
bWF5IHNvbWV0aW1lcyBmYWlsIG9uIE5hbm9QaSByNHMgd2l0aAo+PiAibW1jMTogcHJvYmxlbSBy
ZWFkaW5nIFNEIFN0YXR1cyByZWdpc3RlciIgLwo+PiAibW1jMTogZXJyb3IgLTExMCB3aGlsc3Qg
aW5pdGlhbGlzaW5nIFNEIGNhcmQiCj4+Cj4+IE1vcmVvdmVyLCByZWJvb3Rpbmcgd291bGQgYWxz
byBzb21ldGltZXMgaGFuZy4KPj4KPiAKPiBOaXQ6IGhlcmUgdGhlIGNvbW1pdCBtZXNzYWdlIHNo
b3VsZCBjb250aW51ZSB3aXRoIHNvbWV0aGluZyBsaWtlOgo+IC0tLS0tCj4gVGhpcyBpcyBjYXVz
ZWQgYnkgdGhlIHZjYzN2MC1zZCByZWd1bGF0b3IgcmVmZXJlbmNpbmcgdGhlIHdyb25nIGdwaW8u
Cj4gCj4gRml4IHRoZSByZWd1bGF0b3IgdG8gdXNlIHRoZSBjb3JyZWN0IHBpbiBhbmQgZHJvcCB0
aGUgYWx3YXlzLW9uIHByb3BlcnR5Lgo+IC0tLS0tCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLb2hsc2Now7x0dGVyIDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT4KPj4gLS0tCj4+ICAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwgNiArKyst
LS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFu
b3BpNC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5k
dHNpCj4+IGluZGV4IDhjMGZmNmM5NmUwMy4uOTE3ODk4MDFhYjAzIDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCj4+IEBAIC02
NywxMCArNjcsMTAgQEAgdmNjMXY4X3MzOiB2Y2MxdjgtczMgewo+PiAgIAl2Y2MzdjBfc2Q6IHZj
YzN2MC1zZCB7Cj4+ICAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+ICAgCQll
bmFibGUtYWN0aXZlLWhpZ2g7Cj4+IC0JCWdwaW8gPSA8JmdwaW8wIFJLX1BBMSBHUElPX0FDVElW
RV9ISUdIPjsKPj4gKwkJZ3BpbyA9IDwmZ3BpbzAgUktfUEQ2IEdQSU9fQUNUSVZFX0hJR0g+Owo+
IAo+IFRoZSBpbnRlcmVzdGluZyBxdWVzdGlvbiB3b3VsZCBiZSBob3cgbmFuby1waS1zcGVjaWZp
YyB0aGF0IGdwaW8gaXMuCj4gCj4gSS5lLiB0aGlzIGlzIHRoZSByazMzOTktbmFub3BpNC5kdHNp
IHRoYXQgaXMgc2hhcmVkIGJ5IG11bHRpcGxlIGJvYXJkIHR5cGVzLAo+IHNvIGNhbiB5b3UgY2hl
Y2sgaW4gc2NoZW1hdGljcyBpZiBncGlvMC1kNiBpcyBhbHdheXMgdXNlZCBvbiBhbGwgb2YgdGhl
bT8KCk9uIHRoZSBSNFMgc2NoZW1hdGljLCB0aGlzIGlzIEdQSU8wX0ExIHNhbWUgYXMgdGhlIG90
aGVycy4gR1BJTzAgZG9lc24ndCAKZXZlbiBoYXZlIGEgYmFuayBEIG9uIFJLMzM5OSwgaXQgb25s
eSBnb2VzIHVwIHRvIEI1IDovCgo+IAo+IFRoYW5rcwo+IEhlaWtvCj4gCj4+ICAgCQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+PiAgIAkJcGluY3RybC0wID0gPCZzZG1tYzBfcHdyX2g+Owo+
PiAtCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gICAJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+PiAgIAkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4+ICAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBf
c2QiOwo+PiBAQCAtNTgwLDcgKzU4MCw3IEBAIHdpZmlfcmVnX29uX2g6IHdpZmktcmVnX29uLWgg
ewo+PiAgIAo+PiAgIAlzZG1tYyB7Cj4+ICAgCQlzZG1tYzBfZGV0X2w6IHNkbW1jMC1kZXQtbCB7
Cj4+IC0JCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEE3IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxs
X3VwPjsKPj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QRDYgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfdXA+OwoKLi4uYW5kIGNsYWltaW5nIHRoZSBjYXJkIGRldGVjdCBpcyBvbiB0aGUgc2Ft
ZSBub24tZXhpc3RlbnQgcGluIGFzIHRoZSAKcmVndWxhdG9yIGVuYWJsZSBpcyBjbGVhcmx5IGV2
ZW4gbW9yZSB3cm9uZy4KCklzIHRoaXMgYW5vdGhlciBjYXNlIHdoZXJlIGEgVUhTIGNhcmQgaXMg
aW52b2x2ZWQsIHN1Y2ggdGhhdCBWQ0NfU0RJTyAKZ2V0cyBsZWZ0IGF0IDEuOFYgYWZ0ZXIgYSBy
ZWJvb3QsIHNvIHN1YnNlcXVlbnQgYXR0ZW1wdHMgdG8gZG8gdGhlIAppbml0aWFsIGhhbmRzaGFr
ZSB3aGVyZSB0aGUgY2FyZCBpcyBleHBlY3RpbmcgM1YgbG9naWMgbGV2ZWxzIGZhaWw/IChBS0Eg
CnRoZSBUaW5rZXJib2FyZCBwcm9ibGVtKS4gSG9iYmxpbmcgdGhlIHJlZ3VsYXRvciBzdWNoIHRo
YXQgTGludXggY2FuIApuZXZlciBhY3R1YWxseSB0dXJuIFZDQzNWMF9TRCBvZmYsIHRodXMgdGhl
IGNhcmQgbmV2ZXIgZ2V0cyByZXNldCwgbWlnaHQgCmFwcGVhciB0byAid29yayIsIGJ1dCBpc24n
dCB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCgpSb2Jpbi4KCj4+ICAgCQl9Owo+PiAgIAo+PiAgIAkJ
c2RtbWMwX3B3cl9oOiBzZG1tYzAtcHdyLWggewo+Pgo+IAo+IAo+IAo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

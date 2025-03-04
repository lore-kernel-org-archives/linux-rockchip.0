Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC51C282D2
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F56rDveKHAL0Ue3WvmtqBaWsUAgXrZ/R2i6e/a3P7mo=; b=qolEgPytdiGWGU
	BYrRoZrC/o7j04FQmIzNSbb+rxpNhIIrJBnPQRV7CvGvqD3t3RizYVgdtUU5FrBr+/eo78v93G53O
	5qkZdPhFr6ADrgRB8ziQuq7A3rpz37dselyjLgPh9UteR5M9+3zDSKZzY2HuQsg/mqnyIgZc4tiiw
	NuJ/j4snWxlCG0Ig2xu4yxO0cFzBsyNyosUdQ7ki+I9dozkn06DNLrTbFM2KfJ560APYPjqkb4zkw
	80J2CSrz+xCSThPwdUMZB/aYueaV0ANWct/HiZeHg7O1IoKYLs9se8IZ03CHphTC2tnScjGYFEMTf
	wh+SSHLYgmA5/bYSLPlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpWPM-00000005iFb-0tqE;
	Tue, 04 Mar 2025 17:50:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpUxg-00000005OPn-0AEm
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Mar 2025 16:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=xPqOHDlEyVD2IkOwlh7IqoW/YquDMjN+ZbULeN5kRoM=; b=lCOQ9D5HbEBrYwu2DM3H6Ts4KG
	0l1XpSTDGZBEspwpzIOkmgBXkO98+UUOjy7l9qUQYBOBiahAbtPyIJQYtgDwzqdAGYR1VESrPlWAC
	1gsP+TkpRJahLNvLfeGWakugjGA9R4xIh+rxvh/OWCscRic5DWUeLDQdsRQnNZhTcmn9T2CSdqbML
	4UulKbFX89M+OOxObzB8VsYvP4FJ/Cb8Lkh2QnpJ4vTS84ykxYHiMWcBB6+TtHUSBcavV13/nXk5r
	6UYB097n4wSSND/bZhlpIhBGuHrop6o0qtGZP43DaVdiBK6nES/dfWyzpaKRlZq5SQXTQ+EwfUBMm
	GOotwwtg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpUxc-000000005bh-2Kep
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 16:17:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3AF7D5C5F51;
	Tue,  4 Mar 2025 16:15:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D231C4CEE5;
	Tue,  4 Mar 2025 16:17:29 +0000 (UTC)
Message-ID: <cade5c73-e25f-4f56-be10-7d5a06f92917@xs4all.nl>
Date: Tue, 4 Mar 2025 17:17:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-7-dmitry.osipenko@collabora.com>
 <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
 <863f9c1beb7a912f94f8740b3e5095e09e49cee5.camel@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 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
In-Reply-To: <863f9c1beb7a912f94f8740b3e5095e09e49cee5.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_161737_017016_515248E9 
X-CRM114-Status: GOOD (  29.57  )
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

T24gMjgvMDIvMjAyNSAwNDo1MSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBIaSBIYW5zLAo+
IAo+IExlIG1lcmNyZWRpIDI2IGbDqXZyaWVyIDIwMjUgw6AgMDk6MzEgKzAxMDAsIEhhbnMgVmVy
a3VpbCBhIMOpY3JpdMKgOgo+PiBPbiAyNS8wMi8yMDI1IDE5OjMwLCBEbWl0cnkgT3NpcGVua28g
d3JvdGU6Cj4+PiBGcm9tOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KPj4+Cj4+PiBUaGUgUm9ja2NoaXAgUkszNTg4IGhhcyBhIGJ1aWx0LWluIEhE
TUkgcmVjZWl2ZXIgYmxvY2sgZnJvbQo+Pj4gU3lub3BzeXMuIExldCdzIGVuYWJsZSB0aGUgZHJp
dmVyIGZvciBpdC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBP
c2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IMKgYXJj
aC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyB8IDIgKysKPj4+IMKgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCj4+PiBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPj4+IGluZGV4IGNiN2Rh
NDQxNTU5OS4uM2RjY2M5ZTFjNGFhIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9jb25maWdz
L2RlZmNvbmZpZwo+Pj4gKysrIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwo+Pj4gQEAg
LTg1OSw2ICs4NTksOCBAQCBDT05GSUdfVklERU9fU0FNU1VOR19FWFlOT1NfR1NDPW0KPj4+IMKg
Q09ORklHX1ZJREVPX1NBTVNVTkdfUzVQX0pQRUc9bQo+Pj4gwqBDT05GSUdfVklERU9fU0FNU1VO
R19TNVBfTUZDPW0KPj4+IMKgQ09ORklHX1ZJREVPX1NVTjZJX0NTST1tCj4+PiArQ09ORklHX1ZJ
REVPX1NZTk9QU1lTX0hETUlSWD1tCj4+PiArQ09ORklHX1ZJREVPX1NZTk9QU1lTX0hETUlSWF9M
T0FEX0RFRkFVTFRfRURJRD15Cj4+Cj4+IEkgZG8gbm90IGJlbGlldmUgaXQgaXMgYSBnb29kIGlk
ZWEgdG8gZGVmYXVsdCB0byB5IGZvciB0aGlzIG9wdGlvbi4KPj4KPj4gVGhlIEVESUQgZGVwZW5k
cyBvbiB0aGUgc3BlY2lmaWMgZGV2aWNlIHlvdSBtYWtlLCBhbmQgeW91IHNob3VsZAo+PiB0aGlu
ayBjYXJlZnVsbHkgYWJvdXQgd2hldGhlciB0aGUgZGVmYXVsdCBFRElEIGZpdHMgdGhlIG5lZWRz
IG9mIHRoZQo+PiBkZXZpY2UuCj4+Cj4+IFNvIGlmIHlvdSB3YW50IHRoZSBkZWZhdWx0IEVESUQs
IHRoZW4geW91IHNob3VsZCBtYW51YWxseSBzZWxlY3QgaXQKPj4gYW5kIG5vdCBoYXZlIGl0IGF1
dG9zZWxlY3RlZC4KPiAKPiBGb2xsb3dpbmcgdXAgaGVyZSwgZnJvbSB0aGUgZGV2aWNlIG1ha2Vy
IHBlcnNwZWN0aXZlIHN1cmUsIGJ1dCBJJ20gbm90Cj4gc3VyZSB0aGlzIGlzIHRoZSBiZXN0IGNo
b2ljZSBmb3IgZ2VuZXJpYyBMaW51eCBkaXN0cmlidXRpb24uIEFzIG9mCj4gdG9kYXksIHByZXR0
eSBtdWNoIG5vIHVzZXJzcGFjZSBjYXB0dXJlIHNvZnR3YXJlIGtub3dzIGFib3V0IHRoaXMsCj4g
bWVhbmluZyB0aGUgZGV2aWNlIHdpbGwgbm90IHdvcmsgb3V0IG9mIHRoZSBib3ggaW4gT0JTLCBH
U3RyZWFtZXIsCj4gRmZtcGVnLCBXZWIgQnJvd3NlcnMuIEluIGNvbXBhcmlzb24sIGlmIHlvdSBw
aWNrIGFueSBVVkMgSERNSSBjYXB0dXJlLAo+IGl0IGp1c3Qgd29yaywgd2l0aCBhIGRlZmF1bHQg
RURJRCB0aGF0IGNvdmVycyB0aGUgcmFuZ2Ugb2YKPiBjYXBhYmlsaXRpZXMsIHdoaWNoIGluIHRo
aXMgY2FzZSBhcmUgZGVmaW5lZCBieSB0aGUgU29DLgoKQSBVVkMgSERNSSBjYXB0dXJlIGRldmlj
ZSBpcyBub3QgYSBnb29kIGNvbXBhcmlzb246IHRoYXQgaGFzIGl0J3Mgb3duCkVESUQgdGhhdCBp
cyBjb25maWd1cmVkIGZvciB0aGUgc3BlY2lmaWMgaGFyZHdhcmUgYW5kIFVTQiBiYW5kd2lkdGgK
bGltaXRhdGlvbnMuIEVESUQgaGFuZGxpbmcgaXMgYWxsIGludGVybmFsIHRvIHRoYXQgZGV2aWNl
LCBub3RoaW5nIHRvCmRvIHdpdGggdGhlIFVWQyBkcml2ZXIuCgpUaGF0IHNhaWQsIHRoaXMgZGV2
aWNlIGlzIGEgYml0IGRpZmZlcmVudCBjb21wYXJlZCB0byBtb3N0IG90aGVyCkhETUkgcmVjZWl2
ZXJzIGluIHRoYXQgaXQgYWxzbyBoYXMgYSBETUEgZW5naW5lLiBVc3VhbGx5IEhETUkgcmVjZWl2
ZXJzCmFyZSBpMmMgZGV2aWNlcyB0aGF0IGNvbm5lY3QgdG8gYW4gU29DLiBJbiB0aGlzIGNhc2Ug
dGhlIGhhcmR3YXJlIGlzCmluc2lkZSB0aGUgU29DLiBTbyBJIGFtIE9LIHdpdGggbWFraW5nIExP
QURfREVGQVVMVF9FRElEPXkgaW4gdGhlIGRlZmNvbmZpZy4KClNvOgoKQWNrZWQtYnk6IEhhbnMg
VmVya3VpbCA8aHZlcmt1aWxAeHM0YWxsLm5sPgoKTm90ZSB0aGF0IEkgd2lsbCBtZXJnZSB0aGUg
djEzIGRyaXZlciAocGF0Y2hlcyAxLTMpLCBzaW5jZSBpdCBsb29rcyBnb29kLgoKQnV0IHYxMS12
MTMgb2YgdGhpcyBkZWZjb25maWcgcGF0Y2ggZHJvcHBlZCB0aGUgIkNPTkZJR19WSURFT19TWU5P
UFNZU19IRE1JUlhfTE9BRF9ERUZBVUxUX0VESUQ9eSIKbGluZSwgc28geW91IG1pZ2h0IHdhbnQg
dG8gcG9zdCBhIHYxNCBvZiBqdXN0IHBhdGNoZXMgNC02LCByZXN0b3JpbmcgdGhhdApsaW5lLCBv
bmNlIEkgbWVyZ2VkIHBhdGNoZXMgMS0zLgoKUmVnYXJkcywKCglIYW5zCgo+IAo+IFdoYXRldmVy
IHdlIG1ha2UgYXMgYSBjaG9pY2UsIHdpbGwgYWx3YXlzIGJlIHRoZSB3cm9uZyBjaG9pY2UgZm9y
Cj4gc29tZW9uZSwgdGhvdWdoIEkgZXhwZWN0IHRoaXMgdG8gYmUgYSBsb3QgZWFzaWVyIHRvIGNo
YW5nZSBmb3IKPiAic3BlY2lhbGl6ZWQiIGltcGxlbWVudGF0aW9uLiBOb3csIHNpbmNlIHRoZXJl
IGlzIG5vIHJlYXNvbiB5b3UgY2FuJ3QKPiBkbyBhIHNwZWNpbGl6ZWQgaW1wbGVtZW50YXRpb24g
b24gZ2VuZXJpYyBMaW51eCBkaXN0cm8sIGFuZCBiZWNhdXNlIHlvdQo+IG1pZ2h0IGRpc2FncmVl
IHdpdGggbWUsIHBlcmhhcHMgYSBjb21wcm9taXNlIGlzIHRvIGFsc28gYWRkIGEgbW9kdWxlCj4g
cGFyYW1ldGVyLCBzbyB0aGF0IHRoZXJlIGlzIGEgcnVuLXRpbWUgb3ZlcnJpZGUgdG8gdGhpcy4K
PiAKPiBOaWNvbGFzCj4gCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IAlIYW5zCj4+Cj4+PiDCoENPTkZJ
R19WSURFT19USV9KNzIxRV9DU0kyUlg9bQo+Pj4gwqBDT05GSUdfVklERU9fSEFOVFJPPW0KPj4+
IMKgQ09ORklHX1ZJREVPX0lNWDIxOT1tCj4+Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

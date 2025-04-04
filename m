Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19EDC36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ar+xQzX+1uSPLPZbvb95LWN8lXuTGLQadfGHWtm7GT8=; b=cu0cuAvFe74xDt
	y2P4WEmp8AWt04Yo3FItoJQsU9K0Q7z/TOUolZPkoTLDOdKjMM5J95E6H6wRE7qa1nu2vHEEGZl+S
	Of5gSdfrz/v8pj3uUOMyyOMHthzGMPpQ48JVu/VKOvrnriXyJ6jBQ073AXZHCVUdDL+GRKi4rMpyq
	Nj2VQD+JNbvg4264MVcfrfeFglhIVpsU8IKbzGnS19IM/HRC0RJ0juk4/TN2vKI6fIcTUsrflZZfT
	0G4GBxfqmZ+xizU1W6ueG3xUwlCMKpUjahAKQHEzkzHhW07/gv7qITN43WMAVCX3tuaSL+FLew8lv
	3XVugPm++ENFP6Yn14iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jvB-0000000CIk1-0Xsy;
	Fri, 04 Apr 2025 16:29:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jr9-0000000CIG1-1FXw
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 16:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1743783921;
	bh=DPKesb5zEufm5ZzxHksY/n1wcad6WX+VWC9xfDlF+90=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=lIFG05LyoSoDkuiDxZiNPzbpH10QW9uId0znLHEjJuSF4coYTaTDP7fDogFee97IW
	 O+kszdWoEd+qrdaoVTFfIitY7/Px4UFPItdD6/pq5rhVnl8zLGMaJwWYwngtGlNrgp
	 ymlqE0l1aNhGLYMKD7xCAVE24/6TMNthG5CZUITG+asvK8QSiW9QlKIyK98CFge1bb
	 93lglrT+4MwWf1N0uV5iBUd+xWCDPVvTRhy2dNgzjrcQUJO3HM72WU1dru/xK6j9fp
	 8bwDvXqfFR06fdsIpDFmt7/kW4VoggFyr1oOem+S7Xyqeh6QgC8xgALER9XIaKRkGJ
	 Cr0Kdin3DCYmQ==
Received: from [192.168.42.160] (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9678D17E07F2;
	Fri,  4 Apr 2025 18:25:17 +0200 (CEST)
Message-ID: <91799a0e05deadc34b9aa688ba44c43c67011a0f.camel@collabora.com>
Subject: Re: [PATCH v13 0/6] Add Synopsys DesignWare HDMI RX Controller
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Tim Surber <me@timsurber.de>, Dmitry Osipenko	
 <dmitry.osipenko@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, Shreeya
 Patel <shreeya.patel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Mauro Carvalho Chehab	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, 	jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com,  Sebastian Reichel
 <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Christophe JAILLET
	 <christophe.jaillet@wanadoo.fr>, Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 04 Apr 2025 12:25:16 -0400
In-Reply-To: <e0e144be-5cf9-4a79-a602-2ab2b7cd9aa1@timsurber.de>
References: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
	 <78ff36f6-01a7-4df4-b653-c4509fb93af4@timsurber.de>
	 <1039aca7-89b9-44ef-9775-e7852e956362@timsurber.de>
	 <9b4b1e65-127d-422b-a359-a1d8e25652f9@xs4all.nl>
	 <88054acf-3051-414c-aef7-4c0f085d5182@collabora.com>
	 <47e022f4-1c1b-43c4-8f6c-bc1ff23ad39f@collabora.com>
	 <e0e144be-5cf9-4a79-a602-2ab2b7cd9aa1@timsurber.de>
Organization: Collabora Canada
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_092523_796854_2C85BFDD 
X-CRM114-Status: GOOD (  40.65  )
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

SGkgVGltLAoKTGUgbWVyY3JlZGkgMDUgbWFycyAyMDI1IMOgIDExOjQxICswMTAwLCBUaW0gU3Vy
YmVyIGEgw6ljcml0wqA6Cj4gSGksCj4gCj4gc28gdGhlIDQ6NDo0IGlzc3VlIHdhcyBqdXN0IGEg
Z3N0cmVhbWVyIGJ1ZyBhbmQgaXQgd29ya2VkIHdoZW4gSQo+IGFwcGxpZWQgCj4gYW4gZXhwZXJp
bWVudGFsIGZpeCBbMV0uCj4gCj4gU28gZXZlcnl0aGluZyB3b3JrcyBmb3IgbWUgdXNpbmcgdGhl
IGRlZmF1bHQgRURJRCBub3cuCj4gCj4gVGVzdGVkLWJ5OiBUaW0gU3VyYmVyIDxtZUB0aW1zdXJi
ZXIuZGU+Cj4gCj4gWzFdOiAKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVh
bWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzg1MzQKClRoYW5rcywgSSdsbCB0cnkgYW5k
IGdldCB0aGlzIGZpeCBtb3Zpbmcgc29vbi4gSSBub3cgaGF2ZSBhIFJLMzU4OCB3aXRoCmhhY2tz
IHRoYXQgbGV0IG1lIGZvcmNlIFlVViBpbiB0aGUgMyBzdWJzYW1wbGluZywgc28gSSBjYW4gZWFz
aWx5CnJlcHJvZHVjZSBub3cuCgpOaWNvbGFzCgpwLnMuIEkgYWxzbyBoaXQgc29tZSBidWZmZXIg
c3RhcnZhdGlvbiBpc3N1ZXMgKGluc2lkZSBHU3RyZWFtZXIpLCBmb3IKd2hpY2ggSSB3aWxsIGJl
IHNlbmRpbmcgYSBmaXggdG8gdGhpcyBkcml2ZXIgc28gR1N0cmVhbWVyIGlzIGF3YXJlIG9mCnRo
ZSBsb3N0IGZyYW1lcy4KCj4gCj4gT24gMy81LzI1IDEwOjA5LCBEbWl0cnkgT3NpcGVua28gd3Jv
dGU6Cj4gPiBPbiAzLzUvMjUgMTI6MDMsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+ID4gT24g
My81LzI1IDExOjEwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiA+ID4gT24gMDUvMDMvMjAyNSAw
MTo1OSwgVGltIFN1cmJlciB3cm90ZToKPiA+ID4gPiA+IEhpIERtaXRyeSwKPiA+ID4gPiA+IAo+
ID4gPiA+ID4gSSBkaWQgc29tZSBtb3JlIHRlc3RpbmcuIFRoYXQgdGhlIEFwcGxlIFRWIGRpZCBu
b3Qgd29yayB3YXMgYQo+ID4gPiA+ID4gYml0Cj4gPiA+ID4gPiBtaXNsZWFkaW5nLgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiBJdCB3YXMganVzdCwgdGhhdCB0aGUgQXBwbGUgVFYgZGVmYXVsdGVkIHRv
IDQ6NDo0IENocm9tYQo+ID4gPiA+ID4gd2hpY2ggZG9lcyBub3QKPiA+ID4gPiA+IHdvcmsgYXQg
YWxsIGZvciBtZS4gKFRoZSBzYW1lIGhhcHBlbnMgdXNpbmcgdGhlIHZlbmRvcgo+ID4gPiA+ID4g
ZHJpdmVyKS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2hlbiBJIGNoYW5nZWQgdGhlIEVESUQgdG8g
bWF0Y2ggdGhlIHZlbmRvciBkcml2ZXIgdGhlIEhETUkKPiA+ID4gPiA+IGhhbmRzaGFrZQo+ID4g
PiA+ID4gaGFwcGVuZWQgd2l0aCA0OjI6MCBjaHJvbWEsIHdoZXJlIEkgY291bGQgdmVyaWZ5IGV2
ZW4gNGs2MGZwcwo+ID4gPiA+ID4gdXNpbmcgeW91cgo+ID4gPiA+ID4gZHJpdmVyLCBuaWNlIQo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBTbyB0aGUgcmVtYWluaW5nIHByb2JsZW1zIEkgc2VlIGFyZToK
PiA+ID4gPiA+IC0gNDo0OjQgY2hyb21hIG5vdCB3b3JraW5nIGluIGFueSByZXNvbHV0aW9uCj4g
PiA+ID4gPiAtIDQ6MjoyIGFuZCBSR0Igbm90IHdvcmtpbmcgaW4gNGs2MGZwcyAoaXMgdGhpcyBh
IGhhcmR3YXJlCj4gPiA+ID4gPiBsaW1pdGF0aW9uPykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQSBw
b3NzaWJsZSB3b3JrYXJvdW5kIGNvdWxkIGJlIHRvIGRpc2FibGUgdGhlc2Ugbm9uIHN1cHBvcnRl
ZAo+ID4gPiA+ID4gZm9ybWF0cyBpbgo+ID4gPiA+ID4gdGhlIGRlZmF1bHQgRURJRC4KPiA+ID4g
PiBJIHdvdWxkIGxpa2UgdG8gbWVyZ2UgdGhpcyBkcml2ZXIgdGhpcyB3ZWVrLCBzaW5jZSBvdGhl
cndpc2UgaXQKPiA+ID4gPiB3aWxsIGxpa2VseQo+ID4gPiA+IHNsaXAgdG8gdjYuMTYuIFNvIGlm
IHRoZXJlIGlzIGEgd29ya2luZyBFRElELCBwZXJoYXBzIGl0IGNhbiBiZQo+ID4gPiA+IHVzZWQg
Zm9yIG5vdywKPiA+ID4gPiBhbmQgbGF0ZXIgb24gaXQgY2FuIGJlIHBhdGNoZWQgaWYgdGhlcmUg
aXMgYSBiZXR0ZXIgRURJRC4KPiA+ID4gPiAKPiA+ID4gPiBXb3VsZCB0aGlzIEVESUQgd29yaz8g
VGltLCBjYW4geW91IHRyeSB0aGlzPwo+ID4gPiA+IAo+ID4gPiA+IHY0bDItY3RsIC0tc2V0LWVk
aWQgdHlwZT1oZG1pLTRrLTYwMG1oeix5Y2JjcjQ0NCx5Y2JjcjQyMgo+ID4gPiA+IAo+ID4gPiA+
IEFsdGVybmF0aXZlbHksIGlmIHRoZXJlIGlzIGluZGVlZCBhIEhXIGxpbWl0YXRpb24gdGhhdCBw
cmV2ZW50cwo+ID4gPiA+IDRrcDYwIHRvIHdvcmssCj4gPiA+ID4gdHJ5IHRoaXM6Cj4gPiA+ID4g
Cj4gPiA+ID4gdjRsMi1jdGwgLS1zZXQtZWRpZCB0eXBlPWhkbWktNGstMzAwbWh6LHljYmNyNDQ0
LHljYmNyNDIyCj4gPiA+ID4gCj4gPiA+ID4gV2hpY2hldmVyIG9mIHRoZSB0d28gd29ya3MgaXMg
d2hhdCB3ZSBjYW4gdXNlIGFzIGRlZmF1bHQgRURJRC4KPiA+ID4gCj4gPiA+IERpc2FibGluZyA0
NDQgYW5kIDQyMiBpcyBhbiBvcHRpb24uIFRob3VnaCwgdGhleSB3b3JrIG9uIG15IHNldHVwCj4g
PiA+IGF0Cj4gPiA+IDRrQDYwcC4KPiA+ID4gCj4gPiA+IEluIGdlbmVyYWwsIGl0IG9mdGVuIGEg
Y2hhbGxlbmdlIHRvIGdldCA0a0A2MHAgcHJvcGVybHkgd2l0aCBhbnkKPiA+ID4gb2YKPiA+ID4g
dGhlc2Ugc21hbGwgYm9hcmQgZGV2aWNlcy4gNGtANjBwIHdvcmtzIG9ubHkgdXNpbmcgYSBzaG9y
dCBIRE1JCj4gPiA+IGNhYmxlCj4gPiA+IGZvciBtZS4gQWxzbywgbm90IGV2ZXJ5b25lIGF3YXJl
IHRoYXQgdGhlIG1pY3JvIEhETUkgYWRhcHRlcgo+ID4gPiBuZWVkcyB0byBiZQo+ID4gPiBjb21w
bGlhbnQgd2l0aCBIRE1JIDIuMCBmb3IgNGtANjAsIHRoYXQncyB3aHkgMzAwTUh6IGlzIHRoZQo+
ID4gPiBkZWZhdWx0Lgo+ID4gPiAKPiA+ID4gV2lsbCBiZSBuaWNlIHRvIGhhdmUgdGhlIGdvb2Qg
RURJRCBlbmFibGVkIGJ5IGRlZmF1bHQgaW4gdGhlCj4gPiA+IGRlZmNvbmZpZy4KPiA+ID4gRGVh
bGluZyB3aXRoIHByb2JsZW1zIGxpa2UgdGhhdCB3aWxsIGJlIGEgaGVhZGFjaGUgZm9yIG1ham9y
aXR5Cj4gPiA+IG9mCj4gPiA+IHBlb3BsZSwgSU1PLgo+ID4gCj4gPiBCVFcsIEkgZG9uJ3Qgc2Vl
IGl0IGFzIGEgYmxvY2tlci4gRHJpdmVyIHdvcmtzIGluIGdlbmVyYWwsIG5ldwo+ID4gaXNzdWVz
Cj4gPiBjYW4gYmUgcmVzb2x2ZWQgd2l0aCBhZGRpdGlvbmFsIHBhdGNoZXMuCj4gPiAKCi0tIApO
aWNvbGFzIER1ZnJlc25lClByaW5jaXBhbCBFbmdpbmVlciBhdCBDb2xsYWJvcmEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

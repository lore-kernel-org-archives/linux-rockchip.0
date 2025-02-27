Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68982C197BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 19:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZms5ofVjOqDp16QB1hJ/9UzOP+v3FKzU4VGPPuoQUk=; b=oVaUZBrOW2s+Zb
	hb0ue/mfQpDC8zgY4mY5Csyp2gdANdsYVMeHz+yVH6JG4MbXkMFmKjg+ejHDYS6JLPck8nTWn8RA9
	Jq3CIL5gVNl42AQZmQxPLPWkD+HKzoRNkKI5PMnD7EzuQCNdx1j92RPPbszh9+zSCY7dIzTYID/3j
	SngQphwb6+rcy111sevdxiidVNrIE5pENcxcw9+R0N1vxAr8fzDmjfd7iad3DTl7jx22+NjLGqJ3r
	rxyQduCYb0RYYrA4Ps3KzMtvhl00TmnB3eRQTOSpbbvu0SyMmWFSwZDViqizQf042kAVOezGGJT6q
	5rulwwZYDuC1Wf+ZUilw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjq6-00000008gWr-2h8b;
	Thu, 27 Feb 2025 19:46:34 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjjz-00000008ZGI-0s76
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 19:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740685212;
	bh=NkAwTqksSU4AEzN7KRQ2MeSnIOrOPp2KKDZRrChKYu4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=L1YFfwMDat/2mPLCqAj3/mY1YakblrZsc/IW/+gaVrJ4FF7e4hybBdd50L4HTgQKI
	 +wwGqt3OvggdFOFARvtz1oB/tIporOks6DYCLhOZmefbhPfKCcN4TlApRK/UsIkJCC
	 yBXJ08NyE0Jhe0OkyNzehXOgyfp0fQlxZLNepiQPbzUEmLJIz4XmjIJ8vh7hQwfGQs
	 uHlmbOl+KtAxrshZYbABjLBZ+Atw6voYxV6dhp6jBhH7gWDwix64tmdRhaL3ZNQw+B
	 nk+sZd3aBCE0ABPVl1wo5camBn7rWm14xKhsKUShzC32284Oni3GvlNqK2o3Qeqicw
	 YeY15ZSc0cjBA==
Received: from [IPv6:2606:6d00:11:e976::5ac] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C54C17E068B;
	Thu, 27 Feb 2025 20:40:08 +0100 (CET)
Message-ID: <3872267b32d1386827635f15eda99d2709b44a96.camel@collabora.com>
Subject: Re: [PATCH v10 3/6] media: platform: synopsys: Add support for HDMI
 input driver
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Diederik de Haas	
 <didi.debian@cknow.org>, Shreeya Patel <shreeya.patel@collabora.com>, Heiko
 Stuebner <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil	 <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, 	jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com,  Sebastian Reichel
 <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Thu, 27 Feb 2025 14:40:06 -0500
In-Reply-To: <f0c3a16e-c4a2-4cd9-9afa-a21a975a45c9@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
	 <20250225183058.607047-4-dmitry.osipenko@collabora.com>
	 <D82H4F6J4V4V.2BLHVUVD3BVX9@cknow.org>
	 <f0c3a16e-c4a2-4cd9-9afa-a21a975a45c9@collabora.com>
Organization: Collabora Canada
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_114015_442515_9F7706B9 
X-CRM114-Status: GOOD (  25.42  )
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

TGUgamV1ZGkgMjcgZsOpdnJpZXIgMjAyNSDDoCAwODoyOCArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IGEgw6ljcml0wqA6Cj4gT24gMi8yNi8yNSAxODoxNCwgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToK
PiA+ID4gK2NvbmZpZyBWSURFT19TWU5PUFNZU19IRE1JUlhfTE9BRF9ERUZBVUxUX0VESUQKPiA+
ID4gKwlib29sICJMb2FkIGRlZmF1bHQgRURJRCIKPiA+ID4gKwlkZXBlbmRzIG9uIFZJREVPX1NZ
Tk9QU1lTX0hETUlSWAo+ID4gPiArCWhlbHAKPiA+ID4gKwnCoCBQcmVsb2FkIGRlZmF1bHQgRURJ
RCAoRXh0ZW5kZWQgRGlzcGxheSBJZGVudGlmaWNhdGlvbiBEYXRhKS4KPiA+IEkgc2VlIHNvbWUg
dmFsdWUgaW4gbWFraW5nIGV4cGxpY2l0IHdoYXQgeW91IG1lYW4gYnkgRURJRCAuLi4KPiA+IAo+
ID4gPiArCcKgIEVESUQgY29udGFpbnMgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGNhcGFiaWxpdGll
cyBvZiB0aGUgZGlzcGxheSwKPiA+ID4gKwnCoCBzdWNoIGFzIHN1cHBvcnRlZCByZXNvbHV0aW9u
cywgcmVmcmVzaCByYXRlcywgYW5kIGF1ZGlvIGZvcm1hdHMuCj4gPiAuLi4gSSBkbyBub3QgdGhp
bmsgYS90aGlzIEtjb25maWcgbmVlZHMgdG8gZXhwbGFpbiBpdC4KPiA+IAo+ID4gPiArCj4gPiA+
ICsJwqAgRW5hYmxpbmcgdGhpcyBvcHRpb24gaXMgcmVjb21tZW5kZWQgZm9yIGEgbm9uLXByb2R1
Y3Rpb24gdXNlLWNhc2VzLgo+ID4gTXkgZ3Vlc3MgaXMgdGhhdCBpdCBjb3VsZCBiZSB1c2VmdWwg
Zm9yIGRldmVsb3BtZW50L2RlYnVnZ2luZy9DSSB3b3JrCj4gPiB3aGljaCBwb3NzaWJseSBkbyBu
b3QgaGF2ZSBhbiBhY3R1YWwgZGV2aWNlIChtb25pdG9yKSB3aGljaCBwcm92aWRlcwo+ID4gYWN0
dWFsIEVESUQgZGF0YT8gSXMgQ0kgd29yayB0aGUgcmVhc29uIHdoeSB5b3UgKGluaXRpYWxseSkg
ZW5hYmxlZCBpdAo+ID4gaW4gdGhlIGRlZmNvbmZpZz8KPiA+IEJ1dCB3aGVuIHlvdSBoYXZlIGFu
IGFjdHVhbCBtb25pdG9yICg9cHJvZHVjdGlvbiB1c2UtY2FzZT8pLCB5b3UKPiA+IChyZWFsbHkp
IGRvIG5vdCB3YW50IGl0PyBXb3VsZCBpdCBiZSBoYXJtbGVzcyBpZiAnc3RpbGwnIGVuYWJsZWQ/
Cj4gCj4gRGlzYWJsaW5nIHRoaXMgb3B0aW9uIGlzIG9ubHkgcmVsZXZhbnQgaWYgeW91J3JlIG1h
a2luZyBhIGNvbW1lcmNpYWwKPiBwcm9kdWN0IHVzaW5nIHRoaXMgZHJpdmVyLiBJdCdzIGEgcXVp
dGUgd2lkZXNwcmVhZCBpc3N1ZSB0aGF0IEhETUkKPiBwcm9qZWN0b3JzIHV0aWxpemUgZGVmYXVs
dCBFRElEIHRoYXQgY29tZXMgZnJvbSBCU1AgZHJpdmVyIHRoZXkgdXNlLAo+IHdoaWxlIGEgcmVi
cmFuZCBFRElEIHNob3VsZCBiZSB1c2VkLiBLZWVwaW5nIHRoaXMgb3B0aW9uIGVuYWJsZWQgaXMK
PiBoYXJtbGVzcywgYnV0IHlvdSBkb24ndCB3YW50IHRvIGRvIGl0IGluIGEgcHJvZHVjdC4KPiAK
PiBGb3IgYWxsIG90aGVyIHVzZS1jYXNlcyB5b3Ugd291bGQgd2FudCB0byBlbmFibGUgdGhpcyBv
cHRpb24sIG90aGVyd2lzZQo+IGRyaXZlciB3b24ndCBiZSB1c2FibGUgdW50aWwgeW91IHdpbGwg
bG9hZCBFRElEIGZyb20gdXNlcnNwYWNlLgo+IAo+IEhhbnMgaGFzIHN0cm9uZyBvcGluaW9uIFJF
IHRoaXMgb3B0aW9uIGFuZCB3YW50cyB0byBoYXZlIGl0IGRpc2FibGVkIGJ5Cj4gZGVmYXVsdC4K
CkhhbnMsIGNhbiB5b3UgZGV0YWlsIHlvdXIgcmVhc29ucyA/IFdlIHBlcnNvbmFsbHkgbWFrZSBk
ZWZhdWx0IGNvbmZpZwp0b3dhcmQgZ2VuZXJpYyBMaW51eCBkaXN0cmlidXRpb25zLiBJZiB5b3Ug
ZG9uJ3QgdHVybiB0aGlzIG9uLCB0aGUKZHJpdmVyIHdvbid0IHdvcmsgd2l0aCBhbnkgZXhpc3Rp
bmcgdXNlcnNwYWNlIChPQlMsIEdTdHJlYW1lciwgV2ViCmJyb3dzZXJzLCBldGMpLiBXaGlsZSBo
YXZpbmcgaXQgZGlzYWJsZWQsIHRvIGF2b2lkIG5vdCBoYXZpbmcgeW91cgpicmFuZCBvciBzcGVj
aWZpYyBjaG9pY2VzIG9uIHRoZSBmaXJzdCBnbyBpcyBjbGVhcmx5IHRoZSAic3BlY2lhbGl6ZWQi
CnVzYWdlIGFuZCBjb25maWd1cmF0aW9uLgoKPiAKPiA+IFRodXMgYSBtb3JlIGV4dGVuc2l2ZSBk
ZXNjcmlwdGlvbiB3aGF0IHRoaXMgS2NvbmZpZyBpdGVtIGRvZXMgYW5kIHdoeQo+ID4gYW5kIHdo
ZW4gSSB3YW50IHRvIGVuYWJsZSBpdCBvciBub3QsIHNlZW1zIG1vcmUgdXNlZnVsIHRvIG1lLgo+
IAo+IFdpbGwgdXBkYXRlIGFuZCBleHBhbmQgdGhlIGRlc2NyaXB0aW9uIHdpdGggbW9yZSBjbGFy
aWZpY2F0aW9uLiBUaGFua3MKPiBmb3Igc3VnZ2VzdGlvbi4KPiAKCnJlZ2FyZHMsCgotLSAKTmlj
b2xhcyBEdWZyZXNuZQpQcmluY2lwYWwgRW5naW5lZXIgYXQgQ29sbGFib3JhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

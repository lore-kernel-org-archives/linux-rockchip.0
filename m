Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7383E776F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 16:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+y6jBVUhDwjN/llkNRJM6a/uA1pg7S64GeXXd46Q7z0=; b=ygOqXwaX8GSSM5
	+w7T3Q1NzU2WQuR6cYhexYPXtSltCVuj7MwABVSs6agtS8tlRP+pd/MX5zZho4IJDLkm+MzKAZr4n
	Rpwj5AljC9ABFoeTXSXsKLnyIiacnEEhm2mpzJyOZKxpFVeez835oCdJJFb8SJ+Ru2l/NFKDvw1Z2
	cZAsyrEutZvTVTRD15Hf+08hJ5P3DSkx3+lIrAyoInx5G/ehsQcrQMqajgNXwHag8nWPJ4CWgsGNL
	KZ8ToGaNAu+e8cJhHS/1FulO5xOrD35ixbBMh1Q1ZOu2PCXiSaiRSPuI7Y+9tQvJUe74fzDMorFGN
	3xUoGSCx7+1ia1M94awQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYS5y-0000000HFhe-1J2A;
	Wed, 24 Dec 2025 16:52:18 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYS5q-0000000HFgo-3J1j;
	Wed, 24 Dec 2025 16:52:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id A395C418A6;
	Wed, 24 Dec 2025 17:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1766595126; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FAlvebUUG2bzxrDciua9nbFHHFRu5loYHuWIcI/vSNo=;
	b=dEvno/hnZfKDLt2EyPrnqbHoMqCokv0GPc7Jm8I91GfJpoPGEwhch2O7dQfp1s8hW836sI
	wFaAFNDJyNtyLf9maDbvEEg4urvKf8jzsX7gYppR0zWFIxgU16vEWkapdEErOcNSKjqWUo
	1IZWg0Pf/ZVelylRiuqZjULdC3AC972jpo1xLp2wtZ5jGWxCU5qm5oH6SmnvFhim8dFzFz
	waqBqGmYY4mYo1Umz0pLBa6VuOg1Pg7agGkPEa74d8I0HK7z0YyKIVWQOIVhv32ZF6h+Oj
	esDxaolb8W5uxwBz8WqrhgwpFgNzjG6nWBJfhceZLRuAWROpPcL6U27JXTVOiQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CANAwSgS6UeR4PJnWDxxcQbdH8u_4uNiQxCTugQS35LcPvpiwMQ@mail.gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
 <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
 <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com> <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org> <CANAwSgS6UeR4PJnWDxxcQbdH8u_4uNiQxCTugQS35LcPvpiwMQ@mail.gmail.com>
Date: Wed, 24 Dec 2025 17:52:03 +0100
Cc: "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
To: "Anand Moon" <linux.amoon@gmail.com>
MIME-Version: 1.0
Message-ID: <648aa5c0-9e58-2404-4250-e83b8a748601@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 limit RK3399 to =?utf-8?q?2=2E5?= GT/s to prevent damage
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_085211_629040_A01DD9AB 
X-CRM114-Status: GOOD (  21.10  )
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

T24gV2VkbmVzZGF5LCBEZWNlbWJlciAyNCwgMjAyNSAxNzoxMSBDRVQsIEFuYW5kIE1vb24gPGxp
bnV4LmFtb29uQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCAyNCBEZWMgMjAyNSBhdCAxODoy
NSwgRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4gT24gV2VkbmVz
ZGF5LCBEZWNlbWJlciAyNCwgMjAyNSAwOTowNCBDRVQsIEFuYW5kIE1vb24gPGxpbnV4LmFtb29u
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIFdlZCwgMjQgRGVjIDIwMjUgYXQgMTE6MDgsIEdl
cmFsZG8gTmFzY2ltZW50bwo+ID4gPiA8Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29tPiB3cm90ZToK
PiA+ID4gPiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAyOjE44oCvQU0gQW5hbmQgTW9vbiA8bGlu
dXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwgMTggTm92IDIwMjUg
YXQgMDM6MTcsIEdlcmFsZG8gTmFzY2ltZW50bwo+ID4gPiA+ID4gPGdlcmFsZG9nYWJyaWVsQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IFNoYXduIExpbiBmcm9tIFJvY2tjaGlwIGhhcyBy
ZWl0ZXJhdGVkIHRoYXQgdGhlcmUgbWF5IGJlIGRhbmdlciBpbiB1c2luZwo+ID4gPiA+ID4gPiB0
aGVpciBQQ0llIHdpdGggNS4wIEdUL3Mgc3BlZWRzLiBXYXJuIHRoZSB1c2VyIGlmIHRoZXkgbWFr
ZSBhIERUIGNoYW5nZQo+ID4gPiA+ID4gPiBmcm9tIHRoZSBkZWZhdWx0IGFuZCBkcml2ZSBhdCAy
LjUgR1QvcyBvbmx5LCBldmVuIGlmIHRoZSBEVAo+ID4gPiA+ID4gPiBtYXgtbGluay1zcGVlZCBw
cm9wZXJ0eSBpcyBpbnZhbGlkIG9yIGluZXhpc3RlbnQuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
IFRoaXMgY2hhbmdlIGlzIGNvcnJvYm9yYXRlZCBieSBSSzMzOTkgb2ZmaWNpYWwgZGF0YXNoZWV0
IFsxXSwgd2hpY2gKPiA+ID4gPiA+ID4gc2F5cyBtYXhpbXVtIGxpbmsgc3BlZWQgZm9yIHRoaXMg
cGxhdGZvcm0gaXMgMi41IEdUL3MuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFsxXSBodHRwczov
L29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcvUm9ja2NoaXBfUkszMzk5X0Rh
dGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gVG8gYWNjdXJh
dGVseSBkZXRlcm1pbmUgdGhlIG9wZXJhdGluZyBzcGVlZCwgd2UgY2FuIGxldmVyYWdlIHRoZQo+
ID4gPiA+ID4gUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMC8xIGZpZWxkcy4KPiA+ID4gPiA+IFRo
aXMgcHJvdmlkZXMgYSBkeW5hbWljIG1lY2hhbmlzbSB0byByZXNvbHZlIHRoZSBpc3N1ZS4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvbWFzdGVyL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jI0w1MzMt
TDU5NQo+ID4gPiA+Cj4gPiA+ID4gbm90IHRvIHB1dCB5b3UgZG93biBidXQgSSB0aGluayB5b3Vy
IGFwcHJvYWNoIGFkZHMgdW5uZWNlc3NhcnkgY29tcGxleGl0eS4KPiA+ID4gPgo+ID4gPiA+IEFs
bCBJIGNhcmUgcmVhbGx5IGlzIHRoYXQgdGhlIEtlcm5lbCBQcm9qZWN0IGlzbid0IGJsYW1lZCBp
biB0aGUKPiA+ID4gPiBmdXR1cmUgaWYgc29tZW9uZSBoYXBwZW5zIHRvIGxvc2UgdGhlaXIgZGF0
YS4KPiA+ID4gPgo+ID4gPiBBbGxvdyB0aGUgaGFyZHdhcmUgdG8gbmVnb3RpYXRlIHRoZSBsaW5r
IHNwZWVkIGJhc2VkIG9uIHRoZQo+ID4gPiBhdmFpbGFibGUgbnVtYmVyIG9mIGxhbmVzLgo+ID4g
PiBJIGRvbuKAmXQgYW50aWNpcGF0ZSBhbnkgZGF0YSBsb3NzLCBzaW5jZSBQQ0llIHdpbGwgYXV0
b21hdGljYWxseQo+ID4gPiBjb25maWd1cmUgdGhlIGRldmljZSBzcGVlZCB3aXRoIGxpbmsgdHJh
aW5pbmcuLgo+ID4KPiA+IFBsZWFzZSwgbm90ZSB0aGF0IHRoaXMgaXNuJ3QgYWJvdXQgcGVyZm9y
bWluZyBhdXRvIG5lZ290aWF0aW9uCj4gPiBhbmQgZm9sbG93aW5nIGl0cyByZXN1bHRzLCBidXQg
YWJvdXQgImFydGlmaWNpYWxseSIgbGltaXRpbmcgdGhlCj4gPiBQQ0llIGxpbmsgc3BlZWQgdG8g
Mi41IEdUL3Mgb24gUkszMzk5LCBiZWNhdXNlIGl0J3Mgd2VsbCBrbm93bgo+ID4gYnkgUm9ja2No
aXAgdGhhdCA1IEdUL3Mgb24gUkszMzk5J3MgUENJZSBpbnRlcmZhY2UgbWF5IGNhdXNlCj4gPiBp
c3N1ZXMgYW5kIGRhdGEgY29ycnVwdGlvbiBpbiBjZXJ0YWluIGNvcm5lciBjYXNlcy4KPiA+Cj4g
SXTigJlzIHBvc3NpYmxlIHRoZSBsaW5rIHNwZWVkIHdhc27igJl0IHByb3Blcmx5IHR1bmVkLiBP
biBteSBvbGRlcgo+IGRldmVsb3BtZW50IGJvYXJkLAo+IHdoaWNoIHN1cHBvcnRzIHRoaXMgY29u
ZmlndXJhdGlvbiwgSSBoYXZlbuKAmXQgb2JzZXJ2ZWQgYW55IGRhdGEgbG9zcy4KPiAKPiBzdWRv
IGxzcGNpIC12dnYgfCBncmVwIFNwZWVkCj4gICAgICAgICAgICAgICAgIExua0NhcDogUG9ydCAj
MCwgU3BlZWQgNUdUL3MsIFdpZHRoIHgxLCBBU1BNIEwxLCBFeGl0Cj4gTGF0ZW5jeSBMMSA8OHVz
Cj4gICAgICAgICAgICAgICAgIExua1N0YTogU3BlZWQgNUdUL3MsIFdpZHRoIHgxCj4gICAgICAg
ICAgICAgICAgIExua0N0bDI6IFRhcmdldCBMaW5rIFNwZWVkOiA1R1QvcywgRW50ZXJDb21wbGlh
bmNlLSBTcGVlZERpcy0KPiAgICAgICAgICAgICAgICAgTG5rQ2FwOiBQb3J0ICMxLCBTcGVlZCA1
R1QvcywgV2lkdGggeDEsIEFTUE0gTDBzIEwxLAo+IEV4aXQgTGF0ZW5jeSBMMHMgdW5saW1pdGVk
LCBMMSA8MnVzCj4gICAgICAgICAgICAgICAgIExua1N0YTogU3BlZWQgNUdUL3MsIFdpZHRoIHgx
Cj4gICAgICAgICAgICAgICAgIExua0N0bDI6IFRhcmdldCBMaW5rIFNwZWVkOiA1R1QvcywgRW50
ZXJDb21wbGlhbmNlLSBTcGVlZERpcy0KCkxldCBtZSBjbGFyaWZ5LCBwbGVhc2UuLi4gIFRoaXMg
bGltaXRhdGlvbiB0byAyLjUgR1QvcyBjYW1lIHN0cmFpZ2h0IGZyb20KUm9ja2NoaXAgYSBmZXcg
eWVhcnMgYWdvLCBkZXNjcmliZWQgYmFjayB0aGVuIGFzIGFuIHVuZGlzY2xvc2VkIGVycmF0YS4K
UmVjZW50bHksIHdlIGdvdCBzb21lIG1vcmUgZGV0YWlscyBmcm9tIFJvY2tjaGlwIHRoYXQgY29u
ZmlybWVkIDUgR1QvcwphcyBoYXZpbmcgaXNzdWVzIGluIGNlcnRhaW4gY29ybmVyIGNhc2VzIHRo
YXQgY2Fubm90IGJlIHZhbGlkYXRlZCBieQpwZXJmb3JtaW5nIHNvbWUgZmllbGQgdGVzdHMgb3Ig
Ynkgb2JzZXJ2aW5nIHRoZSBQQ0llIGJlaGF2aW9yIHVuZGVyIGxvYWQuClRob3NlIGNvcm5lciBj
YXNlcyB3aXRoIDUgR1QvcywgYXMgZGVzY3JpYmVkIGJ5IFJvY2tjaGlwLCBhcmUgcXVpdGUgaGFy
ZAp0byByZWFjaCwgYnV0IHRoZSBwb3NzaWJpbGl0eSBpcyBzdGlsbCByZWFsLgoKVG8gc3VtIGl0
IHVwLCB5ZXMsIG11bHRpcGxlIHBlb3BsZSBoYXZlIHJlcG9ydGVkIDUgR1QvcyBhcyAid29ya2lu
ZyBmb3IgbWUiCm9uIHRoZWlyIFJLMzM5OS1iYXNlZCBib2FyZHMgYW5kIGRldmljZXMsIGJ1dCB0
aGF0IHVuZm9ydHVuYXRlbHkgbWVhbnMKbm90aGluZyBpbiB0aGlzIGNhc2UsIGR1ZSB0byB0aGUg
c3BlY2lmaWMgbmF0dXJlIG9mIHRoZSB1bmRlcmx5aW5nIGlzc3VlLgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

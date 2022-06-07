Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6242DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 21:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IrY0WUJQ3JvJdzxfgxQ4I7xLwUprK5dhbZn9EG+6I8=; b=dsww9fUCzAnsgf
	NVr8s/KeU0Lc4rwDmtQjZ07f/wlQFGwpyaHk8hd5Rb7OLu/KSNvlz9uqn8dj3Nyb1WzRvYSxd4IlB
	0eIUWqjwxaNHOkTlJeuFvUvnn2r+bGWOp9IeUp5dh/6RdttKe8lFFxXFDFjqVDppqVHNfOcoumVlY
	P5u88ULfXIKFiQElMglUnaNrrKrUOngndmrDcMLn3JD/hqd5iUmeLJrjrJEzGr7J9TOsyRiVNlsMp
	gTg77StDvYiPF9Eu/vxmvbYywDlObDPAInMfy8sOoPEaavXhl2jmnzVV2/P8HSpN+cP0plvDKguR0
	MYFXWE1LSZxuZp+4uTPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygdP-009k5N-UU; Tue, 07 Jun 2022 21:21:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygdE-009k3I-Ht; Tue, 07 Jun 2022 21:20:58 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B5C076601871;
	Tue,  7 Jun 2022 22:20:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654636852;
	bh=dH4ePZwfeLtm9fi79oxsDTUIBw0bx6MHdxM1wE/tZqQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=WNvOADoRCCmqcW0ciRe4n/B5kvdvxoJJyqgrUKUAHAR9nFu2Ku1T2a+690+lFyA/S
	 2IDgEVjcC11SDcfX1akflY4OIdQ/bj0Uj2IxoEB+aaIyLlGaDOed642U3BPt8K2BhQ
	 8/Nni2eDQz6US5/y0asqf3RapGjnyJ24LUK82CN8Ov/JHF04L09D0oZPffGtRD2Zov
	 ZpQUQ2wg7HVqhSKQyF5Y58FNo4dNohpAPurdNF+dCWQfQ0tbLaCR+IDcF3HvOFG6dV
	 0FmnwFZKDFjbTZJqi27BvEYUY8a/wALRUJ5nlV+tT5Y3sdhoVenVLWDLs9kLcxtx8J
	 N7lkevwSQJjzQ==
Message-ID: <253e2771abb13a3e62c07dfb0b420169bb572c2d.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Sebastian Fricke
 <sebastian.fricke@collabora.com>,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, stable@vger.kernel.org
Date: Tue, 07 Jun 2022 17:20:41 -0400
In-Reply-To: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
References: 	<20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_142056_764617_654BFD7F 
X-CRM114-Status: GOOD (  23.49  )
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

TGUgbWFyZGkgMDcganVpbiAyMDIyIMOgIDE0OjE1IC0wNzAwLCBCcmlhbiBOb3JyaXMgYSDDqWNy
aXTCoDoKPiBCZWZvcmUgY29tbWl0IDk5OTg5NDNmNmRmYyAoIm1lZGlhOiBya3ZkZWM6IFN0b3Ag
b3ZlcmNsb2NraW5nIHRoZQo+IGRlY29kZXIiKSwgdGhlIHJrdmRlYyBkcml2ZXIgd2FzIGZvcmNp
bmcgdGhlIFZEVSBjbG9jayByYXRlLiBBZnRlciB0aGF0Cj4gY29tbWl0LCB3ZSByZWx5IG9uIHRo
ZSBkZWZhdWx0IGNsb2NrIHJhdGUuIFRoYXQgcmF0ZSB3b3JrcyBPSyBvbiBtYW55Cj4gYm9hcmRz
LCB3aXRoIHRoZSBkZWZhdWx0IFBMTCBzZXR0aW5ncyAoQ1BMTCBpcyA4MDBNSHosIFZEVSBkaXZp
ZGVycwo+IGxlYXZlIGl0IGF0IDQwME1Ieik7IGJ1dCBzb21lIGJvYXJkcyBjaGFuZ2UgUExMIHNl
dHRpbmdzLgo+IAo+IEFzc2lnbiB0aGUgZXhwZWN0ZWQgZGVmYXVsdCBjbG9jayByYXRlIGV4cGxp
Y2l0bHksIHNvIHRoYXQgdGhlIHJhdGUgaXMKPiBjb25zaXN0ZW50LCByZWdhcmRsZXNzIG9mIFBM
TCBjb25maWd1cmF0aW9uLgo+IAo+IFRoaXMgd2FzIHBhcnRpY3VsYXJseSBicm9rZW4gb24gUksz
Mzk5IEdydSBTY2FybGV0IHN5c3RlbXMsIHdoZXJlIHRoZQo+IHJrMzM5OS1ncnUtc2NhcmxldC5k
dHNpIGFzc2lnbnMgUExMX0NQTEwgdG8gMS42IEdIeiwgYW5kIHNvIHRoZSBWRFUKPiBjbG9jayBl
bmRzIHVwIGF0IDgwMCBNSHogKHR3aWNlIHRoZSBleHBlY3RlZCByYXRlKSwgYW5kIGNhdXNlcyB2
aWRlbwo+IGFydGlmYWN0cyBhbmQgb3RoZXIgaXNzdWVzLgo+IAo+IE5vdGU6IEkgYXNzaWduIHRo
ZSBjbG9jayByYXRlIGluIHRoZSBjbG9jayBjb250cm9sbGVyIGluc3RlYWQgb2YgdGhlCj4gdmRl
YyBub2RlLCBiZWNhdXNlIHRoZXJlIGFyZSBtdWx0aXBsZSBub2RlcyB0aGF0IHVzZSB0aGlzIGNs
b2NrLCBhbmQgcGVyCj4gdGhlIGNsb2NrLnlhbWwgc3BlY2lmaWNhdGlvbjoKPiAKPiAgIENvbmZp
Z3VyaW5nIGEgY2xvY2sncyBwYXJlbnQgYW5kIHJhdGUgdGhyb3VnaCB0aGUgZGV2aWNlIG5vZGUg
dGhhdAo+ICAgY29uc3VtZXMgdGhlIGNsb2NrIGNhbiBiZSBkb25lIG9ubHkgZm9yIGNsb2NrcyB0
aGF0IGhhdmUgYSBzaW5nbGUKPiAgIHVzZXIuIFNwZWNpZnlpbmcgY29uZmxpY3RpbmcgcGFyZW50
IG9yIHJhdGUgY29uZmlndXJhdGlvbiBpbiBtdWx0aXBsZQo+ICAgY29uc3VtZXIgbm9kZXMgZm9y
IGEgc2hhcmVkIGNsb2NrIGlzIGZvcmJpZGRlbi4KPiAKPiAgIENvbmZpZ3VyYXRpb24gb2YgY29t
bW9uIGNsb2Nrcywgd2hpY2ggYWZmZWN0IG11bHRpcGxlIGNvbnN1bWVyIGRldmljZXMKPiAgIGNh
biBiZSBzaW1pbGFybHkgc3BlY2lmaWVkIGluIHRoZSBjbG9jayBwcm92aWRlciBub2RlLgo+IAo+
IEZpeGVzOiA5OTk4OTQzZjZkZmMgKCJtZWRpYTogcmt2ZGVjOiBTdG9wIG92ZXJjbG9ja2luZyB0
aGUgZGVjb2RlciIpCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYt
Ynk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnPgoKUmV2aWV3ZWQtYnk6
IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCk15IG9u
bHkgZG91YnQgd2FzIGlmIHlvdSByZWFsbHkgbmVlZGVkIHRvIGR1cGxpY2F0ZSB0aGF0IHNldHRp
bmcgaW50byBncnUtCnNjYXJsZXQuZHRzaSwgYnV0IEkndmUgc2ltcGx5IGFzc3VtZWQgdGhlIGFu
c3dlciBpcyB5ZXMsIGFuZCB0aGF0IHlvdSBhbHJlYWR5CmNoZWNrZWQgdGhhdC4KCj4gLS0tCj4g
VGhpcyBpcyBhIGNhbmRpZGF0ZSBmb3IgNS4xOSBJTU8sIHNpbmNlIGNvbW1pdCA5OTk4OTQzZjZk
ZmMgbGFuZGVkIGluCj4gNS4xOS1yYzEgYW5kIGlzIGJlaW5nIHF1ZXVlZCB1cCBmb3IgLXN0YWJs
ZSBhcyB3ZSBzcGVhay4KPiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
Z3J1LXNjYXJsZXQuZHRzaSB8IDQgKysrLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS5kdHNpICAgICAgICAgICAgIHwgNiArKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1zY2FybGV0LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtc2NhcmxldC5kdHNpCj4gaW5kZXggOTEzZDg0
NWViNTFhLi4xOTc3MTAzYTVlZjQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktZ3J1LXNjYXJsZXQuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LWdydS1zY2FybGV0LmR0c2kKPiBAQCAtMzc2LDcgKzM3Niw4IEBA
ICZjcnUgewo+ICAJCTwmY3J1IEFDTEtfVklPPiwKPiAgCQk8JmNydSBBQ0xLX0dJQ19QUkU+LAo+
ICAJCTwmY3J1IFBDTEtfRERSPiwKPiAtCQk8JmNydSBBQ0xLX0hEQ1A+Owo+ICsJCTwmY3J1IEFD
TEtfSERDUD4sCj4gKwkJPCZjcnUgQUNMS19WRFU+Owo+ICAJYXNzaWduZWQtY2xvY2stcmF0ZXMg
PQo+ICAJCTw2MDAwMDAwMDA+LCA8MTYwMDAwMDAwMD4sCj4gIAkJPDEwMDAwMDAwMDA+LAo+IEBA
IC0zODgsNiArMzg5LDcgQEAgJmNydSB7Cj4gIAkJPDQwMDAwMDAwMD4sCj4gIAkJPDIwMDAwMDAw
MD4sCj4gIAkJPDIwMDAwMDAwMD4sCj4gKwkJPDQwMDAwMDAwMD4sCj4gIAkJPDQwMDAwMDAwMD47
Cj4gIH07Cj4gIAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+IGlu
ZGV4IGZiZDAzNDY2MjRlNi4uOWQ1YjBlOGM5Y2NhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gQEAgLTE0NjIsNyArMTQ2Miw4IEBAIGNydTogY2xvY2st
Y29udHJvbGxlckBmZjc2MDAwMCB7Cj4gIAkJCTwmY3J1IEhDTEtfUEVSSUxQMT4sIDwmY3J1IFBD
TEtfUEVSSUxQMT4sCj4gIAkJCTwmY3J1IEFDTEtfVklPPiwgPCZjcnUgQUNMS19IRENQPiwKPiAg
CQkJPCZjcnUgQUNMS19HSUNfUFJFPiwKPiAtCQkJPCZjcnUgUENMS19ERFI+Owo+ICsJCQk8JmNy
dSBQQ0xLX0REUj4sCj4gKwkJCTwmY3J1IEFDTEtfVkRVPjsKPiAgCQlhc3NpZ25lZC1jbG9jay1y
YXRlcyA9Cj4gIAkJCSA8NTk0MDAwMDAwPiwgIDw4MDAwMDAwMDA+LAo+ICAJCQk8MTAwMDAwMDAw
MD4sCj4gQEAgLTE0NzMsNyArMTQ3NCw4IEBAIGNydTogY2xvY2stY29udHJvbGxlckBmZjc2MDAw
MCB7Cj4gIAkJCSA8MTAwMDAwMDAwPiwgICA8NTAwMDAwMDA+LAo+ICAJCQkgPDQwMDAwMDAwMD4s
IDw0MDAwMDAwMDA+LAo+ICAJCQkgPDIwMDAwMDAwMD4sCj4gLQkJCSA8MjAwMDAwMDAwPjsKPiAr
CQkJIDwyMDAwMDAwMDA+LAo+ICsJCQkgPDQwMDAwMDAwMD47Cj4gIAl9Owo+ICAKPiAgCWdyZjog
c3lzY29uQGZmNzcwMDAwIHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

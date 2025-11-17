Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C420CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 15:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etx8BXhq8aUZkkGPvKqevCmL6N+eW3H+IUzlpm3LPEQ=; b=4E3bTxdmH9SPO9
	7R6J4rnE1x3memnshwaDBeHWc9SLueziOV4rAnrEchEONoKjr7GWhBzxaXquSEQsEc9hIXTu+AHNH
	3Z7W7BMNDIxjCrbyd8Xf2OyrUXECLvNPdARHwvql0Eig3Kvre+ce3UiPyBzwp1p76vOBEO3+d38X+
	Rzo/Kd37Xg0vNWQPMpnmamI197/GqkcgczpUQ4J+JcbhfDcDOXFy8vN9zgEUIf27NHeeXgWzoLdD7
	rGqx1495BsETNyg4MvIP2aADiZ4TvLIIr1sjlnVFyPOComEuuqAmDdIGrpyiGkFbINyuoxha8WcBY
	T2Ss2fZ2/3yVfvupKVeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL1dQ-0000000GMMw-3kSN;
	Mon, 17 Nov 2025 15:59:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL1dP-0000000GMMR-1A8v;
	Mon, 17 Nov 2025 15:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Subject:
	Message-ID:MIME-Version:To:Cc:Date:References:Content-Type:In-Reply-To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Zkn44FjR+pCfEjpttwFCzM+vdwVOm3Tq+gRyYYZrqaw=; b=jEH0w12r8gH4bKIddMNv97wwa+
	fJAh4RacflTEbW+nku99OfzjPxFln6BBW0NL1u3Sl/efKUXVwKcW8rBSA6SkBqxIDULeMSDJIVcos
	htFmoflAJggUc5M0WkJb1iPsOtSfC4tHG2X7ljXAOcsW5VAx+UVumja3uyaF+0754/hVm36BFKWZm
	UZo8PU7NFEqx3Jp12jYCXOR9pEhSC6Kkdb1ObekulrOtiB58npLWy6SN6EzT/o890sEfZkkhPycD/
	R+xXaWkMk5T47wdtxKgPHrU4u03W9YaAGHdHeWxFdQ8ZsRBVH+L1t5cUMBMfxTc6oD95sqnK7uK3V
	zY9Bsb3w==;
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL0lh-00000007b0R-3VGo;
	Mon, 17 Nov 2025 15:03:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D540841095;
	Mon, 17 Nov 2025 16:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763395149; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Zkn44FjR+pCfEjpttwFCzM+vdwVOm3Tq+gRyYYZrqaw=;
	b=C/KqexO6h7lCq322ARNRT5+LGtjamGKURkllK3HzjYPHOKO9anlQ9NZ7A6nMfVY0JJmEr6
	AUcCqnVVFSWbcP1G6B2+XD6fpN3hpt3UMc3HkCbS/itsh2YIWPbChNvUNF6kB4Wr4pg524
	xncW8KuE0cfGMsYpvmDrGcGTWB94CziDsnu/UdoBqFNVDe0mZphVfLrqHes/XibvRfT4kQ
	A355rmGB9ABLCSljkVTlTOkGCSXo7EByB/NmHg5T6VrgaghIGlHn4ixJomMtGonqWEZTnl
	5tdONmWdhYwJtUasEUF/pLGlkPryYIH+QkXvy0btaKmwHxax6los3e4QVCvtVQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <aRrIhA1uv_aIneOc@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <8f3cc1c1-7bf7-4610-b7ce-79ebd6f05a6e@rock-chips.com>
 <257951b7-c22e-9707-6aba-3dc5794306bb@manjaro.org> <aRrIhA1uv_aIneOc@geday>
Date: Mon, 17 Nov 2025 16:59:05 +0100
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <4afa0534-5458-ac0c-6c92-38ed52aea00b@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 0/3] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?=
 =?utf-8?q?_5=2E0?= GT/s speed may be dangerous
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_150350_025565_3AD85B71 
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

SGVsbG8gR2VyYWxkbywKCk9uIE1vbmRheSwgTm92ZW1iZXIgMTcsIDIwMjUgMDg6MDIgQ0VULCBH
ZXJhbGRvIE5hc2NpbWVudG8gPGdlcmFsZG9nYWJyaWVsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24g
TW9uLCBOb3YgMTcsIDIwMjUgYXQgMDQ6NTc6MTFBTSArMDEwMCwgRHJhZ2FuIFNpbWljIHdyb3Rl
Ogo+ID4gT24gTW9uZGF5LCBOb3ZlbWJlciAxNywgMjAyNSAwNDo0MiBDRVQsIFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+ID4g5ZyoIDIwMjUvMTEvMTUg5pif
5pyf5YWtIDE3OjEwLCBHZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGTOgo+ID4gPiA+IEluIHJlY2Vu
dCBpbnRlcmFjdGlvbnMgd2l0aCBTaGF3biBMaW4gZnJvbSBSb2NrY2hpcCBpdCBjYW1lIHRvIG15
Cj4gPiA+ID4gYXR0ZW50aW9uIHRoZXJlJ3MgYW4gdW5rbm93biBlcnJhdGEgcmVnYXJkaW5nIDUu
MCBHVC9zIG9wZXJhdGlvbmFsCj4gPiA+ID4gc3BlZWQgb2YgdGhlaXIgUENJZSBjb3JlLiBBY2Nv
cmRpbmcgdG8gU2hhd24gdGhlcmUncyBncmF2ZSBkYW5nZXIKPiA+ID4gPiBldmVuIGlmIHRoZSBv
ZGRzIGFyZSBsb3cuIFRvIGNvbnRhaW4gYW55IGRhbWFnZSwgbGV0J3MgY292ZXIgdGhlCj4gPiA+
ID4gcmVtYWluaW5nIGNvcm5lci1jYXNlcyB3aGVyZSB0aGUgZGVmYXVsdCB3b3VsZCBsZWFkIHRv
IDUuMCBHVC9zCj4gPiA+ID4gb3BlcmF0aW9uIGFzIHdlbGwgYXMgYWRkIGEgY29tbWVudCB0byBS
b290IENvbXBsZXggZHJpdmVyIGNvcmUsCj4gPiA+ID4gZG9jdW1lbnRpbmcgdGhpcyBkYW5nZXIu
Cj4gPiA+IAo+ID4gPiBJJ20gbm90IHN1cmUganVzdCBhZGRpbmcgYSB3YXJuIHdvdWxkIGJlIGEg
Z29vZCBjaG9pY2UuIENvdWxkIHdlIHRvdGFsbHkKPiA+ID4gZm9yY2UgdG8gdXNlIGdlbjEgYW5k
IGFkZCBhIHdhcm4gaWYgdHJ5aW5nIHRvIHVzZSBHZW4yLgo+ID4gCj4gPiBJIHRoaW5rIHRoYXQg
Zm9yY2luZyAyLjUgR1QvcyB3aXRoIGFuIGFwcHJvcHJpYXRlIHdhcm5pbmcgbWVzc2FnZQo+ID4g
aXMgYSBnb29kIGlkZWEuICBUaGF0IHdvdWxkIGJlIGxpa2Ugc29tZSBxdWlyayB0aGF0IGdldHMg
YXBwbGllZAo+ID4gYXV0b21hdGljYWxseSwgdG8gcHJldmVudCBkYXRhIGNvcnJ1cHRpb24sIHdo
aWxlIHdhcm5pbmcgcGVvcGxlCj4gPiB3aG8gYXR0ZW1wdCB0byAib3ZlcmNsb2NrIiB0aGUgUENJ
ZSBpbnRlcmZhY2UuCj4gCj4gQWxyaWdodCwgSSdsbCBzZW5kIHYyIHdpdGggdGhpcyBzdWdnZXN0
aW9uIGluIG1pbmQuIFNvIHRoYXQgZHJpdmluZyB0aGUKPiBjb3JlIGF0IDUuMCBHVC9zIHdpbGwg
cmVxdWlyZSBwYXRjaGluZyBhbmQgY29tcGlsaW5nIG93biBrZXJuZWwuCj4gCj4gPiA+IE1lYW53
aGlsZSBhbWVuZCB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gYWRkIGEgcmVmZXJlbmNlCj4gPiA+IG9m
IFJLMzM5OSBvZmZpY2lhbCBkYXRlc2hlZXRbMV0gd2hpY2ggc2F5cyBQQ0llIG9uIFJLMzM5OSBz
aG91bGQgb25seQo+ID4gPiBzdXBwb3J0IDIuNUdUL3M/Cj4gPiA+IAo+ID4gPiBbMV1odHRwczov
L29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcvUm9ja2NoaXBfUkszMzk5X0Rh
dGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+ID4gCj4gCj4gU2hhd24sIFVSTHMgaGF2ZSB0aGUg
YmFkIGhhYml0IG9mIGNoYW5naW5nIG9yIHNpbXBseSBkaXNhcHBlYXJpbmcsIHNvIEkKPiBkb24n
dCB0aGluayBpdCdzIGEgZ29vZCBpZGVhIHRvIHB1dCBVUkwgaW4gdGhlIGNvbW1pdCBtZXNzYWdl
LgoKQWgsIGl0J3MgYWN0dWFsbHkgcGVyZmVjdGx5IGZpbmUsIHRoZXJlJ3MgYWx3YXlzIFdheWJh
Y2sgTWFjaGliZQp0byByZXNjdWUgcmVmZXJlbmNlcy9VUkxzIHRoYXQgbWF5IGRpc2FwcGVhciBv
dmVyIHRpbWUuICBXaWtpcGVkaWEKcmVsaWVzIGhlYXZpbHkgb24gZXhhY3RseSB0aGF0IG1lY2hh
bmlzbSwgZm9yIGV4YW1wbGUuCgpbMl0gaHR0cHM6Ly93ZWIuYXJjaGl2ZS5vcmcvCgo+IEFsc28s
IHRoZSBkYXRhc2hlZXQganVzdCBtZW50aW9ucyB0aGF0IFJLMzM5OSBzdXBwb3J0cyBvbmx5IDIu
NSBHVC9zLAo+IGl0IGRvZXMgbm90IG1lbnRpb24gcG9zc2libGUgZGFtYWdlIGZyb20gZHJpdmlu
ZyB0aGUgY29yZSBhdCA1LjAgR1Qvcy4KClRydWUsIGJ1dCBoYXZpbmcgYW4gYWRkaXRpb25hbCBy
ZWZlcmVuY2UgZG9lc24ndCBodXJ0LCBlc3BlY2lhbGx5CmJlY2F1c2UgdGhlIHJldmlzaW9uIGhp
c3RvcnkgbWVudGlvbnMsIGFsYmVpdCB2YWd1ZWx5LCBhbiB1cGRhdGUKdG8gdGhlIFBDSWUgc3Bl
Y2lmaWNhdGlvbiBpbiB2ZXJzaW9uIDEuMS5vZiB0aGUgZGF0YXNoZWV0LiAgVGhvdWdoLAppZiB3
ZSBoYWQgdGhlIHZlcnNpb24gMS4wIHB1YmxpY2x5IGF2YWlsYWJsZSBmb3IgY29tcGFyaXNvbiwg
dGhhdAp3b3VsZCd2ZSBiZWVuIG11Y2ggYmV0dGVyLiA6KQoKPiA+IEFsc28sIHJld29yZGluZyB0
aGUgcGF0Y2ggc3VtbWFyeSBhcyBmb2xsb3dzIGJlbG93IG1heSBiZSBnb29kLAo+ID4gYmVjYXVz
ZSB0aGF0IHdvdWxkIHByb3ZpZGUgbW9yZSBkZXRhaWxzOgo+ID4gCj4gPiAgIFBDSTogcm9ja2No
aXA6IFdhcm4gYWJvdXQgR2VuMiA1LjAgR1QvcyBvbiBSSzMzOTkgYmVpbmcgdW5zYWZlCj4gPiAK
PiA+IE9yLCBpZiB3ZSdsbCBnbyB3aXRoIHRoZSBhdXRvbWF0aWMgZG93bmdyYWRpbmcsIGxpa2Ug
dGhpczoKPiA+IAo+ID4gICBQQ0k6IHJvY2tjaGlwOiBMaW1pdCBSSzMzOTkgdG8gR2VuMSAyLjUg
R1QvcyB0byBwcmV2ZW50IGJyZWFrYWdlCj4gCj4gRHJhZ2FuLCB0aGVzZSBhcmUgZ29vZCBvbmVz
LCB0aGFua3MuIFRob3VnaCBJIHRoaW5rIEknbGwgb21pdCBHZW4xL0dlbjIKPiB3b3JkaW5nIHNp
bmNlIEkga25vdyBob3cgbXVjaCBCam9ybiBkaXNsaWtlcyB0aG9zZSB0ZXJtcy4KCkknbSBnbGFk
IHRoYXQgeW91IGxpa2UgdGhvc2UsIGFuZCBJIGFsc28gdGhvdWdodCBhYm91dCBub3QgaW5jbHVk
aW5nCnRoZSBHZW5YIHBhcnRzLCBiZWNhdXNlIHRoZXkncmUgYmFzaWNhbGx5IGEgYml0IHJlZHVu
ZGFudC4gOikKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

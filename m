Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9374CE75452
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dzJBn9DcAC8XyjiwhJOBYc1BzyBnEYJ7F/T08ufJUI=; b=JS5d+XHGs8q/aJ
	JydUIXCtruay2fTJPOKlchM0EbDoj0Css6h0+ZZoCylRurSfiiCtdrI7K+FsVSpY9egjavuW/+M9Z
	Agsey0N71gTiVIw5fEgUxozMlyPkVpYP5Xh67Bqj1fFx/5DsAgQVZVZc4L+Z7oTpj1IAXr5fdZKC9
	ODuRllMLaur/6bQ9x03qiLvyRkyIOgCCNGsia4pTxJvIOLFySGeSxxCi9yma4esM0r5s78P1Yapue
	BUoHXZfSpME7pBAow2fs8vM8oTR+UjJpwcIIVXDwfZJVApLcm9y4sBkIDwrvt27sI+nTT3S7DttVK
	e/A8OfHIgvoNhtzGoRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOP8-0000000Gp3e-2b21;
	Wed, 24 Dec 2025 12:55:50 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOOw-0000000Gp2H-1gzF;
	Wed, 24 Dec 2025 12:55:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 06125418A6;
	Wed, 24 Dec 2025 13:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1766580933; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=He22hg7Pf60Vb1jpOAaSsU0Q2mSrOPk6nn6TP4vK02Y=;
	b=rIH3fAA1weXMcnywGhw9J/NjYO7gM+SD1P8ggPsnJGW0N/G85XXy2sVfaEMeJUa6ars1h3
	852lv/3i/IkLSgvI1ILhibJABZR4sNHlsMvLKMy2qMPvR4BwSxj4MCh25Bkcj0g4MrQEYn
	81tFoyjdNzI3EvfwL6K6QBSkg1k/ylSxyBHevgh9Pw22k/hbGYJ3Bdadmi8TniM0jOmk1W
	Qyyz5uGhdXO//fq37KF+HmSj8Rf1DD3rNpG9xR1RWlXu6e6fIXJIDvnxGN3p4Xc1E82h9Z
	fXtIuIK3OhE1jg2EhX89ikMCDdrR0z4ASzaXwIMmKSeNyhYUN45R4qOiyIRoQw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com> <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com> <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
Date: Wed, 24 Dec 2025 13:55:29 +0100
Cc: "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
To: "Anand Moon" <linux.amoon@gmail.com>
MIME-Version: 1.0
Message-ID: <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 limit RK3399 to =?utf-8?q?2=2E5?= GT/s to prevent damage
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_045538_671053_E5B1DB65 
X-CRM114-Status: GOOD (  16.48  )
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

SGVsbG8gQW5hbmQsCgpPbiBXZWRuZXNkYXksIERlY2VtYmVyIDI0LCAyMDI1IDA5OjA0IENFVCwg
QW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiBPbiBXZWQsIDI0IERl
YyAyMDI1IGF0IDExOjA4LCBHZXJhbGRvIE5hc2NpbWVudG8KPiA8Z2VyYWxkb2dhYnJpZWxAZ21h
aWwuY29tPiB3cm90ZToKPiA+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDI6MTjigK9BTSBBbmFu
ZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiBPbiBUdWUsIDE4IE5v
diAyMDI1IGF0IDAzOjE3LCBHZXJhbGRvIE5hc2NpbWVudG8KPiA+ID4gPGdlcmFsZG9nYWJyaWVs
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJl
aXRlcmF0ZWQgdGhhdCB0aGVyZSBtYXkgYmUgZGFuZ2VyIGluIHVzaW5nCj4gPiA+ID4gdGhlaXIg
UENJZSB3aXRoIDUuMCBHVC9zIHNwZWVkcy4gV2FybiB0aGUgdXNlciBpZiB0aGV5IG1ha2UgYSBE
VCBjaGFuZ2UKPiA+ID4gPiBmcm9tIHRoZSBkZWZhdWx0IGFuZCBkcml2ZSBhdCAyLjUgR1QvcyBv
bmx5LCBldmVuIGlmIHRoZSBEVAo+ID4gPiA+IG1heC1saW5rLXNwZWVkIHByb3BlcnR5IGlzIGlu
dmFsaWQgb3IgaW5leGlzdGVudC4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgY2hhbmdlIGlzIGNvcnJv
Ym9yYXRlZCBieSBSSzMzOTkgb2ZmaWNpYWwgZGF0YXNoZWV0IFsxXSwgd2hpY2gKPiA+ID4gPiBz
YXlzIG1heGltdW0gbGluayBzcGVlZCBmb3IgdGhpcyBwbGF0Zm9ybSBpcyAyLjUgR1Qvcy4KPiA+
ID4gPgo+ID4gPiA+IFsxXSBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2Vz
L2QvZDcvUm9ja2NoaXBfUkszMzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+ID4gPiA+
Cj4gPiA+IFRvIGFjY3VyYXRlbHkgZGV0ZXJtaW5lIHRoZSBvcGVyYXRpbmcgc3BlZWQsIHdlIGNh
biBsZXZlcmFnZSB0aGUKPiA+ID4gUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMC8xIGZpZWxkcy4K
PiA+ID4gVGhpcyBwcm92aWRlcyBhIGR5bmFtaWMgbWVjaGFuaXNtIHRvIHJlc29sdmUgdGhlIGlz
c3VlLgo+ID4gPgo+ID4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvbWFzdGVyL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jI0w1MzMt
TDU5NQo+ID4KPiA+IG5vdCB0byBwdXQgeW91IGRvd24gYnV0IEkgdGhpbmsgeW91ciBhcHByb2Fj
aCBhZGRzIHVubmVjZXNzYXJ5IGNvbXBsZXhpdHkuCj4gPgo+ID4gQWxsIEkgY2FyZSByZWFsbHkg
aXMgdGhhdCB0aGUgS2VybmVsIFByb2plY3QgaXNuJ3QgYmxhbWVkIGluIHRoZQo+ID4gZnV0dXJl
IGlmIHNvbWVvbmUgaGFwcGVucyB0byBsb3NlIHRoZWlyIGRhdGEuCj4gPgo+IEFsbG93IHRoZSBo
YXJkd2FyZSB0byBuZWdvdGlhdGUgdGhlIGxpbmsgc3BlZWQgYmFzZWQgb24gdGhlCj4gYXZhaWxh
YmxlIG51bWJlciBvZiBsYW5lcy4KPiBJIGRvbuKAmXQgYW50aWNpcGF0ZSBhbnkgZGF0YSBsb3Nz
LCBzaW5jZSBQQ0llIHdpbGwgYXV0b21hdGljYWxseQo+IGNvbmZpZ3VyZSB0aGUgZGV2aWNlIHNw
ZWVkIHdpdGggbGluayB0cmFpbmluZy4uCgpQbGVhc2UsIG5vdGUgdGhhdCB0aGlzIGlzbid0IGFi
b3V0IHBlcmZvcm1pbmcgYXV0byBuZWdvdGlhdGlvbgphbmQgZm9sbG93aW5nIGl0cyByZXN1bHRz
LCBidXQgYWJvdXQgImFydGlmaWNpYWxseSIgbGltaXRpbmcgdGhlClBDSWUgbGluayBzcGVlZCB0
byAyLjUgR1QvcyBvbiBSSzMzOTksIGJlY2F1c2UgaXQncyB3ZWxsIGtub3duCmJ5IFJvY2tjaGlw
IHRoYXQgNSBHVC9zIG9uIFJLMzM5OSdzIFBDSWUgaW50ZXJmYWNlIG1heSBjYXVzZQppc3N1ZXMg
YW5kIGRhdGEgY29ycnVwdGlvbiBpbiBjZXJ0YWluIGNvcm5lciBjYXNlcy4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

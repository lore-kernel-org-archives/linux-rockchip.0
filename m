Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048A7D2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 09:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmxSPRzr5PEsXwv3ImLID3+AVWimEIAwZWRHiKhxBV0=; b=D21yXd7ZpxlClM
	jqAK7VPGD6fu0+n15cnPyI3aCK5brZPwf2kUNC8HI6S10GvSsxIybCEwr0wwdOuyo2+i3c9Ixm6Zv
	PJ0ZHoRNbNl4128j4V1yc+eEJaGApzFdq3vU8o7b0vntmUbu6qpjvjX9bxf6vLE35iKpjBduQhI/Z
	EG8kAZwwQs8CklCU2G7ABwqntwAEvBIgl7X/60H0cG+a+suDAOsb1aBXxiqbBZKTFmWfo6iPSUfXu
	N/eN20LJR7M+HN0lJha5mLpg5M6G6N41NzZ5NRd0J1UIgE8+qG9umDYTHPRUJeyZo0ebqs5Bj4ulB
	Hn0mOwPBJGIOgIUE73gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Hc-00000003YGx-3KTp;
	Tue, 20 Jan 2026 09:44:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Ha-00000003YG4-2qUA
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 09:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=PquJfnylflx2Q9P4i3fyiz5C+r479/IbK73s7G+5KqU=; b=EonOTFR2n51n1/EgXS16OJXx72
	BhdDcZi3NFczrbC8kzNcQycg/fqf+V1T+4x3pOZ72SCJhI1p9/J1woo0ZSdtGo2jRNT6SJ0v/O0L4
	WX0SDKQNwqA4mE/6By+dkpUE09NKnnaw576GZVCXDiWkXS79UmlcL+bDkfwwuLPxsAqh8ZLQ0E6sp
	SMpmFljUIjAMYcnRG2S5qFS8VktgZ8PPSH09WNGkJGjfBXjObrGLfLeBRiMKMytT98slqrtDTvrtz
	4OnavDc7jZjeKclUJi6omNpm/7U9h7X1az8Ryss4jnxJHRrxNRPcJJI0L8N+NIx4/bEVYWo1+6IQp
	HXS+CgzA==;
Received: from [192.76.154.230] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8HX-003KgI-55; Tue, 20 Jan 2026 10:44:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Andrew Powers-Holmes <aholmes@omnom.net>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix rk356x PCIe range mappings
Date: Tue, 20 Jan 2026 10:44:15 +0100
Message-ID: <9350956.lvqk35OSZv@phil>
In-Reply-To: <1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com>
References: <1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_014418_921457_0A7B2D38 
X-CRM114-Status: GOOD (  16.89  )
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

SGkgU2hhd24sCgpBbSBNb250YWcsIDUuIEphbnVhciAyMDI2LCAwOToxNToyOCBNaXR0ZWxldXJv
cMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBUaGUgcGNpZSBidXMgYWRk
cmVzcyBzaG91bGQgYmUgbWFwcGVkIDE6MSB0byB0aGUgY3B1IHNpZGUgTU1JTyBhZGRyZXNzLCBz
bwo+IHRoYXQgdGhlcmUgaXMgbm8gc2FtZSBhZGRyZXNzIGFsbG9jYXRlZCBmcm9tIG5vcm1hbCBz
eXN0ZW0gbWVtb3J5LiBPdGhlcndpc2UKPiBpdCdzIGJyb2tlbiBpZiB0aGUgc2FtZSBhZGRyZXNz
IGFzc2lnbmVkIHRvIHRoZSBFUCBmb3IgRE1BIHB1cnBvc2UuRml4IGl0IHRvCj4gc3luYyB3aXRo
IHRoZSB2ZW5kb3IgQlNQLgo+IAo+IEZpeGVzOiA1NjhhNjdlNzQyZGYgKCJhcm02NDogZHRzOiBy
b2NrY2hpcDogRml4IHJrMzU2eCBQQ0llIHJlZ2lzdGVyIGFuZCByYW5nZSBtYXBwaW5ncyIpCj4g
Rml4ZXM6IDY2YjUxZWE3ZDcwZiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgcmszNTY4IFBD
SWUyeDEgY29udHJvbGxlciIpCj4gQ2M6IEFuZHJldyBQb3dlcnMtSG9sbWVzIDxhaG9sbWVzQG9t
bm9tLm5ldD4KPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4KCklzIHRoZXJlIHNvbWUgd2F5IHRvIHJlcHJvZHVjZSB0aGUgaXNzdWU/CgpPciBhbHRl
cm5hdGl2ZWx5LCBpZiB5b3UncmUganVzdCBzeW5jaW5nIHdpdGggdGhlIHZlbmRvciBCU1AgaGVy
ZSwKY2FuIHlvdSBkZXNjcmliZSB3aGVyZSB0aGUgaXNzdWUgaGFwcGVuZCBvciB3YXMgbm90aWNl
ZD8KCgpUaGFua3MgYSBsb3QKSGVpa28KCj4gLS0tCj4gCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LmR0c2kgICAgICB8IDQgKystLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgfCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjguZHRzaQo+IGluZGV4IGU3MTlhM2QuLjY1ODA5N2UgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiBAQCAtMTg1LDcgKzE4NSw3IEBACj4g
IAkJICAgICAgPDB4MCAweGYyMDAwMDAwIDB4MCAweDAwMTAwMDAwPjsKPiAgCQlyYW5nZXMgPSA8
MHgwMTAwMDAwMCAweDAgMHhmMjEwMDAwMCAweDAgMHhmMjEwMDAwMCAweDAgMHgwMDEwMDAwMD4s
Cj4gIAkJCSA8MHgwMjAwMDAwMCAweDAgMHhmMjIwMDAwMCAweDAgMHhmMjIwMDAwMCAweDAgMHgw
MWUwMDAwMD4sCj4gLQkJCSA8MHgwMzAwMDAwMCAweDAgMHg0MDAwMDAwMCAweDMgMHg0MDAwMDAw
MCAweDAgMHg0MDAwMDAwMD47Cj4gKwkJCSA8MHgwMzAwMDAwMCAweDMgMHg0MDAwMDAwMCAweDMg
MHg0MDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cj4gIAkJcmVnLW5hbWVzID0gImRiaSIsICJhcGIi
LCAiY29uZmlnIjsKPiAgCQlyZXNldHMgPSA8JmNydSBTUlNUX1BDSUUzMFgxX1BPV0VSVVA+Owo+
ICAJCXJlc2V0LW5hbWVzID0gInBpcGUiOwo+IEBAIC0yMzgsNyArMjM4LDcgQEAKPiAgCQkgICAg
ICA8MHgwIDB4ZjAwMDAwMDAgMHgwIDB4MDAxMDAwMDA+Owo+ICAJCXJhbmdlcyA9IDwweDAxMDAw
MDAwIDB4MCAweGYwMTAwMDAwIDB4MCAweGYwMTAwMDAwIDB4MCAweDAwMTAwMDAwPiwKPiAgCQkJ
IDwweDAyMDAwMDAwIDB4MCAweGYwMjAwMDAwIDB4MCAweGYwMjAwMDAwIDB4MCAweDAxZTAwMDAw
PiwKPiAtCQkJIDwweDAzMDAwMDAwIDB4MCAweDQwMDAwMDAwIDB4MyAweDgwMDAwMDAwIDB4MCAw
eDQwMDAwMDAwPjsKPiArCQkJIDwweDAzMDAwMDAwIDB4MyAweDgwMDAwMDAwIDB4MyAweDgwMDAw
MDAwIDB4MCAweDQwMDAwMDAwPjsKPiAgCQlyZWctbmFtZXMgPSAiZGJpIiwgImFwYiIsICJjb25m
aWciOwo+ICAJCXJlc2V0cyA9IDwmY3J1IFNSU1RfUENJRTMwWDJfUE9XRVJVUD47Cj4gIAkJcmVz
ZXQtbmFtZXMgPSAicGlwZSI7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTZ4LWJhc2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTZ4LWJhc2UuZHRzaQo+IGluZGV4IDg4OTNiN2IuLmEyYzQ5NTcgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gQEAgLTEwMjIsNyArMTAy
Miw3IEBACj4gIAkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4X1BEX1BJUEU+Owo+ICAJ
CXJhbmdlcyA9IDwweDAxMDAwMDAwIDB4MCAweGY0MTAwMDAwIDB4MCAweGY0MTAwMDAwIDB4MCAw
eDAwMTAwMDAwPiwKPiAgCQkJIDwweDAyMDAwMDAwIDB4MCAweGY0MjAwMDAwIDB4MCAweGY0MjAw
MDAwIDB4MCAweDAxZTAwMDAwPiwKPiAtCQkJIDwweDAzMDAwMDAwIDB4MCAweDQwMDAwMDAwIDB4
MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPiArCQkJIDwweDAzMDAwMDAwIDB4MyAweDAw
MDAwMDAwIDB4MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPiAgCQlyZXNldHMgPSA8JmNy
dSBTUlNUX1BDSUUyMF9QT1dFUlVQPjsKPiAgCQlyZXNldC1uYW1lcyA9ICJwaXBlIjsKPiAgCQkj
YWRkcmVzcy1jZWxscyA9IDwzPjsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

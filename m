Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A72C44536
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 13:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYYYemCbhBtjr4SQ2/QE84AmolDe8chVOVMVb6krwXA=; b=ug2j9WUb3AcshZ
	wc/JUNmkRLOZ2BuXVreH4xHEfukxIGxNjJ7uxPjDOJZ1qLZPa28Y0xIsNQAXe9rqGrK2CYXDKjVAY
	KrNjpo/PFvZWYdu5Ytt8ynGyyzVJ9HaDQ7Nsvbyf4MfylHKxVHXjFS1wABOEaPoD0oTERm4Wmoi0B
	ACgy/debibG2zrAtJAAILdkxACsFiR2kiRouu3yKgGwIdKwjhmnSRbwat3zZdojCWAnLTyMjgSrEv
	WLaTQvehq9RH3KWWzdu8UMmDss7rvfyIJamBOsM7PKF+1FJ6ZBXqV9JUTcc9HNBRfW9bLbhP2Iler
	ZdWMVrS+fBrreNhGkJTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXFD-0000000Bw2r-05K4;
	Wed, 22 Jul 2026 13:44:19 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXF9-0000000Bw1v-44xU;
	Wed, 22 Jul 2026 13:44:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784727845; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=h8tWv/wBPEDSBfIo/DI73iRDbFHi6RiaCVImxXmEgtIgy06N/KdSmmNQXwlJtlwvRZ8Ws3pE+JfhMQcbvemIkkSG00N6Q6z1BobqiKGTELk2mIN/dwo6rbGyjkzOnXIqudy40L+6wYU7MrvRy/qV15O1ThBsM3iqTOQjYd4FEOA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784727845; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BGNGta0Th1BbHantorEBy2MK9WW2yjWjTxgQGn2Ki7A=; 
	b=DMYewNjgiNpe0C+Cm+cDQ7ekMukv8EOAg+FqPrc+2/QOswEHdCu/wTa4oJD6LgQAMvwLDwgT1r7HBcim7sGOhHxLKk/19NdeSJlm6N5QVVxpum1qs9ylbv6+GruKLJ55qIK6VYM90VSgs0h4SSDOkgEC1VQUrJgInxcUpiEbBGQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784727845;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=BGNGta0Th1BbHantorEBy2MK9WW2yjWjTxgQGn2Ki7A=;
	b=h8g7xu2gzADe2+6650Mi4Fd9f8IlRhciEePMNKtgYwoIK/GjN9aQtpfq5s8eLx0r
	YQlbfviEuQ9NjpUu0qwX/uejoEDU7nI7hhue0kbAlkFMQXv/sM3sTLxW4QS03P3ss6G
	hbKdZUj+xl700ISMi9tp5m85d1r/tCAUSy342ID8=
Received: by mx.zohomail.com with SMTPS id 1784727842465237.23228134706085;
	Wed, 22 Jul 2026 06:44:02 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 608C318090F; Wed, 22 Jul 2026 15:43:57 +0200 (CEST)
Date: Wed, 22 Jul 2026 15:43:57 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Alexey Charkov <alchark@flipper.net>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Heiko Stuebner <heiko@sntech.de>, 
	Wyon Bi <bivvy.bi@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, Liang Chen <cl@rock-chips.com>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: Fractional PLL coefficient on
 RK3588/RK3576 is two's complement
Message-ID: <amDC9ZfBAD2xbhqa@venus>
References: <20260721-rk3588-fracpll-v1-1-b289bf17cf17@flipper.net>
 <7f3924ab-52fc-4fb6-91b4-42a5e55d5c76@cherry.de>
 <CAKTNdwE=s6XG==4HvbaEV86DATWO6egVxLgNE4LpjFaXNQP7_g@mail.gmail.com>
 <b0111164-3726-4a1b-bc3a-0e678ea2ecad@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0111164-3726-4a1b-bc3a-0e678ea2ecad@cherry.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.708.77
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064416_067084_40C8FD04 
X-CRM114-Status: GOOD (  24.15  )
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

SGVsbG8gQWxleGV5LAoKT24gV2VkLCBKdWwgMjIsIDIwMjYgYXQgMDI6NTk6MjVQTSArMDIwMCwg
UXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gT24gNy8yMi8yNiAxOjAwIFBNLCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPiA+IE9uIFdlZCwgSnVsIDIyLCAyMDI2IGF0IDI6MzXigK9QTSBRdWVudGluIFNj
aHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPiB3cm90ZToKPiA+ID4gT24gNy8yMS8yNiA5
OjE3IFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gPiBOb3QgYWRkaW5nIENjIHN0YWJs
ZSwgYmVjYXVzZSB3aGlsZSB0aGlzIGZpeGVzIGEgcmVhbCBidWcgaXQncyBub3QgYQo+ID4gPiA+
IHJlZ3Jlc3Npb24sIGFzIHRoZSBpc3N1ZSB3YXMgaW50cm9kdWNlZCBpbiB0aGUgc2FtZSBjb21t
aXQgdGhhdCBhZGRlZCB0aGUKPiA+ID4gPiBSSzM1NzYvUkszNTg4IHN1cHBvcnQuCj4gPiA+IAo+
ID4gPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSB2YWxpZCByZWFzb24gOikKPiA+IAo+ID4gSSBi
ZWxpZXZlIExpbnVzIGZyb3ducyB1cG9uIGNoYW5nZXMgbGlrZSAiaXQgbmV2ZXIgd29ya2VkLCBi
dXQgd2UndmUKPiA+IGZpeGVkIGl0IG5vdyIgYmVpbmcgc3VibWl0dGVkIGFzIGZpeGVzLiBJdCdz
IGJlZW4gYnJva2VuIGZvciB5ZWFycywKPiA+IGFuZCBzaW5jZSBub2JvZHkgY29tcGxhaW5lZCB5
ZXQsIGdvaW5nIHZpYSB0aGUgbm9ybWFsIGRldmVsb3BtZW50IHBhdGgKPiA+IChpLmUuIC1uZXh0
KSBzZWVtcyBwZXJmZWN0bHkgZmluZSB0byBtZS4KPiAKPiBNeSBiZXQgaXMgYmVjYXVzZSBvZiB0
aGUgRml4ZXM6IGl0J2xsIGdldCBiYWNrcG9ydGVkIGFueXdheSBldmVuCj4gaWYgeW91IGRvbid0
IHB1dCBDYzogc3RhYmxlLiBJbiBhbnkgY2FzZSwgSSBkb24ndCBjYXJlIHRvbyBtdWNoIDopCgpG
V0lXIHlvdSBhcmUgbWl4aW5nIHVwIHRoaW5ncy4gTGludXMgZG9lcyBub3QgaGFuZGxlIHRoZSBz
dGFibGUKa2VybmVscy4gSGUgZG9lcyB0aGUgcmVsZWFzZSBjYW5kaWRhdGVzIGFuZCB0aGUgaW5p
dGlhbCB2ZXJzaW9uIG9mCmV2ZXJ5IGtlcm5lbCByZWxlYXNlLiBUaGUgc3RhYmxlIHJlbGVhc2Vz
IGFyZSBoYW5kbGVkIGJ5IHRoZSBzdGFibGUKbWFpbnRhaW5lcnMuIExpbnVzIG9ubHkgc2FpZCwg
dGhhdCBoZSBkb2VzIG5vdCB3YW50IHRvIGdldCB0aGVzZQpraW5kIG9mIGZpeGVzIGR1cmluZyBs
YXRlIC1yYyBwaGFzZS4gVGhhdCBtYWtlcyBzZW5zZSBjb25zaWRlcmluZwpmaXhlcyBhbHNvIGhh
dmUgYSBjaGFuY2Ugb2YgaW50cm9kdWNpbmcgcmVncmVzc2lvbnMuCgpCdXQgaWYgcGF0Y2hlcyBl
bmQgdXAgaW4gYSBwdWxsIHJlcXVlc3QgZm9yIGFuIC1yYyBrZXJuZWwgb3IgaW4gdGhlCnB1bGwg
cmVxdWVzdCBmb3IgdGhlIG5leHQgbWVyZ2Ugd2luZG93IGRlcGVuZHMgb24gdGhlIG1haW50YWlu
ZXIKYXBwbHlpbmcgdGhlIHBhdGNoIChpLmUuIEhlaWtvKS4gVGhlIG1haW50YWluZXIgY2FuIHF1
ZXVlIGEgcGF0Y2gKd2l0aCBhbGwgdGhvc2UgdGFncyBpbnRvIHRoZSBub3JtYWwgZm9yLW5leHQg
cXVldWUgdGFyZ2V0aW5nIHRoZQpmb2xsb3dpbmcgbWVyZ2Ugd2luZG93LiBUaGlzIHJlc3VsdHMg
aW4gdGhlIHBhdGNoIGJlaW5nIGluCmxpbnV4LW5leHQgZm9yIGEgd2hpbGUsIHRoZW4gYmVpbmcg
YWRkZWQgdG8gdGhlIG1hc3RlciBicmFuY2ggZHVyaW5nCmEgbWVyZ2Ugd2luZG93IGFuZCB0aGVu
IGJlaW5nIGFkZGVkIHRvIHRoZSBzdGFibGUgdHJlZXMgKGFzIHN0YWJsZQpvbmx5IHBpY2tzIHBh
dGNoZXMgdGhhdCBhcmUgaW4gbWFpbmxpbmUpLgoKVGhlIG1haW50YWluZXIgY2FuIGFsc28gbWVy
Z2UgYSBwYXRjaCB0byB0aGUgcXVldWUgZm9yIC1yYyBrZXJuZWxzCndpdGhvdXQgdGhlIENjIHN0
YWJsZS4gVGhhdCBpcyBleGFjdGx5IHdoYXQgaGFwcGVucyBmb3IgYSByZWdyZXNzaW9uCmZyb20g
YSBub3JtYWwgcGF0Y2ggaW4gdGhlIG1lcmdlIHdpbmRvdywgc2luY2UgdGhlIGFmZmVjdGVkIHBh
dGNoCndvdWxkbid0IGJlIGluIGFueSBzdGFibGUga2VybmVsLgoKVExEUjogVGhlIENjIHN0YWJs
ZSB0YWcgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBMaW51cy4KCkdyZWV0aW5ncywKCi0tIFNlYmFz
dGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

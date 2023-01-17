Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 110DBC63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 12:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=061jgvOrkjexX7vlZ5QSCkwcz49B2Jr0HGrRVpXfGA4=; b=2zc6xtkS3DaUVJ
	6Y0J/oi5yVOR8oCDdBGhBm81dWWeQCh9z2po1Ao7C6zT33Amn57RIpr3Kb8NWiqWqgJtuixLr3lDT
	z/tLaxVZ+snwEpNvLmKzCCAh6ehmxbUzMDpRm84W92UjrMEM6IODh/YQ2b/pfJ+hcD4IX6mCFM3v7
	GEvxmd+EC6HsgEldT1ddom0f2ZdtiBFic6KMkvWkCxwQvERxDZ0VS5MswArvD+OQwW0xJDOonZMnu
	Tln4FkY8JgqJblSGOjmWLaLDGNjNCLHe222Omg1RfMqJL6JJoxrv2FUWRdzwGihpo0e633dDJou0t
	1S9pCM/EWrVvAHoOQIWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlHQ-00ECb5-Fv; Tue, 17 Jan 2023 12:41:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlHN-00ECYX-Bg
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 12:41:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1pHlHD-0006CB-Cd; Tue, 17 Jan 2023 13:41:19 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1pHlH8-00045q-Io; Tue, 17 Jan 2023 13:41:14 +0100
Date: Tue, 17 Jan 2023 13:41:14 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	linux-rockchip@lists.infradead.org,
	Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
	heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, michael.riesch@wolfvision.net,
	robh+dt@kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Message-ID: <20230117124114.GF23495@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
 <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
 <2694546.oTxpM42Gb3@archbook>
 <20221123092841.GB13042@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123092841.GB13042@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_044129_417982_28478FA0 
X-CRM114-Status: GOOD (  46.16  )
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

T24gV2VkLCAyMyBOb3YgMjAyMiAxMDoyODo0MSArMDEwMCwgTWljaGFlbCBUcmV0dGVyIHdyb3Rl
Ogo+IE9uIFR1ZSwgMjIgTm92IDIwMjIgMjA6NDc6NDkgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9s
aSB3cm90ZToKPiA+IE9uIERpZW5zdGFnLCAyMi4gTm92ZW1iZXIgMjAyMiAwMDoxMDoyNSBDRVQg
UGV0ZXIgR2VpcyB3cm90ZToKPiA+ID4gT24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMTI6MzQgUE0g
RXplcXVpZWwgR2FyY2lhCj4gPiA+IDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4gd3Jv
dGU6Cj4gPiA+ID4gT24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMjoxMyBQTSBTaGVuZ3l1IFF1IDx3
aWFnbjIzM0BvdXRsb29rLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiBJIHJlbWVtYmVyIHNvbWVvbmUg
c2FpZCB0aGF0IHJnYTIgaGFzIG9ubHkgMzJiaXQgYWRkcmVzcyBzcGFjZSBidXQgbm90Cj4gPiA+
ID4gPiBoYXZpbmcgYSBtbXUgb3IgbW11IG5lZWRzIHRvIGJlIGNvbmZpZ3VyZWQuIEJldHRlciBh
c2sgYnkgeW91cnNlbGYgaW4KPiA+ID4gPiA+IHBpbmU2NCBkaXNjb3JkIHNpbmNlIEknbSBub3Qg
c3VyZSBhYm91dCB0aGF0Lgo+ID4gPiA+ID4g5LqOIDIwMjLlubQxMeaciDIy5pelIEdNVCswODow
MCDkuIrljYgxMjo0MToxNiwgTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXgu
ZGU+IOWGmeWIsDoKPiA+ID4gPiA+ID5PbiBUdWUsIDIyIE5vdiAyMDIyIDAwOjAxOjI4ICswODAw
LCBTaGVuZ3l1IFF1IHdyb3RlOgo+ID4gPiA+ID4gPj4gU29tZW9uZSBmcm9tIHBpbmU2NCBkaXNj
b3JkIGZvdW5kIHRoYXQgUkdBMiBkb2Vzbid0IHdvcmsgcHJvcGVybHkgb24gb3Zlcgo+ID4gPiA+
ID4gPj4KPiA+ID4gPiA+ID4+IDRHQiBtZW1vcnkgUkszNTY4IGRldmljZXMuIEFyZSB5b3Ugc3Vy
ZSBjdXJyZW50IGRyaXZlciB3b3JrcyBub3c/Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+SSBhbSBh
YnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGUgZHJpdmVyIHdvcmtzIG9uIGEgMkdCIFJPQ0szQSBib2Fy
ZC4KPiA+ID4gPiA+ID5VbmZvcnR1bmF0ZWx5LCBJIGRvbid0IGhhdmUgYSBkZXZpY2Ugd2l0aCA0
R0Igb3IgbW9yZSBtZW1vcnkgYW5kIEkgY2Fubm90IHRlc3QKPiA+ID4gPiA+ID50aGUgZHJpdmVy
IHdpdGggc3VjaCBhIGRldmljZS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID5BcyB0aGUgZG9jdW1l
bnRhdGlvbiBmb3IgdGhlIFJHQTIgaXMgdGhlIHNhbWUgaW4gdGhlIFRSTSBvZiB0aGUgcmszMjg4
IGFuZAo+ID4gPiA+ID4gPnJrMzU2OCwgSSB3b3VsZCBndWVzcyB0aGF0IHRoZSBkcml2ZXIgZG9l
c24ndCB3b3JrIG9uIGEgcmszMjg4IHdpdGggbW9yZSB0aGFuCj4gPiA+ID4gPiA+NEdCIChpZiB0
aGVyZSBpcyBzdWNoIGEgdGhpbmcpIGVpdGhlciBhbmQgdGhlIGRyaXZlciBuZWVkcyB0byBiZSBm
aXhlZCBmb3IKPiA+ID4gPiA+ID5ib3RoIFNvQ3MuCj4gPiA+ID4gPiA+Cj4gPiA+ID4KPiA+ID4g
PiBJbiBhbnkgY2FzZSwgaWYgdGhlcmUncyBzb21lIGtpbmQgb2YgaXNzdWUgaXQgbXVzdCBiZSBp
biB0aGUgZHJpdmVyLAo+ID4gPiA+IGFuZCBub3QgaW4gdGhlIGRldmljZSB0cmVlIGJpbmRpbmcg
KGkuZS4gdGhpcyBwYXRjaHNldCkuCj4gPiA+IAo+ID4gPiBBbiB1bmZvcnR1bmF0ZSBudW1iZXIg
b2YgUm9ja2NoaXAgZHJpdmVycyBicmVhayBvbiByazM1NnggYm9hcmRzIHdpdGgKPiA+ID4gbW9y
ZSB0aGFuIDRHQiBvZiByYW0uIEkndmUgZm91bmQgcmVxdWVzdGluZyBtZW1vcnkgYWxsb2NhdGlv
bnMgd2l0aAo+ID4gPiB0aGUgR0ZQX0RNQSBmbGFnIHNvbHZlcyB0aGUgcHJvYmxlbSwgYXMgdGhl
IGtlcm5lbCBvbmx5IGFsbG9jYXRlcwo+ID4gPiAzMmJpdCBhZGRyZXNzZXMgZm9yIERNQSBvbiBy
azM1NnguIFRoaXMgaXMgc2ltaWxhciB0byB0aGUgYnVnIHdpdGggdGhlCj4gPiA+IElUUyBNU0kg
YWxsb2NhdGlvbnMuCj4gPiAKPiA+IHRoZSBwcm9ibGVtIGluIHRoaXMgY2FzZSBhdCBsZWFzdCBw
YXJ0bHkgc2VlbXMgdG8gYmUgZG93biB0byB0aGUgZHJpdmVyCj4gPiBhc3N1bWluZyAzMiBiaXQg
YWRkcmVzc2VzLCBzZWUgZS5nLiBbMV0gKGlmIEkgdW5kZXJzdGFuZCB0aGUgY29kZQo+ID4gY29y
cmVjdGx5KSBhbmQgWzJdLiBXaGVuIEkgYXNrZWQgaW4gdGhlICNhcm1saW51eCBJUkMgb24gTGli
ZXJhLmNoYXQKPiA+IGFib3V0IHRoaXMsIFJvYmluIE11cnBoeSByZW1hcmtlZDoKPiA+IAo+ID4g
ICA8cm9ibXVyMDE+IHllZXNoLCB0aGUgdmlydF90b19waHlzL2RtYV9zeW5jIGFidXNlIGlzIGV2
ZW4gd29yc2UKPiA+ICAgLSBpbiB0aGF0IHBhcnRpY3VsYXIgaW5zdGFuY2UgSSdkIGJlIGluY2xp
bmVkIHRvIHJlcGxhY2UKPiA+ICAge3NyYyxkc3R9X21tdV9wYWdlcyB3aXRoIHByb3BlciBjb2hl
cmVudCBETUEgYnVmZmVycwo+ID4gCj4gPiBTbyB0aGUgZHJpdmVyIGluIGdlbmVyYWwgbmVlZHMg
c29tZSBjbGVhbnVwLCB3aGljaCBjb250cmlidXRlcyB0byB0aGUKPiA+IHByb2JsZW0uCj4gCj4g
QXMgZmFyIGFzIEkgdW5kZXJzdGFuZCB0aGUgNEdCIGFyZSBhIGhhcmR3YXJlIGxpbWl0YXRpb24u
Cj4gCj4gQWNjb3JkaW5nIHRvIHRoZSByazM1NjggVFJNLCB0aGUgUkdBMl9NTVVfU1JDX0JBU0Ug
aGFzIDI4IGJpdHMgZm9yIHRoZSB1cHBlcgo+IDI4IGJpdHMgb2YgdGhlIGFkZHJlc3Mgb2YgdGhl
IE1NVSBUTEIuIFRodXMgdGhlIE1NVSBUTEIgbXVzdCBiZSBsb2NhdGVkIHdpdGhpbgo+IDRHQiBt
ZW1vcnkuCj4gCj4gQW5kIHdpdGhpbiB0aGUgTU1VIFRMQiwgdGhlIGFkZHJlc3NlcyBhcmUgMzIg
Yml0IGFzIHdlbGwgKHVubGVzcyBJIGFtIG1pc3NpbmcKPiBzb21ldGhpbmcgaW1wb3J0YW50KS4g
VW5mb3J0dW5hdGVseSwgSSBjb3VsZG4ndCBmaW5kIGFueSBkb2N1bWVudGF0aW9uIGZvciB0aGUK
PiBUTEIuIFRoZSBkb3duc3RyZWFtIGRyaXZlciB3cml0ZXMgb25seSAzMiBiaXQgYWRkcmVzc2Vz
IHRvIHRoZSBUTEIgYXMgd2VsbC4KPiBUaHVzLCBJIGFzc3VtZSB0aGF0IGFsbCB2aWRlbyBidWZm
ZXJzIG11c3QgYmUgbG9jYXRlZCB3aXRoaW4gNEdCIG1lbW9yeSwgdG9vLgo+IAo+IFdoaWxlIEkg
YWdyZWUgdGhhdCB0aGUgZHJpdmVyIG5lZWRzIHNvbWUgY2xlYW51cCBhbmQgbWF5IHVzZSBjb3Jy
ZWN0IHR5cGVzIGZvcgo+IGhhbmRsaW5nIHRoZSBiaXQgc2l6ZSBsaW1pdGF0aW9uLCBJIHRoaW5r
IHRoaXMgaXNuJ3Qgc29tZSBkcml2ZXIgbGltaXRhdGlvbi4KPiBNYXliZSB0aGUgZHJpdmVyIHNo
b3VsZCBzZXQgdGhlIGRtYSBtYXNrIHRvIDMyIGJpdHMgYW5kIHNob3VsZCBiZSBleHBsaWNpdGx5
Cj4gYXdhcmUgb2YgdGhlIDMyIGJpdCBsaW1pdC4KPiAKPiA+IAo+ID4gQnV0IGFzIHdhcyBzYWlk
LCB0aGlzIGlzbid0IGEgcHJvYmxlbSB3aXRoIHRoZSBkZXZpY2UgdHJlZSwgc28gaXQgc2hvdWxk
Cj4gPiBzdGlsbCBtYWtlIGl0IGluLiBJdCBqdXN0IG1lYW5zIHRoYXQgdGhlIGRyaXZlciBpcyBi
cm9rZW4gb24gOEdCIFJLMzU2eC4KCk5pY29sYXM6IElzIHRoaXMgeW91ciBBY2tlZC1CeT8KCldo
byB3b3VsZCBwaWNrIHVwIHRoZSBwYXRjaD8gSGVpa28/CgpNaWNoYWVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

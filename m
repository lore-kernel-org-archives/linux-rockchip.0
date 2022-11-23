Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14432C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgnAs/S2fm4zi24NzM8F/xHc9AoE7gXtTI5bPdTeGaU=; b=VhSXZPKIW99t6J
	PsSQlkYGeLh4KV0ijt0Juz4RdL7hieSNaT1K2KkF96GnkiNS123Ruy5G7373iw49qUj3niqoc+Bp+
	aJAPp78sMDMk38iYhAgEBMUCBVC+VT4lXOngxEysnq/Y5UganTSEZa+x+uRwhfAoaQH/HJHXLOEV8
	2wYa1QDXk2nmz/TY236XjjQlT9eITacIanOrT76HZQiDhVIg9jJKM7qQp28dS962Mg1+yLoEsubt0
	oVDzvVB4RGu2/wzv5DdxkQ2xnwwAM4ixRdi6EMZwCVxMBit3xnOTLDE5Cz1r2Nnfau4Tb/OyM0+/P
	oa7Umgw76lcjvDwIhQ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxm3v-00FwGU-Kl; Wed, 23 Nov 2022 09:28:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxm3s-00FwCL-7k
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 09:28:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1oxm3j-0001mB-DL; Wed, 23 Nov 2022 10:28:47 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1oxm3d-0000Li-Qr; Wed, 23 Nov 2022 10:28:41 +0100
Date: Wed, 23 Nov 2022 10:28:41 +0100
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
Message-ID: <20221123092841.GB13042@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
 <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
 <2694546.oTxpM42Gb3@archbook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2694546.oTxpM42Gb3@archbook>
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
X-CRM114-CacheID: sfid-20221123_012856_303304_6DFF8FC8 
X-CRM114-Status: GOOD (  42.51  )
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

T24gVHVlLCAyMiBOb3YgMjAyMiAyMDo0Nzo0OSArMDEwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdy
b3RlOgo+IE9uIERpZW5zdGFnLCAyMi4gTm92ZW1iZXIgMjAyMiAwMDoxMDoyNSBDRVQgUGV0ZXIg
R2VpcyB3cm90ZToKPiA+IE9uIE1vbiwgTm92IDIxLCAyMDIyIGF0IDEyOjM0IFBNIEV6ZXF1aWVs
IEdhcmNpYQo+ID4gPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPiB3cm90ZToKPiA+ID4g
T24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMjoxMyBQTSBTaGVuZ3l1IFF1IDx3aWFnbjIzM0BvdXRs
b29rLmNvbT4gd3JvdGU6Cj4gPiA+ID4gSSByZW1lbWJlciBzb21lb25lIHNhaWQgdGhhdCByZ2Ey
IGhhcyBvbmx5IDMyYml0IGFkZHJlc3Mgc3BhY2UgYnV0IG5vdAo+ID4gPiA+IGhhdmluZyBhIG1t
dSBvciBtbXUgbmVlZHMgdG8gYmUgY29uZmlndXJlZC4gQmV0dGVyIGFzayBieSB5b3Vyc2VsZiBp
bgo+ID4gPiA+IHBpbmU2NCBkaXNjb3JkIHNpbmNlIEknbSBub3Qgc3VyZSBhYm91dCB0aGF0Lgo+
ID4gPiA+IOS6jiAyMDIy5bm0MTHmnIgyMuaXpSBHTVQrMDg6MDAg5LiK5Y2IMTI6NDE6MTYsIE1p
Y2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPiDlhpnliLA6Cj4gPiA+ID4g
Pk9uIFR1ZSwgMjIgTm92IDIwMjIgMDA6MDE6MjggKzA4MDAsIFNoZW5neXUgUXUgd3JvdGU6Cj4g
PiA+ID4gPj4gU29tZW9uZSBmcm9tIHBpbmU2NCBkaXNjb3JkIGZvdW5kIHRoYXQgUkdBMiBkb2Vz
bid0IHdvcmsgcHJvcGVybHkgb24gb3Zlcgo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gNEdCIG1lbW9y
eSBSSzM1NjggZGV2aWNlcy4gQXJlIHlvdSBzdXJlIGN1cnJlbnQgZHJpdmVyIHdvcmtzIG5vdz8K
PiA+ID4gPiA+Cj4gPiA+ID4gPkkgYW0gYWJzb2x1dGVseSBzdXJlIHRoYXQgdGhlIGRyaXZlciB3
b3JrcyBvbiBhIDJHQiBST0NLM0EgYm9hcmQuCj4gPiA+ID4gPlVuZm9ydHVuYXRlbHksIEkgZG9u
J3QgaGF2ZSBhIGRldmljZSB3aXRoIDRHQiBvciBtb3JlIG1lbW9yeSBhbmQgSSBjYW5ub3QgdGVz
dAo+ID4gPiA+ID50aGUgZHJpdmVyIHdpdGggc3VjaCBhIGRldmljZS4KPiA+ID4gPiA+Cj4gPiA+
ID4gPkFzIHRoZSBkb2N1bWVudGF0aW9uIGZvciB0aGUgUkdBMiBpcyB0aGUgc2FtZSBpbiB0aGUg
VFJNIG9mIHRoZSByazMyODggYW5kCj4gPiA+ID4gPnJrMzU2OCwgSSB3b3VsZCBndWVzcyB0aGF0
IHRoZSBkcml2ZXIgZG9lc24ndCB3b3JrIG9uIGEgcmszMjg4IHdpdGggbW9yZSB0aGFuCj4gPiA+
ID4gPjRHQiAoaWYgdGhlcmUgaXMgc3VjaCBhIHRoaW5nKSBlaXRoZXIgYW5kIHRoZSBkcml2ZXIg
bmVlZHMgdG8gYmUgZml4ZWQgZm9yCj4gPiA+ID4gPmJvdGggU29Dcy4KPiA+ID4gPiA+Cj4gPiA+
Cj4gPiA+IEluIGFueSBjYXNlLCBpZiB0aGVyZSdzIHNvbWUga2luZCBvZiBpc3N1ZSBpdCBtdXN0
IGJlIGluIHRoZSBkcml2ZXIsCj4gPiA+IGFuZCBub3QgaW4gdGhlIGRldmljZSB0cmVlIGJpbmRp
bmcgKGkuZS4gdGhpcyBwYXRjaHNldCkuCj4gPiAKPiA+IEFuIHVuZm9ydHVuYXRlIG51bWJlciBv
ZiBSb2NrY2hpcCBkcml2ZXJzIGJyZWFrIG9uIHJrMzU2eCBib2FyZHMgd2l0aAo+ID4gbW9yZSB0
aGFuIDRHQiBvZiByYW0uIEkndmUgZm91bmQgcmVxdWVzdGluZyBtZW1vcnkgYWxsb2NhdGlvbnMg
d2l0aAo+ID4gdGhlIEdGUF9ETUEgZmxhZyBzb2x2ZXMgdGhlIHByb2JsZW0sIGFzIHRoZSBrZXJu
ZWwgb25seSBhbGxvY2F0ZXMKPiA+IDMyYml0IGFkZHJlc3NlcyBmb3IgRE1BIG9uIHJrMzU2eC4g
VGhpcyBpcyBzaW1pbGFyIHRvIHRoZSBidWcgd2l0aCB0aGUKPiA+IElUUyBNU0kgYWxsb2NhdGlv
bnMuCj4gCj4gdGhlIHByb2JsZW0gaW4gdGhpcyBjYXNlIGF0IGxlYXN0IHBhcnRseSBzZWVtcyB0
byBiZSBkb3duIHRvIHRoZSBkcml2ZXIKPiBhc3N1bWluZyAzMiBiaXQgYWRkcmVzc2VzLCBzZWUg
ZS5nLiBbMV0gKGlmIEkgdW5kZXJzdGFuZCB0aGUgY29kZQo+IGNvcnJlY3RseSkgYW5kIFsyXS4g
V2hlbiBJIGFza2VkIGluIHRoZSAjYXJtbGludXggSVJDIG9uIExpYmVyYS5jaGF0Cj4gYWJvdXQg
dGhpcywgUm9iaW4gTXVycGh5IHJlbWFya2VkOgo+IAo+ICAgPHJvYm11cjAxPiB5ZWVzaCwgdGhl
IHZpcnRfdG9fcGh5cy9kbWFfc3luYyBhYnVzZSBpcyBldmVuIHdvcnNlCj4gICAtIGluIHRoYXQg
cGFydGljdWxhciBpbnN0YW5jZSBJJ2QgYmUgaW5jbGluZWQgdG8gcmVwbGFjZQo+ICAge3NyYyxk
c3R9X21tdV9wYWdlcyB3aXRoIHByb3BlciBjb2hlcmVudCBETUEgYnVmZmVycwo+IAo+IFNvIHRo
ZSBkcml2ZXIgaW4gZ2VuZXJhbCBuZWVkcyBzb21lIGNsZWFudXAsIHdoaWNoIGNvbnRyaWJ1dGVz
IHRvIHRoZQo+IHByb2JsZW0uCgpBcyBmYXIgYXMgSSB1bmRlcnN0YW5kIHRoZSA0R0IgYXJlIGEg
aGFyZHdhcmUgbGltaXRhdGlvbi4KCkFjY29yZGluZyB0byB0aGUgcmszNTY4IFRSTSwgdGhlIFJH
QTJfTU1VX1NSQ19CQVNFIGhhcyAyOCBiaXRzIGZvciB0aGUgdXBwZXIKMjggYml0cyBvZiB0aGUg
YWRkcmVzcyBvZiB0aGUgTU1VIFRMQi4gVGh1cyB0aGUgTU1VIFRMQiBtdXN0IGJlIGxvY2F0ZWQg
d2l0aGluCjRHQiBtZW1vcnkuCgpBbmQgd2l0aGluIHRoZSBNTVUgVExCLCB0aGUgYWRkcmVzc2Vz
IGFyZSAzMiBiaXQgYXMgd2VsbCAodW5sZXNzIEkgYW0gbWlzc2luZwpzb21ldGhpbmcgaW1wb3J0
YW50KS4gVW5mb3J0dW5hdGVseSwgSSBjb3VsZG4ndCBmaW5kIGFueSBkb2N1bWVudGF0aW9uIGZv
ciB0aGUKVExCLiBUaGUgZG93bnN0cmVhbSBkcml2ZXIgd3JpdGVzIG9ubHkgMzIgYml0IGFkZHJl
c3NlcyB0byB0aGUgVExCIGFzIHdlbGwuClRodXMsIEkgYXNzdW1lIHRoYXQgYWxsIHZpZGVvIGJ1
ZmZlcnMgbXVzdCBiZSBsb2NhdGVkIHdpdGhpbiA0R0IgbWVtb3J5LCB0b28uCgpXaGlsZSBJIGFn
cmVlIHRoYXQgdGhlIGRyaXZlciBuZWVkcyBzb21lIGNsZWFudXAgYW5kIG1heSB1c2UgY29ycmVj
dCB0eXBlcyBmb3IKaGFuZGxpbmcgdGhlIGJpdCBzaXplIGxpbWl0YXRpb24sIEkgdGhpbmsgdGhp
cyBpc24ndCBzb21lIGRyaXZlciBsaW1pdGF0aW9uLgpNYXliZSB0aGUgZHJpdmVyIHNob3VsZCBz
ZXQgdGhlIGRtYSBtYXNrIHRvIDMyIGJpdHMgYW5kIHNob3VsZCBiZSBleHBsaWNpdGx5CmF3YXJl
IG9mIHRoZSAzMiBiaXQgbGltaXQuCgpNaWNoYWVsCgo+IAo+IEJ1dCBhcyB3YXMgc2FpZCwgdGhp
cyBpc24ndCBhIHByb2JsZW0gd2l0aCB0aGUgZGV2aWNlIHRyZWUsIHNvIGl0IHNob3VsZAo+IHN0
aWxsIG1ha2UgaXQgaW4uIEl0IGp1c3QgbWVhbnMgdGhhdCB0aGUgZHJpdmVyIGlzIGJyb2tlbiBv
biA4R0IgUkszNTZ4Lgo+IAo+IFJlZ2FyZHMsCj4gTmljb2xhcyAic29tZW9uZSBmcm9tIFBJTkU2
NCBkaXNjb3JkICh3aG8gd2FzIGFjdHVhbGx5IG9uIElSQykiIEZyYXR0YXJvbGkKPiAKPiBbMV06
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjEtcmMxL3NvdXJjZS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyNMODg4Cj4gWzJdOiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92Ni4xLXJjMS9zb3VyY2UvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jI0wxMjAKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

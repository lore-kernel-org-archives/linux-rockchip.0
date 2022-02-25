Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1433AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 13:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvaCR/MSZVHbWj6CAzoZ313ygs1K15Fp/FDtNJvC2VY=; b=lXAaw13fc7T4Sz
	dTut58Q7xLiXn60XG8XvlsfsJzPoYdm7bINw28C7NdwNl/oCu9NFjj7KYHt9aks2QLMyFRSa9GxR4
	dn8KRrHXkwR7Bn4o9Egldt87rhVXVS4d8hN3N6cBl7G7uqeTRP1eorelRXJzgplyUnqC4XqfCJcIW
	tv2UJM7AnDWv2tEnPcgOCvaMRR22Hgihfm9LOL7cT4RNuoi3OVBSxcVbYJ3xuodjNplEGXiij5tCM
	6ErgX3ZEbK6zlvDDFP6PVvhUIw+VNBNeIMbuhVxezaAXDq0Mn3Z7g7Vsv5T+AnzbakoNmCGxgQVWJ
	F58RGWruC9nKwCEOLnRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNaOH-0050FA-IS; Fri, 25 Feb 2022 13:12:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNaOE-0050DM-R2
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 13:12:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNaO5-00025q-Ki; Fri, 25 Feb 2022 14:11:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNaO2-0001Sr-Of; Fri, 25 Feb 2022 14:11:54 +0100
Date: Fri, 25 Feb 2022 14:11:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Dmitry Osipenko <digetx@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220225131154.GE19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:00:58 up 76 days, 21:46, 87 users,  load average: 0.68, 0.28, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_051206_900067_A4F41EF8 
X-CRM114-Status: GOOD (  44.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMTI6NDE6MjNQTSArMDAwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDIwMjItMDItMjUgMTE6MTAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+IDI1
LjAyLjIwMjIgMTM6NDksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ID4gPiBPbiBGcmksIEZl
YiAyNSwgMjAyMiBhdCAwMToyNjoxNFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4g
PiA+ID4gMjUuMDIuMjAyMiAxMDo1MSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gPiA+ID4g
PiBUaGUgcmszNTY4IEhETUkgaGFzIGFuIGFkZGl0aW9uYWwgY2xvY2sgdGhhdCBuZWVkcyB0byBi
ZSBlbmFibGVkIGZvciB0aGUKPiA+ID4gPiA+IEhETUkgY29udHJvbGxlciB0byB3b3JrLiBUaGUg
cHVycG9zZSBvZiB0aGF0IGNsb2NrIGlzIG5vdCBjbGVhci4gSXQgaXMKPiA+ID4gPiA+IG5hbWVk
ICJoY2xrIiBpbiB0aGUgZG93bnN0cmVhbSBkcml2ZXIsIHNvIHVzZSB0aGUgc2FtZSBuYW1lLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJA
cGVuZ3V0cm9uaXguZGU+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IAo+ID4gPiA+ID4gTm90ZXM6
Cj4gPiA+ID4gPiAgICAgIENoYW5nZXMgc2luY2UgdjU6Cj4gPiA+ID4gPiAgICAgIC0gVXNlIGRl
dm1fY2xrX2dldF9vcHRpb25hbCByYXRoZXIgdGhhbiBkZXZtX2Nsa19nZXQKPiA+ID4gPiA+IAo+
ID4gPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIHwg
MTYgKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pLXJvY2tjaGlwLmMKPiA+ID4gPiA+IGluZGV4IGZlNGY5NTU2MjM5YWMuLmM2YzAwZTg3
NzlhYjUgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
aGRtaS1yb2NrY2hpcC5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
ZHdfaGRtaS1yb2NrY2hpcC5jCj4gPiA+ID4gPiBAQCAtNzYsNiArNzYsNyBAQCBzdHJ1Y3Qgcm9j
a2NoaXBfaGRtaSB7Cj4gPiA+ID4gPiAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlw
X2RhdGEgKmNoaXBfZGF0YTsKPiA+ID4gPiA+ICAgCXN0cnVjdCBjbGsgKnJlZl9jbGs7Cj4gPiA+
ID4gPiAgIAlzdHJ1Y3QgY2xrICpncmZfY2xrOwo+ID4gPiA+ID4gKwlzdHJ1Y3QgY2xrICpoY2xr
X2NsazsKPiA+ID4gPiA+ICAgCXN0cnVjdCBkd19oZG1pICpoZG1pOwo+ID4gPiA+ID4gICAJc3Ry
dWN0IHJlZ3VsYXRvciAqYXZkZF8wdjk7Cj4gPiA+ID4gPiAgIAlzdHJ1Y3QgcmVndWxhdG9yICph
dmRkXzF2ODsKPiA+ID4gPiA+IEBAIC0yMjksNiArMjMwLDE0IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfaGRtaV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSAqaGRtaSkKPiA+ID4gPiA+ICAg
CQlyZXR1cm4gUFRSX0VSUihoZG1pLT5ncmZfY2xrKTsKPiA+ID4gPiA+ICAgCX0KPiA+ID4gPiA+
ICsJaGRtaS0+aGNsa19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoaGRtaS0+ZGV2LCAiaGNs
ayIpOwo+ID4gPiA+ID4gKwlpZiAoUFRSX0VSUihoZG1pLT5oY2xrX2NsaykgPT0gLUVQUk9CRV9E
RUZFUikgewo+ID4gPiA+IAo+ID4gPiA+IEhhdmUgeW91IHRyaWVkIHRvIGludmVzdGlnYXRlIHRo
ZSBoY2xrPyBJJ20gc3RpbGwgdGhpbmtpbmcgdGhhdCdzIG5vdAo+ID4gPiA+IG9ubHkgSERNSSB0
aGF0IG5lZWRzIHRoaXMgY2xvY2sgYW5kIHRoZW4gdGhlIGhhcmR3YXJlIGRlc2NyaXB0aW9uCj4g
PiA+ID4gZG9lc24ndCBsb29rIGNvcnJlY3QuCj4gPiA+IAo+ID4gPiBJIGFtIHN0aWxsIG5vdCBz
dXJlIHdoYXQgeW91IG1lYW4uIFllcywgaXQncyBub3Qgb25seSB0aGUgSERNSSB0aGF0Cj4gPiA+
IG5lZWRzIHRoaXMgY2xvY2suIFRoZSBWT1AyIG5lZWRzIGl0IGFzIHdlbGwgYW5kIHRoZSBkcml2
ZXIgaGFuZGxlcyB0aGF0Lgo+ID4gCj4gPiBJJ20gY3VyaW91cyB3aGV0aGVyIERTSS9EUCBhbHNv
IG5lZWQgdGhhdCBjbG9jayB0byBiZSBlbmFibGVkLiBJZiB0aGV5Cj4gPiBkbywgdGhlbiB5b3Ug
YXJlbid0IG1vZGVsaW5nIGgvdyBwcm9wZXJseSBBRkFJQ1MuCj4gCj4gQXNzdW1pbmcgbm9ib2R5
IGF0IFJvY2tjaGlwIGRlY2lkZWQgdG8gbWFrZSB0aGluZ3MgbmVlZGxlc3NseSBpbmNvbnNpc3Rl
bnQKPiB3aXRoIHByZXZpb3VzIFNvQ3MsIEhDTEtfVk9QIHNob3VsZCBiZSB0aGUgY2xvY2sgZm9y
IHRoZSBWT1AncyBBSEIgc2xhdmUKPiBpbnRlcmZhY2UuIFVzdWFsbHksIGlmIHRoYXQgYWZmZWN0
ZWQgYW55dGhpbmcgb3RoZXIgdGhhbiBhY2Nlc3NpbmcgVk9QCj4gcmVnaXN0ZXJzLCBpbmRlZWQg
aXQgd291bGQgc21lbGwgb2Ygc29tZXRoaW5nIGJlaW5nIHdyb25nIGluIHRoZSBjbG9jayB0cmVl
LAo+IGJ1dCBpbiB0aGlzIGNhc2UgSSdkIGFsc28gYmUgc3VzcGljaW91cyBvZiB3aGV0aGVyIGl0
IG1pZ2h0IGhhdmUgZW5kZWQgdXAKPiBjbG9ja2luZyByZWxhdGVkIEdSRiByZWdpc3RlcnMgYXMg
d2VsbCAoZWl0aGVyIGRpcmVjdGx5LCBvciBpbmRpcmVjdGx5IHZpYQo+IHNvbWUgZ2F0ZSB0aGF0
IHRoZSBjbG9jayBkcml2ZXIgaGFzbid0IG1vZGVsbGVkIHlldCkuCgpPaywgSSBhbSBiZWdpbm5p
bmcgdG8gdW5kZXJzdGFuZC4gSSB2ZXJpZmllZCB0aGF0IGhkbWksIG1pcGkgYW5kIGRwIGFyZQpo
YW5naW5nIHdoZW4gSENMS19WT1AgaXMgZGlzYWJsZWQgYnkgZGlzYWJsaW5nIHRoYXQgY2xvY2sg
dmlhIHN5c2ZzCnVzaW5nIENMT0NLX0FMTE9XX1dSSVRFX0RFQlVHRlMuIFdoZW4gaXQncyBkaXNh
YmxlZCB0aGVuIHRoZSByZWdpc3RlcnMKb2YgdGhhdCB1bml0cyBjYW4ndCBiZSBhY2Nlc3NlZC4g
SG93ZXZlciwgd2hlbiBJIGRpc2FibGUgSENMS19WT1AgYnkKZGlyZWN0bHkgd3JpdGluZyB0byB0
aGUgZ2F0ZSBiaXQgUkszNTY4X0NMS0dBVEVfQ09OKDIwKSB0aGVuIG9ubHkKYWNjZXNzaW5nIFZP
UCByZWdpc3RlcnMgaGFuZ3MsIHRoZSBvdGhlciB1bml0cyBzdGF5IGZ1bmN0aW9uYWwuClNvIGl0
IHNlZW1zIGl0IG11c3QgYmUgdGhlIHBhcmVudCBjbG9jayB3aGljaCBtdXN0IGJlIGVuYWJsZWQu
IFRoZQpwYXJlbnQgY2xvY2sgaXMgaGNsa192by4gVGhpcyBjbG9jayBzaG91bGQgYmUgaGFuZGxl
ZCBhcyBwYXJ0IG9mIHRoZQpSSzM1NjhfUERfVk8gcG93ZXIgZG9tYWluOgoKCXBvd2VyLWRvbWFp
bkBSSzM1NjhfUERfVk8gewogICAgICAgICAgICAgICAgcmVnID0gPFJLMzU2OF9QRF9WTz47CiAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBIQ0xLX1ZPPiwKICAgICAgICAgICAgICAgICAg
ICAgICAgIDwmY3J1IFBDTEtfVk8+LAogICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgQUNM
S19WT1BfUFJFPjsKICAgICAgICAgICAgICAgICBwbV9xb3MgPSA8JnFvc19oZGNwPiwKICAgICAg
ICAgICAgICAgICAgICAgICAgICA8JnFvc192b3BfbTA+LAogICAgICAgICAgICAgICAgICAgICAg
ICAgIDwmcW9zX3ZvcF9tMT47CiAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9
IDwwPjsKICAgICAgICB9OwoKVGhlIEhETUkgY29udHJvbGxlciBpcyBwYXJ0IG9mIHRoYXQgZG9t
YWluLCBzbyBJIHRoaW5rIHRoaXMgc2hvdWxkIHdvcmssCmJ1dCBpdCBkb2Vzbid0LiBUaGF0J3Mg
d2hlcmUgSSBhbSBub3csIEknbGwgaGF2ZSBhIGNsb3NlciBsb29rLgoKU2FzY2hhCgotLSAKUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

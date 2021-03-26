Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71995C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:29:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1995060190
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:29:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1995060190
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=awJIKOmSHTPNwgIsKlhBc0SgUHL/KQVIeusUoEFKSN4=; b=XUyv33C38j/IG06b6p+KVx1yT
	7E+KrpuRRXqUgBLh+j4VKtwh+qJXqF0o444fqx12/UEdYkc5E+2SLxd+AMUcDzzRkhoJR0F9pI4fy
	w6CAyL4tmekKqiZ+Y9IWFKwfHi6Iid98XLR0SFyxDN1tI1Xs6ILO62sd47NU/SxvPFocqm399gBey
	LEn7AMFZK7umMSvD+sl9vd1V0ZW81ZohP8wIN4bkbRD/0ny3NhbrOUxieT+bhjaQWPZHW1RDTm9Td
	9qQOTehJGU7Zouv5g7CQ7F1EXhAHhebMESGt6LA19XcCcjXaZLhC12fsQ1h9wKbQTGdrSd4x5VeMJ
	H99cT+RMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnSY-003mZU-Ph; Fri, 26 Mar 2021 14:29:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnSV-003mYd-A7
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:29:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A6ACD1F46AD6
Message-ID: <a47cea7f31abdd25e6c9d4262be07ce2d852881e.camel@collabora.com>
Subject: Re: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC
 bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Frank Rowand <frowand.list@gmail.com>,
 devicetree <devicetree@vger.kernel.org>
Date: Fri, 26 Mar 2021 11:28:57 -0300
In-Reply-To: <CACvgo51EpUqRBDQ0tO8aoUM3eo=y9R5VFOazWD05hOaiGwgZPg@mail.gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <20210311154055.3496076-7-emil.l.velikov@gmail.com>
 <20210324151715.GA3070006@robh.at.kernel.org>
 <CACvgo51EpUqRBDQ0tO8aoUM3eo=y9R5VFOazWD05hOaiGwgZPg@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_142907_423710_3BCCA09F 
X-CRM114-Status: GOOD (  23.39  )
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

SGkgRW1pbCwKCk9uIFRodSwgMjAyMS0wMy0yNSBhdCAxNDoxNCArMDAwMCwgRW1pbCBWZWxpa292
IHdyb3RlOgo+IE9uIFdlZCwgMjQgTWFyIDIwMjEgYXQgMTU6MTcsIFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gCj4gPiBPbiBUaHUsIE1hciAxMSwgMjAyMSBhdCAwMzo0
MDo1MVBNICswMDAwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6Cj4gPiA+IEZyb206IEVtaWwgVmVsaWtv
diA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiA+IAo+ID4gPiBBZGQgZGV2aWNldHJl
ZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBIYW50cm8gRzEvRzIgVkRFQyBvbgo+ID4g
PiB0aGUgTWljcm9jaGlwIFNBTUFTNUQ0IFNvQy4KPiA+ID4gCj4gPiA+IENjOiBSb2IgSGVycmlu
ZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+ID4gPiBDYzogRnJhbmsgUm93YW5kIDxmcm93YW5kLmxp
c3RAZ21haWwuY29tPgo+ID4gPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+
Cj4gPiA+IC0tLQo+ID4gPiB2Mgo+ID4gPiDCoC0gTmV3bHkgaW50cm9kdWNlZAo+ID4gPiDCoC0g
cy9BdG1lbC9NaWNyb2NoaXAvIChOaWNvbGFzKQo+ID4gPiDCoC0gRHJvcCBsZWFkaW5nIDAgaW4g
bm9kZSBuYW1lL2FkZHJlc3MKPiA+ID4gLS0tCj4gPiA+IMKgLi4uL21lZGlhL21pY3JvY2hpcCxz
YW1hNWQ0LXZkZWMueWFtbMKgwqDCoMKgwqDCoMKgwqAgfCA1OSArKysrKysrKysrKysrKysrKysr
Cj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykKPiA+ID4gwqBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL21pY3Jv
Y2hpcCxzYW1hNWQ0LXZkZWMueWFtbAo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9taWNyb2NoaXAsc2FtYTVkNC12ZGVjLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWljcm9jaGlwLHNh
bWE1ZDQtCj4gPiA+IHZkZWMueWFtbAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBp
bmRleCAwMDAwMDAwMDAwMDAuLjljYjJjMDI5NWQ1NAo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9taWNyb2NoaXAs
c2FtYTVkNC12ZGVjLnlhbWwKPiA+ID4gQEAgLTAsMCArMSw1OSBAQAo+ID4gPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gPiArCj4gPiA+
ICslWUFNTCAxLjIKPiA+ID4gKy0tLQo+ID4gPiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3Jn
L3NjaGVtYXMvbWVkaWEvbWljcm9jaGlwLHNhbWE1ZDQtdmRlYy55YW1sIyIKPiA+ID4gKyRzY2hl
bWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCj4gPiA+
ICsKPiA+ID4gK3RpdGxlOiBIYW50cm8gRzEgVlBVIGNvZGVjIGltcGxlbWVudGVkIG9uIE1pY3Jv
Y2hpcCBTQU1BNUQ0IFNvQ3MKPiA+ID4gKwo+ID4gPiArbWFpbnRhaW5lcnM6Cj4gPiA+ICvCoCAt
IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiA+ICsKPiA+ID4g
K2Rlc2NyaXB0aW9uOgo+ID4gPiArwqAgSGFudHJvIEcxIHZpZGVvIGRlY29kZSBhY2NlbGVyYXRv
ciBwcmVzZW50IG9uIE1pY3JvY2hpcCBTQU1BNUQ0IFNvQ3MuCj4gPiA+ICsKPiA+ID4gK3Byb3Bl
cnRpZXM6Cj4gPiA+ICvCoCBjb21wYXRpYmxlOgo+ID4gPiArwqDCoMKgIGNvbnN0OiBtaWNyb2No
aXAsc2FtYTVkNC12ZGVjCj4gPiA+ICsKPiA+ID4gK8KgIHJlZzoKPiA+ID4gK8KgwqDCoCBtYXhJ
dGVtczogMQo+ID4gPiArCj4gPiA+ICvCoCBpbnRlcnJ1cHRzOgo+ID4gPiArwqDCoMKgIG1heEl0
ZW1zOiAxCj4gPiA+ICsKPiA+ID4gK8KgIGludGVycnVwdC1uYW1lczoKPiA+ID4gK8KgwqDCoCBp
dGVtczoKPiA+ID4gK8KgwqDCoMKgwqAgLSBjb25zdDogdmRlYwo+ID4gCj4gPiBXaHkgZG8geW91
IG5lZWQgYSBuYW1lPyAqLW5hbWVzIGFyZSB1c2VkIHRvIGRpc3Rpbmd1aXNoIG11bHRpcGxlIGVu
dHJpZXMKPiA+IGFuZCBkb24ndCBhZGQgYW55dGhpbmcgaWYgb25seSBhIHNpbmdsZSBlbnRyeS4K
PiA+IAo+IE9uIG9uZSBoYW5kIHRoZSBuYW1lcyBhcmUgdXNlZCB0byBkZXNjcmliZSB0aGUgaGFy
ZHdhcmUgLSB0aGUgU0FNQQo+IGJvYXJkIHVzZXMgZGVzaWduYXRlZCBjbG9jayBhbmQgaW50ZXJy
dXB0IGxpbmVzIC0gYm90aCBjYWxsZWQgInZkZWMiLgo+IEFkZGl0aW9uYWxseSB0aGUgbmFtZXMg
YXJlIHVsdGltYXRlbHkgcmVxdWlyZWQgYnkgdGhlIHVuZGVybHlpbmcgQVBJIC0KPiBwbGF0Zm9y
bV9nZXRfaXJxX2J5bmFtZSBhbmTCoCBkZXZtX2Nsa19idWxrX2dldCByZXNwZWN0aXZlbHkuCj4g
SG93IGNhbiB3ZSBnZXQgdGhlIHJlc3BlY3RpdmUgZW50cmllcyB3aXRob3V0IHRoZSBuYW1lPwo+
IAoKVGhlcmUgYXJlIEFQSXMgdG8gZ2V0IHRoZSByZXNvdXJjZSBieSBpbmRleCBhcyBvcHBvc2Vk
IHRvIGJ5IG5hbWUuCkUuZy4gcGxhdGZvcm1fZ2V0X2lycS4KCkhvd2V2ZXIsIHlvdSBhcmUgY29u
ZnVzaW5nIGhlcmUgaW50ZXJuYWwga2VybmVsIGltcGxlbWVudGF0aW9uCndpdGggZGV2aWNldHJl
ZSBiaW5kaW5ncy4gVGhlIGxhdHRlciBpcyBqdXN0IGEgcmVwcmVzZW50YXRpb24Kb2YgdGhlIGhh
cmR3YXJlLgoKPiBTa2ltbWluZyB0aHJvdWdoIHRoZSBleGlzdGluZyBkdHMgZmlsZSAtCj4gYXJj
aC9hcm0vYm9vdC9kdHMvc2FtYTVkNC5kdHNpIGFuZCBvdGhlciBkdHMgZmlsZXMgLSB0aGVyZSBh
cmUgbG90cyBvZgo+IGV4YW1wbGVzIHdoZXJlIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGNvbnRh
aW5zIHRoZSBuYW1lIGZvciBhIHNpbmdsZQo+IGNsb2NrL2ludGVycnVwdC4KPiAKCgpOb3RlIHRo
YXQgZHRzaSBhbmQgZHRzIGFyZSB0aGUgZGV2aWNlLXRyZWUgZmlsZXMsIG5vdCB0aGUgYmluZGlu
Z3MuCkFuZCBldmVuIGlmIHlvdSBmaW5kIGV4YW1wbGVzLCB0aGUgZmFjdCB0aGF0IHRoZXJlIGV4
aXN0IGV4YW1wbGVzCmRvZXNuJ3QgbWVhbiBpdCdzIHRoZSByaWdodCB0aGluZyB0byBkby4KClRo
YW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

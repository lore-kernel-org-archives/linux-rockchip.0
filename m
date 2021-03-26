Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DF5C433E1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:33:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4014961974
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:33:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4014961974
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+z51nzgcCizucRF4NW4DHECIVIiT9R2pskFRh4JQhcc=; b=qnyNOQgb0lFjhFP5xaxRm5H5k
	QQz48MUlO3MyiuNF7/UFdMaPxEvqD1h2+MvwpCxwwZBjgK1o06ZKcBtldNxqwUT2fKo+7sNtv9Jum
	RO8Hj9jc9HlbAbInJGDDRkby9j3PilPLhQuXA/dogy3EbDHr1jJVwG3csISrN2Pi1LRLmUIVGA8iX
	NQuZieCQoY1/q96Jc7L36leOcS4svjkOOPZnVo3AesDzQzh77rkrFFOnfjjM2gnafiR1aQcZWvCsh
	LS+CfkjBj+grFikIWf64OBw36b35PJFRWbtjTOXU8AJ68h2FQ680VeOF2XgfSU+6ek7qdQPUOWTIl
	PMcMAHXIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnWt-003mwp-Ph; Fri, 26 Mar 2021 14:33:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnWn-003mw7-Nk
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:33:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DBF5D1F40DAB
Message-ID: <9af079bccb3642af9c26319e94b16defea52886f.camel@collabora.com>
Subject: Re: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC
 bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Rob Herring <robh@kernel.org>, Emil Velikov <emil.l.velikov@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, Nicolas Ferre
 <nicolas.ferre@microchip.com>,  Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org
Date: Fri, 26 Mar 2021 11:33:25 -0300
In-Reply-To: <20210324151715.GA3070006@robh.at.kernel.org>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <20210311154055.3496076-7-emil.l.velikov@gmail.com>
 <20210324151715.GA3070006@robh.at.kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_143334_125501_416F076E 
X-CRM114-Status: GOOD (  19.29  )
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

SGkgUm9iLAoKVGhhbmtzIGZvciByZXZpZXdpbmcuCgpPbiBXZWQsIDIwMjEtMDMtMjQgYXQgMDk6
MTcgLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRodSwgTWFyIDExLCAyMDIxIGF0IDAz
OjQwOjUxUE0gKzAwMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+IEZyb206IEVtaWwgVmVsaWtv
diA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiAKPiA+IEFkZCBkZXZpY2V0cmVlIGJp
bmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIEhhbnRybyBHMS9HMiBWREVDIG9uCj4gPiB0aGUg
TWljcm9jaGlwIFNBTUFTNUQ0IFNvQy4KPiA+IAo+ID4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0
QGtlcm5lbC5vcmc+Cj4gPiBDYzogRnJhbmsgUm93YW5kIDxmcm93YW5kLmxpc3RAZ21haWwuY29t
Pgo+ID4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPgo+ID4gU2lnbmVkLW9mZi1ieTog
RW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gdjIK
PiA+IMKgLSBOZXdseSBpbnRyb2R1Y2VkCj4gPiDCoC0gcy9BdG1lbC9NaWNyb2NoaXAvIChOaWNv
bGFzKQo+ID4gwqAtIERyb3AgbGVhZGluZyAwIGluIG5vZGUgbmFtZS9hZGRyZXNzCj4gPiAtLS0K
PiA+IMKgLi4uL21lZGlhL21pY3JvY2hpcCxzYW1hNWQ0LXZkZWMueWFtbMKgwqDCoMKgwqDCoMKg
wqAgfCA1OSArKysrKysrKysrKysrKysrKysrCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNl
cnRpb25zKCspCj4gPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvbWljcm9jaGlwLHNhbWE1ZDQtdmRlYy55YW1sCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWljcm9j
aGlwLHNhbWE1ZDQtdmRlYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21lZGlhL21pY3JvY2hpcCxzYW1hNWQ0LQo+ID4gdmRlYy55YW1sCj4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi45Y2IyYzAyOTVkNTQKPiA+IC0tLSAvZGV2
L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9t
aWNyb2NoaXAsc2FtYTVkNC12ZGVjLnlhbWwKPiA+IEBAIC0wLDAgKzEsNTkgQEAKPiA+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4gPiArCj4g
PiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvbWVkaWEvbWljcm9jaGlwLHNhbWE1ZDQtdmRlYy55YW1sIyIKPiA+ICskc2NoZW1hOiAi
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjIgo+ID4gKwo+ID4g
K3RpdGxlOiBIYW50cm8gRzEgVlBVIGNvZGVjIGltcGxlbWVudGVkIG9uIE1pY3JvY2hpcCBTQU1B
NUQ0IFNvQ3MKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICvCoCAtIEVtaWwgVmVsaWtvdiA8
ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246Cj4gPiAr
wqAgSGFudHJvIEcxIHZpZGVvIGRlY29kZSBhY2NlbGVyYXRvciBwcmVzZW50IG9uIE1pY3JvY2hp
cCBTQU1BNUQ0IFNvQ3MuCj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICvCoCBjb21wYXRpYmxl
Ogo+ID4gK8KgwqDCoCBjb25zdDogbWljcm9jaGlwLHNhbWE1ZDQtdmRlYwo+ID4gKwo+ID4gK8Kg
IHJlZzoKPiA+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICvCoCBpbnRlcnJ1cHRzOgo+
ID4gK8KgwqDCoCBtYXhJdGVtczogMQo+ID4gKwo+ID4gK8KgIGludGVycnVwdC1uYW1lczoKPiA+
ICvCoMKgwqAgaXRlbXM6Cj4gPiArwqDCoMKgwqDCoCAtIGNvbnN0OiB2ZGVjCj4gCj4gV2h5IGRv
IHlvdSBuZWVkIGEgbmFtZT8gKi1uYW1lcyBhcmUgdXNlZCB0byBkaXN0aW5ndWlzaCBtdWx0aXBs
ZSBlbnRyaWVzIAo+IGFuZCBkb24ndCBhZGQgYW55dGhpbmcgaWYgb25seSBhIHNpbmdsZSBlbnRy
eS4KPiAKCkkgZ3Vlc3MgeW91IGFyZSByaWdodC4KCkkgd2FzIGFib3V0IHRvIGFyZ3VlIHRoYXQg
aXQgbWFrZXMgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgZWFzaWVyLApidXQgSSBzdXNwZWN0IHRo
YXQncyBub3QgdGhlIGNhc2UgZWl0aGVyLgoKPiA+ICsKPiA+ICvCoCBjbG9ja3M6Cj4gPiArwqDC
oMKgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArwqAgY2xvY2stbmFtZXM6Cj4gPiArwqDCoMKgIGl0
ZW1zOgo+ID4gK8KgwqDCoMKgwqAgLSBjb25zdDogdmRlY19jbGsKPiAKPiBBbmQgaGVyZSB0b28/
IFRoZXNlIGFyZSB0eXBpY2FsbHkgbmFtZWQgZm9yIGVpdGhlciB0aGUgbmFtZSBvZiBpbnB1dCAK
PiBzaWduYWwgKGhjbGssIGFjbGssIGV0Yy4pIG9yIGZ1bmN0aW9uICgnY29yZScsICdidXMnLCBl
dGMuKS4gCj4gCgpJbmRlZWQsICJjb3JlIiBtaWdodCBiZSBhIGJldHRlciBjaG9pY2UuIEJ1dCBp
dCBzZWVtcyB3ZSBkb24ndCBuZWVkCm5hbWVzIGhlcmUuCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

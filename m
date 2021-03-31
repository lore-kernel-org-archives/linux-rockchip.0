Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35530C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 19:58:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA0F660FDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 19:58:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA0F660FDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JzjvCUiOn9B1T5D0b0n9k3JrYjRqJVICr747QOsnxGU=; b=gnUFwBMc4GQ4m4vwFHYZmnDdh
	N+X//caMO/NR9OclSgXA0igARYO8pt6CXajymU7/P2eREvbPZK6lmeVZDauKTAH1kKn5cF6l/XxDB
	RPnzJTxq17/THONjcKiGhOUFz0ARTL6cUAIs2voUntaSHd138OHi5Rk5w6bIHYIVGH0RM14GPNI0V
	kMSAIhrJSJX+FtKejYTmsbdv3BljqT8/rBpbGyAPUiDqxXK/kquyJ5/FGxjrYgJ/ehRfflIdtHcMt
	UL94mA63v9lOeuynfNJ6dI7VldiLf5hhw+y76ZF0wJCiq7cQVxyUiCT8Ic50rcWqSgvndbJfVcAXk
	tbeL3/MFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRgyV-007QHI-Df; Wed, 31 Mar 2021 19:57:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRgyS-007QGo-KQ
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 19:57:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 88FED1F46396
Message-ID: <7ab16129c1f3cb701f3b5d5fc3cc66f9f42d6606.camel@collabora.com>
Subject: Re: [PATCH v3 6/9] media: hantro: add fallback handling for single
 irq/clk
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>, kernel@collabora.com, Philipp
 Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 31 Mar 2021 16:57:48 -0300
In-Reply-To: <20210331173520.184191-7-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
 <20210331173520.184191-7-emil.l.velikov@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_205756_757633_2F42985C 
X-CRM114-Status: GOOD (  27.35  )
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

SGkgRW1pbCwKClRoYW5rcyBmb3IgdGhlIHBhdGNoLiBMb29raW5nIGdvb2QhCgpBIGZldyBjb21t
ZW50cyBiZWxvdy4KCk9uIFdlZCwgMjAyMS0wMy0zMSBhdCAxODozNSArMDEwMCwgRW1pbCBWZWxp
a292IHdyb3RlOgo+IEZyb206IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5j
b20+Cj4gCj4gQ3VycmVudGx5IHRoZSBkcml2ZXIgZXhwZWN0cyB0aGF0IGVhY2ggaXJxL2NsayB3
aWxsIGhhdmUgYSBuYW1lCj4gc3BlY2lmaWVkLgo+IAo+IEEgdmFsaWQgcG9pbnQgd2FzIHJhaXNl
ZCBieSB0aGUgRFQgbWFpbnRhaW5lcnMgLSB3aGVuIHRoZXJlIGlzIGEgc2luZ2xlCj4gaW50ZXJy
dXB0IGxpbmUgb3IgY2xvY2sgLSB0aGUgbmFtZXMgYXJlIG5vdCBuZWVkZWQuCj4gCj4gVGhpcyBp
cyBoYW5kbGVkOgo+IMKgLSBjbGsgLSBpbXBsaWNpdGx5IC0gdWx0aW1hdGVseSB3ZSdsbCBjYWxs
IG9mX2Nsa19nZXRfaHcoLi4uLCAwLCBOVUxMCj4gwqDCoCB3aGljaCB3aWxsIGdldCB0aGUgZmly
c3QgY2xvY2sgZnJvbSB0aGUgcG1jCj4gwqAtIGlycSAtIGV4cGxpY2l0bHkgLSBwbGF0Zm9ybV9n
ZXRfaXJxKC4uLiwgMCkKPiAKPiBUbyBncmFjZWZ1bGx5IGhhbmRsZSBwb3RlbnRpYWwgYnVncywg
YWRkIHJlc3BlY3RpdmUgV0FSTl9PTigpIGlmIHdlJ3JlCj4gaGF2aW5nIG1vcmUgdGhhbiBvbmUg
aXJxL2NsaywgeWV0IGxhY2tpbmcgdGhlIHJlc3BlY3RpdmUgbmFtZXMuCj4gCj4gQWNrZWQtYnk6
IE5pY29sYXMgRmVycmUgPG5pY29sYXMuZmVycmVAbWljcm9jaGlwLmNvbT4KClNpbmNlIHRoaXMg
aXMgYSBuZXcgcGF0Y2gsIEknbSB1bnN1cmUgd2hlcmUgd2FzIHRoaXMgQWNrZWQtYnk/Cgo+IFN1
Z2dlc3RlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4g
LS0tCj4gdjMKPiDCoC0gTmV3IHBhdGNoCj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKy0tCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IGluZGV4IGU1ZjIwMGU2NDk5My4u
ZDEyOTRlYjljZDA3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9f
ZHJ2LmMKPiBAQCAtNzUyLDggKzc1MiwxNiBAQCBzdGF0aWMgaW50IGhhbnRyb19wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXZwdS0+Y2xv
Y2tzKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTk9NRU07Cj4g
wqAKPiAtwqDCoMKgwqDCoMKgwqBmb3IgKGkgPSAwOyBpIDwgdnB1LT52YXJpYW50LT5udW1fY2xv
Y2tzOyBpKyspCj4gK8KgwqDCoMKgwqDCoMKgZm9yIChpID0gMDsgaSA8IHZwdS0+dmFyaWFudC0+
bnVtX2Nsb2NrczsgaSsrKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2cHUt
PmNsb2Nrc1tpXS5pZCA9IHZwdS0+dmFyaWFudC0+Y2xrX25hbWVzW2ldOwo+ICsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogV2FybiBhbmQgcmVmdXNlIHRvIGxvYWQgaWYgdGhlIGRyaXZlciBoYXMgbXVsdGlwbGUg
Y2xvY2tzLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB5ZXQgdGhleSBhcmUg
bGFja2luZyB0aGUgcmVzcGVjdGl2ZSBuYW1lcy4KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChXQVJOX09OKCF2
cHUtPnZhcmlhbnQtPmNsa19uYW1lc1tpXSAmJiAKCldlIGFscmVhZHkgaGF2ZSBtb3JlIFdBUk5f
T04gdGhhbiB3ZSBzaG91bGQgaW4gdGhpcyBkcml2ZXIsCkkgd291bGQganVzdCByZW1vdmUgdGhp
cyBjb25kaXRpb24gZW50aXJlbHkuCgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTlhJTzsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKg
wqDCoMKgwqDCoHJldCA9IGRldm1fY2xrX2J1bGtfZ2V0KCZwZGV2LT5kZXYsIHZwdS0+dmFyaWFu
dC0+bnVtX2Nsb2NrcywKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnB1LT5jbG9ja3MpOwo+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAocmV0KQo+IEBAIC03OTEsNyArNzk5LDE5IEBAIHN0YXRpYyBpbnQgaGFudHJvX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpZiAoIXZwdS0+dmFyaWFudC0+aXJxc1tpXS5oYW5kbGVyKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRpbnVlOwo+IMKgCj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlycSA9IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHZw
dS0+cGRldiwgaXJxX25hbWUpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBJZiB0aGUgZHJpdmVyIGhhcyBhIHNp
bmdsZSBJUlEsIGNoYW5jZXMgYXJlIHRoZXJlIHdpbGwgYmUgbm8KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICogYWN0dWFsIG5hbWUgaW4gdGhlIERUIGJpbmRpbmdzLgo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKCFpcnFfbmFtZSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKFdBUk5fT04oaSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTlhJTzsKPiAr
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpcnFfbmFt
ZSA9ICJkZWZhdWx0IjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlycSA9IHBsYXRmb3JtX2dldF9pcnEodnB1LT5wZGV2LCAwKTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlycSA9IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHZwdS0+
cGRldiwgaXJxX25hbWUpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9CgpIb3cg
YWJvdXQgdGhpcyBpbnN0ZWFkOgoKaXJxID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUodnB1LT5w
ZGV2LCBpcnFfbmFtZSk7CmlmIChpcnEgPD0gMCkKCWlycSA9IHBsYXRmb3JtX2dldF9pcnEodnB1
LT5wZGV2LCBpKTsKCihhbmQgbGVhdmUgdGhlIGlycSBuYW1lIGluIHRoZSBzYW1hNWQ0IGNvZGUp
LgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

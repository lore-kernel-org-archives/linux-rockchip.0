Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92156C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VEMxDwvaJU+MHGKCaZxqy1OjnpkimIKeS+rT9V7J6nk=; b=l6TjHZ5ySkWeza
	xFV01BIPwmHGO+T6Azv4TJ3VONGO9VWXlXavCCGpS4YQ/O/4dIYDyXgtnxZaCib57Q2yeen727TaJ
	TarULjg+ke4bx7jAXOFKePI1GGfSX46CcSbM7V5TMgmPo8KovCasDHvJ73JGlvaSvp7q6Z/W9yP2N
	Er42FSwqri2GGY3O160WcCnE0UNfnzrSiHxvVZai/NAkSo8Wpn6N/BZQv/yJn2PDc6iluOQ+SrPrX
	1NwvHARzhSwbVGbVh8TGRxXnBzhmY7FjHlN+nLcf3SuZvkXuARi3NbFoSIo9JQFnfwTGHt3+u2gw0
	A3HE7H3kjsv33RM0nBlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7LwT-00000002sos-2LGY;
	Wed, 15 May 2024 21:13:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7LwP-00000002smo-2BQm;
	Wed, 15 May 2024 21:13:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B942ACE076D;
	Wed, 15 May 2024 21:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAF2EC32782;
	Wed, 15 May 2024 21:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715807615;
	bh=rFJpsvZLu3B53+hXuHhtpjCVRgoxVKmUMLdtqsNpkeY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=AvMHmA3TotqfOj46mJO2fXlZKTWA0V8T+/CpBsuIoL2fx426qnvSZgBZpvwDNzKL/
	 c8cRvRLBEdk1MVuZRcA7zgwVy0koTHrNwBdJdoS5fapEPpVnCGe80FlLZlc9QqquRE
	 zC8gYufDJ10TX1xM4d+0jADDntgXDUSX4RhvPzRh8csBw3IjediXg3kAE6S/Awyprs
	 c4e9gRm/frv8239dUtUOuWUPRyHJjrA9oD9sRt6qJB5u+8x68HuL8m95nxNQoTKLRU
	 CLAzMmLex4/KH5z0reLLOqX4QCDDv+g7E0HuB/HveTGp9oPWvTw+HYwbYF9JwErCnY
	 N67D33mv2VnXg==
Date: Wed, 15 May 2024 16:13:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s
 error paths
Message-ID: <20240515211333.GA2139026@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240515205735.GA2137771@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_141338_050984_AD12A767 
X-CRM114-Status: GOOD (  28.42  )
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

T24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMDM6NTc6MzdQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUdWUsIEZlYiAyNywgMjAyNCBhdCAwMzoxMjo1NFBNICswMTAwLCBVd2UgS2xl
aW5lLUvDtm5pZyB3cm90ZToKPiA+IERyaXZlcnMgdGhhdCBzaWxlbnRseSBmYWlsIHRvIHByb2Jl
IHByb3ZpZGUgYSBiYWQgdXNlciBleHBlcmllbmNlIGFuZAo+ID4gbWFrZSBpdCB1bm5lY2Vzc2Fy
aWx5IGhhcmQgdG8gZGVidWcgc3VjaCBhIGZhaWx1cmUuIEZpeCBpdCBieSB1c2luZwo+ID4gZGV2
X2Vycl9wcm9iZSgpIGluc3RlYWQgb2YgYSBwbGFpbiByZXR1cm4uCj4gPiAKPiA+IFJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+Cj4gCj4gS3J6eXN6dG9mIGFw
cGxpZWQgdGhpcyB0byBwY2kvY29udHJvbGxlci9yb2NrY2hpcCB3aXRoIFJldmlld2VkLWJ5Cj4g
ZnJvbSBKZXNwZXIgYW5kIE1hbmksIGJ1dCBoaXMgb3V0Z29pbmcgbWFpbCBxdWV1ZSBnb3Qgc3R1
Y2suICBUcnlpbmcKPiB0byBzcXVlZXplIGludG8gdjYuOS4KClNvcnJ5LCB2Ni4xMC4gIHY2Ljkg
aXMgYWxyZWFkeSBkb25lLCBvYnZpb3VzbHkuCgo+ID4gLS0tCj4gPiBIZWxsbywKPiA+IAo+ID4g
Y2hhbmdlcyBzaW5jZSAoaW1wbGljaXQpIHYxLCBzZW50IHdpdGggTWVzc2FnZS1JZDoKPiA+IDIw
MjQwMjI3MTExODM3LjM5NTQyMi0yLXVrbGVpbmVrQGRlYmlhbi5vcmc6Cj4gPiAKPiA+ICAtIHVz
ZSBkZXYgaW5zdGVhZCBvZiByb2NrY2hpcC0+cGNpLmRldiBhcyBub3RpY2VkIGJ5IFNlcmdlIFNl
bWluLgo+ID4gIC0gYWRkZWQgUmV2aWV3ZWQtYnk6IHRhZyBmb3IgSGVpa28uIEkgYXNzdW1lIGhl
IGFncmVlcyB0byBhYm92ZQo+ID4gICAgaW1wcm92ZW1lbnQgYW5kIGFkZGluZyB0aGUgdGFnIGRl
c3BpdGUgdGhlIGNoYW5nZSBpcyBmaW5lLgo+ID4gCj4gPiBCZXN0IHJlZ2FyZHMKPiA+IFV3ZQo+
ID4gCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwg
MjEgKysrKysrKysrKysrLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiBpbmRleCBkNjg0MjE0MWQzODQuLmExM2NhODNjZTI2
MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jCj4gPiBAQCAtMjI1LDExICsyMjUsMTUgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2Nsa19pbml0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ICAKPiA+ICAJcmV0
ID0gZGV2bV9jbGtfYnVsa19nZXRfYWxsKGRldiwgJnJvY2tjaGlwLT5jbGtzKTsKPiA+ICAJaWYg
KHJldCA8IDApCj4gPiAtCQlyZXR1cm4gcmV0Owo+ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUo
ZGV2LCByZXQsICJmYWlsZWQgdG8gZ2V0IGNsb2Nrc1xuIik7Cj4gPiAgCj4gPiAgCXJvY2tjaGlw
LT5jbGtfY250ID0gcmV0Owo+ID4gIAo+ID4gLQlyZXR1cm4gY2xrX2J1bGtfcHJlcGFyZV9lbmFi
bGUocm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5jbGtzKTsKPiA+ICsJcmV0ID0gY2xrX2J1
bGtfcHJlcGFyZV9lbmFibGUocm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5jbGtzKTsKPiA+
ICsJaWYgKHJldCkKPiA+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVk
IHRvIGVuYWJsZSBjbG9ja3NcbiIpOwo+ID4gKwo+ID4gKwlyZXR1cm4gMDsKPiA+ICB9Cj4gPiAg
Cj4gPiAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Jlc291cmNlX2dldChzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2LAo+ID4gQEAgLTIzNywxMiArMjQxLDE0IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcGNpZV9yZXNvdXJjZV9nZXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+
ICB7Cj4gPiAgCXJvY2tjaGlwLT5hcGJfYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZV9ieW5hbWUocGRldiwgImFwYiIpOwo+ID4gIAlpZiAoSVNfRVJSKHJvY2tjaGlwLT5hcGJf
YmFzZSkpCj4gPiAtCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+YXBiX2Jhc2UpOwo+ID4gKwkJ
cmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihyb2NrY2hpcC0+YXBiX2Jh
c2UpLAo+ID4gKwkJCQkgICAgICJmYWlsZWQgdG8gbWFwIGFwYiByZWdpc3RlcnNcbiIpOwo+ID4g
IAo+ID4gIAlyb2NrY2hpcC0+cnN0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCgmcGRl
di0+ZGV2LCAicmVzZXQiLAo+ID4gIAkJCQkJCSAgICAgR1BJT0RfT1VUX0hJR0gpOwo+ID4gIAlp
ZiAoSVNfRVJSKHJvY2tjaGlwLT5yc3RfZ3BpbykpCj4gPiAtCQlyZXR1cm4gUFRSX0VSUihyb2Nr
Y2hpcC0+cnN0X2dwaW8pOwo+ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwg
UFRSX0VSUihyb2NrY2hpcC0+cnN0X2dwaW8pLAo+ID4gKwkJCQkgICAgICJmYWlsZWQgdG8gZ2V0
IHJlc2V0IGdwaW9cbiIpOwo+ID4gIAo+ID4gIAlyb2NrY2hpcC0+cnN0ID0gZGV2bV9yZXNldF9j
b250cm9sX2FycmF5X2dldF9leGNsdXNpdmUoJnBkZXYtPmRldik7Cj4gPiAgCWlmIChJU19FUlIo
cm9ja2NoaXAtPnJzdCkpCj4gPiBAQCAtMzIwLDEwICszMjYsOSBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJCXJvY2tj
aGlwLT52cGNpZTN2MyA9IE5VTEw7Cj4gPiAgCX0gZWxzZSB7Cj4gPiAgCQlyZXQgPSByZWd1bGF0
b3JfZW5hYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Cj4gPiAtCQlpZiAocmV0KSB7Cj4gPiAtCQkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRvclxuIik7Cj4g
PiAtCQkJcmV0dXJuIHJldDsKPiA+IC0JCX0KPiA+ICsJCWlmIChyZXQpCj4gPiArCQkJcmV0dXJu
IGRldl9lcnJfcHJvYmUoZGV2LCByZXQsCj4gPiArCQkJCQkgICAgICJmYWlsZWQgdG8gZW5hYmxl
IHZwY2llM3YzIHJlZ3VsYXRvclxuIik7Cj4gPiAgCX0KPiA+ICAKPiA+ICAJcmV0ID0gcm9ja2No
aXBfcGNpZV9waHlfaW5pdChyb2NrY2hpcCk7Cj4gPiAKPiA+IGJhc2UtY29tbWl0OiA2NjEzNDc2
ZTIyNWUwOTBjYzlhYWQ0OWJlN2ZhNTA0ZTI5MGRkMzNkCj4gPiAtLSAKPiA+IDIuNDMuMAo+ID4g
Cj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

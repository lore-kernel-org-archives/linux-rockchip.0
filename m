Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CD3BC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:57:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A391561427
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:57:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A391561427
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ou2BiVQ76f9Jw2tdxQie7bjxLLnWRopTc+KtCGdg31I=; b=GKeCVaXSAj2ZtgmUzvZTJtZgB
	T9/h8Jeundwi6ZUgwbR6WNZsZHdOsIrb4iQGK7DO4gqbIsxEnidLnLeoI/Ywb95GP5aQiWHIyqtD3
	10fuLo+I6uOx6zRx+KFRLZrTlJF/VU+aPh2zqd57co/J9ub5+l6dx1uhopuq4XKUFyKezYpglEfod
	BbG6c8lfDLoI+T/QRXU7F88HXsaiGL4oIFUXNVJjScFfls5AwL4kdgyd0cHedK1kjFlv4l0+5olit
	+fLTRV0nplA9RWXPmneoTxijA9VrPme4MCKD26V+S5J/axvkGjucTkKZ/8sGcWmHVDBk2PLB9TU5+
	QU8GGDIfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZKq3-00FFnx-32; Wed, 21 Apr 2021 21:56:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZKq0-00FFnj-Vb
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 21:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=05IUKkf3XQDKjc7HpZV79Gc7CGtlgFOdwbfVzwJT6S4=; b=pX7oUl4RUhgceej7sjSHh4BFrq
 TYE00gRKZcukYJbbp805E8XGceT7DLPJ/dAuQF9Ovgs9dVzW2yO1x2hmRufn9mNzemyLiJVdWh1Pp
 qs6wt20rExux4M38dyVnyWZ1TyJSePnAK6AtyGIs9UZqfoFDDuKsCuEkCYf8IfR2cD8uE9murTG+n
 poQ6+f02DYFcgb6MKR+b3a8FsPWmD7howtH+/3OQMU+wgHUn1g2lS3Kzgq0YWUC64wOvyRmhbTLA0
 QQRMG2k8r/N5HcPeimaMcy2utdoB1QPJOO3+NzVUCJEjGbJUdf1LqBkZrfCj774G12chZYJDez5bt
 19uQ9z7A==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZKpy-00DDLZ-4e
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 21:56:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E12251F41E98
Message-ID: <bf0771cec69e11bf4622421a3aa8f2092da42429.camel@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568
 SoC compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Johan Jonker <jbx6244@gmail.com>, linux-pm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kever Yang
 <kever.yang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Zhang
 Rui <rui.zhang@intel.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 kernel@collabora.com
Date: Wed, 21 Apr 2021 18:56:31 -0300
In-Reply-To: <ca5d55ef-e364-be7a-5ad6-81f039c691e6@gmail.com>
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
 <31272ad0e6a5274080831406796960506c6a6912.camel@collabora.com>
 <ca5d55ef-e364-be7a-5ad6-81f039c691e6@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_145646_332582_BA768DC4 
X-CRM114-Status: GOOD (  26.79  )
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

T24gV2VkLCAyMDIxLTA0LTIxIGF0IDIzOjI1ICswMjAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4g
T24gNC8yMS8yMSAxMTowNiBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gT24gV2VkLCAy
MDIxLTA0LTIxIGF0IDIyOjQ2ICswMjAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4gPiA+IE9uIDQv
MjEvMjEgMTA6MDQgUE0sIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiA+ID4gPiBBZGQgYSBuZXcg
Y29tcGF0aWJsZSBmb3IgdGhlIHRoZXJtYWwgc2Vuc29yIGRldmljZSBvbiBSSzM1NjggU29Dcy4K
PiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVs
QGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gwqBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dCB8IDEgKwo+ID4gPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlw
LXRoZXJtYWwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwv
cm9ja2NoaXAtdGhlcm1hbC50eHQKPiA+ID4gPiBpbmRleCA3Zjk0NjY5ZTllYmUuLjM0NmU0NjZj
MjAwNiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dAo+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0Cj4gPiA+
ID4gQEAgLTksNiArOSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiA+ID4gwqDCoMKgICJy
b2NrY2hpcCxyazMzMjgtdHNhZGMiOiBmb3VuZCBvbiBSSzMzMjggU29Dcwo+ID4gPiA+IMKgwqDC
oCAicm9ja2NoaXAscmszMzY4LXRzYWRjIjogZm91bmQgb24gUkszMzY4IFNvQ3MKPiA+ID4gPiDC
oMKgwqAgInJvY2tjaGlwLHJrMzM5OS10c2FkYyI6IGZvdW5kIG9uIFJLMzM5OSBTb0NzCj4gPiA+
IAo+ID4gPiA+ICvCoMKgICJyb2NrY2hpcCxyazM1NjgtdHNhZGMiOiBmb3VuZCBvbiBSSzM1Njgg
U29Dcwo+ID4gPiAKPiA+ID4gVGhpcyBpcyBzdGlsbCBhIHRleHQgZG9jdW1lbnQuCj4gPiA+IHJv
YitkdCBoYXMgbm93IHNjcmlwdHMgdGhhdCBjaGVjayBmb3IgdW5kb2N1bWVudGVkIGNvbXBhdGli
aWxpdHkKPiA+ID4gc3RyaW5ncywgc28gZmlyc3QgY29udmVydCByb2NrY2hpcC10aGVybWFsLnR4
dCB0byBZQU1MIGFuZCB0aGVuIGFkZCB0aGlzCj4gPiA+IGluIGEgc2VwYXJhdGVkIHBhdGNoLgo+
ID4gPiAKPiA+IAo+ID4gSXMgaXQgYSBzaG93c3RvcHBlciB0byBjb252ZXJ0IGRldmljZXRyZWUg
YmluZGluZ3MgdG8gWUFNTCBmb3IgZHJpdmVyIHN1Ym1pc3Npb24/Cj4gCj4gWW91IG5vdyB0aGF0
IGhhcmR3YXJlIGJlc3QsIHNvIHRyeSB0byBmaXggdGhlIGRvY3VtZW50cyBhcyB3ZWxsLgoKV2Vs
bCwgbm90IHJlYWxseS4gSSdtIGp1c3QgZm9yd2FyZCBwb3J0aW5nIHRoZSBkcml2ZXIgZnJvbSBk
b3duc3RyZWFtIGtlcm5lbHMsCnNvIHdlIGNhbiBzdXBwb3J0IHRoaXMgbmV3IFNvQy4gTm90IHJl
YWxseSBhIGhhcmR3YXJlIF9leHBlcnRfIGZvciBhbGwgdGhlCmRldmljZXMgSSBwbGFuIHRvIGJl
IHB1c2hpbmcuCgo+IFRoZSBuZXcgbm9ybSBpcyBZQU1MLCBzbyBhaW0gZm9yIHRoYXQuCgpJIGFt
IGF3YXJlIG9mIHRoYXQuIEluIGZhY3QsIGF0IENvbGxhYm9yYSB3ZSBlbmNvdXJhZ2UgYWxsIHRo
ZSBrZXJuZWwKZGV2ZWxvcGVycyB0byBjb252ZXJ0IHRvIFlBTUwsIGlmL3doZW4gcG9zc2libGUu
Cgo+IFRyeSB0byBzdWJtaXQgYSBjb21wbGV0ZSBwYWNrYWdlIG9mIFlBTUwsIGRyaXZlciAoYW5k
IGR0cyBub2RlcykgZm9yIHJldmlldy4KClRoZSBkZXZpY2V0cmVlIGZvciBSSzM1NjYgYW5kIFJL
MzU2OCBpcyB1bmRlciBkaXNjdXNzaW9uLCBpbiBmYWN0IGl0IHdhcyBzdWJtaXR0ZWQgdG9kYXku
ClJvY2toaXAgaXMgbGVhZGluZyB0aGF0LCBhbmQgZG9pbmcgYSBncmVhdCBqb2IgYWxyZWFkeSA6
KQoKTWVhbndoaWxlLCBJJ2QgbGlrZSB0byBtZXJnZSB0aGUgc21hbGwgZHJpdmVycyAodGhlcm1h
bCwgcG1pYywgZHdtYWMsIGlvLWRvbWFpbnMgYW5kIHNvIG9uKSwKc28gdGhleSBhcmUgcmVhZHkg
d2hlbiB0aGUgZGV2aWNldHJlZSBsYW5kcy4KCk1vc3QgaWYgbm90IGFsbCBvZiB0aGVzZSBkZXZp
Y2VzIGp1c3QgbmVlZCBhIG5ldyBjb21wYXRpYmxlIHN0cmluZy4gSXQgd291bGQgcmVhbGx5IGRl
bGF5CnRoaW5ncyBpZiBJIGFpbSB0byBjb252ZXJ0IGFsbCB0aG9zZSBiaW5kaW5ncyBkb2NzIHRv
IFlBTUwgZmlyc3QsIHNvIGxldCdzIHBsZWFzZSBhdm9pZCB0aGF0Li4uCi4uLiB1bmxlc3MgaXQn
cyBhIG5ldyBoYXJkLXJ1bGUgdGhhdCBEVCBtYWludGFpbmVycyBoYXZlIGFncmVlZCBvbi4KCkhh
dmluZyBzYWlkIHRoYXQsIGlmIHlvdSB3YW50IHRvIGhlbHAgdGhlIFJLMzU2OCBicmluZ3VwIGFk
dmVudHVyZSwKY29udmVydGluZyB0aGUgYmluZGluZ3MgdG8gWUFNTCwgdGhhdCB3b3VsZCBiZSBy
ZWFsbHkgYXBwcmVjaWF0ZWQhIE9mIGNvdXJzZSwgSSBrbm93CnlvdSd2ZSBjb252ZXJ0ZWQgcGxl
bnR5IG9mIHRoZW0gYWxyZWFkeSwgYW5kIEkgYWxyZWFkeSBhcHByZWNpYXRlIHRoYXQgOikKClRo
YW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

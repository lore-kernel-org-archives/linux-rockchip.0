Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A360CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 15:09:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 69B0E60E54
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 15:09:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 69B0E60E54
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzXCRxZVG3XJp+2mvjlXY6Navwex7CCjASCFI7Dxv5E=; b=RATxZqKJo/Xp++
	TWiAsHyf7R3jqz8Y9JHVnEOIujkBYCE/oYsS/xg5Zk8kKSq1jc3rz1aS7q2GYbyhTVAxC3I4YPAey
	/hua/KL31kp1a6dXSNYyty1GIKaVw1rDzWovO7pFjWJyOfbpBHG9HXQUyv3PtMGCGSMXUXfpk1OMx
	Wr2rJkqoduoftkfjr+R5yvfa37tsRi3DwhT1BEtcQWuY600BvvOfbgRfG5mgvaOdfvpUcTZcLysIu
	mMkk5TiWUgzfHU1bUpASToteNUM06yLo+0hJ9A+Ux0Gn7WigCnmbUuowytOECISHbVFbJFZp87gjT
	EX4zxjpS7+FCQIMbQAHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVEj8-007iia-HC; Tue, 28 Sep 2021 15:09:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVEiv-007igw-F0; Tue, 28 Sep 2021 15:08:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id D4ABC1F4308F
Message-ID: <bdd74e895f30d77ea798b886e34c16af2684dc99.camel@collabora.com>
Subject: Re: [PATCH v6 04/10] hantro: Add quirk for NV12/NV12_4L4 capture
 format
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Boris Brezillon
 <boris.brezillon@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Fabio Estevam <festevam@gmail.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Philipp Zabel
 <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo
 <shawnguo@kernel.org>, kernel@collabora.com, Ezequiel Garcia
 <ezequiel@collabora.com>
Date: Tue, 28 Sep 2021 11:08:35 -0400
In-Reply-To: <20210927151958.24426-5-andrzej.p@collabora.com>
References: <20210927151958.24426-1-andrzej.p@collabora.com>
 <20210927151958.24426-5-andrzej.p@collabora.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_080849_662398_DCB119E9 
X-CRM114-Status: GOOD (  30.10  )
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

TGUgbHVuZGkgMjcgc2VwdGVtYnJlIDIwMjEgw6AgMTc6MTkgKzAyMDAsIEFuZHJ6ZWogUGlldHJh
c2lld2ljeiBhIMOpY3JpdMKgOgo+IEZyb206IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29s
bGFib3JhLmNvbT4KPiAKPiBUaGUgRzIgY29yZSBkZWNvZGVyIGVuZ2luZSBwcm9kdWNlcyBOVjEy
XzRMNCBmb3JtYXQsCj4gd2hpY2ggaXMgYSBzaW1wbGUgTlYxMiA0eDQgdGlsZWQgZm9ybWF0LiBU
aGUgZHJpdmVyIGN1cnJlbnRseQo+IGhpZGVzIHRoaXMgZm9ybWF0IGJ5IGFsd2F5cyBlbmFibGlu
ZyB0aGUgcG9zdC1wcm9jZXNzb3IgZW5naW5lLAo+IGFuZCB0aGVyZWZvcmUgb2ZmZXJpbmcgTlYx
MiBkaXJlY3RseS4KPiAKPiBUaGlzIGlzIGRvbmUgd2l0aG91dCB1c2luZyB0aGUgbG9naWMgaW4g
aGFudHJvX3Bvc3Rwcm9jLmMKPiBhbmQgdGhlcmVmb3JlIG1ha2VzIGl0IGRpZmZpY3VsdCB0byBh
ZGQgVlA5IGNsZWFubHkuCj4gCj4gU2luY2UgZml4aW5nIHRoaXMgaXMgbm90IGVhc3ksIGFkZCBh
IHNtYWxsIHF1aXJrIHRvIGZvcmNlCj4gTlYxMiBpZiBIRVZDIHdhcyBjb25maWd1cmVkLCBidXQg
b3RoZXJ3aXNlIGRlY2xhcmUgTlYxMl80TDQKPiBhcyB0aGUgcGl4ZWwgZm9ybWF0IGluIGlteDht
cV92cHVfZzJfdmFyaWFudC5kZWNfZm10cy4KPiAKPiBUaGlzIHdpbGwgYmUgdXNlZCBieSB0aGUg
VlA5IGRlY29kZXIgd2hpY2ggd2lsbCBiZSBhZGRlZCBzb29uLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMgIHwgMTQgKysrKysr
KysrKysrKysKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYyB8
ICAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192
NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBpbmRl
eCBiY2IwYmRmZjRhOWEuLmQxZjA2MGM1NWZlZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtMTUwLDYgKzE1MCwyMCBAQCBzdGF0aWMgaW50
IHZpZGlvY19lbnVtX2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKPiAgCXVuc2ln
bmVkIGludCBudW1fZm10cywgaSwgaiA9IDA7Cj4gIAlib29sIHNraXBfbW9kZV9ub25lOwo+ICAK
PiArCS8qCj4gKwkgKiBUaGUgSEVWQyBkZWNvZGVyIG9uIHRoZSBHMiBjb3JlIG5lZWRzIGEgbGl0
dGxlIHF1aXJrIHRvIG9mZmVyIE5WMTIKPiArCSAqIG9ubHkgb24gdGhlIGNhcHR1cmUgc2lkZS4g
T25jZSB0aGUgcG9zdC1wcm9jZXNzb3IgbG9naWMgaXMgdXNlZCwKPiArCSAqIHdlIHdpbGwgYmUg
YWJsZSB0byBleHBvc2UgTlYxMl80TDQgYW5kIE5WMTIgYXMgdGhlIG90aGVyIGNhc2VzLAo+ICsJ
ICogYW5kIHRoZXJlZm9yZSByZW1vdmUgdGhpcyBxdWlyay4KPiArCSAqLwo+ICsJaWYgKGNhcHR1
cmUgJiYgY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9IRVZDX1NMSUNF
KSB7Cj4gKwkJaWYgKGYtPmluZGV4ID09IDApIHsKPiArCQkJZi0+cGl4ZWxmb3JtYXQgPSBWNEwy
X1BJWF9GTVRfTlYxMjsKPiArCQkJcmV0dXJuIDA7Cj4gKwkJfQo+ICsJCXJldHVybiAtRUlOVkFM
Owo+ICsJfQo+ICsKPiAgCS8qCj4gIAkgKiBXaGVuIGRlYWxpbmcgd2l0aCBhbiBlbmNvZGVyOgo+
ICAJICogIC0gb24gdGhlIGNhcHR1cmUgc2lkZSB3ZSB3YW50IHRvIGZpbHRlciBvdXQgYWxsIE1P
REVfTk9ORSBmb3JtYXRzLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2lteDhtX3ZwdV9ody5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92
cHVfaHcuYwo+IGluZGV4IDAyZTYxNDM4MjIwYS4uYTQwYjE2MWU1OTU2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4gQEAgLTEzNCw3ICsxMzQs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgaW14OG1fdnB1X2RlY19mbXRzW10g
PSB7Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgaW14OG1fdnB1X2cyX2Rl
Y19mbXRzW10gPSB7Cj4gIAl7Cj4gLQkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9OVjEyLAo+ICsJ
CS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfTlYxMl80TDQsCgpUaGlzIGRlcGVuZHMgb24gc29tZSBh
Y2NlcHRlZCBwYXRjaGVzIGZyb20gRXplcXVpZWwuIEkgZG9uJ3QgcmVjYWxsIHNlZWluZyBhCm1l
bnRpb24gb2YgdGhpcyBpbiB0aGUgY292ZXIsIHRoaXMgaXMgbm90IGEgcHJvYmxlbSBwZXIgc2Vl
LCBidXQgcGVyaGFwcyBuaWNlCmZvciB0aGUgdGVzdGVycy4gSSBiZWxpZXZlIG9ubHkgNzYxODAg
aXMgbmVlZGVkLCBidXQgaGVyZSdzIHRoZSBjb21wbGV0ZSBzZXJpZXMKSSByZWZlciB0bzoKCjc2
MTc4ICAgQWNjZXB0ZWQgICAgIFt2MywxLzRdIG1lZGlhOiBSZW5hbWUgVjRMMl9QSVhfRk1UX1NV
TlhJX1RJTEVEX05WMTIgdG8gVjRMMl9QSVhfRk1UX05WMTJfMzJMMzIKNzYxNzkgICBBY2NlcHRl
ZCAgICAgW3YzLDIvNF0gbWVkaWE6IFJlbmFtZSBWNEwyX1BJWF9GTVRfSE0xMiB0byBWNEwyX1BJ
WF9GTVRfTlYxMl8xNkwxNgo3NjE4MCAgIEFjY2VwdGVkICAgICBbdjMsMy80XSBtZWRpYTogQWRk
IE5WMTJfNEw0IHRpbGVkIGZvcm1hdAo3NjE4MSAgIEFjY2VwdGVkICAgICBbdjMsNC80XSBtZWRp
YTogQ2xlYW4gVjRMMl9QSVhfRk1UX05WMTJNVCBkb2N1bWVudGF0aW9uCgoKPiAgCQkuY29kZWNf
bW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4gIAl9LAo+ICAJewoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

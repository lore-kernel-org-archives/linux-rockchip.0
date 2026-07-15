Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087B6C44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHhsstHBI+WsymMcVk9I7ecmnoW9YMnyJYCF+ImpjCY=; b=eea+bmozXuft7Z
	qEmcwFLfk212Pon1/WPXQd1hy1383k2WiVo6t6ba89EpcfsMtJQ1fu9b+yR7ZxFwIbtUna9aPDM1D
	t4QYhDFwrfb1PTsjpBs016Fs+MVHarsESIL/kwjxJghQYZsgKWE1HWFF+LikvMiToEPZlM20ovjDY
	sUhGsDGYyQjFxos/gopctRnizGX/aCpbpU+ADw7bTodu22fI2CeBeBm7xBEfCxKErOMPEUpAGeooZ
	QsLbXXQp36C8QUvo50/AjOlu9dS3/l2GsR8C5QPN9Bq9xDNgvFlwW5aO2PWTIZC68BZ17byddG50R
	dB4+zd8XUho+a5tQoE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5SS-0000000FoC2-1xqz;
	Wed, 15 Jul 2026 19:39:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5SP-0000000FoBP-3csI;
	Wed, 15 Jul 2026 19:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=j+6+H0npw2UjZHclxHO/x3Tf61uejqeU1dWQ47818Ho=; b=CGcQHJzn/z84paToQNvEkEm1xB
	UYrz08wsSopEY5sWUeO/VYpZRuVHC/WUY9pRsu3gWbhwW1dmwdgH1HWw+AkwKWzbpKzKgaZZ4Iwmv
	dTgY+mSo9HHUtMsV6itBqfCiBb76a+82fNCA4qWJNwCDEeXx7zHkB/TEXCceh9svmaeQGueJY8CsH
	FzGzCDpnBrSUouY3mLQ/u1dSyjlZrpt6wOvb7q32L+UWlP2/9We0NS5z0nf9f60GS42Przdv9sim7
	RketPXqv+Df4gaJJtP29tX1RfPEfU4apka4d+f9RlOMicQAGahOxayBgOnSlN4jLCd6PV6WWNK/pZ
	IaC8N1Bw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 1/4] dt-bindings: leds: Document "gpio" trigger
Date: Wed, 15 Jul 2026 21:39:43 +0200
Message-ID: <5188715.0VBMTVartN@phil>
In-Reply-To: <20260711192842.845048-2-samuel@sholland.org>
References: <20260711192842.845048-1-samuel@sholland.org>
 <20260711192842.845048-2-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_123949_902031_D3243D13 
X-CRM114-Status: GOOD (  14.49  )
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

SGkgU2FtdWVsLAoKQW0gU2Ftc3RhZywgMTEuIEp1bGkgMjAyNiwgMjE6Mjg6MjUgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBTYW11ZWwgSG9sbGFuZDoKPiBUaGUgImdwaW8i
IHRyaWdnZXIgaXMgdXNlZCB0byBjb250cm9sIExFRHMgYnkgdGhlIGxldmVsIG9mIGEgR1BJTyBp
bnB1dAo+IHJlZmVyZW5jZWQgYnkgdGhlIHRyaWdnZXItc291cmNlcyBwcm9wZXJ0eS4gVGhpcyBp
cyBhbHJlYWR5IGRvY3VtZW50ZWQKPiBpbiB0aGUgdHJpZ2dlci1zb3VyY2VzIHByb3BlcnR5IGRl
c2NyaXB0aW9uIGFuZCBpcyB1c2VkIGluIGF0IGxlYXN0IG9uZQo+IGRldmljZXRyZWUgKGFtMzM1
eC1yZWdvci5kdHNpKS4gRG9jdW1lbnQgaXQgc28gdmFsaWRhdGlvbiBvZiB0aG9zZSBhbmQKPiBm
dXR1cmUgRFRzIHdpbGwgcGFzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYW11ZWwgSG9sbGFuZCA8
c2FtdWVsQHNob2xsYW5kLm9yZz4KCmhhdmluZyBMZWUgb25seSBpbiBDYyBpbiBhIGxvbmdlciBw
YXRjaCBzZXJpZXMgbWlnaHQgbWFrZSBpdCBkaWZmaWN1bHQKdG8gbm90aWNlIHRoaXMgY2hhbmdl
LgoKSSBndWVzcyB0aGlzIHBhdGNoIG5lZWRzIHRvIGJlIGFwcGxpZWQgb3IgYXQgbGVhc3QgIkFj
a2VkLWJ5IiBieSB0aGVtLgoKCkhlaWtvCgo+IC0tLQo+IAo+ICBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbGVkcy9jb21tb24ueWFtbCB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbGVkcy9jb21tb24ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9sZWRzL2NvbW1vbi55YW1sCj4gaW5kZXggZjRlNDRiMzNmNTZkLi5lMTQ4YjQyNzdh
NmYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2xlZHMv
Y29tbW9uLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVk
cy9jb21tb24ueWFtbAo+IEBAIC0xMDYsNiArMTA2LDggQEAgcHJvcGVydGllczoKPiAgICAgICAg
ICAgIC0gYmx1ZXRvb3RoLXBvd2VyCj4gICAgICAgICAgICAgICMgTEVEIGluZGljYXRlcyBjYW1l
cmEgZmxhc2ggc3RhdGUKPiAgICAgICAgICAgIC0gZmxhc2gKPiArICAgICAgICAgICAgIyBMRUQg
aW5kaWNhdGVzIGxldmVsIG9mIEdQSU8gaW5wdXQgcmVmZXJlbmNlZCBieSB0cmlnZ2VyLXNvdXJj
ZXMKPiArICAgICAgICAgIC0gZ3Bpbwo+ICAgICAgICAgICAgICAjIExFRCBpbmRpY2F0ZWQga2V5
Ym9hcmQgY2Fwc2xvY2sKPiAgICAgICAgICAgIC0ga2JkLWNhcHNsb2NrCj4gICAgICAgICAgICAg
ICMgTEVEIGluZGljYXRlcyBNVEQgbWVtb3J5IGFjdGl2aXR5Cj4gCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

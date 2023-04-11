Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567F2C76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3aZbtWiySOPkjDAbyCa+sdwqW4cqBFPLcjOgK/dRY0=; b=y5T16MclDLMqEF
	TTapWSFLDWrvcU93h/u0ep5VPHwPvIa8wCKwdhvOkX5idztHxfbx3YTMpHOCz+0W7jmYfVMnPFomM
	wb0xUEhM1cNDo7bSZZd/omqHOpceKbijCPQ75zpxfZltTu0wSxvU+nCteXhvuLTacC7iK9IbglHIS
	xmcFn5QZp+wTBwGA/+jLa8OA+R6Ykj31p/UFRaE6NDgNKZxE5Hp6dB/ptG+ip6YRuIaZ4AIHzPOS/
	zpLoyKOWM/OyAmU5220OJiXz+VmOh3CncayNd0234VNXahGBJLKRYCgtVr+dVOrgi3GAqNSeAZA0J
	gM8j2D12plWgCebUVhKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFti-000R2F-0b;
	Tue, 11 Apr 2023 15:27:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFtd-000Qz2-2E;
	Tue, 11 Apr 2023 15:27:03 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C3D3066003B8;
	Tue, 11 Apr 2023 16:26:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681226820;
	bh=DuGkoAGiYs0V4ZuV34Ydk4VOg6z3ZZ5l0Q7CdUd2bKI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=XBoAHczzPa75ed6PpuM3+BMpOoazAOVCW8vLIYv73ETeE/5LY5xci6Squ07wwLnO8
	 VgqDJJJ1PTAKoNJl4/iXFzP0wwieYJQYxVvqhvm5TXKGVL3w70c52hyBOKr14tj3sK
	 G4IRhu246t4jW6cI/wLfH2ou8r9lfn8HUzKecfendQb1oZCvJUzfbxjm+cVE12RZV5
	 Te2w6ISnHohnnv4N6KzqHwRPbVbw8cyT7hCIqYri37dK/oECWq4M2jQIGKBtLrJRfo
	 8IzjoQGtO0SPVtf26TF7JfvEgawOx1oqfqrveV6C8dfu1AhD9AWBziD4LkmsWbbLvY
	 yNfVb8mqjwqdA==
Message-ID: <ef815d11d8514f1d53bcb55d4acbcbac518cd603.camel@collabora.com>
Subject: Re: [PATCH v5 13/13] media: AV1: Make sure that bit depth in
 correctly initialize
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Tue, 11 Apr 2023 11:26:50 -0400
In-Reply-To: <20230330154043.1250736-14-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
	 <20230330154043.1250736-14-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_082701_852997_1ACC4D0A 
X-CRM114-Status: GOOD (  13.26  )
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

TGUgamV1ZGkgMzAgbWFycyAyMDIzIMOgIDE3OjQwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IE1ha2Ugc3VyZSB0aGF0IGJpdF9kZXB0aCBmaWVsZCBvZiBWNEwyX0NUUkxf
VFlQRV9BVjFfU0VRVUVOQ0UKPiBpcyBpbml0aWFsaXplZCBjb3JyZWN0bHkgYmVmb3JlIHVzaW5n
IGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBjb2xsYWJvcmEuY29tPgo+IApJbiB2NiwgY2FuIHlvdSBtb3ZlIHRoaXMgcGF0Y2ggZWFy
bGllciA/IEknbSBoYXZpbmcgYmlzZWN0aW9uIGluIG1pbmQuIFdpdGggdGhhdApiZWluZyBzYWlk
OgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KCj4gCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMt
Y29yZS5jIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtY29yZS5jIGIv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1jb3JlLmMKPiBpbmRleCA5ZmQzN2U5
NGRiMTcuLmE2NjJmYjYwZjczZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWN0cmxzLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDIt
Y3RybHMtY29yZS5jCj4gQEAgLTExMSw2ICsxMTEsNyBAQCBzdGF0aWMgdm9pZCBzdGRfaW5pdF9j
b21wb3VuZChjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsICpjdHJsLCB1MzIgaWR4LAo+ICAJc3RydWN0
IHY0bDJfY3RybF92cDlfZnJhbWUgKnBfdnA5X2ZyYW1lOwo+ICAJc3RydWN0IHY0bDJfY3RybF9m
d2h0X3BhcmFtcyAqcF9md2h0X3BhcmFtczsKPiAgCXN0cnVjdCB2NGwyX2N0cmxfaDI2NF9zY2Fs
aW5nX21hdHJpeCAqcF9oMjY0X3NjYWxpbmdfbWF0cml4Owo+ICsJc3RydWN0IHY0bDJfY3RybF9h
djFfc2VxdWVuY2UgKnBfYXYxX3NlcXVlbmNlOwo+ICAJdm9pZCAqcCA9IHB0ci5wICsgaWR4ICog
Y3RybC0+ZWxlbV9zaXplOwo+ICAKPiAgCWlmIChjdHJsLT5wX2RlZi5wX2NvbnN0KQo+IEBAIC0x
NTcsNiArMTU4LDEwIEBAIHN0YXRpYyB2b2lkIHN0ZF9pbml0X2NvbXBvdW5kKGNvbnN0IHN0cnVj
dCB2NGwyX2N0cmwgKmN0cmwsIHUzMiBpZHgsCj4gIAkJcF92cDlfZnJhbWUtPmZsYWdzIHw9IFY0
TDJfVlA5X0ZSQU1FX0ZMQUdfWF9TVUJTQU1QTElORyB8Cj4gIAkJCVY0TDJfVlA5X0ZSQU1FX0ZM
QUdfWV9TVUJTQU1QTElORzsKPiAgCQlicmVhazsKPiArCWNhc2UgVjRMMl9DVFJMX1RZUEVfQVYx
X1NFUVVFTkNFOgo+ICsJCXBfYXYxX3NlcXVlbmNlID0gcDsKPiArCQlwX2F2MV9zZXF1ZW5jZS0+
Yml0X2RlcHRoID0gODsKPiArCQlicmVhazsKPiAgCWNhc2UgVjRMMl9DVFJMX1RZUEVfRldIVF9Q
QVJBTVM6Cj4gIAkJcF9md2h0X3BhcmFtcyA9IHA7Cj4gIAkJcF9md2h0X3BhcmFtcy0+dmVyc2lv
biA9IFY0TDJfRldIVF9WRVJTSU9OOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 460AAC3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 08:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBgflXIyrVWJZ3MKrGO0+7p2IASN9AbpDwZh0Wn78j0=; b=q9gZkag4cEvZQO
	WS8WtxS0/NAYp++xF83xuR3Nfr/xafNZ9X2i6ZCXJLbPWnRfsz0iMRshEZT3OaKKSSMhyHB0YUJ7D
	KUGt3CUay5Pj2euSMv2H6KdZTUHYzxl3wsxdlhf+EcpcFzuY8dOHCeyvBfK0gp0JB10Jxm5geUurK
	GAzgDtk079mHSirDM59vl8jb8EiHoPt9bN4hHNurP+7Hs1EYcyA4W7AjnKAakD7I+gJkwbRZ1FwMP
	aHt37SgA1iqR8Bs0l/cypUoE6aFWAO4DZbBbhuV2CwdheUJVmG1n9hyoX3C8yRzWdgI0DMX4RyZHy
	y0e7Fxxi76iu/NAy1TWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDItO-00000002tLV-3U6c;
	Fri, 09 May 2025 08:15:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIS7-00000002npg-3TWg;
	Fri, 09 May 2025 07:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=k66pmCI1pT3vfBJYih/fR8R6maFESHCnrlUq6lhyU7E=; b=uf1RgzYa1jurRkM4LRmh7M2nKi
	X/tNKnrMcl9U3XpmbQXaWzo+GtVk2elzKzG+FacPEffuVMPfQzBsi4GYPHTJfh4wa3q8SS4uYbr5w
	38D7UiS497Wv+KxKTttiN6YWS9Gi2SXLmG5gfxG0GyTADF+EUp7qGoiC0pBINFIsW6SjWr0vTVAPz
	bH98GaqZTd6jGfDtZtFA8kexrzNPabyXJx9uekAdnvYdAWWixnZbkPqpObBteA5dPPAwxstxYIHMg
	yTrJZ6pR+o/+4FED01z3iFhYKVPZ/UXHDyQg9McHn3Bb9ptOo9OWt68bZ8HyFq8IR3vsDgSKTWFIH
	OItVOlXg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDIRf-0007kz-JF; Fri, 09 May 2025 09:46:59 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
Date: Fri, 09 May 2025 09:46:57 +0200
Message-ID: <1824349.VLH7GnMWUR@diego>
In-Reply-To: <5a4f6229-1450-4c96-bfac-5257f66b2ddf@rock-chips.com>
References: <20250509070247.868-1-kernel@airkyi.com>
 <ccf4b15a-8399-4a7f-ae40-d01d0975921c@kernel.org>
 <5a4f6229-1450-4c96-bfac-5257f66b2ddf@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_004727_891923_CC633BCA 
X-CRM114-Status: GOOD (  18.25  )
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

QW0gRnJlaXRhZywgOS4gTWFpIDIwMjUsIDA5OjM0OjQ3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gSGkgS3J6eXN6dG9mLAo+IAo+IE9uIDIwMjUv
NS85IDE1OjExLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gT24gMDkvMDUvMjAyNSAw
OTowMiwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gPj4gKwo+ID4+ICsgIGNsb2NrLW5hbWVzOgo+ID4+
ICsgICAgaXRlbXM6Cj4gPj4gKyAgICAgIC0gY29uc3Q6IGNvcmUtY2xrCj4gPj4gKyAgICAgIC0g
Y29uc3Q6IHBjbGsKPiA+PiArICAgICAgLSBjb25zdDogc3BkaWYKPiA+PiArICAgICAgLSBjb25z
dDogZ3JmCj4gPj4gKwo+ID4+ICsgIGV4dGNvbjoKPiA+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5
cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJyYXkKPiA+PiArICAgIGRlc2NyaXB0aW9u
Ogo+ID4+ICsgICAgICBQaGFuZGxlIHRvIHRoZSBleHRjb24gZGV2aWNlIHByb3ZpZGluZyB0aGUg
Y2FibGUgc3RhdGUgZm9yIHRoZSBEUCBQSFkuCj4gPj4gKwo+ID4+ICsgIGludGVycnVwdHM6Cj4g
Pj4gKyAgICBtYXhJdGVtczogMQo+ID4+ICsKPiA+PiArICBwaHlzOgo+ID4+ICsgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ID4gSnVzdCBw
aGFuZGxlLiBJZiB0aGlzIGlzIGFuIGFycmF5IChidXQgd2h5PyksIHlvdSBuZWVkIG1heEl0ZW1z
IGZvcgo+ID4gb3V0ZXIgYW5kIGlubmVyIGRpbWVuc2lvbnMuCj4gCj4gSSB0aGluayBpdCBjb3Vs
ZCBiZSBwaGFuZGxlIG9yIHBoYW5kbGUtYXJyYXkuIFNpbmNlIHRoZSBSSzMzOTkgRFAgaGFzIAo+
IHR3byBQSFlzLCBpZiB3ZSBwdXQgaW4gdHdvIFBIWXMgaGVyZSwgdGhlIGRyaXZlciB3aWxsIHBp
Y2sgb25lIFBIWSBwb3J0IAo+IHRoYXQgaXMgYWxyZWFkeSBwbHVnZ2VkIGludG8gdGhlIERQIGZv
ciBvdXRwdXQuIElmIHdlIGZpbGwgaW4gb25seSBvbmUgCj4gUEhZIGhlcmUsIHRoZW4gb3V0cHV0
IGlzIG9ubHkgYWxsb3dlZCBvbiB0aGUgY29ycmVzcG9uZGluZyBQSFkuCj4gCj4gV2lsbCBhZGQg
cmVzdHJpY3Rpb25zIGFuZCBhZGQgbW9yZSBkZXNjcmlwdGlvbnMgaW4gdjMuCgpKdXN0IGxvb2tl
ZCB0aGF0IHVwIGluIHRoZSBkb2N1bWVudGF0aW9uLgoKT25seSB0aGUgcmszMzk5IGhhcyB1c2Vk
IHRoaXMgY29udHJvbGxlciBhdCBhbGwgc28gZmFyLiBUaGVyZSBpcyBvbmUKY2RuLWRwIGNvbnRy
b2xsZXIgb24gaXQsIGJ1dCB0d28gcGh5cyBmb3IgdGhlIHR3byB0eXBlLWMgYmxvY2tzIG9uCnRo
ZSBzb2MuCgpUaGUgY29udHJvbGxlciBjYW4gdGhlbiBzZWxlY3Qgd2hpY2ggb25lIHRvIGRyaXZl
LiBTbyB5ZXAsIHRoZXJlCmFyZSB0d28gcGh5cy4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

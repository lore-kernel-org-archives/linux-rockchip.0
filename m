Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0657C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+lQI8RMa9qzu+FM7FBbPSiyxUNldmJQQQ3hCvRxKW4=; b=Y4y+DXOn5SN1U8
	3OousZy0uQQiSXsIOLLPzV9GqeSwwHMQrLhRxzzqE8lIAyU4v2jZHzCYbwjlb8Bb3Biq8/Lrsl/Qd
	M8loqudysGbtzZGIrKY0VyWhm3Q+IFHXO6puvz4bOz1UM+5wqUp1EZO+ronZQLiii1ySLdYhB8qTK
	rBkdD42HVhp8BWsvcHNfwOmsvvV8eOe3U6aQ4YwzAGrD0unXiQW9wcrisAkb3+uv/dAgPpQuJJyBP
	23LS+e8ISsZFIg0/Ga037PoeGyS1QUqJ95sVPprwOpFtwT1CmatexncCj/kzT0m4enQqQHutGFaIB
	Vi8ojeX0iScHYXCHq8vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTive-0059ly-LZ; Mon, 14 Mar 2022 11:31:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTivb-0059jg-Ce
 for linux-rockchip@lists.infradead.org; Mon, 14 Mar 2022 11:31:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BA0A106F;
 Mon, 14 Mar 2022 04:31:52 -0700 (PDT)
Received: from [10.57.42.204] (unknown [10.57.42.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D0E13F99C;
 Mon, 14 Mar 2022 04:31:50 -0700 (PDT)
Message-ID: <c6766e6e-3c90-f0e6-86b3-4afdf41fbbb1@arm.com>
Date: Mon, 14 Mar 2022 11:31:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
 <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
 <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_043155_616108_CFCAA344 
X-CRM114-Status: GOOD (  16.99  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMi0wMy0xMyAxMjo1NiwgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiBTdW4sIE1hciAxMywg
MjAyMiBhdCA2OjEzIEFNIFBpb3RyIE9uaXN6Y3p1awo+IDxwaW90ci5vbmlzemN6dWtAZ21haWwu
Y29tPiB3cm90ZToKPj4KPj4KPj4KPj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVy
IEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+IHcgZG5pdSAyNi4wMS4yMDIyLCBvIGdvZHouIDIx
OjI0Ogo+Pj4KPj4+IFRoZSBoZG1pLWNlYyBjbG9jayBtdXN0IGJlIDMya2h6IGluIG9yZGVyIGZv
ciBjZWMgdG8gd29yayBjb3JyZWN0bHkuCj4+PiBFbnN1cmUgYWZ0ZXIgZW5hYmxpbmcgdGhlIGNs
b2NrIHdlIHNldCBpdCBpbiBvcmRlciBmb3IgdGhlIGhhcmR3YXJlIHRvCj4+PiB3b3JrIGFzIGV4
cGVjdGVkLgo+Pj4gV2FybiBvbiBmYWlsdXJlLCBpbiBjYXNlIHRoaXMgaXMgYSBzdGF0aWMgY2xv
Y2sgdGhhdCBpcyBzbGlnaHR5IG9mZi4KPj4+IEZpeGVzIGhkbWktY2VjIHN1cHBvcnQgb24gUm9j
a2NoaXAgZGV2aWNlcy4KPj4+Cj4+PiBGaXhlczogZWJlMzJjM2UyODJhICgiZHJtL2JyaWRnZTog
c3lub3BzeXMvZHctaGRtaTogRW5hYmxlIGNlYyBjbG9jayIpCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgfCA3ICsrKysrKysKPj4+IDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5
bm9wc3lzL2R3LWhkbWkuYwo+Pj4gaW5kZXggNTRkOGZkYWQzOTVmLi4xYTk2ZGE2MGUzNTcgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYwo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPj4+IEBA
IC00OCw2ICs0OCw5IEBACj4+Pgo+Pj4gI2RlZmluZSBIRE1JMTRfTUFYX1RNRFNDTEsgICAgMzQw
MDAwMDAwCj4+Pgo+Pj4gKy8qIEhETUkgQ0VDIG5lZWRzIGEgY2xvY2sgcmF0ZSBvZiAzMmtoeiAq
Lwo+Pj4gKyNkZWZpbmUgSERNSV9DRUNfQ0xLX1JBVEUgICAgMzI3NjgKPj4+ICsKPj4+IGVudW0g
aGRtaV9kYXRhbWFwIHsKPj4+ICAgICAgICBSR0I0NDRfOEIgPSAweDAxLAo+Pj4gICAgICAgIFJH
QjQ0NF8xMEIgPSAweDAzLAo+Pj4gQEAgLTMzNDcsNiArMzM1MCwxMCBAQCBzdHJ1Y3QgZHdfaGRt
aSAqZHdfaGRtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldCk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAg
IGdvdG8gZXJyX2lhaGI7Cj4+PiAgICAgICAgICAgICAgICB9Cj4+PiArCj4+PiArICAgICAgICAg
ICAgIHJldCA9IGNsa19zZXRfcmF0ZShoZG1pLT5jZWNfY2xrLCBIRE1JX0NFQ19DTEtfUkFURSk7
Cj4+PiArICAgICAgICAgICAgIGlmIChyZXQpCj4+PiArICAgICAgICAgICAgICAgICAgICAgZGV2
X3dhcm4oaGRtaS0+ZGV2LCAiQ2Fubm90IHNldCBIRE1JIGNlYyBjbG9jayByYXRlOiAlZFxuIiwg
cmV0KTsKPj4+ICAgICAgICB9Cj4+Pgo+Pj4gICAgICAgIC8qIFByb2R1Y3QgYW5kIHJldmlzaW9u
IElEcyAqLwo+Pj4gLS0KPj4+IDIuMjUuMQo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Cj4+IFBl
dGVyLAo+Pgo+PiBPbiBteSA1LjE3LXJjNyB3aXRoIGFwcGxpZWQgcmszNTZ4IFZPUDIgdjggc2Vy
aWVzIC0gdGhpcyBwYXRjaCBtYWtlcyBDRUMgd29ya2luZyBvbiByazM1NjYuCj4+IFVuZm9ydHVu
YXRlbHkgaXQgYnJlYWtzIHdvcmtpbmcgb2sgQ0VDIG9uIHJrMzM5OSByb2NrcGktNGIuCj4+Cj4+
IFJldmVydGluZyB0aGlzIHBhdGNoIGJyaW5ncyBiYWNrIENFQyBvbiByazMzOTkgLSBidXQgcmsz
MzY2IGJlY29tZXMgd2l0aCBub24gd29ya2luZyBDRUMKPj4KPj4gSSdtIG5vdCBzdXJlIGhvdyB0
byBtb3ZlIGZvcndhcmQgd2l0aCB0aGlzLi4uLgo+IAo+IEkgd2FzIHdvcnJpZWQgYWJvdXQgdGhh
dCwgdGhhbmtzIGZvciB0ZXN0aW5nIGl0Lgo+IENhbiB5b3Ugc2VuZCBtZSB0aGUgY2VjX2NsayBy
YXRlIGJlZm9yZSBhbmQgYWZ0ZXIgdGhpcyBwYXRjaD8KCkhtbSwgbG9va3MgbGlrZSB0aGVyZSBt
aWdodCBiZSBhIGJ1ZyBpbiB0aGUgUkszMzk5IGNsb2NrIGRyaXZlciAtIAphbHRob3VnaCBpdCdz
IHRyZWF0ZWQgYXMgaGF2aW5nIG11eF9wbGxfcCBhcyBwYXJlbnRzLCBhY2NvcmRpbmcgdG8gdGhl
IApwdWJsaWMgVFJNIHRoZSBDRUMgY2xvY2sgYXBwZWFycyB1bmlxdWUgaW4gYmVpbmcgYmFja3dh
cmRzIGNvbXBhcmVkIHRvIApldmVyeSBvdGhlciBtdXggb2YgdGhvc2UgdHdvIGlucHV0cy4gSSdt
IG5vdyB0ZW1wdGVkIHRvIHRlc3QgdGhpcyBvbiBteSAKYm9hcmQgdG9uaWdodCBhbmQgc2VlIGlm
IEkgY2FuIHNlZSAyNE1IeiBvbiB0aGUgQ0VDIHBpbi4uLiA6KQoKUm9iaW4uCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

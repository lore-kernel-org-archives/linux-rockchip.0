Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CB4C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:21:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A08A561041
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:21:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A08A561041
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eMHgTFuAY/wNEg/vMwO8NTjac9N2Tv/XLIS1XQIfLdc=; b=QIBvImwW7IZhR5sWNJImVNDu+
	XpEKdnsfJ0OgQejZeBMOkgJ1k1yuC4gTFH+5lPjUuxBSdoZ0lGptRzffCSQGJRrpuR0W05Tm7dN8y
	8O3ywKPhfn+DoQLC59j4YtApzXC6dov0JhV7KFsgLZD2T2u4RqfKfk081PvD/lYZDAvXerfJykmQW
	R5PGhVE8FASgiYhunh1pLv1/CnF/jIIdeFkmT3f+0m+BjIQAaoWDWV0Rb3Kl3VlRZp9khElc+OrhY
	ZKK7dooak21+gps3Evo+enExKl26lQ6604443DBa12KTYihuTSPh5WnMetEw88GFJKT42zByw2FPb
	msP1Ql9PQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leJKn-001Xge-HX; Wed, 05 May 2021 15:21:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJKc-001XfZ-2J; Wed, 05 May 2021 15:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=WPS6yWTc5RH9igEvx0yLgyYr/a9f9d9aD2vx6B8gQso=; b=GxwyZOQoIrT6cDdpJ84G9uTTrl
 8gigbm+0QixqFoEqV4ALZqCD5ZGMyH/mA1WZYpyT3LN4HyzpSgwaA15pfYS9rQkrulxcXLWph63Op
 tBuwyFZz+vnZQiIKmhl0U/rvzH1TU6BNq/pVvC5dTiEpE5tJwUlPqo83uMwIE9fZpGe15d7F1LP0Y
 qpcyP0E7+0rACKcq9TCRvjCCE8rcfXNvMcJhYb4IleZMJbrHNgxNpmiVzoqVvb7h9hGV75gSTt4Xg
 iNUcf+hpyGShnVdf/yqT1yvBz09nJTB07d/BPE3mj510uIY7RcsmvEwCJhyVWfP3v+Na7tkUTDQGg
 vpvrc5xw==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJKZ-004rvS-3A; Wed, 05 May 2021 15:20:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 77D441F42D0C
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
Date: Wed, 5 May 2021 17:20:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_082055_402740_E6960A85 
X-CRM114-Status: GOOD (  29.46  )
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

CkxlIDA1LzA1LzIwMjEgw6AgMTY6NTUsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA0LzIwMjEgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBUaGUgSEVWQyBIQU5U
Uk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPj4g
dGhlIGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+PiBUaGF0IGlzIGEgaGFyZHdhcmUg
c3BlY2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPj4gZm9y
IHRoaXMgcHVycG9zZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgIC4uLi91c2Vyc3BhY2Ut
YXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCAgICB8IDE5ICsrKysrKysrKysrKysrKysrKysK
Pj4gICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCAgICAgfCAgMSAr
Cj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgIHwgMTMg
KysrKysrKysrKysrKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQo+PiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJp
dmVycy9oYW50cm8ucnN0Cj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLmNkOTc1NGI0ZTAwNQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPj4g
QEAgLTAsMCArMSwxOSBAQAo+PiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
Pj4gKwo+PiArSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyCj4+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPj4gKwo+PiArVGhlIEhhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlciBpbXBs
ZW1lbnRzIHRoZSBmb2xsb3dpbmcgZHJpdmVyLXNwZWNpZmljIGNvbnRyb2xzOgo+PiArCj4+ICtg
YFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIChpbnRlZ2VyKWBgCj4+ICsg
ICAgU3BlY2lmaWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1i
ZXIgb2YgZGF0YSAoaW4gYml0cykgdG8KPj4gKyAgICBza2lwIGluIHRoZSBzbGljZSBzZWdtZW50
IGhlYWRlci4KPj4gKyAgICBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZy
b20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPj4gKyAgICB0byBiZWZvcmUgc3lu
dGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+PiArICAgIElm
IElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAicGljX291dHB1dF9mbGFnIgo+PiArICAg
IChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiBJJ20gbm90
IHZlcnkga2VlbiBvbiB0aGlzLiBXaXRob3V0IHRoaXMgaW5mb3JtYXRpb24gdGhlIHZpZGVvIGRh
dGEgY2Fubm90IGJlCj4gZGVjb2RlZCwgb3Igd2lsbCBpdCBqdXN0IGJlIHN1Ym9wdGltYWw/CgpX
aXRob3V0IHRoYXQgaW5mb3JtYXRpb24gdGhlIHZpZGVvIGNhbid0IGJlIGRlY29kZWQuCgo+Cj4g
VGhlIHByb2JsZW0gaXMgdGhhdCBhIGdlbmVyaWMgZGVjb2RlciB3b3VsZCBoYXZlIHRvIGtub3cg
dGhhdCB0aGUgSFcgaXMgYSBoYW50cm8sCj4gYW5kIHRoZW4gY2FsbCB0aGlzIGNvbnRyb2wuIElm
IHRoZXkgZG9uJ3QgKGFuZCBhcmUgdGVzdGluZyBvbiBub24taGFudHJvIEhXKSwgdGhlbgo+IGl0
IHdvbid0IHdvcmssIHRodXMgZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRlcGVu
ZGVudCBkZWNvZGVyIEFQSS4KPgo+IFNpbmNlIGhhbnRybyBpcyB3aWRlbHkgdXNlZCwgYW5kIGlm
IHRoZXJlIGlzIG5vIG90aGVyIHdheSB0byBkbyB0aGlzIGJlc2lkZSBleHBsaXRlbHkKPiBzZXR0
aW5nIHRoaXMgY29udHJvbCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhl
IHN0YW5kYXJkIEhFVkMgQVBJLgo+IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVk
IHRoaXMgY2FuIGp1c3Qgc2tpcCBpdC4KCkV2ZW4gaWYgSSBwdXQgdGhpcyBwYXJhbWV0ZXIgaW4g
ZGVjb2RlX3BhcmFtcyBzdHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0IGEgZ2VuZXJpYwp1
c2VybGFuZCBkZWNvZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0aGUgY29tcHV0ZSB0aGlzIHZh
bHVlIGZvciBoYW50cm8gSFcgc2luY2UgaXQKaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUg
ZG9uZSBvbiBrZXJuZWwgc2lkZS4KCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4K
PiAJSGFucwo+Cj4+ICsKPj4gKy4uIG5vdGU6Ogo+PiArCj4+ICsgICAgICAgIFRoaXMgY29udHJv
bCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+PiArICAgICAg
ICBpdCBpcyBleHBlY3RlZCB0byBjaGFuZ2UuCj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4gaW5kZXggMWE5MDM4ZjVmOWZh
Li4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFw
aS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4gQEAgLTMzLDYgKzMzLDcgQEAgRm9yIG1v
cmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291cmNlIGRpc3RyaWJ1dGlv
biBvZiBMaW51eC4KPj4gICAKPj4gICAJY2NzCj4+ICAgCWN4MjM0MXgtdWFwaQo+PiArICAgICAg
ICBoYW50cm8KPj4gICAJaW14LXVhcGkKPj4gICAJbWF4MjE3NQo+PiAgIAltZXllLXVhcGkKPj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oIGIvaW5jbHVkZS9tZWRpYS9o
ZXZjLWN0cmxzLmgKPj4gaW5kZXggOGUwMTA5ZWVhNDU0Li5iNzEzZWVlZDE5MTUgMTAwNjQ0Cj4+
IC0tLSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEv
aGV2Yy1jdHJscy5oCj4+IEBAIC0yMjQsNCArMjI0LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2
Y19kZWNvZGVfcGFyYW1zIHsKPj4gICAJX191NjQJZmxhZ3M7Cj4+ICAgfTsKPj4gICAKPj4gKy8q
ICBNUEVHLWNsYXNzIGNvbnRyb2wgSURzIHNwZWNpZmljIHRvIHRoZSBIYW50cm8gZHJpdmVyIGFz
IGRlZmluZWQgYnkgVjRMMiAqLwo+PiArI2RlZmluZSBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFT
RQkJCQkoVjRMMl9DVFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQo+PiArLyoKPj4gKyAqIFY0TDJf
Q0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIC0KPj4gKyAqIHRoZSBudW1iZXIgb2Yg
ZGF0YSAoaW4gYml0cykgdG8gc2tpcCBpbiB0aGUKPj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVy
Lgo+PiArICogSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBnbyBmcm9tIHN5bnRh
eCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4+ICsgKiB0byBiZWZvcmUgc3ludGF4IGVsZW1l
bnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+PiArICogSWYgSURSLCB0aGUg
c2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+ICsgKiAoc2VwYXJhdGVf
Y29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4+ICsgKi8KPj4gKyNkZWZpbmUg
VjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hB
TlRST19CQVNFICsgMCkKPj4gKwo+PiAgICNlbmRpZgo+Pgo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

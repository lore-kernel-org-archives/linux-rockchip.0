Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECEE0C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 14:05:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FB2264EC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 14:05:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FB2264EC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QxYSdEO1bhT45M+wU8rrulhcDyBuxZg8R7RABgsD/cI=; b=hri3dFs/z1tWuch8FFrvS0RQ+
	/bRykeZJJNbNKyXOt4WCSSTxGsg7JtnbBmuiYMKZsjoJe0AEryQdpXj6q3eYp5ue/RNF0puD+met9
	AfDmrcoJeV8DV2yMbQpkbKA6LMg1thYbP5Kib9ynCLOVuA/7DcyU4HHRKnAW+KguCU/37Jo16w2ZU
	/vxc3mCvP1Th+i9rz0xh9t72He5bH6H4O9dSQAxX8jR+5vn3Z1eVq8Yx6lFmvt2Em+Jy4gsE2jUVW
	roJtcNJWVM8KDjI+yIDfkHCJV6WMpUpfWEyC33QEstOFQZRkfT/V3v+bX1cKAdDadUiI7Nv3YA5jq
	eNKUnveCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFHH4-0006Wn-Ul; Thu, 25 Feb 2021 14:05:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFHH0-0006VO-5I; Thu, 25 Feb 2021 14:05:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 439961F4617B
Message-ID: <3a2b4d06a363541c475dbc1bbf61d90b3a1b0cc0.camel@collabora.com>
Subject: Re: [PATCH v3 4/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, 
 dan.carpenter@oracle.com
Date: Thu, 25 Feb 2021 11:05:32 -0300
In-Reply-To: <20210222122406.41782-5-benjamin.gaignard@collabora.com>
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
 <20210222122406.41782-5-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_090546_600221_8104B049 
X-CRM114-Status: GOOD (  22.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQmVuamFtaW4sCgpPbiBNb24sIDIwMjEtMDItMjIgYXQgMTM6MjQgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IFRoZSBIRVZDIEhBTlRSTyBkcml2ZXIgbmVlZHMgdG8ga25vdyB0
aGUgbnVtYmVyIG9mIGJpdHMgdG8gc2tpcCBhdAoKcy9IQU5UUk8vSGFudHJvCgo+IHRoZSBiZWdp
bm5pbmcgb2YgdGhlIHNsaWNlIGhlYWRlci4KCkFzIGRpc2N1c3NlZCBpbiBhIGRpZmZlcmVudCB0
aHJlYWQsIHdlIHNob3VsZCBkZXNjcmliZSBleGFjdGx5CndoYXQgdGhlIGhhcmR3YXJlIGlzIGV4
cGVjdGluZywgc28gYXBwbGljYXRpb25zIGNhbiBwYXJzZSB0aGF0CmFuZCBwYXNzIGEgY29ycmVj
dCB2YWx1ZS4KCj4gVGhhdCBpcyBhIGhhcmR3YXJlIHNwZWNpZmljIHJlcXVpcmVtZW50IHNvIGNy
ZWF0ZSBhIGRlZGljYXRlZCBjb250cm9sCj4gdGhhdCB0aGlzIHB1cnBvc2UuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gdmVyc2lvbiAzOgo+IC0gRml4IHR5cG8gaW4gZmllbGQgbmFtZQo+IAo+IMKg
aW5jbHVkZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xzLmggfCAyMCArKysrKysrKysr
KysrKysrKysrKwo+IMKgaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaMKgwqDCoMKg
wqDCoMKgIHzCoCA1ICsrKysrCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykK
PiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29u
dHJvbHMuaAo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDIt
Y29udHJvbHMuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250cm9scy5oCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmE4ZGZkNmIxYTJhOQo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29u
dHJvbHMuaAo+IEBAIC0wLDAgKzEsMjAgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAgV0lUSCBMaW51eC1zeXNjYWxsLW5vdGUgKi8KPiArCj4gKyNpZm5kZWYgX19VQVBJ
X0hBTlRST19WNEwyX0NPTllUUk9MU19IX18KPiArI2RlZmluZSBfX1VBUElfSEFOVFJPX1Y0TDJf
Q09OWVRST0xTX0hfXwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L3Y0bDItY29udHJvbHMuaD4KPiAr
I2luY2x1ZGUgPG1lZGlhL2hldmMtY3RybHMuaD4KPiArCj4gKyNkZWZpbmUgVjRMMl9DSURfSEFO
VFJPX0hFVkNfRVhUUkFfREVDT0RFX1BBUkFNU8KgwqDCoMKgwqDCoMKgKFY0TDJfQ0lEX1VTRVJf
SEFOVFJPX0JBU0UgKyAwKQo+ICsKPiArLyoqCj4gKyAqIHN0cnVjdCBoYW50cm9faGV2Y19leHRy
YV9kZWNvZGVfcGFyYW1zIC0gZXh0cmEgZGVjb2RlIHBhcmFtZXRlcnMgZm9yIGhhbnRybyBkcml2
ZXIKPiArICogQGhldmNfaGRyX3NraXBfbGVuZ3RoOsKgwqDCoMKgwqDCoGhlYWRlciBmaXJzdCBi
aXRzIG9mZnNldAo+ICsgKi8KPiArc3RydWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJh
bXMgewo+ICvCoMKgwqDCoMKgwqDCoF9fdTMywqDCoMKgaGV2Y19oZHJfc2tpcF9sZW5ndGg7Cj4g
K8KgwqDCoMKgwqDCoMKgX191OMKgwqDCoMKgcGFkZGluZ1s0XTsKPiArfTsKPiArCgpJIHRoaW5r
IHdlIGNhbiBnZXQgYXdheSB3aXRoIGEgc2ltcGxlciBzb2x1dGlvbi4gU2luY2UgaXQncyBqdXN0
IG9uZSBpbnRlZ2VyCndlIG5lZWQsIHRoZXJlJ3Mgbm8gbmVlZCBmb3IgYSBjb21wb3VuZCBjb250
cm9sLiBTb21ldGhpbmcgbGlrZSB0aGlzOgoKICAgICAgICAgICAgICAgIC5jb2RlYyA9IEhBTlRS
T19IRVZDX0RFQ09ERVIsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAg
ICAgICAgICAgICAuY2ZnID0geyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAuaWQgPSBWNEwyX0NJ
RF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUCwgICAgICAgICAgICAKICAgICAgICAgICAg
ICAgICAgICAgICAgLm5hbWUgPSAiSGFudHJvIEhFVkMgc2xpY2UgaGVhZGVyIHNraXAgYnl0ZXMi
LCAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIC50eXBlID0gVjRMMl9DVFJMX1RZ
UEVfSU5URUdFUiwgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAg
ICAgICAubWluID0gMCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgLm1heCA9IDB4N2ZmZmZmZmYsICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIC5z
dGVwID0gMSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
ICAgICAgICAgICAgICAgfSwgICAgIAoKQWxzbyBzZWUgVjRMMl9DSURfQ09EQV9NQl9FUlJfQ05U
IHdoaWNoIGlzIGRlZmluZWQgaW4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9jb2RhL2NvZGEuaC4K
VGhlIGNvbnRyb2wgaXMgc3VmZmljaWVudGx5IHNwZWNpYWwgdGhhdCBpdCBjb3VsZCBiZSBrZXB0
IGluIGFuIGludGVybmFsIGRyaXZlciBoZWFkZXIuCgo+ICsjZW5kaWYKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaCBiL2luY2x1ZGUvdWFwaS9saW51eC92
NGwyLWNvbnRyb2xzLmgKPiBpbmRleCAwMzljMGQ3YWRkMWIuLmNlZDc0ODZjN2Y0NiAxMDA2NDQK
PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oCj4gKysrIGIvaW5jbHVk
ZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+IEBAIC0yMDksNiArMjA5LDExIEBAIGVudW0g
djRsMl9jb2xvcmZ4IHsKPiDCoCAqIFdlIHJlc2VydmUgMTI4IGNvbnRyb2xzIGZvciB0aGlzIGRy
aXZlci4KPiDCoCAqLwo+IMKgI2RlZmluZSBWNEwyX0NJRF9VU0VSX0NDU19CQVNFwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChWNEwyX0NJRF9VU0VSX0JBU0UgKyAweDEwZjApCj4g
Ky8qCj4gKyAqIFRoZSBiYXNlIGZvciBIQU5UUk8gZHJpdmVyIGNvbnRyb2xzLgo+ICsgKiBXZSBy
ZXNlcnZlIDMyIGNvbnRyb2xzIGZvciB0aGlzIGRyaXZlci4KPiArICovCj4gKyNkZWZpbmUgVjRM
Ml9DSURfVVNFUl9IQU5UUk9fQkFTRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoVjRMMl9D
SURfVVNFUl9CQVNFICsgMHgxMTcwKQo+IMKgCj4gwqAvKiBNUEVHLWNsYXNzIGNvbnRyb2wgSURz
ICovCj4gwqAvKiBUaGUgTVBFRyBjb250cm9scyBhcmUgYXBwbGljYWJsZSB0byBhbGwgY29kZWMg
Y29udHJvbHMKClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

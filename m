Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 195C5C072A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj/EaarLy9uYNKbK9rBREPMVJI5/Mt6yR2IsjTZoh7Q=; b=4BEJqPbsT7BHM8
	vVOsT+rNoOeEGMpEO8rWSMROJZE1EhumqnGRCtrn0EU2bJQFbgvaOlRZxf3bkRvfoI3gS3Q2Iq2es
	vvMk7fx2NUoncPYYYGPch3oA1U6Jbu+qrHDzlDqEcWMK4ijGuLyEPUVqczXwgV56PLlPkgHI0DIX/
	DMWj5mvY2DheVkg1vHyubyrBnR6apYLg7UfbegN2gk4ZF7dsbNMvK/kzPROL9NHMO3WudzqpTL5L/
	tqUYa1FjTK11N75UWnMbOsBWG6KLqTTxweOtLBTtzXJznetqzl97/e1AzoQt89cjoZKUcZRPeK84m
	+xor1ZkZlS+WksTgg44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3uV4-005yaR-1O;
	Fri, 17 Nov 2023 08:46:54 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3uV1-005yYq-2J;
	Fri, 17 Nov 2023 08:46:53 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7DCCC6607386;
	Fri, 17 Nov 2023 08:46:48 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700210809;
	bh=5caSPJBGYhsQEF1EZDAOJRHFGV6votwg14qOswGuAnM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RNfFtqCQlAxG520Rpz0DzWapTBIvMSYJVEMLa9P+3imrUbG5T6IEgTh0c7WR+yVlT
	 jMmDJwR430lCXjdUf7xwPdpZsn1DGBNoCbWAvAs6eOHLe8pAMgRNiALxUNreMKrhyO
	 lkftocCUlYCYLZxOkPExx4mBIJ4cB0T0YpeEBN/wq9tIhBhnlyEkFzmlr1trxHyssP
	 DZS7cBco4JPxjucmgukDQX/XiuTZlnN28bMPPv7X1xUf6Ds9mtE+MdkYo8/FZEezh9
	 yZtGW3RL6QQm54nLDK3b5WAQCCzAOXWKDIqcDZpxuAulhWG4P2jZTlG3LAeCYxBrnV
	 IVFyutX4/BCBw==
Message-ID: <aea36e0b-216a-44a1-ac64-ca45b0ce0f85@collabora.com>
Date: Fri, 17 Nov 2023 09:46:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 4/6] media: verisilicon: Update H1 register definitions
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
References: <20231116154816.70959-1-andrzej.p@collabora.com>
 <20231116154816.70959-5-andrzej.p@collabora.com>
 <CAGXv+5Hag=-JqYAKOgNUyFSjuwBu6ij1Rsv1cp==duGjY8w42A@mail.gmail.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <CAGXv+5Hag=-JqYAKOgNUyFSjuwBu6ij1Rsv1cp==duGjY8w42A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_004651_889543_856FD15D 
X-CRM114-Status: GOOD (  14.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpXIGRuaXUgMTcuMTEuMjAyMyBvwqAwNzo1NiwgQ2hlbi1ZdSBUc2FpIHBpc3plOgo+IE9u
IFRodSwgTm92IDE2LCAyMDIzIGF0IDExOjQ44oCvUE0gQW5kcnplaiBQaWV0cmFzaWV3aWN6Cj4g
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gQWRkIGRlZmluaXRpb24gb2Yg
cmVnaXN0ZXIgYXQgb2Zmc2V0IDB4MDBjLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmggfCA5ICsrKysrKysr
Kwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gxX3JlZ3MuaCBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gxX3JlZ3MuaAo+PiBpbmRl
eCBjMWM2NmM5MzRhMjQuLmVmYjQ2ZGEyM2VhYiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfcmVncy5oCj4+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gxX3JlZ3MuaAo+PiBAQCAtMjMsNiAr
MjMsMTUgQEAKPj4gICAjZGVmaW5lICAgICBIMV9SRUdfQVhJX0NUUkxfSU5QVVRfU1dBUDMyICAg
ICAgICAgICAgICAgQklUKDIpCj4+ICAgI2RlZmluZSAgICAgSDFfUkVHX0FYSV9DVFJMX09VVFBV
VF9TV0FQOCAgICAgICAgICAgICAgIEJJVCgxKQo+PiAgICNkZWZpbmUgICAgIEgxX1JFR19BWElf
Q1RSTF9JTlBVVF9TV0FQOCAgICAgICAgICAgICAgICAgICAgICAgIEJJVCgwKQo+PiArI2RlZmlu
ZSBIMV9SRUdfREVWSUNFX0NUUkwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDBjCj4+
ICsjZGVmaW5lICAgICBIMV9SRUdfREVWSUNFX0NUUkxfU0NBTEVfT1VUUFVUX1NXQVA4ICAgICAg
QklUKDI3KQo+PiArI2RlZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX1NDQUxFX09VVFBVVF9T
V0FQMTYgICAgIEJJVCgyNikKPj4gKyNkZWZpbmUgICAgIEgxX1JFR19ERVZJQ0VfQ1RSTF9TQ0FM
RV9PVVRQVVRfU1dBUDMyICAgICBCSVQoMjUpCj4+ICsjZGVmaW5lICAgICBIMV9SRUdfREVWSUNF
X0NUUkxfTVZfT1VUUFVUX1NXQVA4ICAgICAgICAgQklUKDI0KQo+PiArI2RlZmluZSAgICAgSDFf
UkVHX0RFVklDRV9DVFJMX01WX09VVFBVVF9TV0FQMTYgICAgICAgICAgICAgICAgQklUKDIzKQo+
PiArI2RlZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX01WX09VVFBVVF9TV0FQMzIgICAgICAg
ICAgICAgICAgQklUKDIyKQo+PiArI2RlZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX0lOUFVU
X1JFQURfMU1CICAgICAgICAgIEJJVCgyMSkKPj4gKyNkZWZpbmUgICAgIEgxX1JFR19ERVZJQ0Vf
Q1RSTF9BWElfRFVBTF9DSEFOTkVMICAgICAgICAgICAgICAgIEJJVCgyMCkKPiAKPiBBY2NvcmRp
bmcgdG8gdGhlIGkuTVg4TSBNaW5pIHJlZmVyZW5jZSBtYW51YWwsIHRoaXMgYml0IGlzIGEgImRp
c2FibGUiCj4gY29udHJvbCwgaS5lLiBzZXR0aW5nIHRoaXMgYml0IGRpc2FibGVzIGR1YWwgY2hh
bm5lbCBBWEkuIEkgdGhpbmsgdGhlCj4gbWFjcm8gc2hvdWxkIGV4cGxpY2l0bHkgc3RhdGUgdGhp
cyBpbiB0aGUgbmFtaW5nLCBzbyBzb21ldGhpbmcgbGlrZQo+IEgxX1JFR19ERVZJQ0VfQ1RSTF9E
SVNBQkxFX0FYSV9EVUFMX0NIKEFOTkVMKS4KCkdvb2QgcG9pbnQsIHRoYW5rcy4KCkFuZHJ6ZWoK
Cj4gCj4gT3RoZXIgYml0cyBtYXRjaGVzIHRoZSByZWZlcmVuY2UgbWFudWFsLgo+IAo+PiAgICNk
ZWZpbmUgSDFfUkVHX0FERFJfT1VUUFVUX1NUUkVBTSAgICAgICAgICAgICAgICAgICAgICAweDAx
NAo+PiAgICNkZWZpbmUgSDFfUkVHX0FERFJfT1VUUFVUX0NUUkwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDB4MDE4Cj4+ICAgI2RlZmluZSBIMV9SRUdfQUREUl9SRUZfTFVNQSAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDB4MDFjCj4+IC0tCj4+IDIuMjUuMQo+Pgo+Pgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gS2VybmVsIG1haWxp
bmcgbGlzdCAtLSBrZXJuZWxAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

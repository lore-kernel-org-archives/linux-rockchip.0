Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB996C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 16:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDJgpm9Bf5Z5UD/AgH0bTjDbHj5fr997oaYrTv9b7FY=; b=Q/mlkKDfmtfLxO
	eWEd0/g5FcVoT+06Wo90vR+nxRsf8aSsIWDH3/ir4YsvfWL0/iRw5aO2UAni1GrVN/s3ITZO5QV+o
	+Ysl0m2eJTm6Ws29ZdMvHal6aiVEhuXiloNZIaE9rxcBZzCtXm6WS/Bzge3n7HrepP/gNUFv/6CEB
	4eirofwLXDnWIGCQPU9GhvIEzr0tQdBqJme7aRa2h/iPeSeWVY7tN2vuxWmcR6aB4pNaQYDi17nds
	HQFg9fDgVBFBViAV2/BOAOxApIA7dcuxmYP+bTy1Snz63587KQiN42sLFrA8YcaG8Z6/lRuBipJQL
	vJLUxnvpLGwyKAybolIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwQoS-00H0uE-EP; Wed, 01 Jun 2022 16:03:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwQoF-00H0r2-NT; Wed, 01 Jun 2022 16:03:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id 2B4D71F4104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654099375;
	bh=QstXEK7vK9peaXuxwekF4t4rKyDGtTDzVurNPkvZNRU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bdRflAAGzQHFImM59JNtJ14nwKlXDWazj5QOV2ETaiLTpb2k/9J8u3r9Q5bGn8Qdw
	 FC4bX0OMU0Y6K5p4xrIjBMciBTuirqvcXSNPkQx/lKv9+lVnim8QB4OUl9/E0/glqi
	 64l71Rs9K5i+dVo8LibUxoP0iwXOYpuooJ1hpeXLtWvw3R/PYHL7keG0PZvOWka0BS
	 j+BkhVmKdBGpV07VDbzUzsflGoJZ1vgTOM0EFHWKSbp5NXogW58iSE4+ZcMIglwIX9
	 PfH0zADgzTol8Agsap2/mYLdR3/YjcSPDAjolLhoN0r6520Yt1CUp44gr0+Xt0kC4Q
	 rLucgpnxOH9sA==
Message-ID: <aa6eaada-ad4e-9d47-62e8-2a709e5f190f@collabora.com>
Date: Wed, 1 Jun 2022 18:02:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v6 09/17] media: uapi: HEVC: Define
 V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Content-Language: en-US
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org,
 nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
 <20220527143134.3360174-10-benjamin.gaignard@collabora.com>
 <2630478.mvXUDI8C0e@kista> <8069971.T7Z3S40VBb@kista>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <8069971.T7Z3S40VBb@kista>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_090300_072651_2FA724D2 
X-CRM114-Status: GOOD (  18.59  )
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

CkxlIDAxLzA2LzIwMjIgw6AgMTc6NDMsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IERu
ZSBuZWRlbGphLCAyOS4gbWFqIDIwMjIgb2IgMTE6MTk6MTIgQ0VTVCBqZSBKZXJuZWogxaBrcmFi
ZWMgbmFwaXNhbChhKToKPj4gRG5lIHBldGVrLCAyNy4gbWFqIDIwMjIgb2IgMTY6MzE6MjYgQ0VT
VCBqZSBCZW5qYW1pbiBHYWlnbmFyZCBuYXBpc2FsKGEpOgo+Pj4gTWFrZSBleHBsaWNpdCB0aGF0
IFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX1NMSUNFX1BBUkFNUyBjb250cm9sIGlzCj4+PiBhIGR5
bmFtaWMgYXJyYXkgY29udHJvbCB0eXBlLgo+Pj4gU29tZSBkcml2ZXJzIG1heSBiZSBhYmxlIHRv
IHJlY2VpdmUgbXVsdGlwbGUgc2xpY2VzIGluIG9uZSBjb250cm9sCj4+PiB0byBpbXByb3ZlIGRl
Y29kaW5nIHBlcmZvcm1hbmNlLgo+Pj4KPj4+IERlZmluZSB0aGUgbWF4IHNpemUgb2YgdGhlIGR5
bmFtaWMgdGhhdCBjYW4gZHJpdmVyIGNhbiBzZXQgaW4gLmRpbXMgPSB7fS4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3Jh
LmNvbT4KPj4+IC0tLQo+Pj4gdmVyc2lvbiA2Ogo+Pj4gLSBTZXQgVjRMMl9DVFJMX0ZMQUdfRFlO
QU1JQ19BUlJBWSBmbGFnIGF1dG9tYXRpY2FsbHkgd2hlbiB1c2luZwo+Pj4gICAgVjRMMl9DSURf
U1RBVEVMRVNTX0hFVkNfU0xJQ0VfUEFSQU1TIGNvbnRyb2wuCj4+PiAtIEFkZCBhIGRlZmluZSBm
b3IgbWF4IHNsaWNlcyBjb3VudAo+Pj4KPj4+ICAgRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0IHwgMiArKwo+Pj4gICBkcml2ZXJzL21lZGlh
L3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMuYyAgICAgICAgICAgICAgICAgfCAxICsKPj4+ICAg
aW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgNSArKysrKwo+Pj4gICAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1j
dHJscy1jb2RlYy5yc3QgYi8KPj4gRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0
bC9leHQtY3RybHMtY29kZWMucnN0Cj4+PiBpbmRleCAwNmI5NjdkZTE0MGMuLjA3OTZiMTU2M2Rh
YSAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwv
ZXh0LWN0cmxzLWNvZGVjLnJzdAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+PiBAQCAtMjk4Niw2ICsyOTg2LDggQEAg
ZW51bSB2NGwyX21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4+PiAgICAg
ICBUaGVzZSBiaXRzdHJlYW0gcGFyYW1ldGVycyBhcmUgZGVmaW5lZCBhY2NvcmRpbmcgdG8gOnJl
ZjpgaGV2Y2AuCj4+PiAgICAgICBUaGV5IGFyZSBkZXNjcmliZWQgaW4gc2VjdGlvbiA3LjQuNyAi
R2VuZXJhbCBzbGljZSBzZWdtZW50IGhlYWRlcgo+Pj4gICAgICAgc2VtYW50aWNzIiBvZiB0aGUg
c3BlY2lmaWNhdGlvbi4KPj4+ICsgICAgVGhpcyBjb250cm9sIGlzIGEgZHluYW1pY2FsbHkgc2l6
ZWQgMS1kaW1lbnNpb25hbCBhcnJheSwKPj4+ICsgICAgVjRMMl9DVFJMX0ZMQUdfRFlOQU1JQ19B
UlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4+PiAgIAo+Pj4gICAuLiBjOnR5
cGU6OiB2NGwyX2N0cmxfaGV2Y19zbGljZV9wYXJhbXMKPj4+ICAgCj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1kZWZzLmMgYi9kcml2ZXJzL21lZGlh
Lwo+IHY0bDItCj4+IGNvcmUvdjRsMi1jdHJscy1kZWZzLmMKPj4+IGluZGV4IDlmNTU1MDNjZDNk
Ni4uZDU5NGVmYmNiYjkzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUv
djRsMi1jdHJscy1kZWZzLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDIt
Y3RybHMtZGVmcy5jCj4+PiBAQCAtMTUxMCw2ICsxNTEwLDcgQEAgdm9pZCB2NGwyX2N0cmxfZmls
bCh1MzIgaWQsIGNvbnN0IGNoYXIgKipuYW1lLCBlbnVtCj4+IHY0bDJfY3RybF90eXBlICp0eXBl
LAo+Pj4gICAJCWJyZWFrOwo+Pj4gICAJY2FzZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElD
RV9QQVJBTVM6Cj4+PiAgIAkJKnR5cGUgPSBWNEwyX0NUUkxfVFlQRV9IRVZDX1NMSUNFX1BBUkFN
UzsKPj4+ICsJCSpmbGFncyB8PSBWNEwyX0NUUkxfRkxBR19EWU5BTUlDX0FSUkFZOwo+PiBUaGlz
IGNoYW5nZSBicmVha3MgQ2VkcnVzLiBJJ2xsIGNoZWNrIHdoYXQgbmVlZHMgdG8gYmUgY2hhbmdl
ZC4KPiBQbGVhc2UgaW5jbHVkZSB0aGUgY2hhbmdlIGJlbGxvdyB0byBrZWVwIENlZHJ1cyB3b3Jr
aW5nLiBJJ2xsIGV4cGFuZCBzdXBwb3J0Cj4gZm9yIG1vcmUgc2xpY2VzIGxhdGVyLgoKVGhhdCB3
aWxsIGJlIGluIHZlcnNpb24gNy4gVGhhbmtzLgpJIHdpbGwgd2FpdCBmb3IgbW9yZSByZXZpZXdz
IG9uIHRoZSBvdGhlcnMgcGF0Y2hlcyBiZWZvcmUgc2VuZCBpdC4KClJlZ2FyZHMsCkJlbmphbWlu
Cgo+Cj4gICBCZXN0IHJlZ2FyZHMsCj4gICBKZXJuZWoKPgo+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5jCj4gQEAgLTE3OCw2ICsxNzgsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGNlZHJ1c19jb250cm9sIGNlZHJ1c19jb250cm9sc1tdID0gewo+ICAgICAgICAg
IHsKPiAgICAgICAgICAgICAgICAgIC5jZmcgPSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
IC5pZCAgICAgPSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJBTVMsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgLmRpbXMgICA9IHsgMSB9LAo+ICAgICAgICAgICAgICAgICAgfSwK
PiAgICAgICAgICAgICAgICAgIC5jb2RlYyAgICAgICAgICA9IENFRFJVU19DT0RFQ19IMjY1LAo+
ICAgICAgICAgIH0sCj4gICAKPj4+ICAgCQlicmVhazsKPj4+ICAgCWNhc2UgVjRMMl9DSURfU1RB
VEVMRVNTX0hFVkNfU0NBTElOR19NQVRSSVg6Cj4+PiAgIAkJKnR5cGUgPSBWNEwyX0NUUkxfVFlQ
RV9IRVZDX1NDQUxJTkdfTUFUUklYOwo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2
Yy1jdHJscy5oIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPj4+IGluZGV4IDBkYmQ1ZDY4
MWMyOC4uMTQwMTUxNjA5Yzk2IDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0
cmxzLmgKPj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+PiBAQCAtMzExLDkg
KzMxMSwxNCBAQCBzdHJ1Y3QgdjRsMl9oZXZjX3ByZWRfd2VpZ2h0X3RhYmxlIHsKPj4+ICAgI2Rl
ZmluZQo+IFY0TDJfSEVWQ19TTElDRV9QQVJBTVNfRkxBR19TTElDRV9MT09QX0ZJTFRFUl9BQ1JP
U1NfU0xJQ0VTX0VOQUJMRUQKPj4gKDFVTEwgPDwgOCkKPj4+ICAgI2RlZmluZSBWNEwyX0hFVkNf
U0xJQ0VfUEFSQU1TX0ZMQUdfREVQRU5ERU5UX1NMSUNFX1NFR01FTlQJKDFVTEwgPDwKPj4gOSkK
Pj4+ICAgCj4+PiArI2RlZmluZSBWNEwyX0hFVkNfU0xJQ0VfTUFYX0NPVU5UCTYwMAo+Pj4gKwo+
Pj4gICAvKioKPj4+ICAgICogdjRsMl9jdHJsX2hldmNfc2xpY2VfcGFyYW1zIC0gSEVWQyBzbGlj
ZSBwYXJhbWV0ZXJzCj4+PiAgICAqCj4+PiArICogVGhpcyBjb250cm9sIGlzIGEgZHluYW1pY2Fs
bHkgc2l6ZWQgMS1kaW1lbnNpb25hbCBhcnJheSwKPj4+ICsgKiBWNEwyX0NUUkxfRkxBR19EWU5B
TUlDX0FSUkFZIGZsYWcgbXVzdCBiZSBzZXQgd2hlbiB1c2luZyBpdC4KPj4+ICsgKgo+Pj4gICAg
KiBAYml0X3NpemU6IHNpemUgKGluIGJpdHMpIG9mIHRoZSBjdXJyZW50IHNsaWNlIGRhdGEKPj4+
ICAgICogQGRhdGFfYml0X29mZnNldDogb2Zmc2V0IChpbiBiaXRzKSB0byB0aGUgdmlkZW8gZGF0
YSBpbiB0aGUgY3VycmVudAo+IHNsaWNlCj4+IGRhdGEKPj4+ICAgICogQG5hbF91bml0X3R5cGU6
IHNwZWNpZmllcyB0aGUgY29kaW5nIHR5cGUgb2YgdGhlIHNsaWNlIChCLCBQIG9yIEkpCj4+PiAt
LSAKPj4+IDIuMzIuMAo+Pj4KPj4+Cj4+Cj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

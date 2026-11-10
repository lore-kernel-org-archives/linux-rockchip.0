Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C46F606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 02:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yucKxg0I;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=G2mrV4dP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wbtlfwNXkmPDt0W4XaNpSHWA0ZHpT8iIF8Gyfx9a8i8=; b=yucKxg0IJ4OYKC0uIh0Oq4I89C
	YDSyvzJAHnBbOKTrB+mN0MifWt9DFD0ruxo5YlCzkglryJH3tHI/jhM8oCh8NVqLhB6LOhb+8D9A8
	2o4WJlGYG2PPA2w74XHQNpeNtoX10ZezwNM3wZS85CcS1C/HIduEiT1hYUCUj5VPpBZJH5dHN11iA
	HUm0I+G5cYEq8O0P28pUiIKQEO2ClzKJxRr2OIUmpzctl3vjcDgQV7m2pF7aYX0LSsEbfZ7+FUbVH
	V7n38CjBjMaJq8KmEn/wYrSjd/T6WG54iJ6cGjktSKHWFqhXNbnszMT9EwEfshKE7gHEGArsJCQnm
	3Kaks9AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQbI2-000000028Ay-3TDM;
	Tue, 10 Nov 2026 02:08:50 +0000
Received: from mail-m1013.netease.com ([154.81.10.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQbHy-0000000289e-2ARe;
	Tue, 10 Nov 2026 02:08:49 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54157f5aa;
	Tue, 10 Nov 2026 10:08:36 +0800 (GMT+08:00)
Message-ID: <38fdf732-ffa1-45d4-a436-08d542ed2528@rock-chips.com>
Date: Tue, 10 Nov 2026 10:08:32 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Add DSI panel to RK3588 EVB1
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
 <avDN3pPY5Qwt9B1p@venus>
 <b60b7079-b7b6-4d83-8167-2e4fc6021aae@rock-chips.com>
 <5573124.44csPzL39Z@diego> <avIEPncVnojQBqpX@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <avIEPncVnojQBqpX@venus>
X-HM-Tid: 0aa1c336e29503a7kunm8423815768d9d5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTUJNVh5LHx0fGElJS0pCSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=G2mrV4dPhT6SK9ihMPCZt3ZO8snXTozKw2nqL0KEWGC2zddBvJ6jGFGTlBWaeC4v4sNv+DGIOnQilbo5xBHitNVv458i2OLeD7v19yFAjUViMd8hdkAa8dKChvg5wbPQ8tam9+EBf3gI8zeK4zSjx5CzBalS4O7YWjVm8dvMnaY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=GKIy7W9V1DOhRGum57t2Y4YFkP9DEDYp7ywnEyxOco0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_180847_122118_E6759E68 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMTAvMjAyNiAxOjUxIEFNLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwKPiAK
PiBPbiBNb24sIE5vdiAwOSwgMjAyNiBhdCAwMjoyNjo0NFBNICswMTAwLCBIZWlrbyBTdMO8Ym5l
ciB3cm90ZToKPj4gQW0gTW9udGFnLCA5LiBOb3ZlbWJlciAyMDI2LCAwMjozMTozNSBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+Pj4gSGkgU2ViYXN0
aWFuLAo+Pj4gT24gMTEvOS8yMDI2IDM6NDIgQU0sIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+
Pj4+IEhlbGxvIENoYW95aSwKPj4+Pgo+Pj4+IE9uIFN1biwgTm92IDA4LCAyMDI2IGF0IDExOjE1
OjA5QU0gKzA4MDAsIENoYW95aSBDaGVuIHdyb3RlOgo+Pj4+PiBIaSBTZWJhc3RpYW4sCj4+Pj4+
Cj4+Pj4+IE9uIDExLzcvMjAyNiA1OjU3IEFNLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPj4+
Pj4+IFRoZSBSSzM1ODggRVZCMSBjb21lcyB3aXRoIGEgVzU1Mjc5M0RCQS1WMTAgVG91Y2hzY3Jl
ZW4vRGlzcGxheQo+Pj4+Pj4gY29tYmluYXRpb24uIEl0IGNvbnRhaW5zIGEgV2FuY2hhbmdsb25n
IFc1NTI3OTNCQUEgcGFuZWwgYW5kIGEKPj4+Pj4+IEdvb2RpeCBHVDExNTggdG91Y2hzY3JlZW4u
IFRoaXMgYWRkcyB0aGUgRFQgZGVzY3JpcHRpb24gb2YgaXQuCj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPj4+
Pj4+IC0tLQo+Pj4+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEt
djEwLmR0cyB8IDkwICsrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCA5MCBpbnNlcnRpb25zKCspCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cwo+Pj4+Pj4gaW5kZXggNmE5NWE4YmI2
ZmI4Li4zMjdjYTEzYjYwZjAgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMKPj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cwo+Pj4+Pj4gQEAgLTIwNCw2ICsyMDQs
MTUgQEAgdmNjMTJ2X2RjaW46IHJlZ3VsYXRvci12Y2MxMnYtZGNpbiB7Cj4+Pj4+PiAgCQlyZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4+Pj4+PiAgCX07Cj4+Pj4+PiAgCj4+
Pj4+Cj4+Pj4+IEkgc2VlbSB1bmFibGUgdG8gYXBwbHkgdGhlIHBhdGNoIHRvIHRoZSBsYXRlc3Qg
bGludXgtbmV4dCB0cmVlLgo+Pj4+Pgo+Pj4+PiBTbyBJIHRyaWVkIHRvIHJlc29sdmUgdGhlIGNv
bmZsaWN0IG1hbnVhbGx5LCBidXQgdGhlIGFjdHVhbAo+Pj4+PiB0ZXN0IHNjcmVlbiBkaWQgbm90
IGRpc3BsYXkuIEkgd2lsbCBsb29rIGludG8gdGhpcyBmdXJ0aGVyLgo+Pj4+Cj4+Pj4gU3RyYW5n
ZS4gVGhlIGJhc2Ugb2YgdGhpcyBzZXJpZXMgd2FzIEhlaWtvJ3MgZm9yLW5leHQgdHJlZSBmcm9t
Cj4+Pj4gRnJpZGF5LiBObyBSSzM1ODggRVZCMSBwYXRjaGVzIGxhbmRlZCBzaW5jZSB0aGVuOgo+
Pj4+Cj4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
bW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dCZpZD1jYWJiNjgxMWMz
OGE0NjMzN2Q1ZjQyNTJiNGRjMzkwZjkyOTY4NTZjCj4+Pj4KPj4+PiBJZiB5b3VyIGJvYXJkIHVz
ZXMgdGhlIG9yaWdpbmFsIFJvY2tjaGlwIGJvb3Rsb2FkZXIsIHdoaWNoIHNob3dzIGEKPj4+PiBS
b2NrY2hpcCBsb2dvIG9uIHRoZSBwYW5lbCwgeW91IGFsc28gbmVlZCBDcmlzdGlhbidzIGxhdGVz
dCBZVVY0MjAKPj4+PiBwYXRjaGVzIHRoYXQgcmVzZXQgVk9QMiBhdCBwcm9iZSB0aW1lIGF2b2lk
aW5nIHNvbWUgaXNzdWVzIHdpdGggdGhlCj4+Pj4gcHJlLWluaXRpYWxpemVkIHBhbmVsIGFzIGEg
c2lkZSBlZmZlY3QuIFRob3NlIHdlcmUgcmVjZW50bHkgYXBwbGllZAo+Pj4+IGJ5IEhlaWtvIHRv
IHRoZSBEUk0gdHJlZSwgc28gdGVzdGluZyBvbiBsaW51eC1uZXh0IGlzIGluZGVlZAo+Pj4+IHNl
bnNpYmxlLgo+Pj4+Cj4+Pgo+Pj4gSG1tLCB0aGUgbmV3ZXN0IGxpbnV4LW5leHQgdGFnIHdoaWNo
IEkgdXNlZCBpcyBuZXh0LTIwMjYxMTA1LCBhbmQgSGVpa28ncyAKPj4+IHRyZWUgbGFzdCB1cGRh
dGVkIGRhdGUgaXMxMTA2LiBJJ2xsIGdpdmUgaXQgYSB0cnkgb24gSGVpa28ncyB0cmVlLgo+Pj4K
Pj4+IEFuZCBJJ20gdXNpbmcgbWFpbmxpbmUgVS1Cb290LCB3aGljaCBvYnRhaW5lZCBmcm9tIHRo
ZSBsYXRlc3QgbmlnaHRseSBidWlsZDoKPj4+IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20v
aGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2RlYmlhbi1pbWFnZS1yZWNpcGVzLgo+
Pj4KPj4+IFRoZSBiYWNrbGlnaHQgd29ya2luZyBjb3JyZWN0bHksIGFuZCB0aGUgRENTIGNvbW1h
bmQgaGFzIGJlZW4gc2VudCwgYnV0IG5vdGhpbmcgZGlzcGxheS4KPj4+IFBlcmhhcHMgSSBzaG91
bGQgbG9vayBlbHNld2hlcmUuCj4+Cj4+IEkgd291bGQgYXNzdW1lIGl0IGNvdWxkIGJlIHRoZSBT
UExMIChhZ2FpbikuCj4+Cj4+IEkuZS4gYSByZWNlbnQgdS1ib290IGNoYW5nZSBicm9rZSB0aGUg
U1BMLWJhc2VkIGZvcmNlZCBjbG9jayBpbml0IGFuZCBKb25hcwo+PiBmaXhlZCB0aGF0IGluIFsw
XS4gSGFkIHRoZSBibGFjayBkaXNwbGF5IGFnYWluIHJlY2VudGx5IHRvby4KPj4KPj4gQW5kIGl0
IHNlZW1zIGl0IGhhc24ndCBiZWVuIG1lcmdlZCB5ZXQuCj4gCj4gU291bmRzIHJlYXNvbmFibGUu
IEZXSVcgSSBvbmx5IHRlc3RlZCB3aXRoIHRoZSBwcmUtZmxhc2hlZCBSb2NrY2hpcAo+IFUtQm9v
dCAoYXMgZGVzY3JpYmVkIGFib3ZlKS4gSSBpbnRlbnRpb25hbGx5IGtlZXAgdGhhdCBvbiBteSBS
SzM1ODgKPiBFVkIxLCBzbyB0aGF0IEkgY2FuIHRlc3QgUkszNTg4IHdpdGggdmVuZG9yIFRGLUEv
VS1Cb290IGFuZCB1cHN0cmVhbQo+IG9yIGRvd25zdHJlYW0ga2VybmVsLiBBbGwgbXkgb3RoZXIg
Ym9hcmRzIHJ1biB1cHN0cmVhbSBURi1BL1UtQm9vdC4KPiAKClRoYXQncyByaWdodC4gSXQgbG9v
a3MgbGlrZSB3ZSd2ZSB0cmlwcGVkIHVwIG9uIFNQTEwgYWdhaW4uIDopCgpUaGUgdXBzdHJlYW0g
VEYtQS9VLUJvb3Qgd2l0aCB0aGF0IHBhdGNoIG1ha2VzIHRoZSBwYW5lbCB3b3JrLiBCdXQgdGhl
cmUKaXMgc2xpZ2h0IGppdHRlciBpbiB0aGUgZGlzcGxheWVkIGNvbnRlbnQuLiBJJ2xsIGxvb2sg
aW50byB0aGlzIGZ1cnRoZXIuCgpUZXN0ZWQtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

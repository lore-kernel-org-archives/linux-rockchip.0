Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06868E7719E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+OgldWEg+JZIQnoYhQGimpPUqt2Kpir5ro78QQOsRc=; b=D6G4NNhsTuO32e
	8Ss6gWHq8UhqV5IJNDlskyKH9t7gl8Kw0pnZNIMjdum4CdXJE/Aybjr8bHI/MnrIUkKQ3sDOxGF7/
	DJcEkj6MPU7tsXO2O/MlNsN4r2ONUTzNWlKvkoLuCiiyqQt7HDHg9d1nukIFAdPTeiluovdBGfq0Q
	obg11fNgqVHU154BHeoCImYuu7Kb9nvhIWuKwrc8dKxHKDhNdQjSkdGk3bg+rScIEOQ/DlSDpMLii
	wfmEub9DnrqprcCqLTl9GvcrvVkVt5T/eBs68FKhEiDggu5BERMe/MsTbCPtyBfs44eC5R/Uazlkt
	DC8Hxp6O8WyGqJItPBeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFgD-00000004Mqh-3f95;
	Mon, 13 Jan 2025 08:20:13 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFeS-00000004MP4-2XVh;
	Mon, 13 Jan 2025 08:18:26 +0000
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 64ADF7817F;
	Mon, 13 Jan 2025 16:18:11 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 64ADF7817F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736756295;
	bh=V24IXTryrVGcjHqIUfjWLveVF6uP2q3j+D/mtRq378w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rA7lYVdN5Hh4AQKwBodrNJQFyoyXZDDh39M71ZklGOPkNl5vNeT8Q2z80o9bmR5JX
	 POPCVNKc6wHyZtidh/DeBLZ8pCxdF9Df2y1gHBZtNdJt004mxNZIicRHudtObTW9CQ
	 9pnnpwOHdf5LwHULUluFc30RgYlOd8QBZ8NsAfeg=
Message-ID: <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
Date: Mon, 13 Jan 2025 16:18:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Dragan Simic <dsimic@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
 <7b55c7469774c41d9896df3100df1630@manjaro.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <7b55c7469774c41d9896df3100df1630@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_001825_094882_B98DC471 
X-CRM114-Status: GOOD (  15.24  )
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

T24gMjAyNS8xLzEzIDEyOjI1LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gSnVuaGFvLAo+
IAo+IE9uIDIwMjUtMDEtMTIgMjM6MTYsIEp1bmhhbyBYaWUgd3JvdGU6Cj4+IE9uIDIwMjUvMS8x
MiAxNjo0NywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gT24gMjAyNS0wMS0xMiAwODozMywgSnVu
aGFvIFhpZSB3cm90ZToKPj4+PiBBZGQgZHRzIGZvciBBcmlhYm9hcmQgUGhvdG9uaWNhdCBSSzM1
NjguCj4+Pj4KPj4+PiBXb3JraW5nIElPOgo+Pj4+IMKgwqDCoCBEZWJ1ZyBVQVJUCj4+Pj4gwqDC
oMKgIFNESU8gUUNBOTM3NyBXaUZpIGFuZCBCbHVldG9vdGgKPj4+PiDCoMKgwqAgTS4yIEUtS2V5
IFBDSWUgV2lGaSBhbmQgQmx1ZXRvb3RoCj4+Pj4gwqDCoMKgIE0uMiBCLUtleSBVU0IgTW9kZW0g
V1dBTgo+Pj4+IMKgwqDCoCBFdGhlcm5ldCBXQU4gUG9ydAo+Pj4+IMKgwqDCoCBNaWNyb1NEIENh
cmQgc2xvdAo+Pj4+IMKgwqDCoCBlTU1DCj4+Pj4gwqDCoMKgIEhETUkgT3V0cHV0Cj4+Pj4gwqDC
oMKgIE1hbGkgR1BVCj4+Pj4gwqDCoMKgIFVTQiBUeXBlLUEKPj4+Pgo+Pj4+IE5vdCB3b3JraW5n
IElPOgo+Pj4+IMKgwqDCoCBFdGhlcm5ldCBMQU4gUG9ydCAoTGFjayBvZiBTR01JSSBzdXBwb3J0
KQo+Pj4+IMKgwqDCoCBQb3dlciBtYW5hZ2VtZW50IE1DVSBvbiBVQVJUNCAoRHJpdmVyIHBlbmRp
bmcpCj4+Pj4KPj4+PiBOb3Qgd29ya2luZyBJTyBpbiBNQ1U6Cj4+Pj4gwqDCoMKgIEJhdHRlcnkg
dm9sdGFnZSBzZW5zb3IKPj4+PiDCoMKgwqAgQm9hcmQgdGVtcGVyYXR1cmUgc2Vuc29yCj4+Pj4g
wqDCoMKgIEhhcmR3YXJlIFBvd2VyLW9mZgo+Pj4+IMKgwqDCoCBIYXJkd2FyZSBXYXRjaGRvZwo+
Pj4+IMKgwqDCoCBOZXR3b3JrIHN0YXR1cyBMRUQKPj4+PiDCoMKgwqAgUmVhbC10aW1lIGNsb2Nr
Cj4+Pj4gwqDCoMKgIFVTQiBDaGFyZ2VyIHZvbHRhZ2Ugc2Vuc29yCj4+Pj4KPj4+PiBBYm91dCBv
bmJvYXJkIHBvd2VyIG1hbmFnZW1lbnQgTUNVOgo+Pj4+IMKgwqDCoCBBIGhlYXJ0YmVhdCBtdXN0
IGJlIHNlbnQgdG8gdGhlIE1DVSB3aXRoaW4gNjAgc2Vjb25kcywKPj4+PiDCoMKgwqAgb3RoZXJ3
aXNlIHRoZSBNQ1Ugd2lsbCByZXN0YXJ0IHRoZSBzeXN0ZW0uCj4+Pj4gwqDCoMKgIFdoZW4gcG93
ZXJpbmcgb2ZmLCBhIHNodXRkb3duIGNvbW1hbmQgbmVlZHMgdG8gYmUgc2VudCB0byB0aGUgTUNV
Lgo+Pj4+IMKgwqDCoCBXaGVuIHRoZSBwb3dlciBidXR0b24gaXMgbG9uZyBwcmVzc2VkLCB0aGUg
TUNVIHdpbGwgc2VuZCBhIHNodXRkb3duCj4+Pj4gwqDCoMKgIGNvbW1hbmQgdG8gdGhlIHN5c3Rl
bS4gSWYgc3lzdGVtIGRvZXMgbm90IHNodXRkb3duIHdpdGhpbiA2MCBzZWNvbmRzLAo+Pj4+IMKg
wqDCoCB0aGUgcG93ZXIgd2lsbCBiZSB0dXJuZWQgb2ZmIGRpcmVjdGx5Lgo+Pj4+IMKgwqDCoCBN
Q1Ugb25seSBwcm92aWRlcyB2b2x0YWdlIGZvciBjaGFyZ2VyIGFuZCBiYXR0ZXJ5Lgo+Pj4+IMKg
wqDCoCBNYW51ZmFjdHVyZXIgcmVtb3ZlZCBSSzh4eCBQTUlDLgo+Pj4KPj4+IFVubGVzcyB0aGUg
ZGVzaWduIG9mIHRoZSBib2FyZCBpcyBwcm9wcmlldGFyeSwgaXQgd291bGQgYmUgZ29vZAo+Pj4g
dG8gcHJvdmlkZSBhIGxpbmsgdG8gdGhlIGJvYXJkIHNjaGVtYXRpYywgZm9yIHRob3NlIGludGVy
ZXN0ZWQKPj4+IGluIHZlcmlmeWluZyB0aGUgYm9hcmQgRFQgZmlsZS4KPj4+Cj4+PiBBcyBhIG5v
dGUsIEkgYWxyZWFkeSB0cmllZCB0byBmaW5kIHRoZSBib2FyZCBzY2hlbWF0aWMgd2l0aCBubwo+
Pj4gc3VjY2Vzcywgc28gdGhlIGRlc2lnbiBtaWdodCBiZSBwcm9wcmlldGFyeS4KPj4KPj4gWWVz
LCB0aGlzIGJvYXJkIGlzIHByb3ByaWV0YXJ5LiBJIGFza2VkIHRoZSBtYW51ZmFjdHVyZXIgYW5k
Cj4+IHRoZXkgZG9uJ3QgcHJvdmlkZSBzY2hlbWF0aWNzLgo+Pgo+PiBCdXQgSSBmb3VuZCBhIHBh
cnRpYWwgc2NoZW1hdGljIGRpYWdyYW0gb2Ygc29tZSBvZiBjb25uZWN0b3JzCj4+IG9uIHRoZSBi
b2FyZCBoZXJlCj4+IGh0dHBzOi8vZGwuYXJpYWJvYXJkLmNvbS9waG90b25pY2F0X3JrMzU2OC9Q
aG90b25pY2F0JTIwcmszNTY4JTIwRVZCJTIwQm9hcmQlMjBzcGVjLnBkZgo+IAo+IFllcywgSSBh
bHNvIGZvdW5kIHRoYXQgUERGIGZpbGUuwqAgSXQncyBzb21ld2hhdCBzaW1pbGFyIHRvIHdoYXQK
PiBSYXNwYmVycnkgUGkgcHJvdmlkZXMgd2l0aCBpdHMgcmVkdWNlZCBzY2hlbWF0aWNzIC0tIGhl
bHBmdWwgdG8KPiBhbiBleHRlbnQsIGJ1dCBzdGlsbCBsZWF2aW5nIGEgbG90IHRvIGJlIGRlc2ly
ZWQuCj4gCj4gT3V0IG9mIGN1cmlvc2l0eSwgd2hhdCBkaWQgeW91IGFjdHVhbGx5IHVzZSBhcyBh
IHJlZmVyZW5jZSB0byBjcmVhdGUKPiB0aGUgYm9hcmQgZHRzIGZpbGU/wqAgUGVyaGFwcyBzb21l
IGRvd25zdHJlYW0gZHRzIGZpbGUgcHJvdmlkZWQgYnkKPiB0aGUgbWFudWZhY3R1cmVyIG9yIGZv
dW5kIGluIHNvbWUgb3BlcmF0aW5nIHN5c3RlbSBpbWFnZT8KCkkgd3JvdGUgdGhpcyBkZXZpY2Ug
dHJlZSBiYXNlZCBvbiBvdGhlciByazM1NjggZGV2aWNlcyBpbiBtYWlubGluZSwgYW5kIGRvd25z
dHJlYW0gYm9hcmQgZHRzOgpodHRwczovL2dpdGh1Yi5jb20vcGhvdG9uaWNhdC9yb2NrY2hpcF9y
azM1Njhfa2VybmVsL2Jsb2Ivbm92b3RlY2gtNS4xMC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1waG90b25pY2F0LWJhc2UuZHRzaQoKQmVzdCByZWdhcmRzLApKdW5oYW8KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA95AE7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HL+rg9zX8qW3BwxTXXIOkyNU1r2og/tHP2FUSkprNI=; b=sgwjJQyMeWo7wJ
	OcHqGvbpaO09wgHX5YeYtDpY7TI2y/Lbc0bTgiwwgPBFvdDeU7iHOPUC8D4tqwOy2xQGb9bfY3/Fp
	MDdrjUMJTiOb+cYYm32+iraElCV+l2rMJN5fEALtbumWZJlSRT7ZwLjEtbUYfWASyt7XYVCPjnWI4
	TfE6vLb/F+jHkZLaaNAHtfy+0nwcxtHoRPvbSEOCZrC5++/C25HqBMDs4v1lTx7bcHYvPKUhp9UU0
	0OqgseKXTYbkZ9BAl5DTTsQGtLz9qAgHQLXwoDx19OoSWIm3KxLegK6rrNHn9ODfIgHaGKZ2n2v99
	gdWmGWbxkyYPHpzCGYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGko-0000000E0XX-2cjy;
	Wed, 11 Dec 2024 07:03:26 +0000
Received: from [18.169.211.239] (helo=smtpbg151.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGki-0000000E0UX-0DWt
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 07:03:24 +0000
X-QQ-mid: bizesmtpip4t1733900548trh11jr
X-QQ-Originating-IP: 47EKH+0Yq9shoVzZtADBwSuTSEChfvGL1X839OC80n8=
Received: from [IPV6:240f:10b:7440:1:b238:648b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 11 Dec 2024 15:02:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9423853600473397212
Message-ID: <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
Date: Wed, 11 Dec 2024 16:02:24 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
From: FUKAUMI Naoki <naoki@radxa.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Content-Language: en-US
In-Reply-To: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MY3/p6yUwwyTKhWeGHrQApRFi6b1sZeNU4/mRIoiCvW+M0/MCReusRiE
	nKNdEvkdEWg/xqKZ7Tb2GxpO27aDZD4W/TOJTMYG5jTlxpL1S/lUBzUc+7wB8je9oV45cbL
	7YqlV9/tWSrWirg6Ze4rZw8vkMW3KRkUb9TWI1n6QXH22q1oTVwymucn2U3esyd8is6miTP
	AvJ7UjPfp46SeAZtEDw43TMIehlj6+qSswEU7lV01zUmNsGqWmw0JZ549wfY8vjR2VnEdJ/
	rCmq3cOE3VmHTLgQCbS/+FPLYvfJ2RNb9A0sqo+xGwIGDuhhlHXKDcPLYRccxnA0ypOVWdB
	Vy6fSMk2VATxabGbJAfhKVrsjP4f0nPpCUiKCNAsWciybSVk9qKRD5bwdmmr1IJyrzyVNES
	KVLvipPDmFwL3xR1epg9HAUrRNyb45CKgUnj/+WwMZQEZYJe9jzy+s6uNdd+9bvKbap2+eH
	IEhCPVzZ8BapEFT7FmvnTfLj63klXjiU7o0jl34kGL6jrueVjeEy+pT+hk8RtR6CQqbCVwz
	6N1RmEQ7xjjxOx+JwB3Q1dQmo+zbg5FZcce/ScI2v4XZLEQi/Nv459AQOpfkXt/OKbGgGr9
	cRW6stWaGX5sNzMEwH9b9ILzlO7CzDHMVJjI/ywP7YnZP67ZdJuFd2euAL4Q56ss2XIDCOr
	a1EEVo/amLfodI8HlXTFXOZfoq4Z08oW+ke7k0ara+vl/I3I3ZTR/ANN3yUZ9wXeaTkpEk2
	ElWxyUmoyAlbFvFOMAkZ1e5eqysOlQ1Mx8ds/b3UE/NztaOaxgyNWIi8t5n613PK/K3gdIF
	gMFbZQwwSMf7GxP45hD11l2m5dCEcqnqvjV+2tnCowLDqz6D9bkXftjQ35+CQJYjNOXHWOE
	wclLEIuza4U6enE2VRKTryYk6QrfTjydNT6LCILTJ1TkexeoCjDEBI4N+EN/tAG/PEYx3c9
	XPs7pLJkWE//2u3NmLUeZDiONlRxpxHQzQ/TSjIev+sgUoA==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_230320_594014_2CFFA881 
X-CRM114-Status: GOOD (  14.25  )
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

anVzdCBGWUksCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8/cT1lNTJj
CgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgpP
biAxMi8xMS8yNCAxNTo0NCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBEcmFnYW4sCj4gCj4g
T24gMTIvMTEvMjQgMTU6MzYsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gSGVsbG8gRnVrYXVtaSwK
Pj4KPj4gT24gMjAyNC0xMi0xMSAwNzowOSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+IFRoZSBS
YWR4YSBST0NLIDVDIExpdGUgdXNlcyBhIGRpZmZlcmVudCBTb0MgKFJLMzU4MikgY29tcGFyZWQg
dG8gdGhlCj4+PiBSYWR4YSBST0NLIDVDIChSSzM1ODhTMiksIGJ1dCB0aGUgdHdvIGFyZSBjb21w
YXRpYmxlIGZyb20gYSBzb2Z0d2FyZQo+Pj4gcGVyc3BlY3RpdmUuCj4+Pgo+Pj4gRml4ZXM6IGRm
NGUwOGE1ZWVkMSAoImR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBhZGQgUmFkeGEgUk9DSyA1
QyIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+
PiAtLS0KPj4+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hp
cC55YW1sIHwgMiArLQo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4gaW5kZXggNzUzMTk5YTEyOTIzLi4yMjU0ZWUw
NzkwOTQgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JvY2tjaGlwLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4gQEAgLTg5NSw3ICs4OTUsNyBAQCBwcm9wZXJ0aWVz
Ogo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEscm9jay01Ygo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4Cj4+Pgo+Pj4gLcKgwqDC
oMKgwqAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUk9DSyA1Qwo+Pj4gK8KgwqDCoMKgwqAgLSBkZXNj
cmlwdGlvbjogUmFkeGEgUk9DSyA1Qy81QyBMaXRlCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1z
Ogo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEscm9jay01Ywo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4cwo+Pgo+PiBJIHRoaW5r
IGl0IHdvdWxkIGJlIGJldHRlciB0byB1c2UgInJvY2tjaGlwLHJrMzU4MiIgaGVyZSwgdG8gYWxs
b3cKPj4gdXMgdG8gcG9zc2libHkgdXNlIHRoYXQgaW5mb3JtYXRpb24gbGF0ZXIuwqAgRm9yIGV4
YW1wbGUsIHdlIG1pZ2h0Cj4+IHdhbnQgdG8gYmUgYWJsZSB0byByZWNvZ25pemUgUkszNTgyLWJh
c2VkIGJvYXJkcyBpbiBVLUJvb3Qgd2l0aG91dAo+PiB0aGUgbmVlZCB0byBsb29rIGludG8gdGhl
IGUtZnVzZXMgYXQgc29tZSBwb2ludCwgZm9yIHdoaWNoIHB1cnBvc2UKPj4gaGF2aW5nIGEgY2xl
YXIgZGVzaWduYXRvciBpbiB0aGUgRFQgd291bGQgZml0IHBlcmZlY3RseS4KPiAKPiBJdCBtYXkg
YmUgb2theSB0byBpbnRyb2R1Y2UgInJvY2tjaGlwLHJrMzU4MiIsIGJ1dCByZWFkaW5nIGUtZnVz
ZSBpcyAKPiBzdGlsbCByZXF1aXJlZCBpbiBVLUJvb3QgYmVjYXVzZSB3aGljaCB1bml0IChjcHUg
Y29yZVgsIGdwdSwgZXRjKSBpcyAKPiBicm9rZW4gY2Fubm90IGJlIGRldGVybWluZWQgd2l0aG91
dCByZWFkaW5nIGUtZnVzZSBhdCBydW4tdGltZS4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCj4gLS0g
Cj4gRlVLQVVNSSBOYW9raQo+IFJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCj4g
Cj4+IEFzIGEgcmVtaW5kZXIsIHVzaW5nICJyb2NrY2hpcCxyazM1ODIiIHdvdWxkIGFsc28gcmVx
dWlyZSBhIHNtYWxsCj4+IGFkZGl0aW9uIHRvIGRyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0
cy5jLgo+Pgo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

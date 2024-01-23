Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CEEC47DDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 17:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoxTSqmPkHbyPVkbvs26dDg6lROODehmNYRlL+y2csY=; b=vBpqUSDTJ1a0s4
	q3zIy5OrETn8hLa3diJ5keKIdwNqpCn76RoUproakBFyxuUPdl9u6UwaDjQDoqrvm9atQH45pka0y
	nAvNBMrepTfOOwYIjmZ5BUUbwC6kafIL+5P/4MjW2pK1tor3dWrLIF045/y6VOEjyNHr7PqDkNGUo
	NjG1WAYxlB7VYZAGCvuGFDO6YIJgSSGOxc6PKxawUlSVOxjNwQWie1VnL1yR1hYQ4nszDNxJ8pa4u
	StXiFUccqoocaev6828W1v1bFOLGVayeSPbIZPmgv9OTBSfA4B41ajfZNC/2dIOWoXK5cjdBDTQw5
	71cCiJaqHa4VWuJjVwZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSKq6-00HYoM-1I;
	Tue, 23 Jan 2024 17:45:34 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSKpw-00HYjZ-2G;
	Tue, 23 Jan 2024 17:45:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D1681FB;
	Tue, 23 Jan 2024 09:46:08 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CEB63F5A1;
	Tue, 23 Jan 2024 09:45:21 -0800 (PST)
Message-ID: <97fcde65-9eb0-44e1-a87a-caa308d1998b@arm.com>
Date: Tue, 23 Jan 2024 17:45:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
Content-Language: en-GB
To: Johan Jonker <jbx6244@gmail.com>, Luis de Arquer <ldearquer@gmail.com>,
 broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
 <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
 <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_094524_836531_BB4F9C09 
X-CRM114-Status: GOOD (  18.72  )
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

T24gMjMvMDEvMjAyNCAxMDo0OSBhbSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IAo+IAo+IE9uIDEv
MjMvMjQgMTA6MTcsIEx1aXMgZGUgQXJxdWVyIHdyb3RlOgo+PiBPbiAxLzIyLzI0IDIzOjU5LCBK
b2hhbiBKb25rZXIgd3JvdGU6Cj4+PiBJbiB0aGUgZHJpdmVyIHNwaS1yb2NrY2hpcC5jIG1heF9u
YXRpdmVfY3MgaXMgbGltaXRlZCB0byA0IGFuZCB0aGUKPj4+IGRlZmF1bHQgbnVtLWNzIHByb3Bl
cnR5IGlzIDEuIFJlc3RyaWN0IG51bS1jcyBpbiBzcGktcm9ja2NoaXAueWFtbC4KPj4+Cj4+Cj4g
Cj4+IERvZXNuJ3QgbnVtLWNzIGluY2x1ZGUgZ3BpbyBjaGlwIHNlbGVjdHMgdG9vPwo+PiBJIGhh
dmUgYSBzZXR1cCB3aXRoIG51bS1jcyA9IDwxMj4gd2hpY2ggdXNlcyBub24tbmF0aXZlIGNzLWdw
aW9zIGp1c3QgZmluZQo+IAo+IEdpdmVuIHRoYXQgYmluZGluZ3MgYW5kIExpbnV4IGRyaXZlcnMg
Y2FwYWJpbGl0aWVzIGFyZSAyIHNlcGFyYXRlIHRoaW5ncy4KCkVyLCB0aGF0J3MgdGhlIHdob2xl
IHBvaW50IC0gYmluZGluZ3MgYW5kIGRyaXZlcnMgKmFyZSogc2VwYXJhdGUgdGhpbmdzLCAKYW5k
IGJpbmRpbmdzIGRvIG5vdCBkZXNjcmliZSBkcml2ZXJzLiBOb3QgbGVhc3Qgc2luY2UgdGhlIGZ1
bmRhbWVudGFsIAptb2RlbCBpcyB0byBoYXZlIG9uZSBjYW5vbmljYWwgYmluZGluZyBmb3IgbXVs
dGlwbGUgZGlmZmVyZW50IGRyaXZlcnMgdG8gCmNvbnN1bWUuCgpUaGVyZSBzZWVtcyB0byBiZSBz
b21lIGFtYmlndWl0eSBhcyB0byB3aGV0aGVyIHRoZSBjb21tb24gIm51bS1jcyIgCnByb3BlcnR5
IGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJlIHRoZSBudW1iZXIgb2YgZGVkaWNhdGVkIGhhcmR3YXJl
IApjaGlwc2VsZWN0cyBvciB0aGUgdG90YWwgbnVtYmVyIGluY2x1ZGluZyBhZGRpdGlvbmFsIEdQ
SU9zLCBidXQgZWl0aGVyIAp3YXkgdGhpcyBjaGFuZ2UgYXBwZWFycyB0byBiZSBvYmplY3RpdmVs
eSB3cm9uZyAtIGlmIGl0J3MgdGhlIGZvcm1lciAKdGhhbiB0aGUgY29tbWVudCBpbiB0aGUgZHJp
dmVyIHBsdXMgYSBzdXJ2ZXkgb2YgYSBmZXcgVFJNcyBpbXBsaWVzIHRoYXQgCnRoZSBtYXhpbXVt
IG51bWJlciBvZiBoYXJkd2FyZSBsaW5lcyBpcyAyOyBpZiBpdCdzIHRoZSBsYXR0ZXIgdGhlbiAK
b2J2aW91c2x5IGl0J3MgdmFsaWQgZm9yIGEgcGxhdGZvcm0gdG8gd2lyZSB1cCAzIG9yIG1vcmUg
YWRkaXRpb25hbCAKR1BJT3MgYXMgZGVzaXJlZCwgYW5kIGZvciBhIERUIHRvIGFjY3VyYXRlbHkg
ZGVzY3JpYmUgdGhhdCwgcmVnYXJkbGVzcyAKb2Ygd2hldGhlciBhbnkgcGFydGljdWxhciBjb25z
dW1lciBoYXBwZW5zIHRvIHN1cHBvcnQgaXQgeWV0IG9yIG5vdC4gRm9yIApleGFtcGxlLCBBRkFJ
Q1MgdGhlIFUtQm9vdCBhbmQgRnJlZUJTRCBkcml2ZXJzIGZvciBSb2NrY2hpcCBTUEkgYXBwZWFy
IApub3QgdG8gc3VwcG9ydCBHUElPIGNoaXBzZWxlY3RzIGF0IGFsbC4KClRoYW5rcywKUm9iaW4u
Cgo+IEhvd2V2ZXIgdGhpcyBkb2N1bWVudCBoYXMgYWxzbyBhIHB1cnBvc2UgdGhhdCBtdXN0IG5v
dGlmeSBtYWlubGluZSBtYWludGFpbmVycyBpZiB1c2VycyBzdWJtaXQgYm9ndXMgRFQgdmFsdWVz
Lgo+IEN1cnJlbnRseSB0aGF0IGxpbWl0IGlzIHNldCB0byA0IGluIHRoZSBtYWlubGluZSBkcml2
ZXIuCj4gWW91IGFyZSBmcmVlIHRvIHN1Ym1pdCBhIHJlYWwgYm9hcmQgZmlsZS9wYXRjaCBzZXJp
ZSBhZnRlcndvcmRzIGFzIHByb29mIGZvciByZXZpZXcgd2l0aCAxMiBzcGkgY2hpcHMgYW5kIHRo
ZW4gYWRqdXN0IHRoaXMgbGltaXQgYW5kIGluY3JlYXNlIFJPQ0tDSElQX1NQSV9NQVhfQ1NfTlVN
Lgo+IAo+IEpvaGFuCj4gCj4+Cj4+IEx1aXMKPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpv
bmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+ICDCoCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sIHwgNSArKysrKwo+Pj4gIMKg
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLXJvY2tjaGlwLnlhbWwKPj4+
IGluZGV4IGU0OTQxZTkyMTJkMS4uMDBkNTU1YmNiYWQzIDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbAo+Pj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFt
bAo+Pj4gQEAgLTY1LDYgKzY1LDExIEBAIHByb3BlcnRpZXM6Cj4+PiAgwqDCoMKgwqDCoMKgwqAg
LSBjb25zdDogdHgKPj4+ICDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByeAo+Pj4KPj4+ICvCoCBu
dW0tY3M6Cj4+PiArwqDCoMKgIGRlZmF1bHQ6IDEKPj4+ICvCoMKgwqAgbWluaW11bTogMQo+Pj4g
K8KgwqDCoCBtYXhpbXVtOiA0Cj4+PiArCj4+PiAgwqDCoMKgIHJ4LXNhbXBsZS1kZWxheS1uczoK
Pj4+ICDCoMKgwqDCoMKgIGRlZmF1bHQ6IDAKPj4+ICDCoMKgwqDCoMKgIGRlc2NyaXB0aW9uOgo+
Pj4gLS0gCj4+PiAyLjM5LjIKPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+Pj4g
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Pgo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

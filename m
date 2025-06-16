Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76EEC71159
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68L562V+CHJ+eBmuuMQ7PklaUA0I5atIl54bHMnaFjI=; b=izJKrT4EFnfE10
	cyXsPjCC/CYFENxXhH/OLZcKZCf9RuwUL7WyOuCDbUBTrbYl23P4930zUvd3zInwPMokndQJnDGN3
	yS4Oeaw9FLLbhO1BaHe7YSOBrKgGGKLT1jOePqyS1AmykcpjQtKLYKWasQ6nCAhHTZ+ASKI5lQmEu
	j/7bk26fUKqywgYwCpG8wnQkPMpbaSe92lSphfMWsXNmzYMR034Pj5SDrOrj9lT2MVXDtj1EBOXts
	+rEPw1quXCWgAt0oKQ/mqJM44B9LtbvDMW6ymRYKmkkaG3RWif315iptPRZwJWA+TV3Fa1HApqQWn
	kFFzvatj0wnlh2ZptaiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREa5-00000005DjL-1EUx;
	Mon, 16 Jun 2025 18:29:17 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRCLr-00000004xMX-2hW1;
	Mon, 16 Jun 2025 16:06:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750089974; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=e3GNWk/WbTMBevIRzVxs0X0CrdY0pRAyPGz6jfHOmRORUsjwLA1tl83Tcg69Gdmjm6LtbNDMWkmzWPXstgPN13BL4cUCzalmADCecyqghzLvTPu7xIp5Zte6CJ7oUCnJXZEHBgK41h40PJKyFeuACrxbSi+mpnczIfdnz4rfot8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750089974; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=R2NIJYlZXUCPFvz62oOBC7RgnkUtxPH/uiLdx+Eefzw=; 
	b=LPTH8d3DUcfCDo7jV04mDGb73PcRIZcqmB6HWL3b3Fwmaro5ZWuxr+RCxr3Gh3EofXC1PFLsCGqgykkco3tglMzjHesUsHPyai1hut15i1TFpPYezmbnoImx6TieTKuB6c2a9oBwESWEKNux8OyIhLTWlIF7v0/BhzqbDVUirqs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750089973;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=R2NIJYlZXUCPFvz62oOBC7RgnkUtxPH/uiLdx+Eefzw=;
	b=Cxej/lQUz2GTaTy62PcnOSfRvxKBanXxW0lGKW0AFWDQ7U+qDpLJSKzl0sFtrdA7
	IlPkQnAXxZZRvNLvs2aFKNCn7ht/En6XoDdo+4KiSUwcNsn0YeE3BwU1TiJVG+uovHv
	FdY7IkjAhFOlAV0AndUjZn8f5RMcY2IxVzacAGQM=
Received: by mx.zohomail.com with SMTPS id 1750089971949421.80620542117106;
	Mon, 16 Jun 2025 09:06:11 -0700 (PDT)
Message-ID: <163a05ac-b0de-4345-8489-dbf858326908@collabora.com>
Date: Mon, 16 Jun 2025 18:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: iommu: verisilicon: Add binding for VSI
 IOMMU
To: Conor Dooley <conor@kernel.org>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-3-benjamin.gaignard@collabora.com>
 <20250616-winter-strict-db98f85db22d@spud>
 <5c971c09-c398-40a3-9ed5-ec38b6645e1d@collabora.com>
 <20250616-contempt-remix-5af2b7281cbd@spud>
 <2d251d7c-7906-4a66-9791-7f71e7a4b54d@collabora.com>
 <20250616-capped-rehab-6e7fd24d23ae@spud>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250616-capped-rehab-6e7fd24d23ae@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_090627_730615_405E7A98 
X-CRM114-Status: GOOD (  16.72  )
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

CkxlIDE2LzA2LzIwMjUgw6AgMTc6NTgsIENvbm9yIERvb2xleSBhIMOpY3JpdMKgOgo+IE9uIE1v
biwgSnVuIDE2LCAyMDI1IGF0IDA1OjUwOjUwUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBMZSAxNi8wNi8yMDI1IMOgIDE3OjQyLCBDb25vciBEb29sZXkgYSDDqWNyaXTCoDoK
Pj4+IE9uIE1vbiwgSnVuIDE2LCAyMDI1IGF0IDA1OjMwOjQ0UE0gKzAyMDAsIEJlbmphbWluIEdh
aWduYXJkIHdyb3RlOgo+Pj4+IExlIDE2LzA2LzIwMjUgw6AgMTc6MTQsIENvbm9yIERvb2xleSBh
IMOpY3JpdMKgOgo+Pj4+PiBPbiBNb24sIEp1biAxNiwgMjAyNSBhdCAwNDo1NTo1MFBNICswMjAw
LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+Pj4+IEFkZCBhIGRldmljZSB0cmVlIGJpbmRp
bmcgZm9yIHRoZSBWZXJpc2lsaWNvbiAoVlNJKSBJT01NVS4gVGhpcyBJT01NVSBzaXRzCj4+Pj4+
PiBpbiBmcm9udCBvZiBoYXJkd2FyZSBlbmNvZGVyIGFuZCBkZWNvZGVyIGJsb2NrcyBvbiBTb0Nz
IHVzaW5nIFZlcmlzaWxpY29uIElQLAo+Pj4+Pj4gc3VjaCBhcyB0aGUgUm9ja2NoaXAgUkszNTg4
Lgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiAgICAgLi4uL2JpbmRp
bmdzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwgICAgIHwgNzEgKysrKysrKysrKysrKysr
KysrKwo+Pj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspCj4+Pj4+PiAg
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
b21tdS92ZXJpc2lsaWNvbixpb21tdS55YW1sCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS92ZXJpc2lsaWNvbixpb21tdS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3ZlcmlzaWxpY29u
LGlvbW11LnlhbWwKPj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4+PiBpbmRleCAwMDAw
MDAwMDAwMDAuLmFjZWY4NTVmYzYxZAo+Pj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+Pj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11
LnlhbWwKPj4+Pj4+IEBAIC0wLDAgKzEsNzEgQEAKPj4+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4+Pj4+ICslWUFNTCAxLjIK
Pj4+Pj4+ICstLS0KPj4+Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2lv
bW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwjCj4+Pj4+PiArJHNjaGVtYTogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+Pj4+PiArCj4+Pj4+PiArdGl0bGU6
IFZlcmlzaWxpY29uIElPTU1VCj4+Pj4+PiArCj4+Pj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4+PiAr
ICAtIEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+
Pj4+Pj4gKwo+Pj4+Pj4gK2Rlc2NyaXB0aW9uOiB8Kwo+Pj4+Pj4gKyAgQSBWZXJzaWxpY29uIGlv
bW11IHRyYW5zbGF0ZXMgaW8gdmlydHVhbCBhZGRyZXNzZXMgdG8gcGh5c2ljYWwgYWRkcmVzc2Vz
IGZvcgo+Pj4+Pj4gKyAgaXRzIGFzc29jaWF0ZWQgdmlkZW8gZGVjb2Rlci4KPj4+Pj4+ICsKPj4+
Pj4+ICtwcm9wZXJ0aWVzOgo+Pj4+Pj4gKyAgY29tcGF0aWJsZToKPj4+Pj4+ICsgICAgb25lT2Y6
Cj4+Pj4+PiArICAgICAgLSBpdGVtczoKPj4+Pj4+ICsgICAgICAgICAgLSBjb25zdDogdmVyaXNp
bGljb24saW9tbXUKPj4+Pj4gWW91J3JlIG1pc3NpbmcgYSBzb2Mtc3BlY2lmaWMgY29tcGF0aWJs
ZSBhdCB0aGUgdmVyeSBsZWFzdCBoZXJlLCBidXQgaXMKPj4+Pj4gdGhlcmUgcmVhbGx5IG5vIHZl
cnNpb25pbmcgb24gdGhlIElQIGF0IGFsbD8gSSdkIGJlIHN1cnByaXNlZCBpZgo+Pj4+PiB2ZXJp
c2lsaWNvbiBvbmx5IHByb2R1Y2VkIGV4YWN0bHkgb25lIHZlcnNpb24gb2YgYW4gaW9tbXUgSVAu
Cj4+Pj4gSSBvbmx5IGF3YXJlIHRoaXMgdmVyc2lvbiBvZiB0aGUgaW9tbXUgZm9yIHRoZSBtb21l
bnQuCj4+PiAiZm9yIHRoZSBtb21lbnQiLCB5ZWFoLiBJcyB0aGVyZSBhbnkgaW5mb3JtYXRpb24g
dGhhdCBjb3VsZCBiZSB1c2VkIHRvCj4+PiB2ZXJzaW9uIHRoaXMgYXZhaWxhYmxlPwo+PiBUaGUg
aGFyZHdhcmUgYmxvY2sgaXNuJ3QgZG9jdW1lbnRlZCBpbiB0aGUgVFJNIHNvIEkgZG9uJ3Qga25v
dyBpZiB0aGVyZSBpcyBhIHZlcnNpb24KPj4gZmllbGQgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
Pj4KPj4+PiBEb2VzIGFkZGluZyB2ZXJpc2lsaWNvbixyazM1ODgtaW9tbXUgc291bmQgZ29vZCBm
b3IgeW91ID8KPj4+IEl0J2QgYmUgInJvY2tjaGlwLHJrMzU4OC1pb21tdSIsIGJ1dCBzdXJlLgo+
PiAicm9ja2NoaXAscmszNTg4LWlvbW11IiBpcyBhbHJlYWR5IHVzZSBmb3Igb3RoZXIgTU1VcyBp
biByazM1ODguCj4gInJvY2tjaGlwLHJrMzU4OC12aWRlby1pb21tdSIgdGhlbj8gSW5zdGFuY2Vz
IG9mIGFuIElQIGluIGFuIFNvQyBnZXQgYQo+IHNwZWNpZmljIGNvbXBhdGlibGUgd2l0aCB0aGUg
U29DIHZlbmRvcidzIHByZWZpeCwgc28gaGF2aW5nIHZlcmlzaWxpY29uCj4gdGhlcmUgaXNuJ3Qg
c3VpdGFibGUgdW5sZXNzIHRoZXkgbWFkZSB0aGUgU29DLgoKT3RoZXIgaGFyZHdhcmUgdmlkZW8g
Y29kZWNzIGhhdmUgYSBkaWZmZXJlbnQgSU9NTVUgc28gSSB3aWxsIHN1Z2dlc3QKInJvY2tjaGlw
LHJrMzU4OC1hdjEtaW9tbXUiIHdoaWNoIGlzIHNwZWNpZmljIHRvIHRoaXMgdmlkZW8gaGFyZHdh
cmUgYmxvY2suCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

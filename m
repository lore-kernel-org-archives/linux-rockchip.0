Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6887AC7115A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVxhVe9iqQufHPh9MYcW2L3rucU2iJE+0ygc7pQOt9k=; b=0tL3w/h8Nq1Wqx
	BCxVVO7M26suhhaCG2eAUbLS6yTbZr71z1HrgtH4eizOrRkELDgDldqAqkYc7VYJ3ukpfnst9n7AH
	nYLm7vuZEEI4rbHYM0gHnjgSrsTbBRQnVg36mT31Hyjc8+HWuNOrVxZGnolUVwg9A3QPNR29Yb6Y6
	gvmB/SIkioBrNTCjHNmUqFQlqZltbQhQgvFcw+WvRg7kr7SBssgWuiYFF34dgMcTYk/jrB8ym9zD3
	Rrh67No38he04Njr+PJAIzL8KZfgS5Qftrhg0VgAgnmeUON2NnbbAv4XeveXpumHUQa1JDFHqopB8
	cKBWyAbtkyN/48mr5jrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREZu-00000005DZk-0PN9;
	Mon, 16 Jun 2025 18:29:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBng-00000004tMs-2tkO;
	Mon, 16 Jun 2025 15:31:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750087851; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Cgga3I8jF2zVzJLMOxq+Vn/77I5PkLmkTEtFZ7zNvJouifQS8tbvClE2MYxzRvqgv5KVzPwkMsKX2c8dbRw5aHEE/3p6BawvJT7ELQd2A/dXTwS/Q232zAh7k72IfEqxMWj/wct0nfysdOtrsy6wmTBOQ1YWREv9UelFbSUtMMk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750087851; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=0BL+aG/UNNGLP1x4xgnCt14zsxQCcrfboSBpn0n95Mc=; 
	b=dNmPhDbLjmWo3vNDqZAV9EaDNH0C+Nd6EWaKjh/gurcELJAgpGBk3PZFA3qlTTe9rbCGWjQHk9g5ZmMoK1gP/8stAwxj+jZv7f9YjMebrb1NxZXxPxGUcya6gQHqL98FvYUFoIJOBgFVMeycR6esHS9i3XNPYNIsO5Bha0wQpgI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750087851;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=0BL+aG/UNNGLP1x4xgnCt14zsxQCcrfboSBpn0n95Mc=;
	b=SWU8ZoOVqPfce4bWTOatjItj8sFTpIKwVX2258AwFPU8OkUv2qfeu9ySMT7l9ZJU
	hOApFkMODZXMLbz4r7F2gtSRAFjq/z0WgTx1z/VEEVumTMuhTO23GeTEzAmQRhghH5a
	DDVTRNOSby77h75bM5LvF0eCcqcswZ36jcaAHcnw=
Received: by mx.zohomail.com with SMTPS id 1750087849499697.6715293869444;
	Mon, 16 Jun 2025 08:30:49 -0700 (PDT)
Message-ID: <5c971c09-c398-40a3-9ed5-ec38b6645e1d@collabora.com>
Date: Mon, 16 Jun 2025 17:30:44 +0200
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
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250616-winter-strict-db98f85db22d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_083108_795012_AA0D2406 
X-CRM114-Status: GOOD (  17.39  )
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

CkxlIDE2LzA2LzIwMjUgw6AgMTc6MTQsIENvbm9yIERvb2xleSBhIMOpY3JpdMKgOgo+IE9uIE1v
biwgSnVuIDE2LCAyMDI1IGF0IDA0OjU1OjUwUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBBZGQgYSBkZXZpY2UgdHJlZSBiaW5kaW5nIGZvciB0aGUgVmVyaXNpbGljb24gKFZT
SSkgSU9NTVUuIFRoaXMgSU9NTVUgc2l0cwo+PiBpbiBmcm9udCBvZiBoYXJkd2FyZSBlbmNvZGVy
IGFuZCBkZWNvZGVyIGJsb2NrcyBvbiBTb0NzIHVzaW5nIFZlcmlzaWxpY29uIElQLAo+PiBzdWNo
IGFzIHRoZSBSb2NrY2hpcCBSSzM1ODguCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICAuLi4v
YmluZGluZ3MvaW9tbXUvdmVyaXNpbGljb24saW9tbXUueWFtbCAgICAgfCA3MSArKysrKysrKysr
KysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcxIGluc2VydGlvbnMoKykKPj4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3Zl
cmlzaWxpY29uLGlvbW11LnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9pb21tdS92ZXJpc2lsaWNvbixpb21tdS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwKPj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi5hY2VmODU1ZmM2MWQK
Pj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW9tbXUvdmVyaXNpbGljb24saW9tbXUueWFtbAo+PiBAQCAtMCwwICsxLDcxIEBACj4+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkK
Pj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hl
bWFzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4gKwo+PiArdGl0bGU6IFZlcmlz
aWxpY29uIElPTU1VCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiArCj4+ICtkZXNjcmlwdGlv
bjogfCsKPj4gKyAgQSBWZXJzaWxpY29uIGlvbW11IHRyYW5zbGF0ZXMgaW8gdmlydHVhbCBhZGRy
ZXNzZXMgdG8gcGh5c2ljYWwgYWRkcmVzc2VzIGZvcgo+PiArICBpdHMgYXNzb2NpYXRlZCB2aWRl
byBkZWNvZGVyLgo+PiArCj4+ICtwcm9wZXJ0aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAg
IG9uZU9mOgo+PiArICAgICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGNvbnN0OiB2ZXJpc2ls
aWNvbixpb21tdQo+IFlvdSdyZSBtaXNzaW5nIGEgc29jLXNwZWNpZmljIGNvbXBhdGlibGUgYXQg
dGhlIHZlcnkgbGVhc3QgaGVyZSwgYnV0IGlzCj4gdGhlcmUgcmVhbGx5IG5vIHZlcnNpb25pbmcg
b24gdGhlIElQIGF0IGFsbD8gSSdkIGJlIHN1cnByaXNlZCBpZgo+IHZlcmlzaWxpY29uIG9ubHkg
cHJvZHVjZWQgZXhhY3RseSBvbmUgdmVyc2lvbiBvZiBhbiBpb21tdSBJUC4KCkkgb25seSBhd2Fy
ZSB0aGlzIHZlcnNpb24gb2YgdGhlIGlvbW11IGZvciB0aGUgbW9tZW50LgpEb2VzIGFkZGluZyB2
ZXJpc2lsaWNvbixyazM1ODgtaW9tbXUgc291bmQgZ29vZCBmb3IgeW91ID8KCj4KPj4gKwo+PiAr
ICByZWc6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArICBpbnRlcnJ1cHRzOgo+PiArICAg
IG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgY2xvY2tzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAg
LSBkZXNjcmlwdGlvbjogQ29yZSBjbG9jawo+PiArICAgICAgLSBkZXNjcmlwdGlvbjogSW50ZXJm
YWNlIGNsb2NrCj4+ICsKPj4gKyAgY2xvY2stbmFtZXM6Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAg
ICAtIGNvbnN0OiBhY2xrCj4+ICsgICAgICAtIGNvbnN0OiBpZmFjZQo+IFdoeSAiYWNsayIgcmF0
aGVyIHRoYW4gY29yZSwgdG8gbWF0Y2ggdGhlIGRlc2NyaXB0aW9uPwoKSSB3aWxsIGNoYW5nZSB0
aGF0LCB0aGUgZHJpdmVyIGRvZXNuJ3QgY2FyZSBvZiB0aGUgY2xvY2sgbmFtZSBhbnl3YXkKCj4K
Pj4gKwo+PiArICAiI2lvbW11LWNlbGxzIjoKPj4gKyAgICBjb25zdDogMAo+PiArCj4+ICsgIHBv
d2VyLWRvbWFpbnM6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsg
IC0gY29tcGF0aWJsZQo+PiArICAtIHJlZwo+PiArICAtIGludGVycnVwdHMKPj4gKyAgLSBjbG9j
a3MKPj4gKyAgLSBjbG9jay1uYW1lcwo+PiArICAtICIjaW9tbXUtY2VsbHMiCj4+ICsKPj4gK2Fk
ZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+PiArCj4+ICtleGFtcGxlczoKPj4gKyAgLSB8Cj4+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaD4K
Pj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdp
Yy5oPgo+PiArCj4+ICsgICAgYnVzIHsKPj4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+
PiArICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICsKPj4gKyAgICAgIHZzaV9tbXU6IGlvbW11
QGZkY2EwMDAwIHsKPiBUaGUgInZzaV9tbXUiIGxhYmVsIGNhbiBiZSBkcm9wcGVkIGhlcmUsIGl0
IGhhcyBubyB1c2Vycy4KCm9rLgoKVGhhbmtzLApCZW5qYW1pbgoKPgo+IENoZWVycywKPiBDb25v
ci4KPgo+PiArICAgICAgICBjb21wYXRpYmxlID0gInZlcmlzaWxpY29uLGlvbW11IjsKPj4gKyAg
ICAgICAgcmVnID0gPDB4MCAweGZkY2EwMDAwIDB4MCAweDYwMD47Cj4+ICsgICAgICAgIGludGVy
cnVwdHMgPSA8R0lDX1NQSSAxMDkgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPj4gKyAgICAgICAg
Y2xvY2tzID0gPCZjcnUgQUNMS19BVjE+LCA8JmNydSBQQ0xLX0FWMT47Cj4+ICsgICAgICAgIGNs
b2NrLW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOwo+PiArICAgICAgICAjaW9tbXUtY2VsbHMgPSA8
MD47Cj4+ICsgICAgICB9Owo+PiArICAgIH07Cj4+IC0tIAo+PiAyLjQzLjAKPj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E68C7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxF7Xfv9JlXlleDXuH7N6U8sEwG47XoFbQbJSA15coY=; b=faE/FRst2Zq9bo
	183q/Oejn1H+SLst4gFHrCK3YbiOB5INBzEt7PJlw7aJeTxViOdMjj70YPkJBUorxPfSmduE8AJeq
	SJwBwuWQCxDnm3juKVQH4Uz3ppFuo5WB4cu6XwVfcji4Lgc+tQ7hpd5mIeRO7IVAu4xNjwVnWb5gS
	IIZuWj8p1HVOCijfhDz8ah7zLM8EJ/biRxJ6UzSNn0eEnalY9z3lobPud4ZvX9D6zS6xLEnepFBI3
	nS2SRg0udzqOhFBMZxdkjpV9w5giPH6+oQb2NlCMSVBFtzE9sy+z/FuHzq4L9haxGAFSN9rLPU1e6
	KXFrwtRIL/KIgQB497RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREa1-00000005Df7-2F9h;
	Mon, 16 Jun 2025 18:29:13 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRC74-00000004w06-1x8R;
	Mon, 16 Jun 2025 15:51:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750089056; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CuDhxF78VIhhVcLLbtIDA2g0A3JRBwHgpImUgZeiW4qRpCpfJhMRtz9J7W9/puxsWBKS2acfafaaOewvv4xu4LVPozJ7XRFtOezMnAxj7ClBNDEEwJCQ0Ch+NjBHNxVysZS/2VczSP1P0vTDsE1lkxK3KyTiMGvcAXj1zlViM6s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750089056; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=170kxITiahI0WLlzh73GbaAad8nEI7X1qHMVlhx8xgg=; 
	b=hqKte0ENBFTvga3/nAdinwK6t+q6u3A5RAWGBNgVnX9QLBqT7VaAzL89uiBQzxJAVtYrpwnloyQGdNg2Q8Y7D9rjI8S+WLMgjmpLaxvUpGj7zar4BLkP56KNdtAIMcT6ldRRpJpG39V4tRI6nyjYBkdpmVyXS+zNiE6bsIpk8MA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750089056;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=170kxITiahI0WLlzh73GbaAad8nEI7X1qHMVlhx8xgg=;
	b=O00Z0MngrOahDkUAGWl2DFdJ+tJUMdAR2SM/vqPLM48emFpW6jWhyqfnh5pCpf1s
	+pT89k0SmwDB8LXI6AlbYd/0BdXSFRVUsz2T9jedNf4PMpibuiRBBn1r7LsFbMYe/qY
	+RmeU2GonGGrlMu9bQz7IfqYznSwDPBkLtiZwUeQ=
Received: by mx.zohomail.com with SMTPS id 1750089054716172.7304639178068;
	Mon, 16 Jun 2025 08:50:54 -0700 (PDT)
Message-ID: <2d251d7c-7906-4a66-9791-7f71e7a4b54d@collabora.com>
Date: Mon, 16 Jun 2025 17:50:50 +0200
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
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250616-contempt-remix-5af2b7281cbd@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_085110_567125_CAB2D381 
X-CRM114-Status: GOOD (  16.00  )
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

CkxlIDE2LzA2LzIwMjUgw6AgMTc6NDIsIENvbm9yIERvb2xleSBhIMOpY3JpdMKgOgo+IE9uIE1v
biwgSnVuIDE2LCAyMDI1IGF0IDA1OjMwOjQ0UE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBMZSAxNi8wNi8yMDI1IMOgIDE3OjE0LCBDb25vciBEb29sZXkgYSDDqWNyaXTCoDoK
Pj4+IE9uIE1vbiwgSnVuIDE2LCAyMDI1IGF0IDA0OjU1OjUwUE0gKzAyMDAsIEJlbmphbWluIEdh
aWduYXJkIHdyb3RlOgo+Pj4+IEFkZCBhIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIHRoZSBWZXJp
c2lsaWNvbiAoVlNJKSBJT01NVS4gVGhpcyBJT01NVSBzaXRzCj4+Pj4gaW4gZnJvbnQgb2YgaGFy
ZHdhcmUgZW5jb2RlciBhbmQgZGVjb2RlciBibG9ja3Mgb24gU29DcyB1c2luZyBWZXJpc2lsaWNv
biBJUCwKPj4+PiBzdWNoIGFzIHRoZSBSb2NrY2hpcCBSSzM1ODguCj4+Pj4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNv
bT4KPj4+PiAtLS0KPj4+PiAgICAuLi4vYmluZGluZ3MvaW9tbXUvdmVyaXNpbGljb24saW9tbXUu
eWFtbCAgICAgfCA3MSArKysrKysrKysrKysrKysrKysrCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQs
IDcxIGluc2VydGlvbnMoKykKPj4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwKPj4+Pgo+
Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUv
dmVyaXNpbGljb24saW9tbXUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pb21tdS92ZXJpc2lsaWNvbixpb21tdS55YW1sCj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
Pj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmFjZWY4NTVmYzYxZAo+Pj4+IC0tLSAvZGV2L251bGwK
Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUvdmVyaXNp
bGljb24saW9tbXUueWFtbAo+Pj4+IEBAIC0wLDAgKzEsNzEgQEAKPj4+PiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4+Pj4gKyVZQU1M
IDEuMgo+Pj4+ICstLS0KPj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9p
b21tdS92ZXJpc2lsaWNvbixpb21tdS55YW1sIwo+Pj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4+PiArCj4+Pj4gK3RpdGxlOiBWZXJp
c2lsaWNvbiBJT01NVQo+Pj4+ICsKPj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4gKyAgLSBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+PiArCj4+Pj4g
K2Rlc2NyaXB0aW9uOiB8Kwo+Pj4+ICsgIEEgVmVyc2lsaWNvbiBpb21tdSB0cmFuc2xhdGVzIGlv
IHZpcnR1YWwgYWRkcmVzc2VzIHRvIHBoeXNpY2FsIGFkZHJlc3NlcyBmb3IKPj4+PiArICBpdHMg
YXNzb2NpYXRlZCB2aWRlbyBkZWNvZGVyLgo+Pj4+ICsKPj4+PiArcHJvcGVydGllczoKPj4+PiAr
ICBjb21wYXRpYmxlOgo+Pj4+ICsgICAgb25lT2Y6Cj4+Pj4gKyAgICAgIC0gaXRlbXM6Cj4+Pj4g
KyAgICAgICAgICAtIGNvbnN0OiB2ZXJpc2lsaWNvbixpb21tdQo+Pj4gWW91J3JlIG1pc3Npbmcg
YSBzb2Mtc3BlY2lmaWMgY29tcGF0aWJsZSBhdCB0aGUgdmVyeSBsZWFzdCBoZXJlLCBidXQgaXMK
Pj4+IHRoZXJlIHJlYWxseSBubyB2ZXJzaW9uaW5nIG9uIHRoZSBJUCBhdCBhbGw/IEknZCBiZSBz
dXJwcmlzZWQgaWYKPj4+IHZlcmlzaWxpY29uIG9ubHkgcHJvZHVjZWQgZXhhY3RseSBvbmUgdmVy
c2lvbiBvZiBhbiBpb21tdSBJUC4KPj4gSSBvbmx5IGF3YXJlIHRoaXMgdmVyc2lvbiBvZiB0aGUg
aW9tbXUgZm9yIHRoZSBtb21lbnQuCj4gImZvciB0aGUgbW9tZW50IiwgeWVhaC4gSXMgdGhlcmUg
YW55IGluZm9ybWF0aW9uIHRoYXQgY291bGQgYmUgdXNlZCB0bwo+IHZlcnNpb24gdGhpcyBhdmFp
bGFibGU/CgpUaGUgaGFyZHdhcmUgYmxvY2sgaXNuJ3QgZG9jdW1lbnRlZCBpbiB0aGUgVFJNIHNv
IEkgZG9uJ3Qga25vdyBpZiB0aGVyZSBpcyBhIHZlcnNpb24KZmllbGQgb3Igc29tZXRoaW5nIGxp
a2UgdGhhdC4KCj4KPj4gRG9lcyBhZGRpbmcgdmVyaXNpbGljb24scmszNTg4LWlvbW11IHNvdW5k
IGdvb2QgZm9yIHlvdSA/Cj4gSXQnZCBiZSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgYnV0IHN1
cmUuCgoicm9ja2NoaXAscmszNTg4LWlvbW11IiBpcyBhbHJlYWR5IHVzZSBmb3Igb3RoZXIgTU1V
cyBpbiByazM1ODguCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

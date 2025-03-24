Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68625C3600C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 10:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HxX0bxSfH/Z6bbM6tLxp6a2eqOupBEERAgC/NJbsVjU=; b=UhRs90SKSAbQitZK49L5XwzSS/
	hgxp3JBfsVBGsqbOJqXaIZXE05Wao7lA3syzA2mPnVe/Z3YlvwMLJwdhdt3f8Hd/qRozynqq7k6H7
	vhpQq+zH6rqEChXoD3TWQLHzQ2wmhQmeoR9Dx2GVYXwfqxh/hzClmrDZIcGbWnguC6OB6WZt5dQri
	Mzx9Y/CUKddxeXBTbvUtiuFsw0Uo+tnSoQvrog5VALJU+ihN6jzpdVKyKrnqhNWDvafoJFHD9NIZ9
	PCTTUqgnVK2gNjQvep3ZTxxgSmwKLhXISdST4TEITcz/NKL1DcnlDIZ6jPl0Zy7iiFz60E+xaJB/y
	tYDDWgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twf9n-00000002qOJ-0mtM;
	Mon, 24 Mar 2025 10:35:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twf81-00000002qCp-2sMS;
	Mon, 24 Mar 2025 10:33:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1742812433;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eI7gPyQYRsRBMrw/lvACQBiN3JsT2YD+lfGEOC2JxYU=;
	b=tzBmpe6y4C9C1mC187Q2hITuYbsywdQEk9ISEptzHhtaaMWMEXT9wyejk/K91P70RuDFt0
	yh7LOLNj0Jig/SUKDRxlqgdmqpmo0oMmeKIK+xwWSbNxWJvDZzxuDLw3c6wLJ/E1WGOGGb
	pD3aBw//mpNMo6fV55zHDAWQde+ldynndHLyeALFMMmKhlOk4AcDxIJegLTXfDXjcvBPbf
	8y2M8OTgqv4oGnaNXRnoe31cVUh3p/UVivt/saEZKVSXm6SlwMWeDd/yvLXwB55zljrROj
	ibghbX+nD1lzry+Y3YGz+tUT2YxukwHAEsvzw5tGERCd5xpDHei8z2x4TjtOBg==
Date: Mon, 24 Mar 2025 11:33:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org, Alexey Charkov
 <alchark@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove overdrive-mode OPPs from
 RK3588J SoC dtsi
In-Reply-To: <170e4d8d-33ca-4c53-9ae7-ca9d674540a9@cherry.de>
References: <f929da061de35925ea591c969f985430e23c4a7e.1742526811.git.dsimic@manjaro.org>
 <71b7c81b-6a4e-442b-a661-04d63639962a@cherry.de>
 <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
 <2ece5cca-50ea-4ec9-927e-e757c9c10c18@cherry.de>
 <4d25c9af4380598b35a0d55e7c77ac3d@manjaro.org>
 <170e4d8d-33ca-4c53-9ae7-ca9d674540a9@cherry.de>
Message-ID: <17b55e889838f2c989bd0efc6528801b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_033358_052047_AB086D01 
X-CRM114-Status: GOOD (  11.36  )
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

T24gMjAyNS0wMy0yNCAxMToyMCwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gT24gMy8yNC8yNSAx
MDo1MyBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI1LTAzLTI0IDEwOjIzLCBRdWVu
dGluIFNjaHVseiB3cm90ZToKPj4+IE9uIDMvMjMvMjUgMTE6MTkgQU0sIERyYWdhbiBTaW1pYyB3
cm90ZToKPj4+PiBPbiAyMDI1LTAzLTIxIDEwOjUzLCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4+
Pj4gT24gMy8yMS8yNSA0OjI4IEFNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+Pj4+PiBUaGUgZGlm
ZmVyZW5jZXMgaW4gdGhlIHZlbmRvci1hcHByb3ZlZCBDUFUgYW5kIEdQVSBPUFBzIGZvciB0aGUg
Cj4+Pj4+PiBzdGFuZGFyZAo+Pj4+Pj4gUm9ja2NoaXAgUkszNTg4IHZhcmlhbnQgWzFdIGFuZCB0
aGUgaW5kdXN0cmlhbCBSb2NrY2hpcCBSSzM1ODhKIAo+Pj4+Pj4gdmFyaWFudCBbMl0KPj4+Pj4+
IGNvbWUgZnJvbSB0aGUgbGF0dGVyLCBwcmVzdW1hYmx5LCBzdXBwb3J0aW5nIGFuIGV4dGVuZGVk
IAo+Pj4+Pj4gdGVtcGVyYXR1cmUgcmFuZ2UKPj4+Pj4+IHRoYXQncyB1c3VhbGx5IGFzc29jaWF0
ZWQgd2l0aCBpbmR1c3RyaWFsIGFwcGxpY2F0aW9ucywgZGVzcGl0ZSAKPj4+Pj4+IHRoZSB0d28g
U29DCj4+Pj4+PiB2YXJpYW50IGRhdGFzaGVldHMgc3BlY2lmeWluZyB0aGUgc2FtZSB1cHBlciBs
aW1pdCBmb3IgdGhlIGFsbG93ZWQgCj4+Pj4+PiBhbWJpZW50Cj4+Pj4+PiB0ZW1wZXJhdHVyZSBm
b3IgYm90aCB2YXJpYW50cy7CoCBIb3dldmVyLCB0aGUgbG93ZXIgdGVtcGVyYXR1cmUgCj4+Pj4+
PiBsaW1pdCBpcwo+Pj4+PiAKPj4+Pj4gUkszNTg4IGlzIHJhdGVkIGZvciAwLTgwwrBDLCBSSzM1
ODhKIGZvciAtNDAtODXCsEMsIGMuZi4gUmVjb21tZW5kZWQKPj4+Pj4gT3BlcmF0aW5nIENvbmRp
dGlvbnMsIFRhYmxlIDMtMiwgQW1iaWVudCBPcGVyYXRpbmcgVGVtcGVyYXR1cmUuCj4+Pj4gCj4+
Pj4gSW5kZWVkLCB3aGljaCBpcyB3aHkgSSBzcGVjaWZpY2FsbHkgd3JvdGUgInNwZWNpZnlpbmcg
dGhlIHNhbWUgdXBwZXIKPj4+PiBsaW1pdCIsIGJlY2F1c2UgaGF2aW5nIGEgbG93ZXIgbmVnYXRp
dmUgdGVtcGVyYXR1cmUgbGltaXQgY291bGQgCj4+Pj4gaGFyZGx5Cj4+Pj4gcHV0IHRoZSBSSzM1
ODhKIGluIGRhbmdlciBvZiBvdmVyaGVhdGluZyBvciBydW5uaW5nIGhvdHRlci4gOikKPj4+IAo+
Pj4gIiIiCj4+PiBkZXNwaXRlIHRoZSB0d28gU29DIHZhcmlhbnQgZGF0YXNoZWV0cyBzcGVjaWZ5
aW5nIHRoZSBzYW1lIHVwcGVyIAo+Pj4gbGltaXQKPj4+IGZvciB0aGUgYWxsb3dlZCB0ZW1wZXJh
dHVyZSBmb3IgYm90aCB2YXJpYW50cwo+Pj4gIiIiCj4+PiAKPj4+IGlzIGluY29ycmVjdC4gVGhl
IHdob2xlIHJhbmdlIGlzIGRpZmZlcmVudCwgeWVzIGl0J3Mgb25seSBhIDXCsEMKPj4+IGRpZmZl
cmVuY2UgZm9yIHRoZSB1cHBlciBsaW1pdCwgYnV0IHRoZXkgc3RpbGwgYXJlIGRpZmZlcmVudC4K
Pj4gCj4+IEkganVzdCBjb21tZW50ZWQgb24gdGhpcyBzZXBhcmF0ZWx5LCB3aXRoIGEgY291cGxl
IG9mIGRhdGFzaGVldAo+PiBzY3JlZW5zaG90cywgYmVmb3JlIEkgc2F3IHlvdXIgbGF0ZXN0IHJl
c3BvbnNlLsKgIFBsZWFzZSwgaGF2ZQo+PiBhIGxvb2sgYXQgdGhhdCBtZXNzYWdlLgo+IAo+IEkg
c2VlLCBJIGhhZCBhIHYxLjMgZGF0YXNoZWV0IG9wZW5lZDoKPiAKPiBodHRwczovL2dpdGh1Yi5j
b20vRmFuWC1UZWsvcmszNTg4LVRSTS1hbmQtRGF0YXNoZWV0L2Jsb2IvbWFzdGVyL1JvY2tjaGlw
X1JLMzU4OF9EYXRhc2hlZXRfVjEuMy0yMDIyMDMyOC5wZGYKCll1cCwgdGhlIHYxLjYgb2YgdGhl
IFJLMzU4OCBkYXRhc2hlZXQgaW5jcmVhc2VkIHRoZSB1cHBlciBhbWJpZW50CnRlbXBlcmF0dXJl
IGxpbWl0IGZyb20gODAgdG8gODUgb0MuCgo+IEludGVyZXN0aW5nbHksIGl0IHNlZW1zIHRoZSBS
SzM1ODhTIChzdGlsbD8pIGhhcyBhIHNtYWxsZXIgb3BlcmF0aW5nIAo+IHJhbmdlOgo+IAo+IGh0
dHBzOi8vd3d3LmFybWJvYXJkLmNuL2Rvd25sb2FkL1JvY2tjaGlwX1JLMzU4OFNfRGF0YXNoZWV0
X1YxLjYtMjAyNDA4MjEucGRmCgpPaCwgdGhhdCdzIHF1aXRlIGludGVyZXN0aW5nLCBJIGhhZCB0
aGUgdjEuNSBhcyB0aGUgbmV3ZXN0IHZlcnNpb24uClRoZSB2MS42IG9mIHRoZSBSSzM1ODhTIGRh
dGFzaGVldCBhY3R1YWxseSBsb3dlcmVkIHRoZSB1cHBlciBhbWJpZW50CnRlbXBlcmF0dXJlIGxp
bWl0IGZyb20gODUgZG93biB0byA4MCBvQy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

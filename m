Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE8E3CA5FFB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 07:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KYPNPS4yAIsFGmSNBb8om+Y+mb3pJ1om8hoQ8cnoEM=; b=kYNGDN1ATTCrsr
	F3oB1qjTj9PVz0bPESMEIbv6tEIiRaPGXmuAlqKQUlrCHun6LxeNtp2ONG7qX0lSN71wxSU3tJE8S
	tI6VYDFBnfbgk575Izmh3tdMECzdlFHZNvRROm8PDQK8FaNMMYcY01n8mg2c4Nueh4zjV6o57GR1n
	27Y8UCuR7vAnM8zZP4Y8zSo3m1lJkNGz8W9uPE+5o0zro9YCjhCMsunxselLIKXc16U3MS84XAzsi
	4KyQu4761dvnIPAIMsWHiBx590ofKAD5gPHK42LHnYLQZvJUwIpyWd/vdtmxGRdMQpoU2sIsHBv5g
	RAhsxVKtFavzbpoflf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhk3l-00000001WWu-0h5s;
	Mon, 19 Jan 2026 07:52:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhk3i-00000001WWO-24Vh;
	Mon, 19 Jan 2026 07:52:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768809116; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mzO0Shua/4atpUZeelS+ZQgvhxd/sOj/CdGT2JvtNeMdrVbhkDqiCS9/tV7FnuOgtAzsXgyTW6M+6SNLwsDsYzWs40xNLw32yj/UTaxF4oZ1vAkndP2vw1tPY7HYFoRntFpdk+Dc1ozUeSOyAbUUqDa14TNU1nR+g4DTDNJSJRQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768809116; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sRVp7dUbSthmOrlglJ6TGdqGPUk+uDvjIluK+KIJt6U=; 
	b=Hg/H46awInmh+1qx1wTLEihLOvryH7prxxthG9krTpP3W0tQSKdVc7E6BYEUNGCMzGkQghlgShPPLUzjz1/Ne+k8E+x32Yeev159MNkb8bGycTxgxCrfIHr7IF4AnoFDVKeJCKubc+sPePuqGbupQKROO4PorFB52mtssMAiJgo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768809116;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=sRVp7dUbSthmOrlglJ6TGdqGPUk+uDvjIluK+KIJt6U=;
	b=LZ53M/g2B/lEi3Cw4XEq9FXGeHNwxs2mhesW0QOopdjdonaDtdoNwyxYVDQyoI0b
	6BP6qBItIYHg9DTgr4WdGf/GFsAmbWXc7txbco0MHXDt7+DZQ95SrCATlZE4vgGrA01
	CUZRUw3KPoT6CERFiPBpj2qltx4GApoQblEaUIRU=
Received: by mx.zohomail.com with SMTPS id 1768809113865738.6117525224621;
	Sun, 18 Jan 2026 23:51:53 -0800 (PST)
Message-ID: <1030ddab-6124-414d-958f-c461c19bdbb0@collabora.com>
Date: Mon, 19 Jan 2026 08:51:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
To: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
 Will Deacon <will@kernel.org>
Cc: robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, kernel@collabora.com
References: <20260107101005.84039-1-benjamin.gaignard@collabora.com>
 <20260107101005.84039-4-benjamin.gaignard@collabora.com>
 <aWZui-rn5RDPwpEO@willie-the-truck>
 <eqv7yfdagt2axkj5xbtmrtkaakhq63ywf2q5tjo33exumhfrc5@7ghelrz6yt2d>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <eqv7yfdagt2axkj5xbtmrtkaakhq63ywf2q5tjo33exumhfrc5@7ghelrz6yt2d>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_235222_606569_C879FA17 
X-CRM114-Status: GOOD (  13.05  )
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

CkxlIDE4LzAxLzIwMjYgw6AgMTA6NDEsIErDtnJnIFLDtmRlbCBhIMOpY3JpdMKgOgo+IEJlbmph
bWluLAo+Cj4gT24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMDQ6MTA6NTFQTSArMDAwMCwgV2lsbCBE
ZWFjb24gd3JvdGU6Cj4+IEkgdG9vayBhbm90aGVyIGxvb2sgYXQgdGhpcyB0byBzZWUgd2hldGhl
ciBpdCBoYWQgY2hhbmdlZCBzaWduaWZpY2FudGx5Cj4+IGZyb20gdjYgd2hlbiBjb21wYXJlZCB0
byB0aGUgcm9ja2NoaXAgZHJpdmVyLiBTYWRseSwgdGhleSBzdGlsbCBsb29rCj4+IHZlcnkgc2lt
aWxhciB0byBtZSBhbmQgSSBjb250aW51ZSB0byBzdXNwZWN0IHRoYXQgdGhlIGhhcmR3YXJlIGlz
IGEKPj4gZGVyaXZhdGl2ZS4gSSByZWFsbHkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgaGF2aW5nIGEg
c2hhcmVkIGltcGxlbWVudGF0aW9uCj4+IG9mIHRoZSBkZWZhdWx0IGRvbWFpbiBvcHMgaXMgZGlm
ZmljdWx0IG9yIGNvbnRyb3ZlcnNpYWwuIEhhdmUgeW91IHRyaWVkCj4+IHRvIHdyaXRlIGl0Pwo+
IFdoZW4gdXBkYXRpbmcgZm9yIHYxMiwgY2FuIHlvdSBwbGVhc2UgcHV0IGFuIGV4cGxhbmF0b3J5
IGNvbW1lbnQgYXQgdGhlIHRvcCBvZgo+IHRoZSBmaWxlIGV4cGxhaW5pbmcgdGhlIHJlbGF0aW9u
c2hpcCBvZiB0aGUgSVAgdGhpcyBkcml2ZXIgaXMgZm9yIHRvIHRoZQo+IFJvY2tDaGlwIElPTU1V
IGFuZCB0aGUgcmF0aW9uYWxlIGZvciBoYXZpbmcgaXQgYXMgYSBzZXBhcmF0ZSBkcml2ZXI/IEkg
d2FudAo+IHRoaXMgcGFydCBvZiB0aGUgZGlzY3Vzc2lvbiBkb2N1bWVudGVkIGluIHRoZSBjb2Rl
IGluIGNhc2UgaXQgY29tZXMgdXAgYWdhaW4uCgpJIGhhdmUgYWxyZWFkeSBzZW5kIHYxMiB3aGVy
ZSBJIGhhdmUgcmVtb3ZlZCB0aGUgdXNlbGVzcyBmdW5jdGlvbi4KClJlZ2FyZHMsCkJlbmphbWlu
Cgo+Cj4KPiAtSm9lcmcKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

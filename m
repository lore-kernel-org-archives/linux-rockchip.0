Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDBFCCF2DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 10:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqX0+BWiRQc1GWbsTnnhD7LAJwQSdlcGklEayFpKix0=; b=06XKWZfeTnCDhW
	wIF5K5K0YerA14s3AKWBuXgtahcvaCgRJfUPs3fyirD4eare8JlnBtZMo7u6fp60+pu3zD8/NM/Ti
	No8kjtFec6AJmbIR7I/aM+yo4xK9gqOk7cBAaDZ86bKiGx/wWf8C+kW0ss0Kq5xjtyLxg4wCFDwgV
	/5CBT9ubONKNW09ArfAVOr0EkUL8dbt0LSG3by8DXrUk65r6GAG0idU2U0+aX0XcKr1zA21txFOCQ
	PSCae+YqGaealwk6iUbhmh7dNqxA1MY8pdOGw3NAv5G5pXIfzHdVX9rZpOjH+5U7XHhFnje5l/+As
	sTcxGfSaKxU3XL8w1Z+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmUt-00000001m6H-0U1m;
	Mon, 19 Jan 2026 10:28:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmUq-00000001m5X-1Mnl;
	Mon, 19 Jan 2026 10:28:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768818497; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c2+Oc9wLMk54ge9fXvqUDFJyAAT7ec7rGEzKziR5QaN+z1z+rYOLC4VTelqvmOGmxAWYdKRr6O6s6MNKpwLXDhlL5lcGObgtP0rdHil9Vb0BGdsnIs4YglM6IDmVEaxWfWUQUdSpnEvc+N1CvCq+b7wf0NJz67YVdzuQZegORwk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768818497; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=EsuevJkgsl5C8dp30TcVS68HeqiqukUtd3I4/TFexqc=; 
	b=PCpgNlj7n6I5+jp2Tf7Tr7dHfDi1tCAjsYDvdzMx5yFgbzZX6WT/h8sBwDUjW/hCqwYF0Ev65ozoN4kome1DuU0c3HYx8O/Q3KClOtdpMKpcdvH15iWcsAngNGweP3xIAGbiJSVfDmHKROVyhsDbXAFuGlYofF0jcARnDjD9J1M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768818497;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=EsuevJkgsl5C8dp30TcVS68HeqiqukUtd3I4/TFexqc=;
	b=IzMYIQ9xcILSyPL5IEgFBFGVo7j1D7ZBB9+pLkD8TJou1OhxL5m2aeY0mUG8sBsv
	Wv1ahwlZ/JxKsdyJ4LI5HiTSJL64r53/U8Kqgk1RJy/0aMnZ+lBkwQr9s8a6uXe7Fe1
	Ncr7UNildBZ9+LxfW3aXn6Ywt29jhDAL6JPF1W+g=
Received: by mx.zohomail.com with SMTPS id 1768818497079716.4924558723245;
	Mon, 19 Jan 2026 02:28:17 -0800 (PST)
Message-ID: <d81c0f26-ab36-42a9-bc40-b9767aea038a@collabora.com>
Date: Mon, 19 Jan 2026 11:28:11 +0100
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
X-CRM114-CacheID: sfid-20260119_022832_424923_03159957 
X-CRM114-Status: GOOD (  15.66  )
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
IGluIGNhc2UgaXQgY29tZXMgdXAgYWdhaW4uCgpEb2VzIHRoZSBmb2xsb3cgd29yZGluZyBzdW1t
YXJpemUgdGhlIHNpdHVhdGlvbiBjb3JyZWN0bHkgZm9yIHlvdSBpZiBJIHB1dCBpdAppbiBoZWFk
ZXIgY29tbWVudCA/CgogICogVGhpcyBoYXJkd2FyZSBibG9jayBpcyB1c2luZyBhIDIgcGFnZXMg
dGFibGVzIGFsbG9jYXRpb24gc3RydWN0dXJlLgogICogVGhhdCBtYWtlIHZlcnkgc2ltaWxhciB0
byBSb2NraGlwIGlvbW11IGhhcmR3YXJlIGJsb2NrcyBidXQgaXQgaGFzCiAgKiBpdCBvd24gZHJp
dmVyIGJlY2F1c2UgdGhlIHJlZ2lzdGVycyBvZmZzZXQgYW5kIGNvbmZpZ3VyYXRpb24gYml0cwog
ICogYXJlIGNvbXBsZXRlbHkgZGlmZmVyZW50LiBBbiBhZGRpdGlvbmFsIHJhaXNvbiBpcyB0aGF0
IHRoaXMgaGFyZHdhcmUKICAqIGhhcyBiZWVuIGRldmVsb3BwZWQgYnkgVmVyaXNpbGljb24gdG8g
YmUgdXNlZCBieSB0aGVpciBoYXJkd2FyZSB2aWRlbwogICogZGVjb2RlcnMgYW5kIGZvciBhIGdl
bmVyYWwgcHVycG9zZSBsaWtlIFJvY2tjaGlwIGlvbW11cy4KClJlZ2FyZHMsCkJlbmphbWluCgo+
Cj4KPiAtSm9lcmcKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

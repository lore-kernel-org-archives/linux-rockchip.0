Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E0A6CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 10:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+acC2TIrSCRJwOVZFoU34kZwkx1cQky6d1zV0CspWso=; b=Et9J+kTBK/1LaX
	ALpG0cDWRfYQIuF4wdx1m+q8Fi1O6O7vQ8VF1JcuiVKiDRUfgO4XdLQASFdUbZqmNkBBVtrhqLL8T
	mT8NgGZxt03oDwreE0t25dTIxQTII9zI5q/IeUDiEWFlBu7hyuJBIBBn+teDjmRenDFRrBtT2YJm9
	llXW4DgZk/SgqwQm2si8l+/QWmFy9aBxnk//LmwxfVyLAKvbhKjapgTb8boIXjr2VUaLQi7MoeAeF
	Mq+XNiSxk5ZcwXitUVO9UkjKa8JBu9vUnTIyFkB9n/YI8uvLgiAdnuGoKMP0PcJe7PV9+ONl/1f/V
	A/qnziLnd+wIpxQrudVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqr8n-0000000Bee6-1Fjj;
	Tue, 26 Aug 2025 10:43:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqMw-0000000BVQg-3vk9;
	Tue, 26 Aug 2025 09:53:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756201998; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=X3ygrqwUSuwx6dHiIGUQtLF1gLG8fJGjuWMLZdLv54TwSfNdJyatQRzdOHwg8IQikXjAJdmXu2WqkEn1IZA+JnLYycuq0OynB3qzLDRc/t+X2pFpIXOAoF83H/2ieIJGXBdX72EbHm5guOqMpviXNO6BK2zU/9ELbPeEe1pyi8g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756201998; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Dn3Jicl8olp9EaV0TqV4EBh3aYu+CRSHNFNRqLFHCz8=; 
	b=NNnul6sK8D5SZXlwiOdk2Vo/2XiikXGdpMcK9jsQfThAUe78IoXcAFVswPcuX+vbd0O9b8k1xcXw9CWCkqJJOToJEBtxKviFge/LuvSpwCiMFXLX/qyCGA197jrsGey/MA0nAlXGlfdUpkFyJZl4oIsTvELgk4TJxsQ0gL4zcO0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756201998;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Dn3Jicl8olp9EaV0TqV4EBh3aYu+CRSHNFNRqLFHCz8=;
	b=fTL3GjBlvFAwIZNuysAvG47xhYwqyFQ1DdN7snGwnhGRKREejSWnp4NRUPxtrwC6
	7KTnFtpqBWhvVmVvz9hhmlF9hthuyMPDQnpDX8hY9cHYPtjGfr/N9OtCOEWjRm7ofmj
	0uUOyEhks8tNqzhWrXXScbIoOhM0h8Z4Ci6OCW18=
Received: by mx.zohomail.com with SMTPS id 1756201996213653.2470978174058;
	Tue, 26 Aug 2025 02:53:16 -0700 (PDT)
Message-ID: <002f164b-4296-428b-95ec-1ca10b979070@collabora.com>
Date: Tue, 26 Aug 2025 11:53:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] arm64: defconfig: enable Verisilicon IOMMU
To: Krzysztof Kozlowski <krzk@kernel.org>, joro@8bytes.org, will@kernel.org,
 robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 jgg@ziepe.ca, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-media@vger.kernel.org
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-7-benjamin.gaignard@collabora.com>
 <b7869ddb-f44b-4d1f-a6c3-393a28d3cb00@kernel.org>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <b7869ddb-f44b-4d1f-a6c3-393a28d3cb00@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_025335_036048_7E83BE61 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
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

CkxlIDI2LzA4LzIwMjUgw6AgMTA6MjUsIEtyenlzenRvZiBLb3psb3dza2kgYSDDqWNyaXTCoDoK
PiBPbiAyNS8wOC8yMDI1IDE3OjM0LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4gRW5hYmxl
IFZlcmlzaWxpY29uIElPTU1VIHVzZWQgYnkgUkszNTg4IEFWMSBoYXJkd2FyZSBjb2RlYy4KPiBR
dWFsY29tbSBSSzM1ODg/IFRoaXMgaXMgZGVmY29uZmlnIGZvciBhbGwgcGxhdGZvcm1zLCBzbyBi
ZSBzcGVjaWZpYwo+IHdoaWNoIGJvYXJkIHVzZXMgaXQuCgpJdCBpcyBmb3Igcm9ja2NoaXAgcmsz
NTg4IFNvQy4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5
c3p0b2YKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30E68C9EC8D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 16:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BecvNPl8aC/gP9P/n7hejwbj2zOOqfoh3xGwqqoH51Q=; b=EnH0FtXO6tVCqK
	Z84/q42/EsccdNbQ+QkK6jdsq8blFzZRIY7FRzOkqTEVH6iO/IYCqSjKZItEZ21FyCYuKxgqNdFU9
	iK/5O8XJqkLgkNjG1CX4KIqVV7yP/nZ21Ed9SlwFf6CIW7PTPEXq4CC9Cx42VZAbOELxZe/aKB05j
	sMfdRcbCANkH4xKwqSqvBYt34ah2O5dbZBWDe/PZNaoZNXGg5vkL5Wz1V4HHklkb7F8LkdqJn/ro/
	qb40S2W5fTfaLtQMshQMyTo3L3tBOR+KEbNywaCVio6v/0kRtlulS0jJkow9n+iPQSUMAGIzf0eQz
	1aHGvt61TBvwgjnPEgWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKZx-00000005hsr-0ZSb;
	Mon, 12 Jan 2026 16:15:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKZt-00000005hrh-2Tcx;
	Mon, 12 Jan 2026 16:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768234534;
	bh=bYyVTbzbpIwXM0uPnbgo13phUMak6kBFgj53wnMc9SA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HGZNZGy10HGBzqThshbno0nz2XaqOM/284NDxsBeH8qwpN1V29GLTrTGkqMIaH57Z
	 eCt/UsK1RYFn3JfqeapeRZUjIMwoq6KG0NiZ9fpHfB/wdloU8YJpDsMCTP6TvdXVC+
	 aDIu2tcs1/mTsSu+bTinEBjjRa2IU8uPxtXQrufCRv8oF/Qk+Hy5kuq1aVB6Oy51jI
	 KTcZdVVSMY9UpjkvRi9DErTkvZ1rxDXsxsdPQdRfkVs3zkOMXZxUK+r+uOVoTJxpsi
	 EaQtkD5NkkBrRgpZqrdBaWrC1yaPZGEBIUYW5nLdhc4WL7owtCsnmUhLJ0iWpSGvoW
	 u0Ht4PiYdBn/A==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C313E17E0FF0;
	Mon, 12 Jan 2026 17:15:33 +0100 (CET)
Message-ID: <803c76e7-30fc-4a0d-ab30-ea779747300b@collabora.com>
Date: Mon, 12 Jan 2026 17:15:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/7] i2c: busses: Introduce and use HZ_PER_GHZ
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andi Shyti <andi@smida.it>, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Qianfeng Rong <rongqianfeng@vivo.com>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Khalil Blaiech <kblaiech@nvidia.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Andi Shyti <andi.shyti@kernel.org>, Qii Wang <qii.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Linus Walleij
 <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Ard Biesheuvel <ardb@kernel.org>
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_081537_788780_521DF9A5 
X-CRM114-Status: UNSURE (   9.09  )
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

SWwgMTIvMDEvMjYgMTQ6NDYsIEFuZHkgU2hldmNoZW5rbyBoYSBzY3JpdHRvOgo+IEEgZmV3IGRy
aXZlcnMgZm9yIEnCskMgaG9zdCBjb250cm9sbGVycyB1c2UgSFpfUEVSX0dIWiBpbiBudW1lcmlj
IGZvcm0uCj4gVGhpcyBpcyBsZXNzIHJlYWRhYmxlIGFuZCBwcm9uZSB0byBzdWJ0bGUgbWlzdGFr
ZXMuIEluc3RlYWQsIGludHJvZHVjZQo+IGEgd2VsbCBkZWZpbmVkIGNvbnN0YW50IGFuZCB1c2Ug
aXQgaW4gdGhlIGRyaXZlcnMuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlCj4gaW1wbGllZCBleGNlcHQg
b25lIGNhc2Ugd2hlcmUgNjQtYml0IGRpdmlzaW9uIHJlcGxhY2VkIHdpdGggMzItYml0IG9uZS4K
PiAKPiBBbmR5IFNoZXZjaGVua28gKDcpOgo+ICAgIHVuaXRzOiBBZGQgSFpfUEVSX0dIWgo+ICAg
IGkyYzogbWx4YmY6IFVzZSBIWl9QRVJfR0haIGNvbnN0YW50IGluc3RlYWQgb2YgY3VzdG9tIG9u
ZQo+ICAgIGkyYzogbXQ2NXh4OiBVc2UgSFpfUEVSX0dIWiBjb25zdGFudCBpbnN0ZWFkIG9mIHBs
YWluIG51bWJlcgo+ICAgIGkyYzogbm9tYWRpazogVXNlIEhaX1BFUl9HSFogY29uc3RhbnQgaW5z
dGVhZCBvZiBwbGFpbiBudW1iZXIKPiAgICBpMmM6IHJrM3g6IFVzZSBIWl9QRVJfR0haIGNvbnN0
YW50IGluc3RlYWQgb2YgcGxhaW4gbnVtYmVyCj4gICAgaTJjOiBzdDogVXNlIEhaX1BFUl9HSFog
Y29uc3RhbnQgaW5zdGVhZCBvZiBwbGFpbiBudW1iZXIKPiAgICBpMmM6IHN5bnF1YWNlcjogVXNl
IEhaX1BFUl9HSFogY29uc3RhbnQgaW5zdGVhZCBvZiBwbGFpbiBudW1iZXIKPiAKPiAgIGRyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtbWx4YmYuYyAgICAgfCAgNSArKy0tLQo+ICAgZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy1tdDY1eHguYyAgICB8IDExICsrKysrKy0tLS0tCj4gICBkcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLW5vbWFkaWsuYyAgIHwgIDcgKysrKy0tLQo+ICAgZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1yazN4LmMgICAgICB8IDEyICsrKysrKy0tLS0tLQo+ICAgZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1zdC5jICAgICAgICB8ICAzICsrLQo+ICAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1zeW5x
dWFjZXIuYyB8ICAzICsrLQo+ICAgaW5jbHVkZS9saW51eC91bml0cy5oICAgICAgICAgICAgICB8
ICAzICsrKwo+ICAgNyBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKPiAKCldob2xlIHNlcmllcyBpcwoKUmV2aWV3ZWQtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8g
RGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

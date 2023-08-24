Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58DADC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 13:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsPGdbB7kt4WJXV/+/4HTKcR+4wIAf6P5ZXCJYCszl0=; b=pHTAgOoQe2H/AS
	sG305q88a4qqEtypuLHZ/uLRdC2pUvi75XuqVBEXoLeeeNMgdUlkcD0kYvjOp4PEZowod/ePz1PyQ
	yJfWJ26itDvADyBgdJUl3FexxNnz2EX6RHrfS+kiElMu2hxjhUx0RtixgsbVA1ALN5+wMt6nHSZI7
	L42+LA4cfN+FXoc2pMObblxKqZqvinSp+Xvs4kmCrpB/cQzVZWE7Vo76rhr0QR1w9JdY8jQ2ijpVG
	D0dBE9gZ4scYcIHhrZuL8hnPL/hz5oLHpUhKx4Y822SpIErdbfK90NvV0g43781w2Wk97iy8Py4vm
	esZrtqUxerTS4W22jCXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZA4Y-0037FX-1V;
	Thu, 24 Aug 2023 13:08:26 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZA4U-0037E5-2g
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 13:08:24 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id F1C1D86418;
	Thu, 24 Aug 2023 15:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1692882501;
	bh=nO7zXAD+fh+afIFBfu7isdOiAx5EKoa5ejHe8jheNz8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pRGyFn1iuyON8Kt63CjHWRnzePy/vHXXGJFylekjJsCwLQq3lWPBjU5q3bzx0CO03
	 F6P0Ju/R/AdnGWDUjV8ZU8WJ5+b7EkKX6LTEilV38+uDWWLkQyChpwHEtdWTPXruFn
	 vHno+axKUv5A6HGaHl3ikM16T0KD1zBtMc1m0gE0aP0lyFGMRTiF23UFsx7zFCGcSl
	 nqJWKfKvF2Z1+l1seJE+Fpn0Z6SE1LSgeS2Tl3y0YgT0iHLTqR0XLp38TrJaZRNvpE
	 XKUbHDkcnmIZaZV8RGoTC0ROeL7zi5i4x+vdjwC0zYiZPLd0s9r+jvttgmMsuNA6es
	 LUl4DfMyoKLew==
Message-ID: <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
Date: Thu, 24 Aug 2023 15:08:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before
 use
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
References: <20230824013858.303105-1-marex@denx.de>
 <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_060823_057745_851600F5 
X-CRM114-Status: GOOD (  12.64  )
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

T24gOC8yNC8yMyAxMjozOSwgQWRhbSBGb3JkIHdyb3RlOgo+IE9uIFdlZCwgQXVnIDIzLCAyMDIz
IGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+Cj4+IFRo
ZSBpLk1YOE1NL04vUCBkb2VzIG5vdCBkZWZpbmUgdGhlIC5yZXNldCBvcCBzaW5jZSByZXNldCBv
ZiB0aGUgVlBVIGlzCj4+IGRvbmUgYnkgZ2VucGQuIENoZWNrIHdoZXRoZXIgdGhlIC5yZXNldCBv
cCBpcyBkZWZpbmVkIGJlZm9yZSBjYWxsaW5nIGl0Cj4+IHRvIGF2b2lkIE5VTEwgcG9pbnRlciBk
ZXJlZmVyZW5jZS4KPj4KPj4gTm90ZSB0aGF0IHRoZSBGaXhlcyB0YWcgaXMgc2V0IHRvIHRoZSBj
b21taXQgd2hpY2ggcmVtb3ZlZCB0aGUgcmVzZXQgb3AKPj4gZnJvbSBpLk1YOE0gSGFudHJvIEcy
IGltcGxlbWVudGF0aW9uLCB0aGlzIGlzIGJlY2F1c2UgYmVmb3JlIHRoaXMgY29tbWl0Cj4+IGFs
bCB0aGUgaW1wbGVtZW50YXRpb25zIGRpZCBkZWZpbmUgdGhlIC5yZXNldCBvcC4KPiAKPiBJIGFt
IHN1cnByaXNlZCBJIGRpZG4ndCBoYXZlIGlzc3VlcyB3aGVuIEkgd2FzIHRlc3RpbmcgdGhlIDhN
USBhbmQKPiA4TU0sIGJ1dCB0aGlzIG1ha2VzIHNlbnNlLgoKWW91IG5lZWQgdG8gdHJpZ2dlciB0
aGUgVlBVIHdhdGNoZG9nIHRvIHRyaWdnZXIgdGhlIGNyYXNoLCB0aGF0IG1lYW5zIAp5b3UgaGF2
ZSB0byBnZXQgdGhlIFZQVSBpbnRvIHNvbWUgd2VpcmQgc3RhdGUgd2hlcmUgaXQgZmFpbHMgdG8g
ZGVjb2RlIApmcmFtZS4gVGhlbiBpdCB0cmlnZ2VycyB0aGUgcmVzZXQgYW5kIC4uLiBib29tLgoK
U2VlIHRoaXMgcGF0Y2gsIHRoYXQgY29udGFpbnMgYSBnc3RyZWFtZXIgaW52b2NhdGlvbiB0byBn
ZW5lcmF0ZSBzdWNoIAp0cmlnZ2VyIGNvbmRpdGlvbiBpbnB1dCBkYXRhOgoKW1BBVENIXSBtZWRp
YTogdmVyaXNpbGljb246IERvIG5vdCBlbmFibGUgRzIgcG9zdHByb2MgZG93bnNjYWxlIGlmIApz
b3VyY2UgaXMgbmFycm93ZXIgdGhhbiBkZXN0aW5hdGlvbgoKIgpUbyBnZW5lcmF0ZSBpbnB1dCB0
ZXN0IGRhdGEgdG8gdHJpZ2dlciB0aGlzIGJ1ZywgdXNlIGUuZy46CiQgZ3N0LWxhdW5jaC0xLjAg
dmlkZW90ZXN0c3JjICEgCnZpZGVvL3gtcmF3LHdpZHRoPTI3MixoZWlnaHQ9MjU2LGZvcm1hdD1J
NDIwICEgXAogICAgICAgICAgICAgICAgICB2cDllbmMgISBtYXRyb3NrYW11eCAhIGZpbGVzaW5r
IGxvY2F0aW9uPS90bXAvdGVzdC52cDkKVG8gdHJpZ2dlciB0aGUgYnVnIHVwb24gZGVjb2Rpbmcg
KG5vdGUgdGhhdCB0aGUgTlYxMiBtdXN0IGJlIGZvcmNlZCwgYXMKdGhhdCBhc3N1cmVzIHRoZSBv
dXRwdXQgZGF0YSB3b3VsZCBwYXNzIHRoZSBHMiBwb3N0cHJvYyk6CiQgZ3N0LWxhdW5jaC0xLjAg
ZmlsZXNyYyBsb2NhdGlvbj0vdG1wL3Rlc3QudnA5ICEgbWF0cm9za2FkZW11eCAhIAp2cDlwYXJz
ZSAhIFwKICAgICAgICAgICAgICAgICAgdjRsMnNsdnA5ZGVjICEgdmlkZW8veC1yYXcsZm9ybWF0
PU5WMTIgISB2aWRlb2NvbnZlcnQgCiEgZmJkZXZzaW5rCiIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

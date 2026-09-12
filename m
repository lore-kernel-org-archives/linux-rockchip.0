Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54545C88E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 12:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0toTtrXb38qnfxeuwJ4zJ5ldr+eyz7GJkrOkZwukMY=; b=njCGtPE6CSdUvV
	OK3oA/4wGgy69wijqv6Nk4Dt9qaFT2pwSIjPolaQaWUKLsAkeFxW8xeBXFEbQnIMF6YKfGa6Jsflo
	BgBrxreJgKrWdKcNUjzcE5ua8+7yMyaKBOu6gwcq9WPHdKnU7XVW+Dsj8+Tt2skOtqCWulW8lRXv8
	iCbX1tkoybMTh6cgyXIz16Wjsm3FBhophhbpCuSpa6UzVULO9TrgRgfhbITN9Nqjf8UDgXjpyiECA
	wQ98uljeS+wrMnaKoNtLniriOgBBh/xxd3R0TVrkNI9qpfZGFg4HygJEruW8KKpnfkRbiXchXhq3K
	2Jnx27g3ZBhi3gVpwNoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5N35-00000000sNJ-0ueZ;
	Sat, 12 Sep 2026 12:41:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5N32-00000000sMb-0ZQZ;
	Sat, 12 Sep 2026 12:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vcYxdHFVaT3A3UhEJHDH4JKBcMrG+Bk4FHzp8MJW9wI=; b=YUi0DHbq1FTxQjpS3c8/wRf/Xv
	HZHktQqIgqe3hnLAURzxfaJnJY9kgm4aE4fWVmP23VbsnkdwErBetYiisLpdDTZVsCXR4ZqyIJL+5
	5R9UE5xmokeGp9rX62xphcRPYBjgjjlJ+Hl+CBzQjJTh+N92yprp/PZ8XG1fv0sTo3PSwVKjOruUe
	wvzYtJ3b9w5HlL48Z5EKWY8jbwDJcl79+sPEW722V5Lz6tUyG9oU3XmDkL4XtZP2xJWcXPXHljn63
	P0A4trSTeWklI64l+GCLIUbRuPeXhk0/wP1KLXRtYzPmNfPEovNbbzpQ1bQRair6imQp8KVqQQGWZ
	z3CsikYA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix i2c6 clock-frequency on NanoPC-T6
Date: Sat, 12 Sep 2026 14:41:32 +0200
Message-ID: <2071782.usQuhbGJ8B@phil>
In-Reply-To: <20260911152911.2088363-1-diederik@cknow-tech.com>
References: <20260911152911.2088363-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_054136_849897_6D2C0CC7 
X-CRM114-Status: GOOD (  10.45  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMTEuIFNlcHRlbWJlciAyMDI2LCAxNzoyODozMyBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4gVGhlIGkyYzYgYnVzIG5l
ZWRzIHRvIHJ1biBhdCAyMDBrSHosIGJlY2F1c2UgYXQgdGhlIGRlZmF1bHQgZnJlcXVlbmN5IG9m
Cj4gMTAwa0h6IGl0IG1heSBmYWlsIHRvIGZpbmQgdGhlIFJUQyByZXN1bHRpbmcgaW4gd2Fybmlu
Z3MvZXJyb3JzIGxpa2UKPiAKPiAgIHJ0Yy1oeW04NTYzIDYtMDA1MTogbm8gdmFsaWQgY2xvY2sv
Y2FsZW5kYXIgdmFsdWVzIGF2YWlsYWJsZQo+ICAgcnRjLWh5bTg1NjMgNi0wMDUxOiBoY3Rvc3lz
OiB1bmFibGUgdG8gcmVhZCB0aGUgaGFyZHdhcmUgY2xvY2sKPiAKPiBCdXQgb25seSBzb21ldGlt
ZXMuIFRoaXMgc2hvdWxkIG5vdCBoYXBwZW4gd2hlbiB0aGVyZSBpcyBhIGJhdHRlcnkgYmFja2lu
Zwo+IHRoZSBSVEMsIHlldCBpdCBkb2VzIC4uLiBzb21ldGltZXMuCgpJJ20gY29uZnVzZWQsIHNo
b3VsZG4ndCBhIHNsb3dlciBjbG9jayBhbHdheXMgd29yaz8KTGlrZSBJIHVuZGVyc3RhbmQgaG93
IGEgY2xvY2sgdGhhdCBpcyB0b28gZmFzdCBjYW4gY2F1c2UgaXNzdWVzIGR1ZQp0byBoYXJkd2Fy
ZSBsaW1pdGF0aW9ucywgYnV0IHJ1bm5pbmcgdGhlIGJ1cyBzbG93ZXIgc29tZWhvdyBzaG91bGRu
J3QKY2F1c2UgaXNzdWVzPwoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

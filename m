Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111B3C61DE2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2026 08:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWzw5y49bAqzNpFhG0WShPyYcPUJOOHVRS/D91SPwE0=; b=FqJI7XlrS5pYFl
	AOxZkEIUOL/a/5MaCBiNohzB58wyycx6uft+2JvbHxQjUpqtL6pzBVZmXA8gG0qWkUxJy0I10fymS
	tohg7UunpxR8Ek3rrRwSPcqDwWtRVQbfHnSExpPrxzqBQuUNqpXJpdyURYzMeNxZA216dmK4B5nU2
	t4h8eAeKvaAgJMldtOJsp4GwKZ3d+8XE0TioO13IscWKTBWjq0ssyNBRiFncb+BSsLXUAPLQj9AUP
	Fn5O3b1ZiJHiK5DlHNM1gxiFhHYtt/GbSLDmnuREcGs5w62dwqfwSLSH5epYjJPJRAJtpbx/deA5E
	sOR+1KPJbjyo2j/4h6Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xCv-00000008ohJ-1erC;
	Mon, 31 Aug 2026 08:17:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xCs-00000008ogD-2xJB;
	Mon, 31 Aug 2026 08:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=n0oCvf1fmqu014f3i21FkaEwfd+AIiy8ZD6OncmIF9c=; b=yRaPNrA40oj+waTkRbZd89GD0o
	cvG0YR6TeYkX7+4FfW2Ezf3DW6rE7R4cMPwZznSoqLmfjEfRgAV3q2rQ8ccyoPyGFDRCV4QnHpZ4w
	7xn6fQ6RcmtGCFmh8LaZCFQpfeZszWx1Weo2wNddolJ/6A5BRbJGypZ4UDSgfGNl2A3JlNrCGxaJW
	/Q83tn31R+EVlmNmZ4BSkP3oeC/hopDgCUf/9hu68Bd/Lno1vSOwLRXKecKu8ZfhCUGKod+bWPxCw
	7exQzTwKOpXFbW6BNefw6sEbQDJLDIHm5p8i2kfdwBcnKtRz55qhSbo8vvhsS1c439pPQ33WyXXle
	WRCvGs5w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vladislav Leonov <vlad@zlab.su>, Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Joshua Crofts <joshua.crofts1@gmail.com>, Simon Glass <sjg@chromium.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Fix RV1106 SAR-ADC support
Date: Mon, 31 Aug 2026 10:17:17 +0200
Message-ID: <5330090.ejJDZkT8p0@diego>
In-Reply-To: <20260831025557.6ee7c42e@jic23-huawei>
References: <20260823122039.20831-1-vlad@zlab.su> <20260831025557.6ee7c42e@jic23-huawei>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_011730_806266_68806816 
X-CRM114-Status: GOOD (  22.12  )
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

SGkgSm9uYXRoYW4sCgpBbSBNb250YWcsIDMxLiBBdWd1c3QgMjAyNiwgMDM6NTU6NTcgTWl0dGVs
ZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKb25hdGhhbiBDYW1lcm9uOgo+IE9uIFN1
biwgMjMgQXVnIDIwMjYgMTU6MjA6MzEgKzAzMDAKPiBWbGFkaXNsYXYgTGVvbm92IDx2bGFkQHps
YWIuc3U+IHdyb3RlOgo+IAo+ID4gVGhpcyBzZXJpZXMgZml4ZXMgdGhlIHN1cHBvcnQgZm9yIHRo
ZSBSVjExMDYgU0FSLUFEQyBpbiB0aGUKPiA+IHJvY2tjaGlwX3NhcmFkYyBkcml2ZXIgYW5kIGl0
cyBkZXZpY2UgdHJlZSBiaW5kaW5ncy4KPiAKPiBJIGRlYmF0ZWQgaG93IHRvIGFwcGx5IHRoaXMu
ICBUZWNobmljYWxseSBwYXRjaCAzIGlzIGEgZml4LCAyIGlzIGFuIGVuYWJsZXIKPiBhbmQgMSBp
cyBhbHNvIGEgZml4LCBidXQgb25lIGZvciBzb21ldGhpbmcgdGhhdCB3ZSBqdXN0IGVmZmVjdGl2
ZWx5IHBhdGNoZWQKPiBvdXQgZnJvbSBydW5uaW5nIGluIHBhdGNoIDMuCj4gCj4gU28gaW4gdGhl
IGVuZCBJJ20gdGhpbmtpbmcgdGFrZSB0aGlzIHRoZSBzbG93IHBhdGggZm9yIG5leHQgY3ljbGUu
ICBTaG91dAo+IGlmIGFueW9uZSB0aGlua3MgdGhpcyBzaG91bGQgZ28gaW4gZHVyaW5nIHRoZSAt
UkNzIGFuZCB3aGV0aGVyIGFsbCAzCj4gc2hvdWxkIGRvIHNvIG9yIGp1c3QgcGF0Y2hlcyAyIGFu
ZCAzIChsZWF2aW5nIHVzIHdpdGhvdXQgZHJpdmVyIHN1cHBvcnQgZm9yCj4gbm93KS4KPiAKPiBB
cHBsaWVkIHRvIHRoZSB0ZXN0aW5nIGJyYW5jaCBvZiBpaW8uZ2l0CgpJIGd1ZXNzIEkgc2hvdWxk
IHNob3V0IHRoZW4gOy0pIC4KCkRULUJpbmRpbmcgcGF0Y2hlcyBhcmUgc29ydCBvZiBpbmRlcGVu
ZGVudCBvZiB0aGUgZHJpdmVyIGNoYW5nZSBhbmQKYXJlIGNvbnNpZGVyZWQgQVBJIHdoaWNoIHNo
b3VsZCBub3QgY2hhbmdlIGFmdGVyIHRoZSBmYWN0LgoKT3VyIERUcyAoYnV0IGFsc28gb25lcyBw
b3NzaWJseSBjb250YWluZWQgaW4gZmlybXdhcmUgc29tZXdoZXJlKSBhcmUKdmFsaWRhdGVkIGFn
YWluc3QgdGhlIGJpbmRpbmcgYW5kIGl0IHNlZW1zIHRoZSBjb3JyZWN0IGNvbXBhcnRpYmxlIGdv
ZXMKZnJvbSAKICAgICJyb2NrY2hpcCxydjExMDYtc2FyYWRjIiwgIiByb2NrY2hpcCxyazM1ODgt
c2FyYWRjIgp0bwogICAgInJvY2tjaGlwLHJ2MTEwNi1zYXJhZGMiCgpBcyB0aGUgZml4ZWQgY29t
bWl0IGlzIHBhcnQgb2YgNy4zLXJjMSwgSSBndWVzcyBpdCB3b3VsZCBiZSBuaWNlIHRvCmhhdmUg
cGF0Y2hlcyAyKzMgaW4gNy4zIGFuZCBwYXRjaCAxIGNhbiB3YWl0IGZvciA3LjQgLgoKV2UgZG9u
J3QgbmVlZCB0aGUgZHJpdmVyIHN1cHBvcnQgKGR0LW5vZGVzIGp1c3QgZG9lc24ndCBiaW5kIHRv
CmFueXRoaW5nKSwgYnV0IGl0IHdvdWxkIGJlIG5pY2UgdG8gbm90IHByb2xpZmVyYXRlIHRoZSB3
cm9uZyBiaW5kaW5nIGluCmFuIGFjdHVhbCByZWxlYXNlLgoKCm15IDJjdCA6LSkKSGVpa28KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

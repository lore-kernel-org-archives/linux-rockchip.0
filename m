Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372E5C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 09:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lG/h7CTFWWCaT5W/71Unp7+dy3nVDRaSbFvX8c6f2u0=; b=rznd1eDpqLmQutU8tdVGPdcUir
	6gGKyPu1AUW+uv6aTxLOrA4RPHdv8PmPlxRQMCQ2KkjKLc7R9De27x6DISLJEADseokcLRdRjXRdM
	9G9jycLVcwjz/WVXKYRhYcR4TLbybZV0yLQZ2BnndvOpPaUQLK5DAvBanTxx658M9/4QIfCZ1XIwb
	4WbsNcRcBfWpgxYkDV8q3iqYvVhiSJ6ooVZgt+E3AiGDbd3jdSacADleRTMcQtljZgcd0W5Duq5UT
	XBBe6/KI9bNJ6gfDFK8kjQF+iQ5CS8oZ3QeWURBH0bUjKXNhty0Lis4l83ruqRQHEyrS5Vx07caWv
	QYLUGVsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghLi-00000008Cg4-1LTz;
	Wed, 21 Aug 2024 09:09:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghKz-00000008Cb1-2OFN;
	Wed, 21 Aug 2024 09:09:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724231343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KnuXtuSFEhMmZPIHCVemmAS+lD9TQ4aP2hCr8AgCkXc=;
	b=a0rF/+1LfI97JuyVlhGIwDzyth9/l0OMMZUt81srp2rWt4dkkM6bd0ZaWWTYfGrJc5A1tv
	pUfu43vT6KSTOexVuMJLUaGKuoUQ1Q9eqgjcYEZazt2HeiiGsbE+K8aUJvnn4m3xIl2+oi
	KI1ZS+5sPyt6+fCGBjHyZNmFZ5tiUSHBQ95UHBEl/Hl1rR/LbgPP8kRNBCyDmGcuA5ehkX
	oUarZQQCxjfAZ/bOSUW1sjEmlprH0DPmERR9xcyLMLloiw5BYzaKLqH1evyeJNtUB09YLT
	ydNkBfQH8JW+upU5iAAuO6o8rxXuJQwx4S1uTATV8yPltOWvH95thM5+UpdGFg==
Date: Wed, 21 Aug 2024 11:09:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: phy-rockchip-inno-usb2: Improve error
 handling while probing
In-Reply-To: <12869965.VsHLxoZxqI@diego>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <866445027a4f41165c872f494b04c218b6e67b09.1724225528.git.dsimic@manjaro.org>
 <12869965.VsHLxoZxqI@diego>
Message-ID: <486bddb6aad14d05a3fb2d876d0d9d0d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_020905_802169_94C3685A 
X-CRM114-Status: GOOD (  14.35  )
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

T24gMjAyNC0wOC0yMSAxMDo0NCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIxLiBBdWd1c3QgMjAyNCwgMDk6Mzc6NTUgQ0VTVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4g
SW1wcm92ZSBlcnJvciBoYW5kbGluZyBpbiB0aGUgcHJvYmUgcGF0aCBieSB1c2luZyBmdW5jdGlv
biAKPj4gZGV2X2Vycl9wcm9iZSgpCj4+IHdoZXJlIGFwcHJvcHJpYXRlLCBhbmQgYnkgbm8gbG9u
Z2VyIHVzaW5nIGl0IHJhdGhlciBwb2ludGxlc3NseSBpbiBvbmUgCj4+IHBsYWNlCj4+IHRoYXQg
YWN0dWFsbHkgcHJvZHVjZXMgYSBzaW5nbGUsIGhhcmRjb2RlZCBlcnJvciBjb2RlLgo+PiAKPj4g
U2lnbmVkLW9mZi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gCj4+IEBA
IC0xMzc1LDggKzEzNzIsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF91c2IycGh5X3Byb2JlKHN0
cnVjdCAKPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCXJwaHktPmlycSA9IHBsYXRmb3Jt
X2dldF9pcnFfb3B0aW9uYWwocGRldiwgMCk7Cj4+ICAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRl
diwgcnBoeSk7Cj4+IAo+PiAtCWlmICghcGh5X2NmZ3MpCj4+IC0JCXJldHVybiBkZXZfZXJyX3By
b2JlKGRldiwgLUVJTlZBTCwgInBoeSBjb25maWdzIGFyZSBub3QgCj4+IGFzc2lnbmVkIVxuIik7
Cj4+ICsJaWYgKCFwaHlfY2Zncykgewo+PiArCQlkZXZfZXJyKGRldiwgInBoeSBjb25maWdzIGFy
ZSBub3QgYXNzaWduZWRcbiIpOwo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwl9Cj4+IAo+PiAg
CXJldCA9IHJvY2tjaGlwX3VzYjJwaHlfZXh0Y29uX3JlZ2lzdGVyKHJwaHkpOwo+PiAgCWlmIChy
ZXQpCj4gCj4gSSByZWFsbHkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgcmF0aW9uYWxlIGhlcmUuIFVz
aW5nIGRldl9lcnJfcHJvYmUgaGVyZQo+IGlzIGp1c3QgZmluZSBhbmQgd2l0aCB0aGF0IGNoYW5n
ZSB5b3UganVzdCBpbnRyb2R1Y2UgbW9yZSBsaW5lcyBvZiBjb2RlCj4gZm9yIGV4YWN0bHkgdGhl
IHNhbWUgZnVuY3Rpb25hbGl0eT8KCkFzIHdlIGtub3csIGRldl9lcnJfcHJvYmUoKSBkZWNpZGVz
IGhvdyB0byBsb2cgdGhlIHJlY2VpdmVkIGVycm9yIAptZXNzYWdlCmJhc2VkIG9uIHRoZSBlcnJv
ciBjb2RlIGl0IHJlY2VpdmVzLCBidXQgaW4gdGhpcyBjYXNlIHRoZSBlcnJvciBjb2RlIGlzCmhh
cmRjb2RlZCBhcyAtRUlOVkFMLiAgVGh1cywgaW4gdGhpcyBjYXNlIGl0IGlzbid0IGFib3V0IGtl
ZXBpbmcgdGhlIExvQwpjb3VudCBhIGJpdCBsb3dlciwgYnV0IGFib3V0IHVzaW5nIGRldl9lcnIo
KSB3aGVyZSB0aGUgcmVzdWx0aW5nIG91dGNvbWUKb2YgZXJyb3IgbG9nZ2luZyBpcyBhbGVhZHkg
a25vd24sIGFuZCB3aGVyZSBsb2dnaW5nIHRoZSBlcnJvciBjb2RlIAphY3R1YWxseQppc24ndCBo
ZWxwZnVsLCBiZWNhdXNlIGl0J3MgaGFyZGNvZGVkIGFuZCB0aGUgbG9nZ2VkIGVycm9yIG1lc3Nh
Z2UgCmFscmVhZHkKdGVsbHMgZXZlcnl0aGluZyBhYm91dCB0aGUgZXJyb3IgY29uZGl0aW9uLgoK
SW4gb3RoZXIgd29yZHMsIGl0J3MgYWJvdXQgYmVpbmcgYXMgcHJlY2lzZSBhcyBwb3NzaWJsZSB3
aGVuIGRlY2lkaW5nIApiZXR3ZWVuCmRldl9lcnIoKSBhbmQgZGV2X2Vycl9wcm9iZSgpLCBpbiBi
b3RoIGRpcmVjdGlvbnMuICBJIGhvcGUgaXQgbWFrZXMgCnNlbnNlLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

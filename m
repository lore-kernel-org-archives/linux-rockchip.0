Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06035D185FC
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 13:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJPYAxAJlWAaKyIulXZEaUASb04oBAVFdZHjmoQ1rmE=; b=Qgji8NQOI37x8f
	awzPpBF5hJmj3yWEoQRyztCEYYAhME2jZ0v16YoHmVVhqR7NMfnHMWjMoVk81GniNMzBj/ChvsjUs
	X+44OsU78k3BY2NIRUqX0Riplhkg0FsLiALC9kSI2EasPXuayld9UibsbYY252uIPKgpB2rmrj15r
	khSXVUheggvWGX9VdxwXjeL0eIzjSljZsIDrszeC5mw2BZGEix5DZivTXljgaWp8M4P/YG/29leZs
	Yaldc3vy+/rds/YLIPaYvsxuZDeBe6bUZu/4wPx1rQ6pSC+sOPbUToe7jSRWy7+igA+GFVmTyD3H1
	TsdtfkPY0KORm6IMvlxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdqU1-0000000HF9x-2Fvh;
	Thu, 08 Jan 2026 13:55:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdqTy-0000000HF8T-0BQy;
	Thu, 08 Jan 2026 13:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=G8UJ8c/YdbF7K7cam1fQP7rJ2G+VG0sxNQemUdaEvgE=; b=2on3GKlU5bki7VzOeETLHDYUaP
	ArDx0fY+yaTtcnAfKuUrhHZ83nAt2SQF2TeOydKhWAtMhKL5uAFfRhkC755kz9HxjEPKg+BNZnaNf
	FX2tvJth+t2V/a0kOHN0xrBMlQxb6OxCqqJOJpu4dI4BWTNgVq58AochQdbDQ58HjrX+EFMSRbI5y
	UoN8chwJvjg5rehokBF6XGEcML0GbPeR+hr1scJo5Hdg6mpLkAkLHIoMkvSPDWEbFOSFKh04DzaHt
	nU8A36wOBr1f4fR8Ba30gDnIh7N7N22cWqG7rJit5FtfuXC4pjSSA2K3iEHiMfsePKwfzlM5DSFOu
	EAO6E2Rg==;
Received: from i53875a63.versanet.de ([83.135.90.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdqTa-001VS8-9b; Thu, 08 Jan 2026 14:54:58 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: naoki@radxa.com, Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
Date: Thu, 08 Jan 2026 14:54:57 +0100
Message-ID: <2090167.kXSN5OTJKJ@diego>
In-Reply-To: <20260108123008.134323-1-amadeus@jmu.edu.cn>
References: <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
 <20260108123008.134323-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_055522_107743_752070D2 
X-CRM114-Status: GOOD (  11.01  )
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

QW0gRG9ubmVyc3RhZywgOC4gSmFudWFyIDIwMjYsIDEzOjMwOjA4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2h1a3VuIFBhbjoKPiA+IFYxLjIwOSBhbmQgbGF0ZXIgc2hv
dWxkIGhhdmUgUlRDLiBXaGF0IHZlcnNpb24gZG8geW91IGhhdmU/Cj4gCj4gIyBoZXhkdW1wIC1D
IC9zeXMvYnVzL2kyYy9kZXZpY2VzLzAtMDA1MC9lZXByb20KPiAwMDAwMDA3MCAgMGMgMDAgMDAg
MDAgMDEgMDAgNTYgMzEgIDJlIDMyIDMwIDM4IDAwIDAwIDg5IDBiICB8Li4uLi4uVjEuMjA4Li4u
LnwKPiAKPiBIb3cgc2hvdWxkIHdlIGhhbmRsZSB0aGUgb2xkZXIgdmVyc2lvbnM/CgpJIHRoaW5r
IHdlIG1pZ2h0IHdhbnQgYW4gZHQtb3ZlcmxheSBmb3IgdGhpcy4KCkFzIHRoZSB2YWx1ZSBjYW4g
YmUgcmVhZCBmcm9tIHRoZSBlZXByb20sIHlvdSBjb3VsZCBldmVuIGFkZCBjb2RlIHRvIHRoZQpi
b2FyZCBpbiB1LWJvb3QgdG8gc2V0IHRoZSAiZmR0b3ZlcmxheSIgdmFyaWFibGUgYXV0b21hdGlj
YWxseSBmb3IgZXh0bGludXguCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

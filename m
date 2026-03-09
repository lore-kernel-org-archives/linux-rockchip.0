Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8D06F4181C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 17:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/sbyOdzfgHm1bq0JXqo2NqmLc8LAvd9yMrOIQ42Td0=; b=h0PRB//yBeWHdS
	AmmAt5vIclAXPrGy7T5W6odXG5x5Xnu3hGJR4N8Xx4jVwrdAOus+Q/cbxG42R6mR0WTjpN1avDsRP
	SMKito/HJoRlE1r3qLVk+2HYbZvqA4H3eg1o6Ae3tgilPonI8HoEyIVhxdWkxF3WXO6OZfxbtGhZ/
	amMfir6e8dP//R3f50vgfACuVUY4yW+F7H9G+PB//PG1TKdkqXUigSQYl5igUwU/jN+6HXYHG+XIr
	cHMPfY49XcANQo/83wIDFN8lZW16/4YCMBJZRs3/RubbF3imQsfAc6G3alo4jFrgDiQKe2i7koCm7
	kp/hMEn6BLtsqm7TRyig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzeBl-00000007o5g-3HGE;
	Mon, 09 Mar 2026 17:14:41 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzeBj-00000007o4n-08e5
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 17:14:40 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2ae5423b02aso55181065ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 10:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773076478; cv=none;
        d=google.com; s=arc-20240605;
        b=H90WatuwJtJ0BdLuopwcu8L7IzwTNS8MQw0ObrF1anOG/SwGIccLZXt0OLKOVXe+Ro
         2M1ZxcbGXdv/ZgEakj6VdslYn6l8aQRgdAA4zcm5PtYIaEjyDvvQQzrGU8tnM47czXff
         j13voXMojN7iaFIvUmHSUrt1m97HdH39AGnFL52n9l4XjOaCbGkB/WGkPJRFfpHcjyYX
         5tmiyRSL3sjXG7ESCMj/Yk6WISeOjOJncX6q0201rACjEAKQ7M9ohcoSmWCcgQBTIT1M
         GvqeI6oYEfRGLuvAE6yp6IAsm471ZZ2iQ29Qtt8BTuXqcXX5B3f9JiBCx3a5LxZ+euo8
         wlag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tjsgR+2CRjAh8JNtV5+Cb1v0JZ/Gymuic9XSyJ4Xs88=;
        fh=NVQ6mjCD6g+vzn3JJtQCorbok4X1MncEtsK59XOkKeo=;
        b=UIBNHdu2SupZHagqlrhWLfw2lAi3o1q79qfIbxRHSTNeweZf+2AVelZtzZ2aBg2NkV
         IYhjeVQsMwHI8VX6b7Y25TLB0yKdoJBbM/vkyL+HxChz8++7EPWoo3u7rW2T5wlJ0zVT
         dE9muATGFvmV+hjCnU1jJ7rx3QzR+vaA39Z2+Kp/HDQ/ssGqk08YqPVg7mAtyKQsDMtF
         AnYUiQX/MDzBpoudUbJIUqMm09Zhy2H8ivK66F8yzYOlrQcsVYevN5+umdOQAs/BrZpj
         i+Wxpat84J7Pay/BIlQ0XIsbPKStqG5kIxW8n9jwmRrhoDMNnVuGBShWUp0O0nJx8kqt
         jIww==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773076478; x=1773681278; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjsgR+2CRjAh8JNtV5+Cb1v0JZ/Gymuic9XSyJ4Xs88=;
        b=RjvHeWNRyV5a+LnPeTCQfmzcePtVGxe6vhHKlEhRoqnYTyYEMs7kZsJDejrU4JOOQM
         HimNhodLsGiKGDwrhI32TWxH7y5QZ388svm8RxgwKOwkQRigrbzUoRqxchLaRSCC0lx0
         VU+y/0jONCvxi4zPmEyEv7zr0Mh3KJ9aAo+3wi12gm+o08hV+Gbwlh/l/E9vMp6LTbuY
         i92JnSzoZciVdiuzl7uAsyhf6usrmgnKtfV6pl5zdaPD63RqcTIkhiV/K+EFCtPqzvrd
         qOtRegsWP6+NyKipnQqKtrBSoNljdZpnn/Awa5AKaz/OAa0Lxih2MVqlfCO0orvGxlWT
         dsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773076478; x=1773681278;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjsgR+2CRjAh8JNtV5+Cb1v0JZ/Gymuic9XSyJ4Xs88=;
        b=jEyrZgSFHpVyPmqwDCYinpkZgoOPYX9y2kJ+qB8+8lpYmvL6g8FxhPBwrLXhPa6T8D
         aH59S4H6M/yGv7cAGWt9X8R+KOMSybWtpaorOaLZLsDEYSETn4ztI3V+Ql7IztS6jOYj
         xnFj/Hsnb1q6GOgh3pQqg66QiDPuoXDOMkRD3MeUOhOcx0fioJJ2T1JiTEjOPkrMI9XY
         nmuiphj1TyiFHHSQNOqZr4D5X5tW+zRZBGdrgjmHizXgdIlLjzbwyZ854Mc0ax1WCiJz
         Vva+D4X2drZurkLOzXBbc9UKhpUTcfoI3FavCcKRW5ufcEdMTINr8EoBUrE/HVFMHmW6
         Q8fg==
X-Forwarded-Encrypted: i=1; AJvYcCXpqWFUv3bO/npMtFd/XYI6Hf9suiI0dOsGH5dbQiQzbOdz8igX5KnRWhB86N1GPJ/nXN/DO5kXwl6/uhnhVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKrxk33/bPmb1SIHCmocPqdxzDuLvKw3kVPbqOmvUVCPM2cvCV
	eWUf0buHgLllRFiF68lGkafze25cpurO0Rw2cLHCxm9MO8N4kFf63k/GCzmmiFr3UHvoe4GVm+l
	HgjKqo/roMgIH9pYM25yQzOmPuoKSeFM=
X-Gm-Gg: ATEYQzzVKQT8edhkB3SRPcWgrlCgUB3L75SIUSWcUrxHK7hRLkotkIUAvOvC29iF4Hc
	W7n/1C0ExwFYLuwO2fBDUbiL/bHra9kT7BRfSj9ZaOBmpbqkJOGJsj5nQBKN6wNJjRoclWwQVyW
	ic9IIOWNJRnIEWKjtsoKamB1mC8tzzC4MwwK05M93hOoyZwxJfSfTD+xbqC+LrCHJ3Q/jqsbp1y
	3binIfqkOceapmlYa6u3Munxa8vA+sq59O35Ze1HrmG5pvNVLK1wAGGlbU7CWsOL8gTo5XKcSF6
	b1ye6Bgq
X-Received: by 2002:a17:903:3b8b:b0:29f:301a:f6cf with SMTP id
 d9443c01a7336-2ae8243435emr108577225ad.35.1773076476823; Mon, 09 Mar 2026
 10:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260305-sfc-v1-1-6fbf6df0e899@gmail.com> <52755ab9-7387-4f4b-95d4-2bfdeedc3e5f@sirena.org.uk>
In-Reply-To: <52755ab9-7387-4f4b-95d4-2bfdeedc3e5f@sirena.org.uk>
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 10 Mar 2026 01:14:25 +0800
X-Gm-Features: AaiRm53J4G3yrXI8HJ6leV9ZFby5HBAwXjcN0JvsfYQSy0YFE0AUPPrn31xO1q8
Message-ID: <CAN4SLj2NjGSFqG4hatQd0CL=RgkKJXeQJZuYPRM58-vp4GqBEA@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip-sfc: Remove redundant spi_unregister_controller()
 call
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Jon Lin <jon.lin@rock-chips.com>, linux-spi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_101439_094056_964F1E61 
X-CRM114-Status: GOOD (  16.90  )
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

T24gTW9uLCBNYXIgOSwgMjAyNiBhdCA4OjI54oCvUE0gTWFyayBCcm93biA8YnJvb25pZUBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgTWFyIDA1LCAyMDI2IGF0IDExOjM4OjIxUE0gKzA4
MDAsIEZlbGl4IEd1IHdyb3RlOgo+Cj4gPiBUaGUgZHJpdmVyIHVzZXMgZGV2bV9zcGlfcmVnaXN0
ZXJfY29udHJvbGxlcigpIGZvciByZWdpc3RyYXRpb24sIHdoaWNoCj4gPiBhdXRvbWF0aWNhbGx5
IHVucmVnaXN0ZXJzIHRoZSBjb250cm9sbGVyIHZpYSBkZXZtIGNsZWFudXAgd2hlbiB0aGUKPiA+
IGRldmljZSBpcyByZW1vdmVkLgo+Cj4gPiBUaGUgbWFudWFsIGNhbGwgdG8gc3BpX3VucmVnaXN0
ZXJfY29udHJvbGxlcigpIGluIHRoZSByZW1vdmUoKSBjYWxsYmFjawo+ID4gaXMgdGhlcmVmb3Jl
IHJlZHVuZGFudCBhbmQgc2hvdWxkIGJlIHJlbW92ZWQuCj4KPiBOb3QganVzdCByZWR1bmRhbnQs
IGl0J2xsIGJlIGEgZG91YmxlIGZyZWUuCj4KPiA+IC0gICAgIHNwaV91bnJlZ2lzdGVyX2NvbnRy
b2xsZXIoaG9zdCk7Cj4gPiAgICAgICBkbWFfdW5tYXBfc2luZ2xlKCZwZGV2LT5kZXYsIHNmYy0+
ZG1hX2J1ZmZlciwgc2ZjLT5tYXhfaW9zaXplLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICBE
TUFfQklESVJFQ1RJT05BTCk7Cj4gPiAgICAgICBmcmVlX3BhZ2VzKCh1bnNpZ25lZCBsb25nKXNm
Yy0+YnVmZmVyLCBnZXRfb3JkZXIoc2ZjLT5tYXhfaW9zaXplKSk7Cj4KPiBUaGlzIGRvZXMgbWVh
biB0aGF0IGlmIHRoZSBkZXZpY2UgaXMgYmVpbmcgZm9yY2UgdW5yZWdpc3RlcmVkIHdpdGgKPiBj
aGlsZHJlbiBzdGlsbCBwcmVzZW50IHRob3NlIGNoaWxkcmVuIG1pZ2h0IHN0aWxsIGJlIHN1Ym1p
dHRpbmcgU1BJCj4gcmVxdWVzdHMgd2hpbGUgdGhlIERNQSBidWZmZXIgaXMgdW5tYXBwZWQsIGJ1
dCBpbiB0aGUgbm9ybWFsIGNvdXJzZSBvZgo+IGFmZmFpcnMgaXQncyBtb3JlIGxpa2VseSB0aGF0
IHRoZSBkZXZpY2VzIHdpbGwgYmUgdW5yZWdpc3RlcmVkIGJlZm9yZQo+IHRoZSBjb250cm9sbGVy
LiAgSXQgd291bGQgYmUgYmVzdCB0byBlaXRoZXIgcm9sbCBiYWNrIHRoZSB1c2Ugb2YgZGV2bSBv
cgo+IGFkZCBhIGRldm0gYmFzZWQgdW5tYXAgb2YgdGhlIGJ1ZmZlciBoZXJlLCB0aGUgY3VycmVu
dCByZW1vdmUgZnVuY3Rpb24KPiBoYXMgY29ycmVjdCBvcmRlcmluZy4KCkhpIE1hcmssClRoYW5r
cyBmb3IgdGhlIHJldmlldywgSSB3aWxsIGZpeCBpdCBpbiBWMi4KCkJlc3QgcmVnYXJkcywKRmVs
aXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

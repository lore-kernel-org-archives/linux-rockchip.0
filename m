Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BD8CF8540
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 21:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd1cxUKQJS+VhRyeDWv+DSailUFi7RRSdyC+FfF5WLM=; b=cEuPB4/dUTkGIC
	2LoKWfUhSYCblpXTPgEFgi4u30rcBX+ce5LgCsm164vU/kI8h4taa2pPvQ+EtllKyAtMEFCEnKyaK
	Y5Vp4zkMPjYwdVQIkk21oaczVZ3hJmsgaOM0isI4U7PnClJjyAjK3XJ0f65fjjm5b+P3Q/tjsTR8B
	k92wQqSUKN6cDcE8aeK/DMs57UNxBeG2/W3+TJmaxrcLVu5kI0vZX1BMC6kdTSwONjhLwr88KPO64
	iFWUb5Ur2oa5j/SDQAar1kX/J0ZWPvloHiLuydYcREMAjBq9yGFt/0OhJIMRWg9m1x5M707/Gq32H
	Tb2vXMyzA6whLfszX3Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw7LZ-00000007agD-10Nw;
	Wed, 02 Oct 2024 21:57:25 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw7KJ-00000007aai-0F2Z
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 21:56:08 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e25cc9c93a9so281924276.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2024 14:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727906166; x=1728510966; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0EBJ5lNu/jJJVuBHSnFz5qqW/dBFft5gPiqC+7OkQE=;
        b=mLbYmjikC06kJTZcO2FewUzswvBVCgmk68pWAMjAWk0b7iuxqaIL6a2KgxH8k30X5k
         R6f3Sj+l9SMEwqzOmgEuaTWbDBErTCMzSgY4isuzUkphTyEAtmOC8GcM3nWKgA0gGyy8
         Q+kLAi3CdQvZT0tAkkwE2f9iEe1onG3+tZ9v22OKj4z5/beuROTyTgpxAqie+irf2fmH
         Efp8BdKuDOwUk7w9cJWtrox8vmiYOJv5GeaaYxYmqNN10JXF0B59ncgbIwSdfAnk29s+
         1loqBOPXJKeD3vrdVvoTiVaEZZknwn3c6gDczdC0PKGQDq7xYEv3TRaPmPixVdwcCZ6O
         1q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727906166; x=1728510966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0EBJ5lNu/jJJVuBHSnFz5qqW/dBFft5gPiqC+7OkQE=;
        b=updojBnsWKLqfTL9AhL55PpfZc2n46+mPjlzUH+ZSeeeKobncO9QOpKFroXAW6Ls2c
         ql38eAbPfceQuWse56cCf+usKXP0g8rCwI+wgeS2MpVW6kp6zYWc/0XOFuhob8ErBqJH
         /ixaUFC4c3aaIns6EAt7E6FQmXFKomo0H1XyyvfBpwjIJ+AuO1SZ6OncwOG6fQq1caFd
         WjyqGK4q57ij0PDOAvjvAm+rwoEO+lR8YGGF3CXHAeRlSgbDVlPcsSi6zTRbldZjcqNq
         fuC0gChhZK+JLPeRdnyfcMUgtRqmzaYd1Ag+MPilWMmbTWOWUFeH8TPzNsKRJnw1Lk46
         ZtdQ==
X-Gm-Message-State: AOJu0YwoOSsKHVVHbYfcCkodjzF/mbciXR7Ool9O+21uTrfAHK0Zh5LP
	QvqJCWz/1wbAECrbCEA06Fgz9psDznA7CMmliBDl72UgaGkEW266/HurVvd08vGxsZiPTvd2zO+
	iqi9uajddVyduvE2S/042RrTPfk0IhxQ12D1maE1Q1rjSpnDvXiQ=
X-Google-Smtp-Source: AGHT+IFRD5Rwum9K8DL674IifKjdfllmqQlH2FJ5zW9tVqEuOQNeCWTFnfrU70tmiCM2rMmiZ5ejF92CDM0MocFZHCE=
X-Received: by 2002:a05:6902:1b8e:b0:e25:fc6f:9cc0 with SMTP id
 3f1490d57ef6-e2638385365mr3826517276.9.1727906165882; Wed, 02 Oct 2024
 14:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <4920950.GXAFRqVoOG@diego>
In-Reply-To: <4920950.GXAFRqVoOG@diego>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 2 Oct 2024 23:55:29 +0200
Message-ID: <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
To: Kever Yang <kever.yang@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Jaehoon Chung <jh80.chung@samsung.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_145607_162912_A8496186 
X-CRM114-Status: GOOD (  14.86  )
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

T24gU2F0LCAxNCBTZXB0IDIwMjQgYXQgMTM6NTIsIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gQW0gRG9ubmVyc3RhZywgMTIuIFNlcHRlbWJlciAyMDI0LCAwOToy
NjoxNCBDRVNUIHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiA+IEluIG9yZGVyIHRvIG1ha2UgdGhlIFNE
IGNhcmQgaG90cGx1ZyB3b3JraW5nIHdlIG5lZWQgdGhlIGNhcmQgZGV0ZWN0Cj4gPiBmdW5jdGlv
biBsb2dpYyBpbnNpZGUgdGhlIGNvbnRyb2xsZXIgYWx3YXlzIHdvcmtpbmcuIFRoZSBydW50aW1l
IFBNIHdpbGwKPiA+IGdhdGUgdGhlIGNsb2NrIGFuZCB0aGUgcG93ZXIgZG9tYWluLCB3aGljaCBz
dG9wcyBjb250cm9sbGVyIHdvcmtpbmcgd2hlbgo+ID4gbm8gZGF0YSB0cmFuc2ZlciBoYXBwZW4u
Cj4gPgo+ID4gU28gbGV0cyBza2lwIGVuYWJsZSBydW50aW1lIFBNIHdoZW4gdGhlIGNhcmQgbmVl
ZHMgdG8gZGV0ZWN0ZWQgYnkgdGhlCj4gPiBjb250cm9sbGVyIGFuZCB0aGUgY2FyZCBpcyByZW1v
dmFibGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KPgo+IFNvIGZvciB0aGUgY2hhbmdlIGl0c2VsZiB0aGlzIGxvb2tzIGdvb2Qs
IGkuZS4gaXQgZml4ZXMgYW4gaXNzdWUgZm9yIGJhb3JkcyByZWx5aW5nCj4gb24gdGhlIG9uLWNo
aXAtY2FyZC1kZXRlY3QuCj4KPgo+IEJ1dCBmb3IgYm9hcmRzIGRvaW5nIHRoYXQsIHRoZSBjb250
cm9sbGVyIHdpbGwgYmUgcnVubmluZyBfYWxsIHRoZSB0aW1lXwo+IGV2ZW4gaWYgdGhlcmUgaXMg
bmV2ZXIgYW55IGNhcmQgaW5zZXJ0ZWQuCj4KPiBTbyByZWx5aW5nIG9uIHRoZSBvbi1zb2MgY2Fy
ZC1kZXRlY3Qgd2lsbCBlZmZlY3RpdmVseSBpbmNyZWFzZSB0aGUgcG93ZXItCj4gY29uc3VtcHRp
b24gb2YgdGhlIGJvYXJkIC0gZXZlbiBpdCBpdCdsbCBuZXZlciB1c2UgYW55IHNkLWNhcmQ/CgpH
b29kIHBvaW50ISBBIGJldHRlciBvcHRpb24gaXMgdG8gdXNlIGEgcG9sbGluZyBiYXNlZCBtZWNo
YW5pc20gLSBhbmQKd2UgaGF2ZSBNTUNfQ0FQX05FRURTX1BPTEwgZm9yIGV4YWN0bHkgdGhhdC4K
Ck1vcmVvdmVyLCBvbiBEVCBiYXNlZCBwbGF0Zm9ybXMgb25lIGNhbiBldmVuIHVzZSB0aGUgImJy
b2tlbi1jZCIKcHJvcGVydHkgdG8gaW5kaWNhdGUgdGhpcy4KClsuLi5dCgpLaW5kIHJlZ2FyZHMK
VWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

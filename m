Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8200CA1016
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 05:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpGq8wFQFxJZcsUpO+KFU7Nj+oWbdxBPfxxddqOBgM8=; b=15HYGpCDYO2mjM
	wPGwVcU4U6RLStFHC7z0ua0fWziPRV5T5pU8N8hx4w34NFhF8W/3WDIlhzXdwq1SK0OyWTJTC6U27
	FGvaUT9VYfAOl+cj47MDz+fhCrbhtaWF5/dUXf0XWAskAzlDzgu8epHESFrqEiAXB4/OurWpYzG+N
	LqjGzhF5DKYWL8rkiWKB9tXMcAGITZQWr6OqHUEV5MRBtzNqLqkspOT/oowRwKxsGkYv7z4g0+awE
	JBSXRbwZhU3ebVqmaFNUftILzw0DcZsZneE5TtEAEsMBMFdg5GU4D5Jw7akhkmheddS33xo6QSeI9
	8Ub29b9545He+/DkJmQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvUrt-0000000EpjD-3kSr;
	Mon, 08 Sep 2025 05:56:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvUp6-0000000EpKS-43vZ;
	Mon, 08 Sep 2025 05:53:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0E179601A4;
	Mon,  8 Sep 2025 05:53:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6E6EC4CEF9;
	Mon,  8 Sep 2025 05:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757310831;
	bh=ZqrX17bonRAwjOTuMiYVq+TPaLNTG6ggeRB6AoUMNaU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=gAzQLqNvEwFvLyv+u+YkhomHi0XARpr8yUzeYEVBLuTOyUVr7jrj3wJnt6zLMmjd/
	 ngYVzt+Uq+ULc6DUl7JbPvS+AE72YHdL2r+g3Dqk3KAWWb/IZJhxyBJlxpwyhh+uZG
	 bAUU78kS233inPdjrHCsFq726T/hdrKUVTTrymfWJ9/XWSeLCmsU0f9z6GH3NsopyB
	 SeHuxgPIofBW3IINC25vd97iYZVEXVXPFRBd2f8TAoZ4A8d7V9Q+Op2IPxZmNbPGSc
	 wai6i+VmRw0i9UrbxEvkq6Sw6p8BuuXFCk9xjLHxUW8h92qjjJNRLmCVMtspx8cbqD
	 fzbdzS+CcF8mA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-336dc57f562so35385501fa.1;
        Sun, 07 Sep 2025 22:53:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWG3EGuxofnhvkdfYdsN4/mCT4z3oK85UZgEuoHolL3Ip29Q/9yzj7nP042h1vtMkz9ujjXymxTF5SRnHjfP10=@lists.infradead.org, AJvYcCXGYWEQw7Zh7DemitwFo9ABh21m1tAlWufm4Mrbam4LtEaH8q7eTYT+PxM4V0vrPZZ2dndfIEbFd7+DQE4UCbvf@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1h4mLS0/WOKNE9/ZA7+4HaNeILfKXnTk9ghWRKnCCi4HYfqec
	pAVVkln3UxvAslByfCFYDJwggAMBz66V8ZQYz4hSNwMIuFirJXQ5ylMOokBJBMCbUV4Rqdw9uEh
	dT8rhrWNR5WSOSXlW8X0PtaTIkGjp0zY=
X-Google-Smtp-Source: AGHT+IFoIRqBP+beoRTtdEhddDMBEkPHoidtmb9upgIqwtKQKv7AfSn8jlVDO+Lv30NWUzvwXcrdYgDkKWvsvnC3um8=
X-Received: by 2002:a05:651c:1117:10b0:336:cf86:d405 with SMTP id
 38308e7fff4ca-33bb00c67dcmr14316821fa.18.1757310830040; Sun, 07 Sep 2025
 22:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru> <6789547.RUnXabflUD@phil>
In-Reply-To: <6789547.RUnXabflUD@phil>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 8 Sep 2025 13:53:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v67ihFehEwSc-rX=U-KJdvao_588G8iVEoSXuJ_-gnd50w@mail.gmail.com>
X-Gm-Features: Ac12FXyVWZLt2noIJdj4yJ6V9YrgLg44Go_24vJRtuEdKpX8GT8MNMLbwaZezyo
Message-ID: <CAGb2v67ihFehEwSc-rX=U-KJdvao_588G8iVEoSXuJ_-gnd50w@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix NULL ptr deref in rockchip_pinctrl_parse_groups()
To: Heiko Stuebner <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, 
	Sergey Shtylyov <s.shtylyov@omp.ru>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBTZXAgOCwgMjAyNSBhdCAxOjMy4oCvQU0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBNaXR0d29jaCwgMy4gU2VwdGVtYmVyIDIwMjUsIDIxOjQ4
OjU0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgU2VyZ2V5IFNodHlseW92
Ogo+ID4gSW4gdGhlIFJvY2tjaGlwIGRyaXZlciwgcm9ja2NoaXBfcGluY3RybF9wYXJzZV9ncm91
cHMoKSBhc3N1bWVzIHRoYXQgdGhlCj4gPiAicm9ja2NoaXAscGlucyIgcHJvcGVydHkgd2lsbCBh
bHdheXMgYmUgcHJlc2VudCBpbiB0aGUgRFQgbm9kZSBpdCBwYXJzZXMKPiA+IGFuZCBzbyBkb2Vz
bid0IGNoZWNrIHRoZSByZXN1bHQgb2Ygb2ZfZ2V0X3Byb3BlcnR5KCkgZm9yIE5VTEwuIElmIHRo
ZSBEVAo+ID4gcGFzc2VkIHRvIHRoZSBrZXJuZWwgaGFwcGVucyB0byBoYXZlIHN1Y2ggcHJvcGVy
dHkgbWlzc2luZywgdGhlbiB3ZSB3aWxsCj4gPiBnZXQgYSBrZXJuZWwgb29wcyB3aGVuIHRoZSBw
b2ludGVyIGlzIGRlcmVmZXJlbmNlZCBpbiB0aGUgKmZvciogbG9vcCBqdXN0Cj4gPiBhIGZldyBs
aW5lcyBhZnRlciB0aGUgY2FsbC4gIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gcGxheSBzYWZlIGJ5
IGNoZWNraW5nCj4gPiB0aGUgbGlzdCB2YXJpYWJsZSBmb3IgTlVMTCAoYW5kIHJlcG9ydGluZyBl
cnJvciBpZiBzbyksIGxpa2Ugd2UgY2hlY2sgdGhlCj4gPiBzaXplIHZhcmlhYmxlIGZvciB2YWxp
ZGl0eSBmdXJ0aGVyIGRvd24uLi4KPiA+Cj4gPiBGb3VuZCBieSBMaW51eCBWZXJpZmljYXRpb24g
Q2VudGVyIChsaW51eHRlc3Rpbmcub3JnKSB3aXRoIHRoZSBTdmFjZSBzdGF0aWMKPiA+IGFuYWx5
c2lzIHRvb2wuCj4gPgo+ID4gRml4ZXM6IGQzZTUxMTYxMTliZCAoInBpbmN0cmw6IGFkZCBwaW5j
dHJsIGRyaXZlciBmb3IgUm9ja2NoaXAgU29DcyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkg
U2h0eWx5b3YgPHMuc2h0eWx5b3ZAb21wLnJ1Pgo+Cj4gQXNzdW1pbmcgdGhhdCB0aGUgRFQgaXMg
b3VyIGZyaWVuZCwgcmVhbGx5IGlzIGEgYmFkIGFzc3VtcHRpb24gOi0pIC4KCklmIHRoaXMgaXMg
aW52YWxpZCwgcGVyaGFwcyB5b3Ugc2hvdWxkIG1ha2UgdGhlICJyb2NrY2hpcCxwaW5zIiBwcm9w
ZXJ0eQpyZXF1aXJlZCBpbiB0aGUgYmluZGluZz8KCj4gV2hpbGUgSSBjYW4ndCBpbWFnaW5lIHdo
YXQgMTIteWVhci1hZ28tbWUgd2FzIHRoaW5raW5nIHRoZW4sIHNpbXBseQo+IGNoZWNraW5nIHRo
ZSByZXR1cm4gdmFsdWUgcmVhbGx5IGlzIHRoZSBiZXR0ZXIgd2F5CgpJIHRoaW5rIHNvbWUgb2Yg
dXMgaGF2ZSB0aG91Z2h0IHRoYXQgZ3VhcmRpbmcgYWdhaW5zdCBpbmNvcnJlY3QgRFRzCmlzIG5v
dCB3aGF0IHRoZSBrZXJuZWwgaXMgc3VwcG9zZWQgdG8gZG8uCgpDaGVuWXUKCj4gUmV2aWV3ZWQt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4KPgo+ID4KPiA+IC0tLQo+ID4g
VGhlIHBhdGNoIGlzIGFnYWluc3QgdGhlIG1hc3RlciBicmFuY2ggb2YgTGludXMgVG9ydmFsZHMn
IGxpbnV4LmdpdCByZXBvLgo+ID4KPiA+ICBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hp
cC5jIHwgICAgNCArKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+ID4KPiA+IEluZGV4OiBsaW51eC9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1y
b2NrY2hpcC5jCj4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPiAtLS0gbGludXgub3JpZy9kcml2ZXJzL3BpbmN0
cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gPiArKysgbGludXgvZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtcm9ja2NoaXAuYwo+ID4gQEAgLTM0ODgsNyArMzQ4OCw5IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfcGluY3RybF9wYXJzZV9ncm91cHMKPiA+ICAgICAgICAqIGRvIHNhbml0eSBjaGVjayBhbmQg
Y2FsY3VsYXRlIHBpbnMgbnVtYmVyCj4gPiAgICAgICAgKi8KPiA+ICAgICAgIGxpc3QgPSBvZl9n
ZXRfcHJvcGVydHkobnAsICJyb2NrY2hpcCxwaW5zIiwgJnNpemUpOwo+ID4gLSAgICAgLyogd2Ug
ZG8gbm90IGNoZWNrIHJldHVybiBzaW5jZSBpdCdzIHNhZmUgbm9kZSBwYXNzZWQgZG93biAqLwo+
ID4gKyAgICAgaWYgKCFsaXN0KQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9i
ZShkZXYsIC1FSU5WQUwsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIl
cE9GOiBubyByb2NrY2hpcCxwaW5zIHByb3BlcnR5XG4iLCBucCk7Cj4gPiAgICAgICBzaXplIC89
IHNpemVvZigqbGlzdCk7Cj4gPiAgICAgICBpZiAoIXNpemUgfHwgc2l6ZSAlIDQpCj4gPiAgICAg
ICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVJTlZBTCwKPiA+Cj4KPgo+Cj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21923D167F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 10:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxCcUjMSfJO//xLYY2Ga9Re8lw+AvMowAfkaetnoqcI=; b=QsRwwNqDwSo+0w
	pSnDYlM/zZZViZHP6ykYP2dgZby05bEAJ5WCmVNNGV/sPR3CQodnBqHLM5svxslqj5rM8yYGObO1o
	/wVuFKnTYWiASYsVNRkyftL9vmrV9Va/ZCB5JsRhEDRI+yqGYvI+mpxRonJpfIaG5jrgGZpfyIwRt
	QAvgsMDCy0A+L6KeUYU+mKNeyuffiO0zRI0XjnzwnT2FIeetg+Jua+XU3tqZv50Ze6AcjoDPESxB+
	n+sQX7GUMY76xjaQKxR7wSYFw4oRT0BaMdkga+zdres5SnBMG+dp/8ogibo6bSDmJZcIUPj1bYhlW
	Q36NgA1NQkIAN+MqVCSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9aQ-000000027KX-2gIe;
	Fri, 09 Jan 2026 10:19:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9aO-000000027K4-3BSp
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 10:19:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D340D60175
	for <linux-rockchip@lists.infradead.org>; Fri,  9 Jan 2026 10:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 888DDC2BC86
	for <linux-rockchip@lists.infradead.org>; Fri,  9 Jan 2026 10:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767953955;
	bh=9hbsjUn6eYASbfA/oJT6XWtugpXGlLNjh8EPRyD3m04=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Q5HWPIYvfN0g+8t2ODLZ6RHYqLOPxZyUqAO8jXrlFFXbJfNk5PkQzNacBCGeWlOI4
	 zVWxIN+v/ND+H67OS1j4Vi913awzUf4IrWnMQVfD2Dpr24wELqnc2MFBMKJ1ZKLRm+
	 JVsn9pBwtUqBGoql22eIC2pTaZn/uEE9cygO2yg+h9puAJ1bsbFUfn6tnq0irE8nUt
	 /FagBI3fN0qA257T3lWotje4TpFQ1+rWcTinV80/YofYEx4LczcmTg2VUYLrf15CVW
	 3uX7arvzOc8Tv0ed/zvkpT7cPQwnGPex+YpZh2r/HPuz3I/px64pkGw3UDhomvDchG
	 HZz+igJUYk/GQ==
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-644715aad1aso3533014d50.0
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 02:19:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVrlbogcuxD94L20XkAvOAq6sDxp8QkTtvHj5XZht3QY7hPaidf3LgMDDbZN6LOtvjZKd2Yg7ejkx1csjUB2g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyc8eDHXH/fZvmuRezpifwBK0l+IbYuduUJJLURrqylBRsI4k1/
	zuOsJ4K6R+OSue9NrWBeNDL9nby5+vjbDo7aVgDII6cAPVrLnXIFiWiNJeupC3KWatz5wuBzdv3
	SmL9lqsz/SUHstI2g5MXfYDFxHwT6dAg=
X-Google-Smtp-Source: AGHT+IF5GjxrLmuSZaExZjLaPOUjC/EsSoVJYPQqW4W2Vxtf6X+8zRZ62bSAxQ72fQzNPB0kphD/sc5lbPKYGJNdPlA=
X-Received: by 2002:a05:690e:130e:b0:640:ce59:128b with SMTP id
 956f58d0204a3-6470d2437b1mr10650880d50.2.1767953954886; Fri, 09 Jan 2026
 02:19:14 -0800 (PST)
MIME-Version: 1.0
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com>
 <20251216112053.1927852-7-ye.zhang@rock-chips.com> <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
 <85032ae4-4d82-4884-aa7c-b69fee76d509@rock-chips.com> <CAD++jLnH2vLNxTLj8Lw8RnOHxfitwi3G_8WCBtu+_=XL3ryH_w@mail.gmail.com>
 <a2f5c2b3-2168-41b4-917f-183ab72a4499@rock-chips.com>
In-Reply-To: <a2f5c2b3-2168-41b4-917f-183ab72a4499@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 9 Jan 2026 11:19:02 +0100
X-Gmail-Original-Message-ID: <CAD++jLkmieQpkJnAYyr7ys6m+v-=qNZaMoyKCtPFo+qjGwm8DQ@mail.gmail.com>
X-Gm-Features: AQt7F2pjRZjybV4xPqr9Y0E2i2C1kVX68rvkdaRtoGr0Zh5amDZGu50_yar2YJk
Message-ID: <CAD++jLkmieQpkJnAYyr7ys6m+v-=qNZaMoyKCtPFo+qjGwm8DQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
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

SGkgWWUsCgp0aGFua3MgZm9yIGFncmVlaW5nIG9uIHVzaW5nIHN0YW5kYXJkIGJpbmRpbmdzIGZv
cgpSTUlPLCB3ZSBhcmUgbWFraW5nIHByb2dyZXNzIQoKT24gVGh1LCBKYW4gOCwgMjAyNiBhdCAx
OjE54oCvUE0gWWUgWmhhbmcgPHllLnpoYW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKCj4gKipS
ZWdhcmRpbmcgdGhlIHByaW1hcnkgSU9NVVg6KioKPiBIb3dldmVyLCB0aGUgUkszNTA2IHBpbmN0
cmwgc3VwcG9ydCBpcyBidWlsdCB1cG9uIHRoZSBleGlzdGluZwo+IGBwaW5jdHJsLXJvY2tjaGlw
YCBkcml2ZXIgaW5mcmFzdHJ1Y3R1cmUsIHdoaWNoIHdhcyBvcmlnaW5hbGx5IGRlc2lnbmVkCj4g
YXJvdW5kCj4gdGhlIGByb2NrY2hpcCxwaW5zYCBwcm9wZXJ0eS4gUmVmYWN0b3JpbmcgdGhlIGRy
aXZlciB0byBzdXBwb3J0IHRoZSBzdGFuZGFyZAo+IGBwaW5tdXhgIGJpbmRpbmcgKGFuZCB0aGUg
c3VnZ2VzdGVkIG5lc3RlZCBub2RlIHN0cnVjdHVyZSkgaXMgYSBzaWduaWZpY2FudAo+IHVuZGVy
dGFraW5nIHRoYXQgaW52b2x2ZXMgY29yZSBsb2dpYyBjaGFuZ2VzIGFuZCByZWdyZXNzaW9uIHJp
c2tzIGZvciBvbGRlcgo+IFNvQ3MuIE1hbmRhdGluZyB0aGlzIHJlZmFjdG9yaW5nIGFzIGEgcHJl
cmVxdWlzaXRlIGZvciBSSzM1MDYgc3VwcG9ydAo+IHdvdWxkIGVmZmVjdGl2ZWx5IGJsb2NrIHRo
aXMgU29DIGZyb20gYmVpbmcgc3VwcG9ydGVkIHVwc3RyZWFtIGZvciBhCj4gbG9uZyB0aW1lLgo+
Cj4gQ291bGQgd2UgYWxsb3cgUkszNTA2IHRvIGZvbGxvdyB0aGUgZXhpc3RpbmcgZHJpdmVyJ3Mg
c3R5bGUgZm9yIG5vdyB0bwo+IGVuc3VyZQo+IGNvbnNpc3RlbmN5IGFuZCB0aW1lbHkgc3VwcG9y
dD8KCiJ0aW1lbHkgc3VwcG9ydCIgaXMgb2YgbGVzc2VyIGNvbmNlcm4gdG8gdGhlIGtlcm5lbCBh
bmQgRFQKYmluZGluZ3Mgd2hpY2ggYXJlIG1vcmUgY29uY2VybmVkIHdpdGggbWFpbnRhaW5hYmls
aXR5IGFuZCBsb25nLXRlcm0KbG9uZ2V2aXR5LiBUaGUgYW1iaXRpb24gaXMgdG8gd29yayBwcmVk
aWN0YWJseSBhbmQgaW1wZXJzb25hbCwgc3VjaAphcyBsaWtlIHRoZSBwbGFuZXRzLCBvciB0aGUg
cGxhbnRzLgoKPiBXZSBhZ3JlZSB0aGF0IG1pZ3JhdGluZyB0byBzdGFuZGFyZCBwaW5tdXgKPiBi
aW5kaW5ncyBpcyB0aGUgcmlnaHQgZGlyZWN0aW9uLCBidXQgd2UgYmVsaWV2ZSBpdCBzaG91bGQg
YmUgaGFuZGxlZCBhcyBhCj4gc2VwYXJhdGUsIGRlZGljYXRlZCBwcm9qZWN0IGluIHRoZSBmdXR1
cmUgcmF0aGVyIHRoYW4gcGFydCBvZiB0aGlzCj4gZW5hYmxlbWVudCBzZXJpZXMuCj4KPiBIaSBI
ZWlrbywKPiBEbyB5b3UgYWdyZWUgd2l0aCB0aGlzPwo+IDEuICAgICAgICBVc2Ugc3RhbmRhcmQg
YHBpbm11eGAgZm9yIFJNSU8gaW4gdGhpcyBzZXJpZXMuCj4gMi4gICAgICAgIEtlZXAgYHJvY2tj
aGlwLHBpbnNgIGZvciB0aGUgcHJpbWFyeSBJT01VWCBmb3Igbm93Lgo+IDMuICAgICAgICBQbGFu
IGEgZnV0dXJlIHJlZmFjdG9yaW5nIHRvIG1pZ3JhdGUgdGhlIHByaW1hcnkgSU9NVVggdG8KPiBz
dGFuZGFyZCBiaW5kaW5ncy4KCk15IG1haW4gY29uY2VybiBpcyB0aGlzOgoKZm9vIHsKICAgIHJv
Y2tjaGlwLHBpbnMgPSA8Li4uPjsgLy8gRm9yIElPTVVYCiAgICBwaW5tdXggPSA8Li4uPjsgLy8v
IGZvciBSTUlPCn07CgpJIGRvbid0IHdhbnQgdG8gc2VlIHRoaXMsIGJlY2F1c2UgdGhhdCB3aWxs
IGJlICpob3BlbGVzcyogdG8gbWlncmF0ZQp0byBib3RoIGNvbnRyb2xsZXJzIHVzaW5nIHBpbm11
eCA9IDwuLi4+OyBob3cgc2hvdWxkIHlvdSBkZWNpZGUKd2hpY2ggb25lIHRvIHBpY2sgZm9yIGVh
Y2g/CgpJbiB0aGF0IGNhc2UgaXQgaXMgYmV0dGVyIHRvIGRvOgoKZm9vIHsKICAgIHJvY2tjaGlw
LHBpbnMgPSA8Li4uPjsKICAgIHJtaW8gewogICAgICAgIHBpbm11eCA9IDwuLi4uPjsKICAgIH07
Cn07CgpCZWNhdXNlIHRoZW4geW91IGNhbiBsYXRlciBtaWdyYXRlIHRvOgoKZm9vIHsKICAgIGlv
bXV4IHsKICAgICAgICBwaW5tdXggPSA8Li4uLj47CiAgICB9OwogICAgcm1pbyB7CiAgICAgICAg
cGlubXV4ID0gPC4uLj47CiAgICB9Owp9OwoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

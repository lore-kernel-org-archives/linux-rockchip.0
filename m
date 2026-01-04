Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8813C2A06C
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 12:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oMfD5Z+ARQGqEaQNhZQYFIG3BHVloHF7/bXIH3LTHU=; b=cKymRiiGSqdIYx
	Kq1AtOndCcE1LTwwH3nthjVj0op4iwWMR35lFSwjsCwJICwihA1F0/T0SdCaoG1rZmD8RrCxMRGN0
	lNHaqNagibCfvqn0XkbgZxHi9rP2455R3QAFGDJZSyTdJxXOB4vIzMfQITPmG4LvBXhV2Ct0K7Rbe
	5Vk0edxKX3umKI/dDnZS+3kvhHKDd6zCb12umOLy5KbS99mdhTnrLVbLZSGv6olyA5qyTtS+zUf3c
	QxgF0INzL4MKnQjwyZU6AK76PpHoNP8ocvk9fPfZNxm21debWMhNfQL2Et9zINL0R91pWBSXOZ6hW
	lcpuBizJBX2u+MUdjPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMtB-0000000ADho-39eD;
	Sun, 04 Jan 2026 12:07:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMt8-0000000ADhJ-3jSD
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 12:07:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3A30F6013B
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 12:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC3F2C2BCB1
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 12:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767528433;
	bh=NNvyyWX4s6zQYzEi25YKiL7e8RXhkosrjifCZD5E5vw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=F99sMSqNtKTS1XOYzCZAbP2BarfQXFGKiyZIqMFQ3MBN7uUtVsClTC7njmSl1zKI9
	 I8uzTVclg7H7khUTrO2CXFXpMMTJObChinfcQ2uZDU1fPFquEJNeR1VvV6EirdIRCL
	 /Hv9WvKdWVErg68rrbxuIvYUp4xen4Ivl3ulfo2Rb9hvdtf13Mw22h+UWmQLCwQbil
	 yqIhjWYuD3zZW7hpBJbfRThNhXXBJ1jI0KVqlTymYySj6ZMPzrw5O/lEa37p9BL/Au
	 8rEb0hdAP6+vR7yz2LvpI6pG2grngZjsOOgK1uPMLMfQKrITXfTlz3np8YP3Eb4B1Z
	 XLsXNB4WIx4BA==
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-64472121ad5so7800789d50.0
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 04:07:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWRzhI9v+MWG5I/vYJWr1pfPFtcx57Qvf1O0xNf+A179qYb/dcmxWoWtdUD7hGiW1eoQbMfwE3hC8ps9tmPnA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSIPlWRzGkDVSspg4sy3afebnPnGq108stUJtwx/I/xNBtTcc3
	HxHnMpKxb53NjISJA7YZ6LFI5nqskdMZn6nd88eJw5GLK58I8QtiZl+yZuElnHZkR2fs0+ILWgh
	zd90EJaJC/oP5PTIUbjW4El0h0qRwvo4=
X-Google-Smtp-Source: AGHT+IEmQp6cbGwTzqXge1KwHKoG+z5w5e3WneR+07MNzdrKCIkhm3jWBiwRI4b1zlZsBGsG3/Wbao0TEUuNqyOu0lo=
X-Received: by 2002:a53:eb84:0:b0:640:cc09:b7c8 with SMTP id
 956f58d0204a3-6466a842a27mr27876038d50.23.1767528433144; Sun, 04 Jan 2026
 04:07:13 -0800 (PST)
MIME-Version: 1.0
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
 <20251227114957.3287944-8-ye.zhang@rock-chips.com> <ebb720f6-4756-437f-a71a-d94f45d732e8@kernel.org>
 <0de0f505-5858-4ea6-85a7-4c386ac205e9@rock-chips.com>
In-Reply-To: <0de0f505-5858-4ea6-85a7-4c386ac205e9@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 13:07:02 +0100
X-Gmail-Original-Message-ID: <CAD++jL=Dv9Ad3EN_+WsD=tKVZORTbW5xcPaJUx3Zi7DNyvzruA@mail.gmail.com>
X-Gm-Features: AQt7F2rYKwRUFgA0GUo1cru6R2kIwdvHzJq_1rhGARF7vZUzJm-EZk1Pe49KE1M
Message-ID: <CAD++jL=Dv9Ad3EN_+WsD=tKVZORTbW5xcPaJUx3Zi7DNyvzruA@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] ARM: dts: rockchip: rk3506: Add pinctrl and rmio
 dtsi for rk3506
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
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

T24gV2VkLCBEZWMgMzEsIDIwMjUgYXQgOToxOOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IFRoaXMgZmlsZSBpcyBhdXRvLWdlbmVyYXRlZCB0byBwcm92
aWRlIGEgY29tcGxldGUgc2V0IG9mIFJNSU8KPiBjb25maWd1cmF0aW9ucy4gICBPdXIgaW50ZW50
aW9uIGlzIHRvIG9mZmVyIGEgZ2VuZXJpYyBsaWJyYXJ5IGZvciBhbGwKPiBmdXR1cmUgYm9hcmQg
ZGV2ZWxvcGVycywgc28gdGhleSBjYW4gc2ltcGx5IHBpY2sgdGhlIG5lZWRlZCBub2RlcyBieQo+
IHBoYW5kbGUgd2l0aG91dCBtYW51YWxseSBsb29raW5nIHVwIHJlZ2lzdGVyIHZhbHVlcyBpbiB0
aGUgZGF0YXNoZWV0Cj4gZXZlcnkgdGltZS4gICBUaGlzIGltcHJvdmVzIHVzYWJpbGl0eSBhbmQg
c3RhbmRhcmRpemF0aW9uLgoKVGhhdCBtYWtlcyBpdCBldmVuIG1vcmUgaW1wb3J0YW50IHRvIHVz
ZSB0aGUgc3RhbmRhcmQgcGlubXV4ID0gPD47CnByb3BlcnR5IGluIHBpbm11eC1ub2RlLnlhbWwg
Zm9yIHRoaXMgaW5zdGVhZCBvZiBjdXN0b20gcHJvcGVydGllcy4KCklmIHlvdSBlc3RhYmxpc2gg
YSBzdGFuZGFyZCwgdGhlbiB1c2UgYSBzdGFuZGFyZC4KCldlIGhhdmUgdHdvIHdheXMgb2YgZG9p
bmcgcGluIGNvbnRyb2wgaW4gRFQ6CgoxLiBVc2Ugc3RyaW5ncyBmb3IgZ3JvdXBzIGFuZCBmdW5j
dGlvbnMuCgogICAgZnVuY3Rpb24gPSAidWFydCI7CiAgICBncm91cHMgPSAidWFydC10eC1yeCIs
ICJ1YXJ0LWN0cy1ydHMiOwoKU2luY2UgYSBsb3Qgb2YgcGVvcGxlIHJlYWxseSwgcmVhbGx5IGxp
a2UgdG8gc2hvZWhvcm4gYSBsb3Qgb2YgaW5mb3JtYXRpb24KaW50byB0aGUgZGV2aWNlIHRyZWUg
aW5zdGVhZCwKCjIuIFVzZSBwaW5tdXggPSA8Li4uLj47CgpUaGlzIGlzIGFuIG9wYXF1ZSBwcm9w
ZXJ0eSB0aGF0IGNvbnRhaW5zIG1hZ2ljIG51bWJlcnMuIEJ5IHVzaW5nIHRoZQpwaW5tdXggcHJv
cGVydGllcywgZGV2ZWxvcGVycyBhbmQgbWFpbnRhaW5lcnMga25vdyB0aGF0IHRoaXMgaXMgc29t
ZQptYWdpYyBudW1iZXJzIHRoYXQgc2V0cyB1cCB0aGUgbXV4LgoKTm8gY3VzdG9tIGludmVudGVk
IHByb3BlcnRpZXMgcGxlYXNlLgoKSGlzdG9yaWNhbGx5IG9sZCBwcm9wZXJ0aWVzIGxpa2Ugcm9j
a2NoaXAscGlucyBleGlzdCBmb3IgdGhlIHNhbWUgcHVycG9zZQpvZiBwaW5tdXggPSA8PjsgYnV0
IHRoaXMgbmVlZHMgdG8gc3RvcCBhbmQgbWlncmF0ZSB0byB0aGUgc3RhbmRhcmQKYmluZGluZ3Ms
IG5vdCBwcm9saWZlcmF0ZS4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

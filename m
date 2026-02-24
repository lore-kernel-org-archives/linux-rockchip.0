Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E19EFB7F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA71HkhoYOR0AOEsNnNJtnEkvaPFzUGKMcQfM5vxJbc=; b=bF55wOXBoYWms8
	k1K7+hhSLirVMJW2uoQ77ER5K45HRrhhAqjjvLQZmnNTJqt5G/ZGMYsANhCb7O+CX9h7t/8ZSZf//
	9301HUmR9HuN4xrWvgCT9Nwg8/wIcFKwsQ4OVOso2tlolddWDatBLNIA44kukk0PCNGbBGuDB1OlP
	+eOmHlTnvZt/tHpJANguZzHotHZXOSA6DnxKGeB6x2R627naZQyzvs7GpKxLznsEAvz+DabszFR8R
	KkWVVpfcmFuFPjTcpu7P9LXiehqzo8X8hYw4qnn02yS+nmX0S8dnkxMxjDeQSDYDCqJkTEJmhpHaQ
	dB1bHT/pxTtsNIM1BRhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuoky-00000001l3G-3ZcB;
	Tue, 24 Feb 2026 09:31:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuokt-00000001l1K-2ktH
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 09:31:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F097D43FC9
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 09:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2C66C4AF09
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 09:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771925458;
	bh=qFoSCUCgWPxot+zyIzeYtu7f0ut9mFHpqgCHWGjjgGM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mIdQGvENKyirm0I0WbhQANOO+Z0g5OknRWpF+j5J1bW0bYVbY2b57HH5fyJi15/yN
	 iekaDjeGMnDnx5eMOKOQF3S4VCE5O0eLumRtHBW2QFyOBwau0DApAQspVvdjvVmFvQ
	 Gf5DNTW95ovOUWqHDYU0B6vudj6h0PeECfX/fnMqU7WH5DFSrLEboKW/fjZKOwe2iB
	 +b5Jse5UWkDXGlfq1yruRFq9QtW6tx2/7jmnzOL3ZYN9aCwkmBPBhkVkA6rMEmx/8J
	 XXRZdK1pclyWrd3j/aBxiO7mqoipsfC1JgPYdl41wA4fnLCWGj4o43kdTiKpuNr93p
	 rEZucbdiVpEOA==
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-79495b1aaa7so47004077b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 01:30:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX0dcbJTX4gXzMVS34+L86hUSOEgtzP5V0y8o1MndsgQuQf7eqH9J47wyiGXJrlkfUHz6hZb2tOddPIRE2D+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhWuZeEKdKCkv3ULCxeT/ne/szO2k7ZzH0YpLa8nxvdhgCymTR
	dKSkE+3jxg1SjKlKtjbG9CRdtL4f9qp1rAywV/xDFnT6aO8bnkqgosvxwe3/w9teoQ7Q8+bME8N
	OY7tB38hDjp5GWgtmZFEYsoJAzJwbwqs=
X-Received: by 2002:a05:690c:2701:b0:794:7866:263a with SMTP id
 00721157ae682-79828ef26a8mr110201917b3.10.1771925458159; Tue, 24 Feb 2026
 01:30:58 -0800 (PST)
MIME-Version: 1.0
References: <20260223105717.48779-2-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260223105717.48779-2-krzysztof.kozlowski@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 24 Feb 2026 10:30:47 +0100
X-Gmail-Original-Message-ID: <CAD++jLmow3f-_W9hCRDHBjxUkVbS96ssnPchPfGxXNbSgrJyWg@mail.gmail.com>
X-Gm-Features: AaiRm50enX858ywcuPInWGfUc9Lmz7V_abesy4_4DNC9RBPnw7kMzwtulXV191A
Message-ID: <CAD++jLmow3f-_W9hCRDHBjxUkVbS96ssnPchPfGxXNbSgrJyWg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: Fix configuring a deferred pin
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_013101_517191_C256A5F0 
X-CRM114-Status: GOOD (  10.90  )
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

T24gTW9uLCBGZWIgMjMsIDIwMjYgYXQgMTE6NTfigK9BTSBLcnp5c3p0b2YgS296bG93c2tpCjxr
cnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgoKPiBDb21taXQgZTJj
NThjYmUzYWZmICgicGluY3RybDogcm9ja2NoaXA6IFNpbXBsaWZ5IGxvY2tpbmcgd2l0aAo+IHNj
b3BlZF9ndWFyZCgpIikgYWRkZWQgYSBzY29wZWRfZ3VhcmQoKSBvdmVyIGV4aXN0aW5nIGNvZGUg
Y29udGFpbmluZyBhCj4gImJyZWFrIiBpbnN0cnVjdGlvbi4gIFRoYXQgImJyZWFrIiB3YXMgZm9y
IHRoZSBvdXRlciAoZXhpc3RpbmcpCj4gZm9yLWxvb3AsIHdoaWNoIG5vdyBleGl0cyBpbm5lciwg
c2NvcGVkX2d1YXJkKCkgbG9vcC4gIElmIEdQSU8gZHJpdmVyCj4gZGlkIG5vdCBwcm9iZSwgdGhl
biBkcml2ZXIgd2lsbCBub3QgYmFpbCBvdXQsIGJ1dCBpbnN0ZWFkIGNvbnRpbnVlIHRvCj4gY29u
ZmlndXJlIHRoZSBwaW4uCj4KPiBGaXggdGhlIGlzc3VlIGJ5IHNpbXBsaWZ5aW5nIHRoZSBjb2Rl
IC0gdGhlIGJyZWFrIGluIG9yaWdpbmFsIGNvZGUgd2FzCj4gbGVhZGluZyBkaXJlY3RseSB0byBl
bmQgb2YgdGhlIGZ1bmN0aW9uIHJldHVybmluZyAwLCB0aHVzIHdlIGNhbiBzaW1wbHkKPiByZXR1
cm4gaGVyZSByb2NrY2hpcF9waW5jb25mX2RlZmVyX3BpbiBzdGF0dXMuCj4KPiBSZXBvcnRlZC1i
eTogRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPgo+IENsb3NlczogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci9mNWIzODk0Mi1hNTg0LTRlNzgtYTg5My1kZTRhMjE5MDcwYjJA
YmF5bGlicmUuY29tLwo+IEZpeGVzOiBlMmM1OGNiZTNhZmYgKCJwaW5jdHJsOiByb2NrY2hpcDog
U2ltcGxpZnkgbG9ja2luZyB3aXRoIHNjb3BlZF9ndWFyZCgpIikKPiBTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+
CgpQYXRjaCBhcHBsaWVkIGZvciBmaXhlcyEKCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

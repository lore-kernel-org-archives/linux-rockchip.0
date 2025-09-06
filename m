Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B291CA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 07:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hn/CjM94f2ydY8NtY/pwSFG3iPVK72o/Nc7soO66Dmk=; b=nS2ILE4/ONiMmH
	vdr5zmFERpIXypC4TGztJhzNNg/u/YXd7O70Wj1gUvUZAevQB+XWaULfMM8OqB+/2VHsBzKL3Rp4J
	b8cGgyvMkOExFsmOg7ATBlsrP80dWgn7L+MiSbCm/yoZqaMobFMW5mUbc1HwcIv7KurmnaY8DCluW
	x7Afnqr79mONEsoNXVeI07m3qv5YYghpKnTgi8T9tPiAq0suWZKDlJ/Byq2EuaIfVJjKWUE4UXC00
	i1YCsKueX17Pea0r+E9PI370KRodsOkOrPE4Ker5IWc6DbybkO5RhSbijKAMpqX6sOaaVAyCG0gJL
	bboo0FHU/99t0vwU5WTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uunHi-000000077s5-3t0d;
	Sat, 06 Sep 2025 07:24:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uunEu-000000077Ho-2SCa;
	Sat, 06 Sep 2025 07:21:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8255860293;
	Sat,  6 Sep 2025 07:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEEBCC4CEE7;
	Sat,  6 Sep 2025 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757143295;
	bh=1vf2uE44kUXhBmJjEDqAjCxyn0j1zb8VmMho+cmnE3Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hVwnbvQ0GyGsk9CV7Y/bDk88/07Z/1RInKhzz/lVezZPebsoSNm6PNjbskRTi2OC3
	 MZ/tqBGzbWdQRATDynJweGlEm1U9SFFWSuLRLYqHP3MNh/bVQ7VUhts4ClE6UVmu0b
	 ROKtXp8uXzl9BR5uCjV7UXut4nz+W6a8XyhCy1k1MYL9Ur+hq35CkapZ5uHaqhEJFM
	 9pERv8RjCy8kNFl0i9jZNCb8GPgE1rWW6fDH4cKr2CJliRR16cboPbEONNlngPowBI
	 Xt1SPjaIWcdpWd4TgwyA+BIWScba9iUqAUSAMDtYP85o2b7rkX0tAUiNTCMwGVwbAb
	 EQ/GfDQvGH74w==
Message-ID: <58b638c8-b27e-49a6-b79e-f078135c575b@kernel.org>
Date: Sat, 6 Sep 2025 09:21:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] dt-bindings: clock: rk3368: add CLK_I2S_8CH_PRE
 and CLK_I2S_8CH_FRAC
To: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250905132328.9859-1-cn.liweihao@gmail.com>
 <20250905132328.9859-3-cn.liweihao@gmail.com>
 <707aad1d-fcdb-4c66-8d96-41cf1a1b02ce@kernel.org>
 <CAPEOAkRTVtKBsmiGTbKOCar0oNS-C3dRXqdpuowroRPH1bFS7g@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAPEOAkRTVtKBsmiGTbKOCar0oNS-C3dRXqdpuowroRPH1bFS7g@mail.gmail.com>
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

T24gMDYvMDkvMjAyNSAwMzozNCwg5p2O57u06LGqIHdyb3RlOgo+IEhpLAo+IAo+IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g5LqOMjAyNeW5tDnmnIg15pel5ZGo5LqUIDIy
OjEz5YaZ6YGT77yaCj4+Cj4+IE9uIDA1LzA5LzIwMjUgMTU6MjMsIFdlaUhhbyBMaSB3cm90ZToK
Pj4+IFdlIG5lZWQgYSBjbG9jayBpZCB0byBhc3NpZ24gY2xvY2sgcGFyZW50IHdoZW4gdXNlIGky
cyA4Y2ggYXMgYXVkaW8KPj4+IGRldmljZSwgQ0xLX0kyU184Q0hfRlJBQyBzaG91bGQgYmUgQ0xL
X0kyU184Q0hfUFJFIHBhcmVudCBzbyB3ZSBjYW4gZ2V0Cj4+PiBmcmVxdWVuY3kgd2Ugd2FudC4K
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBXZWlIYW8gTGkgPGNuLmxpd2VpaGFvQGdtYWlsLmNvbT4K
Pj4+IC0tLQo+Pj4gIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcmszMzY4LWNydS5oIHwgMyAr
KysKPj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcmszMzY4LWNydS5oIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmgKPj4+IGluZGV4IGI5NTFlMjkwNjkuLjc5NWU3MjE5
NTcgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUu
aAo+Pj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmgKPj4+IEBA
IC0xODMsNiArMTgzLDkgQEAKPj4+ICAjZGVmaW5lIEhDTEtfQlVTICAgICAgICAgICAgIDQ3Nwo+
Pj4gICNkZWZpbmUgSENMS19QRVJJICAgICAgICAgICAgNDc4Cj4+Pgo+Pj4gKyNkZWZpbmUgQ0xL
X0kyU184Q0hfUFJFICAgICAgICAgICAgICA1MDAKPj4KPj4gNDc5Cj4+Cj4+PiArI2RlZmluZSBD
TEtfSTJTXzhDSF9GUkFDICAgICA1MDEKPj4KPj4gNDgwLCBubz8KPj4KPiAKPiBOZWl0aGVyIG9m
IHRoZXNlIGNsb2NrcyBiZWxvbmcgdG8gdGhlIHByZXZpb3VzIGdyb3VwaW5nIGluIHRlcm1zIG9m
Cj4gdHlwZSwgc28gSSBjaG9zZSB0byBzdGFydCB3aXRoIGEgbmV3IGludGVnZXIgaWQgaGVyZS4K
CkkgZG9uJ3Qga25vdyB3aGF0IGlzICJwcmV2aW91cyBncm91cGluZyIgaGVyZSwgYnV0IElEcyBh
cmUgYWJzdHJhY3QgYW5kCmFyZSBpbmNyZW1lbnRlZCBieSAxLgoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ABF3C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 13:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+Mwm8nK0ZngTUSWrLnUDvZcHxymARXiKgZUxRX/UWs=; b=EBqglBNW61Cpcb
	YD4WIUsz5QyC0alVFLsi6NkbG68W5S7JBXYHGDkbHqj9yrhxczuQQzjCU+QnJLAcnfvgvp+1gixc3
	MKElo0T+50gFbpuQ97DNga2/rNcLtrkFWn72fLWDX3dNr93RD8Wee0lgHsWnnNU7SPdTrviJfuTDS
	bthOWFaf45Ikye1fhRgSECc4vFsuusuPGZOfQA+hB+4e4d8UzCYYPmeINJheTTpjVJpPq3Og1qEg8
	6+t9PnjPCrAEe6eon6wH/Y61Exc52lHwbottBmWIxMqHL8R0Mlllk2krNJ4467hmtqYbV98ZVRFc2
	CcrxJ13dQfEeMb332Geg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAxj-0000000FhNz-0hXE;
	Thu, 05 Jun 2025 13:48:55 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAeh-0000000FdtU-3Fqe
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 13:29:16 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-55220699ba8so1174906e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 06:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749130154; x=1749734954; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4GUAkxOIFy9jpQLSmntQ+q8BrdugRJdUj6yz2GA9p8E=;
        b=vT+EECDP8cxkOypozGRbfqzGQiNOjm694E+dF32z9ka6T8rhyhIMdaSS81gRUKab8G
         YkZGXX+IWkaBksAsO926dPCeeikYn8mUKfnO4TlhwMgq2OJ4HI/WAs8Z4hP1jpyRRrDy
         ncTrRWxMlZUcEn6TWz6nqcxTFofC7Gwgh4tUM/cilenecDJEeKPJcMn+E9s4q9NweTAF
         dGVxbNBzWb48kPYpircdX/afEyr2XzZSB3OLtlczEFQD9J3ueFm4w+Ci3cQAlKbqNpGw
         6RgY10RIvZ/5YcmHT4eXQr/L6dzzSHFU7UJvyv/l+5+4pLa6EfKwgstiBJj1Yf0YXDI/
         xjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749130154; x=1749734954;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4GUAkxOIFy9jpQLSmntQ+q8BrdugRJdUj6yz2GA9p8E=;
        b=fjefwLHoTIrs+21kkqCBNzO8x+gSAIGP0g2s0vQo0+TUrWP+G1fztGsE7n2ZJ5xXK8
         lYTQsBq2oLXuPvW5IKiKeedPWrtCOzi2KpA7WxLLrAbug2MEnnMVglSUwAg0InWpfsps
         +EfZgS0zUpiAT27LH5y5zvGYgkuxECW0NfplV6V6w0Hrp1AbUoHAoJgZGFC6OmITz2HU
         seTsq0Kk+IGnvIz8MVG3llQ6Zlkrl/bLTHMc1+eMkXrLdGjnA0hpo78wNs3O7A07ipae
         x5em1mrqLYz2g2mbhALrHSNTESQT14rH5jsSdRYoyq6hSJvPd9KkQ0lHoi2fPPmzfvQ1
         uGew==
X-Forwarded-Encrypted: i=1; AJvYcCVKX3w+jOZ0/KEees0TDl4cDmB4qoucMvLp+B6Lk+h+CTvIG+vLUX5w0HCoxz0o/ievyWVo1rECnYZYCOSY/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrdmAQeAk4omwzj/aHrDlfZIzoljyfURAhpRxlM50dmu+osKOv
	z/3nRb0hZOlTPQ0nIQEBO2Bqh9i2buwcwYlpWObhdolEzeSp4pOYFnk2lCoJ3NyvdeusjupJC3K
	nExHQjluTn1tqvxC+JITEdH5D5m3VVBnSv8fjbe2KEQ==
X-Gm-Gg: ASbGncuEyKjxHFlpgddNPdbCzv2Ydq47typDV5KmoFofuW4kyhCJfGZDy4f/fihYZOg
	S0y7EehL9PtB6Ys0aeojsqD5Hecxccsqv9VZzfiSlyuyA9x5COHwgTT9a8nNIf7+EVrfdq/5VM5
	TU2vtuoVZx5gRpNJlbhZX7klG3/g6iTLJD
X-Google-Smtp-Source: AGHT+IHQ5la5bmYfspb0z+rHTezHnXmn8S0sJvRzX+sgZ7IiaN7ipgyy98pOXOBzrw28bsqpF2v0lH7bNQ0EOyTmIHU=
X-Received: by 2002:a05:6512:3ca8:b0:553:2a56:2e8d with SMTP id
 2adb3069b0e04-55356df1dd7mr2038017e87.40.1749130153902; Thu, 05 Jun 2025
 06:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com> <20250602-rk3576-pwm-v2-1-a6434b0ce60c@collabora.com>
In-Reply-To: <20250602-rk3576-pwm-v2-1-a6434b0ce60c@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Jun 2025 15:29:03 +0200
X-Gm-Features: AX0GCFv01J_2f7I-yQlAWEluILmgAXhjV0w8aFTFPw9c58Y0wmETNUPszWxuq5c
Message-ID: <CACRpkdZRjLFa3Bni=wMG1LBoWnW+Zenj2FVP=_2s+U_1eykt7Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pinctrl: rockchip: increase max
 amount of device functions
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	William Breathitt Gray <wbg@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Kever Yang <kever.yang@rock-chips.com>, Yury Norov <yury.norov@gmail.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Leon Romanovsky <leon@kernel.org>, Lee Jones <lee@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org, kernel@collabora.com, 
	Jonas Karlman <jonas@kwiboo.se>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_062915_825910_57BCFEB7 
X-CRM114-Status: GOOD (  11.37  )
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

T24gTW9uLCBKdW4gMiwgMjAyNSBhdCA2OjIw4oCvUE0gTmljb2xhcyBGcmF0dGFyb2xpCjxuaWNv
bGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cgo+IFdpdGggdGhlIGludHJvZHVj
dGlvbiBvZiB0aGUgUkszNTc2LCB0aGUgbWF4aW11bSBkZXZpY2UgZnVuY3Rpb24gSUQgdXNlZAo+
IGluY3JlYXNlZCB0byAxNCwgYXMgYW55b25lIGNhbiBlYXNpbHkgdmVyaWZ5IGZvciB0aGVtc2Vs
dmVzIHdpdGg6Cj4KPiAgIHJnIC1nICcqLXBpbmN0cmwuZHRzaScgJzxcZCtccytSS19QLi5ccyso
PzxmdW5jPlxkKylccy4qPjskJyAtLXRyaW0gXAo+ICAgLU5JIC1yICckZnVuYycgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC8gfCBzb3J0IC1nIHwgdW5pcQo+Cj4gVW5mb3J0dW5hdGVseSwg
dGhpcyB3YXNuJ3QgY2F1Z2h0IGJ5IGR0LXZhbGlkYXRlIGFzIHRob3NlIHBpbnMgYXJlCj4gb21p
dC1pZi1uby1yZWYgYW5kIHdlIGhhZCBubyByZWZlcmVuY2UgdG8gdGhlbSBpbiBhbnkgdHJlZSBz
byBmYXIuCj4KPiBPbmNlIGFnYWluIGtpY2sgdGhlIGNhbiBkb3duIHRoZSByb2FkIGJ5IGluY3Jl
YXNpbmcgdGhlIGxpbWl0IHRvIDE0Lgo+Cj4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3Iu
ZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xp
IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBMaW51cyBX
YWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpJcyB0aGlzIHNvbWV0aGluZyBJIGNh
biBqdXN0IGFwcGx5PwoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

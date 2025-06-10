Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2267EC5B552
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 14:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJwhNrjXPGPrXrmlfHdBxK0J+wvzxSsh2Cg3N5tC0QE=; b=mOVRDMcclXjn74
	T9JQcWNoiMG7rDUQsuJJZUp9tNyn2PC7bNltgUR7Fi8ibx75z5Msm0n973eOr1DaQ8QLENHDxu5Qo
	21aM60Tmwu1dPnIYsIRsxdZ8ZPmKtdQnQ5YbxKgqoiFt8S/nHMmnnqkmc3PizQxiWYTwbHOu9hpMx
	dKPK4aaNDCpbY9qfJTCQFTjnynRPCdXW/1VjFBykNCAisBMwGb0okIb4ssbYWt3EncCSmWuub0ng/
	vMbSyGj4xHHfqX5XmIYVgVZvBfi1fdRMsdma788Tr3VegJ4HUsmsKgYkPJlWq2HHV0Y1gTWShZZj8
	pP2m3OfpXLYKVjWWXuMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOzhO-0000000761g-1WEe;
	Tue, 10 Jun 2025 14:11:34 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyAj-00000006mQJ-44HW
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Jun 2025 12:33:47 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-32ae3e94e57so33432361fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jun 2025 05:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749558824; x=1750163624; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EanlmV0cW1dyyqCiFlmm6H2lcoAcchpMNaepjtxFpoc=;
        b=HYnt30RSC8NIgzXsSwIH5qPvexxmiyOpbbdA2WAA5WyK1hFENfQzhBrF0lgo5UxI9F
         kqwGKYcAc94bomssdv5RhkHBkNrHXJ4EuB1vxyrtaIPvEfzEkqBJYOTdxI7Rd/K9ZCKu
         ELZuNcJkDNDm5KaiRO1Br9RueGLyezUva0JkUucnauK85GP5zyBK1A6PhSz+6GE1lO/G
         BpPAroEtbaF40IJML5wo1ftoOz3k6ZBiHVO1Zri+UrQH5kZSoI/vq5gqoGmf+cTFJZhg
         AC0gkJY6yO6eTt5o4/wA6DteS8yBAi3ZWhRq/VvZPWt1Tkf00gQ5arsr7259uv9IikvP
         qDLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749558824; x=1750163624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EanlmV0cW1dyyqCiFlmm6H2lcoAcchpMNaepjtxFpoc=;
        b=S6qgcaFRfj4OUV8Apd7SLjpXI5A0neNuJjXW/75UL+Qla2EJczPeuNCowFmDVUUwH3
         2qip6Aljq1m8I+Ru23DT4sYFm+4kHJyXgmU2pqjc10jR6Ca/XkKF1lTyFTJh8GYGidsI
         tS8+1FS46hO4QC16gm0XuCVIVP6p1SGJTKYIdDGwMOL5o+v8kJbgS19coE05P4IpFKRt
         eybaNeXXZg9j5EqYlKme7GLZYa2qYlrC/Gatw8SGWJe/vatY1mX9zA8gJeZ3iFs0IH4t
         vXS6RZXhb4cl0cEzbqlPdpxNDM3psUGGzAR1WX80Ns4JHHDfsMfCkc1kWf9uVMkbll2b
         /IPA==
X-Forwarded-Encrypted: i=1; AJvYcCUWvnwqNuDNVv19o9+HhIn/9FJ2Dzi7T0k1ZLm7yK89aLzIfhLE4m/rPUrr7HUILhwOXzVXBioDxvdy01A+yw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwR/YWON3D8OGVXV5J9Xox/AE5s8Ce74iFHB5dw4Y/NNy04q0U
	jmDjjt5YdN5FAFWpLPsfsdZgEI5xSDHcuKdzYRJEJWct2xDnN05G/9hcUx4qKx73JUckAB9cDUe
	wweeQNqA/b1Is1hQRtwN0fAMXC7TXx+c/gocoOw3jiQ==
X-Gm-Gg: ASbGncv6zOmykFvkRY+yR/QK8dBK+i28cqAZ2CaBbFu3sPGg3uQscoP79p8M4f/Dumf
	/zRz1v1yLWC7a1eO8KqXEwy3hGelaJE1H3RKJyCWb2E4MaC7C3E4ocydxw6lfmQHIhOYQefTCzm
	7r95otTqYAe7VsZwBYM/jHCa2dlorjp7o8pxD3NWqFgFw=
X-Google-Smtp-Source: AGHT+IHH43p0qPfKtj3D38L9rrb9Pek2M3XXCtDSV7pxtgiYmdZWmLIORASeL7bRJw33PL8fU9QHGGRgHJcEcY5qb6k=
X-Received: by 2002:a05:651c:220a:b0:32a:8591:668f with SMTP id
 38308e7fff4ca-32adfdd88abmr40233771fa.31.1749558824159; Tue, 10 Jun 2025
 05:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com> <20250602-rk3576-pwm-v2-1-a6434b0ce60c@collabora.com>
In-Reply-To: <20250602-rk3576-pwm-v2-1-a6434b0ce60c@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Jun 2025 14:33:32 +0200
X-Gm-Features: AX0GCFuG7EFwJI0ElFjD6xqtEGmZqjqUSDaqvLfaNuSuiPY4NuX3iwrF0xr505A
Message-ID: <CACRpkdZKTo8rOUBDqqS6e5FPHnX83U4PfYQ6vsRxDVGEVNzJ7A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250610_053346_011419_79901AE4 
X-CRM114-Status: GOOD (  11.86  )
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
IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClRoaXMgIHBhdGNoIDEvNyBhcHBs
aWVkIHRvIHRoZSBwaW5jdHJsIGdpdCB0cmVlIGZvciB2Ni4xNyEKCllvdXJzLApMaW51cyBXYWxs
ZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

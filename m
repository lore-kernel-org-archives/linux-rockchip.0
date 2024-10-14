Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D23D1813A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 19:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lNnJ2X5OOXurRN5RipFtbUbRzRWXKsbGBkaS6Ow604=; b=p3/YU5RzPmtCWE
	HtMeHSPWId8HgIeJlSSptimx1JY8d65oLbmL/fmJ4jXm+VlKuTjEBEeT1LieOVoCeUkDuqK2vGtYF
	WCE2YiwKL3Fz/L77YMx4iiiBKWfLwONBI8Xn7Wqfq6IU53PXJknzAfTaIf++Q2zF8pucMpv/8uzmY
	nF2nIucM8t5O2onNXMYJnwN9rWrHLiVFtZISOWDAM3rXisyS/3ro61cOH0k1D5rxm7U92O7dBQCxF
	3KDmXminQKpEZ2uiAfBF6O1HFck7XjBTQsiWLWkjyI1dgNlJdneGmcfx1KVl2Xj7F4wMTQWXkMhLk
	SdhJVPw/RMIR/fkCcyVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0QkM-00000006IXw-2u7W;
	Mon, 14 Oct 2024 19:28:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Qiv-00000006IAE-1yL7;
	Mon, 14 Oct 2024 19:27:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6618C5C5BF9;
	Mon, 14 Oct 2024 19:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B79C4CED8;
	Mon, 14 Oct 2024 19:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728934040;
	bh=tQzPQb5VWw3cawctsi84HIWKh2eL1jlGRlFHBbBCF68=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bWq3rNM6yrz4R/mQctp7qZlwuck14t11vNQDLZE2BHhLGFGYoO5JrcuYEhe4zMFI2
	 5Q71iq+8SslrCq4M9lO3nFOapYvSexgduhhXnEIsP8TN536Lh2gVWNKepXYUa6g8bJ
	 3bzChGAMxMDQWDNn05I9IOAWqisZhkbZZziIH3TAP2XI+dk5h5L+2Lqd56wQ9fTq8J
	 VORFa6/3v2zXBfzGhT+tvFMe/l9d/GWKaTV59+7FgK00IhoAnDEbmVTCQrVkPxQkIE
	 ZhGNPj8WFPYmQ4PgUkfvB2353yRJg+d8BU+V/RCaw7VEYXJ7AWXSe9b8klq34+u+FQ
	 LQwZrQ7uyxG0A==
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6e33c65d104so32726327b3.3;
        Mon, 14 Oct 2024 12:27:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVBkNsP4XNk5+fstPileHi+MjeyYA1lWV2YMwpcpi2KeHv3eMW0+Yqtas4W0pvlLGQMWTvunUy9Dvv45W9ohilu@lists.infradead.org, AJvYcCX2VVYUET+Hgwmv0RtX/RY03/Kpb7XPNIui5NvS1QNLyHf3cCNZtENKn8/kXSvBxiVn/07jFeRyu5WbzDnYX6s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIgQBVjjGlaF5nGIZjlUwPHaN3Um/fHNjsLc3Q6gFJ6fDy3VVd
	D2+uzoMwvN4RKUHljGkmuDsCXRSeGyhuiqmrdgCaio082TDHO3Lvo/ij5+k3nID3o3ji3cdMfE+
	J9ewK8FhPBPwS/mhV/07lPZaEQw==
X-Google-Smtp-Source: AGHT+IHFxbFOoxL3R+0pc4MYk8c6g6Gw1OP6SSIGjNMlluYLOdAMkWmNh+/64HHDfLcXoB7qqBC+F19FewtdTjaQwF0=
X-Received: by 2002:a05:690c:6c0d:b0:6e3:31ee:23ab with SMTP id
 00721157ae682-6e347a03e92mr95243767b3.25.1728934039744; Mon, 14 Oct 2024
 12:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
In-Reply-To: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Oct 2024 14:27:05 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ8k6rNssQNdve2jzS4yqxShE4+g4t+yopyWSsn-WtEuQ@mail.gmail.com>
Message-ID: <CAL_JsqJ8k6rNssQNdve2jzS4yqxShE4+g4t+yopyWSsn-WtEuQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum
 to Orange Pi 5 entry
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Jing Luo <jing@jing.rocks>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_122721_579957_CB840C32 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBPY3QgMTQsIDIwMjQgYXQgMTowM+KAr1BNIENlbmsgVWx1aXNpawo8Y2Vuay51bHVp
c2lrQGdvb2dsZW1haWwuY29tPiB3cm90ZToKPgo+IFRoaXMgZXh0ZW5kcyB0aGUgWHVubG9uZyBP
cmFuZ2UgUGkgNSBkZXZpY2UgdHJlZSBiaW5kaW5nCj4gd2l0aCBhbiBlbnVtIGZvciB0aGUgT3Jh
bmdlIFBpIDViLCB3aGljaCBpcyBpbXBsZW1lbnRlZAo+IGJlZm9yZSB0aGUgZGV2aWNlIHRyZWUu
CgpQbGVhc2UgZG9uJ3Qgc2VuZCA1IHZlcnNpb25zIGluIDIgZGF5cy4gR2l2ZSByZXZpZXdlcnMg
YSBjaGFuY2UgdG8KY29tbWVudCBldmVuIGlmIHlvdSBnb3QgY29tbWVudHMgZnJvbSBvbmUgcmV2
aWV3ZXIuIFdlJ3JlIG5vdCBhbGwgb24gMQp0aW1lIHpvbmUgYW5kIEkgZG9uJ3Qgd29yayB3ZWVr
ZW5kcy4gMSB2ZXJzaW9uIHBlciAyNCBob3VycyBhdCBtb3N0LgoKClJvYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

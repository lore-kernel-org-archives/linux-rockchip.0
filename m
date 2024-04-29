Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51A57C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Apr 2024 13:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQp1IQ6fIThw6AVSIu6eH4AA8Gqjj2Lr4FTx8sKtdXk=; b=s5okCz9Z6EpbUP
	1LiqUsJBdvtTt9LpwmvoQvQNXn9wQk6PtRKygB6Vo2X1gBWygvszlltUXZ6+xzUSk41IDFT8fe/wH
	lPAcRTXdQDp/ZlKp6ohCp+VXSmmR5TZvnYgwWARrOD3J8S5xbYQFyAMRbK16PLf/+Cblyxd9liUkN
	TqE975C5qRmkSi4u5HD9HRXznuc+O/WufnfyRYKjHhfi2cNdGeI+n17z+qJrF1jgN4vjN8Iu3mRPh
	22f5R56/l+4ObKD52S3L7LSs4BNwGxJMpUKGqWG4b7CMXbhNdNXmWcHJvEYoFepGARpUXkN4e1zOy
	FfwlmUfwLikINSI8cGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1RVD-000000031fH-0kIc;
	Mon, 29 Apr 2024 13:57:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1RV8-000000031ds-1l7U;
	Mon, 29 Apr 2024 13:57:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D77BD60DCF;
	Mon, 29 Apr 2024 13:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ECC4C113CD;
	Mon, 29 Apr 2024 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714399021;
	bh=hrLWHVfoaJSAGcsmzkGrXHUYp5l5rsvCk0u32hKO+Bw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GG2LIngIGzse3bsQ9kthxsjMAUAZI18Z566oUWErkMx6pPPK49xkUk+Xz0B0X/Bn6
	 R+b/P+Htbg22jhWoXDB3Oyz9gUNFa0MN/amxRG6aIki1f6CGNXKXGfBiIsMQQFOXjW
	 YTmvzuopp2z2VIIg7xi23SW8B8QERxA2gbE/cTlQhkeuuVyPDzHkpS30qyffRa3Npp
	 BbYI0Cd1nNXvpvP7zDBBD+K2ENXv03afNPJUZ6U//q0KF8rtLwUz60ylXyFnIi+FGl
	 jLBwmtlZ2+0I0um1rWTWHVQBh3wiZxSCmFzINCFYm/gHYuYfK/rY6qG37jIEW6kM5c
	 y+/eAsjXLl9jA==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51ae315bb20so5400552e87.1;
        Mon, 29 Apr 2024 06:57:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWd1w5K9XRuzhSF/CGz4KnyvFyC4h+POHdFlfgVW6qqezjrAAWbNWUuGr4rQgAmOLm1xsGUhmkBIXWub501bVjghRWt/O/7VABomz4p9u1HARqpzLr6FQlS809lNBduGVlbOYq9iCmXNcr+72ihcTucDOlpnaKY/iM=
X-Gm-Message-State: AOJu0YyVpUr+/LrROLJyDFp8xiN5balFu8O5U/negQ0058MYExVe0aZq
	J32tk0JV7T0LJ6CsVF3LjhHDY0vW2B03wVUwxfwdsJAOJ1FKeIPs78ONcq+2hiE0amNoX1ARnIM
	iLML84R2rSdsLXPuVlskSyUA3Hw==
X-Google-Smtp-Source: AGHT+IEEwIcqYTHNTyeaORQu//zY9IvZBv3W8ieDDuTopIM8O5FwyOdckugAJo/9oCC9YM+OZe74ACDK193felORT8U=
X-Received: by 2002:a05:651c:212a:b0:2da:7af:e6a1 with SMTP id
 a42-20020a05651c212a00b002da07afe6a1mr7547332ljq.3.1714399019810; Mon, 29 Apr
 2024 06:56:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Apr 2024 08:56:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJH-wD1BbSK=DmBtftpWT7YDbabmvgy1+PPii-8ziHTiQ@mail.gmail.com>
Message-ID: <CAL_JsqJH-wD1BbSK=DmBtftpWT7YDbabmvgy1+PPii-8ziHTiQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: i2c: mux: mule: add dt-bindings for mule
 i2c multiplexer
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Peter Rosin <peda@axentia.se>, 
	Andi Shyti <andi.shyti@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_065702_611147_BAFF170E 
X-CRM114-Status: GOOD (  12.80  )
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

T24gRnJpLCBBcHIgMjYsIDIwMjQgYXQgMTE6NTDigK9BTSBGYXJvdWsgQm91YWJpZAo8ZmFyb3Vr
LmJvdWFiaWRAdGhlb2Jyb21hLXN5c3RlbXMuY29tPiB3cm90ZToKPgo+IFRoaXMgcGF0Y2ggYWRk
cyBzdXBwb3J0IGZvciB0aGUgTXVsZSBJMkMgbXVsdGlwbGV4ZXIuCj4KPiBNdWxlIGlzIGFuIG1j
dSB0aGF0IGVtdWxhdGVzIGEgc2V0IG9mIGkyYyBkZXZpY2VzIHdoaWNoIGFyZSByZWFjaGVhYmxl
CgpNQ1UKCnJlYWNoYWJsZQoKPiB0aHJvdWdoIGFuIGkyYy1tdXguCj4KPiBUaGUgZW11bGF0ZWQg
ZGV2aWNlcyBzaGFyZSBhIHNpbmdsZSBpMmMgYWRkcmVzcyB3aXRoIHRoZSBtdXggaXRzZWxmIHdo
ZXJlCj4gdGhlIHJlcXVlc3RlZCByZWdpc3RlciBpcyB3aGF0IGRldGVybWluZXMgd2hpY2ggbG9n
aWMgaXMgZXhlY3V0ZWQgKG11eCBvcgo+IGRldmljZSkuCgpKdXN0IHRvIGJlIHN1cmUsIHdlIG5l
ZWQgYSBjb21wbGV0ZSBiaW5kaW5nIGZvciB0aGUgTUNVLiBJcyB0aGlzIHRoZQpvbmx5IHRoaW5n
IHRoZSBNQ1UgZG9lcz8KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

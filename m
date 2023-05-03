Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B1EC77B78
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 20:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2gTcLBsL1quIclXHhFGokEoxhslFhqBoFm+VwZMoHU=; b=kL/KX5Cwac5JT8
	kz/rg/9wbVg4Lsm5l4lPu+fQM/SfBFjaul0HWb+0InT9WAKNRXvv8xrB+dNA0jEv2sahTQAqSDi0W
	2jdp1HPgMn1iOwm8knHk2dqfWLToL+VdJYTfGsIRdUrnrkvmO/WAlKT1tbWZ7JyPU3frt8fMAhMXC
	8Yj+7WgUWb7k5wppFO7WIYEBAv+j4eAEujG3UjwePvlqrQEk/vUT3eWXSR3PrHRcGLnpBPzRB8bos
	zMYS4xMXles81cdm5khvjGMLZORCQYhMGpQdt09O+0acP68y9rAE7/Sl8pOAYez8B/AtqzLqozKfO
	q/AkvNj5oXtIoMx22efw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puJ31-005j59-2l;
	Wed, 03 May 2023 20:25:59 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puJ2x-005j04-0T
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 20:25:57 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-b9ef06cb784so2220325276.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 May 2023 13:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683145552; x=1685737552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gEz7yCW0YNWEyofUMW+bM1YB2JKr4lLhGCi/13fTrc=;
        b=Mzh0ZV1liVt0pO7T3ehH+wp5tHq2eHIvxMQvgVLhBNtjThUcDrX/+aDvPu0tBZ/9ee
         EXtPp3wMLIa74YOBsQ0e08IZyzEb9z2PtCzmiGLSL5FFkcqFzSprSbu/p4OtMtm5Z8vg
         QTb+851VnqyKufW9AlhGHuA8W1rOsuyTf/U1ngEssyK7U0XiMTLfkIYXQJ/3BWdZ/+nL
         IlkiQndW7FfaXvB3Wtdi5hEfH46S40YPblPeGAPLxeQ85pZXExi718VSSliADLafDbtF
         EIagwxP3z0ZUYRpd+UFfoZPqXzZHPfYekCM7c+V8IvPd0peQzIxx4yrWJn2aqzP6n/mT
         v8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683145552; x=1685737552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gEz7yCW0YNWEyofUMW+bM1YB2JKr4lLhGCi/13fTrc=;
        b=Vk0uZeWrV7WfRqv/Lm8jSYbKgtZ5069T2DFP+/Ypuo4/hAOu53pJ203ufD+4rpkles
         YwEVmMqaIzRDa0cmmS6mswVdjnswKbfUgPLrmuurzFeOiqCuFqdxnu05o8ZwyEq3A+9d
         ztOvSebbFEmvN89LqhM2r0/UwwpmIUdmy1tGBWwmAD5froQrDB9kUkDGN7vYKuz/LMT+
         YPnhDr9osIUuW9HXUqYpRbBBqbmkyZxe+sJ9BIKLvqzmRHd6Cd9sAuX547HsQB95tI3b
         +l7upWTmtS14sPZ0HcH4vRUBMCtnnhEWRJzN5AuL0xTLfWDhN9PRxuxcXQKfeOY52tx3
         d4Gw==
X-Gm-Message-State: AC+VfDzVQgDX4VYCFmlPv1kqyhWDyEnykLqokmkJAwTCwhoXkVlQc9tP
	AI1qnWHAExI2Kv/xKx+36We3zJIPD1RO3SXiBJHqHg==
X-Google-Smtp-Source: ACHHUZ6bWBOMBfCcUnb1ZA+ngbZpzrLgmQlXt3j9zhiGPRBmWSduiRqy3n8tV6EAdgHxuWzjmwHy1P//RM78ldQ0LkU=
X-Received: by 2002:a25:fc0c:0:b0:b9e:7ec8:5d41 with SMTP id
 v12-20020a25fc0c000000b00b9e7ec85d41mr5902733ybd.55.1683145551966; Wed, 03
 May 2023 13:25:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <99b49e6b-e963-415a-a2c9-72505087833c@app.fastmail.com>
In-Reply-To: <99b49e6b-e963-415a-a2c9-72505087833c@app.fastmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 May 2023 22:25:39 +0200
Message-ID: <CACRpkdaZdxNZ3amHxE44NZOZcVMpBa4Kx126+7WW3XHGM2NU=A@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Olof Johansson <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_132555_185478_90C80802 
X-CRM114-Status: GOOD (  12.88  )
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

T24gV2VkLCBNYXkgMywgMjAyMyBhdCAxOjAz4oCvUE0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4gd3JvdGU6Cgo+ID4gICAgICdnZW1pbmknIDogJ2dlbWluaScsCj4KPiBUaGlzIG9uZSBp
cyBhbHNvIGEgcHJvZHVjdCBuYW1lLCBub3QgYSBjb21wYW55LiBBcHBhcmVudGx5LAo+IGdlbWlu
aSB3YXMgb3JpZ2luYWxseSBtYWRlIGJ5IFN0b3JtIFNlbWljb25kdWN0b3IsIGFuZCB0aGVuCj4g
YnkgQ29ydGluYSwgd2hpY2ggd2FzIHN1YnNlcXVlbnRseSBhY3F1aXJlZCBieSBJbnBoaSwgYW5k
IHRoYXQgZW5kZWQKPiB1cCBpbiBNYXJ2ZWxsIGFmdGVyIHRoZSBwcm9kdWN0IHdhcyBhbHJlYWR5
IGRpc2NvbnRpbnVlZC4KPgo+IE91dCBvZiB0aGUgZm91ciwgSSdkIHByb2JhYmx5IGdvIHdpdGgg
J2NvcnRpbmEnIGFzIHRoZQo+IGRpcmVjdG9yeSBuYW1lLgo+CgpTdG9yTGluayB3YXMgdGhlIGlu
aXRpYWwgY29tcGFueSwgdGh1cyBTTDM1MTYsIFNMMzUxMgp0aGUgbmFtZSBvZiB0aGUgY2hpcHMu
CgpUaGVuIHRoYXQgY29tcGFueSBjaGFuZ2VkIG5hbWUgdG8gU3Rvcm0gU2VtaWNvbmR1Y3Rvci4K
CkdpdCBhY3F1aXJlZCBieSBDb3J0aW5hLgoKVGhlbiBJbnBoaSBhY3F1aXJlZCBDb3J0aW5hLgoK
VGhlbiBNYXJ2ZWxsIHNjb29wZWQgdXAgdGhlIElQLgoKSWYgd2UgKmhhdmUqIHRvIHVzZSBhIGNv
bXBhbnkgbmFtZSBJIHdvdWxkIHVzZSBzdG9ybGluaywKYmVjYXVzZSB0aGUgY2hpcHMgYXJlIG5h
bWVkIGFmdGVyIHRoYXQuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B0CC07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 10:09:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1CD8360725
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 10:09:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1CD8360725
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rHXO6zZadyhrcV3992i+JUNKmSxoIgBysu096Avn/EM=; b=af4+/RNl8Cq7GICerSL5ug441w
	GQbH0KXVWot4rKUQfKvT7lw/4Zx+dBrEyILzbsVhicNIQMbRK9T+R0IOniewv2h+7Z2WRgRm6cZW0
	lnSqw8xx5/h5NN6JoYtZCgH57ET2sVGr99siunlqHYVNsKqK7H8S3ogD01XM8yWnQ4gRogEe2oxg9
	Pxm7ly4u0Y7w1w8J4uX8nNJic4NjfSj3PUUZDnNvr5LPfpIMytW9Z6E3mQfS6IuPS5UzKW7UnXAft
	GUEbMqPmTnm5yYGZd4nRPiIiceIUYNKPkpp3aEGAv5BaU785jiNWuFrVnBBjJ+jtNGFQzJ+4zSkoi
	TnWd05Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3yJ1-000PQk-3c; Thu, 15 Jul 2021 10:09:23 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3yIl-000PLm-4X; Thu, 15 Jul 2021 10:09:08 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 q18-20020a1ce9120000b02901f259f3a250so3247973wmc.2; 
 Thu, 15 Jul 2021 03:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ArNEv92wpJjOpuiUUnJ9dc8Ev4Ao9K4Yo2lmqmDUjAY=;
 b=j7OZ1YQjiJjTCMP21/AxjrTnskBbm7hsQ3yvCd0/LEj1Cc5onE5Eh368sab0XG3NUu
 CykLYPZ0s9VUtYXhpn2RZ4i6cywg9Uz+BCHNQwr9zQdLHnwY6q3g6JzfNLKbkw2eHUDn
 gfOsp58ueKxUDKe+XsCUAiBo1mJUFbkFFXsVgHx7oNGHv5hXcXNHkRSlRnKYoNQIr+//
 XqcvUfOWJIdcUkiMMsywfm+k0Ay2IuCTzJA610C9F9PvVikoZOfR61BcbNN5Sgyfn0Ds
 KVKitKu57nirupubueY52ouVsgB/HL6bNOfKquGJTU+D67MX/INcQfqfVtOBJTyHpzXc
 io+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ArNEv92wpJjOpuiUUnJ9dc8Ev4Ao9K4Yo2lmqmDUjAY=;
 b=GBKX2urCQqwE4V5kyoJ2Q1SLSSbm7h+N3cBDr2WHbtThK/rad47LrHKpPKMOWhaAqF
 trjlx2YdVXoQ7wyNuJ4+uqx3BS51EbDQkYSwoh4K6C47DAKVz4vF6DL/YVcHLA0As8Gc
 eqrbe4Dmbw228KNKSpkpXjBqugEjlm1gBh3x1N9aB5KBv2rxFSahvqYXdg/4nlMUBYUm
 pcwRCKSbz40feNh0cNJBZ0aL0VBzK9fp9lJXIN7H4QatSDvxTw1c4axRRl8t//K9MtYS
 rjGhVghM7IUcRvfffydSuTAPWuZlYYQpmdzanFEKy6OWjOnULbZiJhvBc/THkLPNWXg0
 CjEg==
X-Gm-Message-State: AOAM533PxJ+056SYHtmNa1hpcYoxPJ+HgqQo5Lh9JoYQsf8UFwyTq2Ap
 r50YzhXFL9ZPd03YFBQLiQ==
X-Google-Smtp-Source: ABdhPJwT7o32oTBrDj4gfyVWGLagOuRNpwm0RwfDe+dcYpvv5/uMZcCjwzaQFh08dDMVzYdn0pCU8w==
X-Received: by 2002:a05:600c:2290:: with SMTP id
 16mr3726091wmf.32.1626343743811; 
 Thu, 15 Jul 2021 03:09:03 -0700 (PDT)
Received: from [192.168.200.247] (ip5b429fd6.dynamic.kabel-deutschland.de.
 [91.66.159.214])
 by smtp.gmail.com with ESMTPSA id j12sm6102550wrq.83.2021.07.15.03.09.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Jul 2021 03:09:03 -0700 (PDT)
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Lee Jones <lee.jones@linaro.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com> <20210601154651.GE2159518@dell>
 <3527273.z0yIoBN5P9@diego>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <78b492b8-55c4-dfbd-cda6-f78c4b8557b0@gmail.com>
Date: Thu, 15 Jul 2021 12:09:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3527273.z0yIoBN5P9@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_030907_226720_4D4C07A4 
X-CRM114-Status: GOOD (  15.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTGVlLCBIZWlrbywKCkFtIDExLjA3LjIxIHVtIDEzOjU1IHNjaHJpZWIgSGVpa28gU3TDvGJu
ZXI6Cj4gSGkgTGVlLAo+Cj4gQW0gRGllbnN0YWcsIDEuIEp1bmkgMjAyMSwgMTc6NDY6NTEgQ0VT
VCBzY2hyaWViIExlZSBKb25lczoKPj4gT24gVGh1LCAyNyBNYXkgMjAyMSwgQWxleCBCZWUgd3Jv
dGU6Cj4+Cj4+PiBEb2N1bWVudCBSb2NrY2hpcCBSSzMwMzYvUkszMjI4IHFvcyBjb21wYXRpYmxl
cwo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+
Pj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+PiAtLS0K
Pj4+Cj4+PiAgIENoYW5nZXMgaW4gdjI6Cj4+PiAgIC0gY29sbGVjdCBSZXZpZXdlZCB0YWcKPj4+
Cj4+PiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwg
fCAyICsrCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4gQXBwbGllZCwg
dGhhbmtzLgo+IG5vdCBzdXJlIGlmIEknbSBtaXNzaW5nIHNvbWV0aGluZywgYnV0IHRoaXMgcGF0
Y2ggd2Fzbid0IHBhcnQgb2YgeW91ciA1LjE0Pwo+IEFuZCBJIGFsc28gZG9uJ3Qgc2VlIGl0IGlu
IHlvdXIgZm9yLW1mZC1uZXh0IGJyYW5jaC4gRGlkIGl0IGdldCBsb3N0IHNvbWV3aGVyZT8KCkkg
Y2FuJ3QgZmluZCB0aGlzIHBhdGNoIGluIG5laWh0ZXIgdGhlIG1lbnRpb25lZCB0cmVlcyBub3Ig
aW4gNS4xNC1yYzEuCgpMZWUsIGNvdWxkIHlvdSBxdWV1ZSBpdCBmb3IgcmMyLCBwbGVhc2U/CgpU
aGFua3MsCgpBbGV4Cgo+IFRoYW5rcwo+IEhlaWtvCj4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

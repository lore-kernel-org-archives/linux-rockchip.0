Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C7CC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 08:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLCu2+Z1beDB9Azm9gG59ZCT7i4NnCDPWm13rLkcEuQ=; b=L3T/glZkHRtZr4
	LvkuuflUdZTMDHarg5uMEDJ6552z4RUHU7QqqtrVm7/zBi14lK2efSQqA4Ik4B2YDHMYKGoYLfWfs
	eZDZfKgIeFFOLgFUHi+fMMoPr/FMPQZXrrMLiZXC7HAwz7OA7PK826VAv7l1+P51hCno6H6pWyh6K
	/DoigDwlemRb3pmq+KVW8TFz/jAOHHyEiyfxTA4pfZlP45/8EqruCgNyqgUuXjz3Kh/Qzm5Q0qJkD
	rFLr/L1Pmj6ZQ4nKBpuV4zZNBXc276Kw/g1XDiJif0ywqQNDCm+4CFU6usg2Y8YqzLAfhHSIaQ854
	vGu5AMPzUEww6KEa84Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA49C-003FFB-2q;
	Mon, 04 Dec 2023 08:17:46 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA496-003FD9-21
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 08:17:42 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id ada2fe7eead31-46484f37549so233838137.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 00:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701677856; x=1702282656; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cv3+u5Nr1+Y2iihnZ3hSatBIAhuecZToXeDGh+GJlpE=;
        b=CZCZr3Fkrxea5yEQOKKkODuIDXCeudu46HdDbgdI8vD7Wlenis+z31ZhpcZ1tHhO8W
         ctS2NS+nnKmbnF53eUrLZtRFLV1RlIQskPaU70L9LKjQ9kyclc4SKbPbVO+82/9k7ZuR
         Lj8TazoWukyKujRZFgwHG8SgubuOqnppPmEP86GSeCXcckFZja8bJuesB6r4elwPRXZI
         jrvUfFPLpYHFzUBE0cqaGQaXgrGPxgIMBPd8NymcfYKlqWoFsNdYwvNudlBwduIjq9Dj
         Q/23+ji2/8obBIm28yeLwYwnrmWoJZzm+PSA9bc4rPOHmeZ4xfYjnnqS68xy4GegmL2j
         I71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701677856; x=1702282656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cv3+u5Nr1+Y2iihnZ3hSatBIAhuecZToXeDGh+GJlpE=;
        b=r8DthwF4zIwftxcKWUup1agTY8xxJTmUaR8BHl8JVvbu4Q6ZOG6hoXDk8RVbuYecsB
         IloJaqGFHwZQ3Dk9oPdPURkBA0THtQvb5zoMRmOeXW1WE42tEP9WVAzc5f7DLjpasjMV
         6wHPdFkvq2f8a89G/JRNCjRfJqclksCjkGsBIq9VbYbc4sjenimhuWqgDJIAEZtHCzoR
         0nf5+VsJZVFar6Ln6T1s7dAYQfjhVqSJzzVhFctcainPGUSC4LwVsm1vDsyQbIuxIhGA
         6vaH/+d9FfxiT9eOEzGt/YMaRwM3YvPCiS4M2BTlnFps5eoYle8AfnRyAb/BiR7Tgjxt
         Xz2Q==
X-Gm-Message-State: AOJu0YzI0+BCLGihC9wR61cf09PxBJvLGrNCF0NSqWiGEjkAUWiZJZw8
	ohXmCHrUMxpukb8bxnq2vbU+Y9RGz5p9/ynn3FJIxQ==
X-Google-Smtp-Source: AGHT+IEFSa80B07cTwAmhpt40ecCmW1UM52sS0ruQH7XfF6sbBKQu+W0s56XmAPRzwmmQR5CnWl+0e+6m4sTSN9/1eA=
X-Received: by 2002:a05:6102:292b:b0:464:77f2:554 with SMTP id
 cz43-20020a056102292b00b0046477f20554mr1865442vsb.38.1701677855333; Mon, 04
 Dec 2023 00:17:35 -0800 (PST)
MIME-Version: 1.0
References: <20231201140840.323762-1-heiko@sntech.de>
In-Reply-To: <20231201140840.323762-1-heiko@sntech.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 4 Dec 2023 09:17:23 +0100
Message-ID: <CAMRc=McaQf+p1F3fP3pc8-icm1hjKv8VDLRAoXs5QGize1J=CQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: rockchip: add a pattern for gpio hogs
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, andy@kernel.org, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, quentin.schulz@theobroma-systems.com, 
	Heiko Stuebner <heiko.stuebner@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_001741_003767_55745D8F 
X-CRM114-Status: GOOD (  13.02  )
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

T24gRnJpLCBEZWMgMSwgMjAyMyBhdCAzOjA44oCvUE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJA
Y2hlcnJ5LmRlPgo+Cj4gQWxsb3cgdmFsaWRhdGluZyBncGlvLWhvZ3MgZGVmaW5lZCBpbnNpZGUg
dGhlIGdwaW8gY29udHJvbGxlciBub2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbCAgICAgICB8IDcgKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsu
eWFtbAo+IGluZGV4IGFmZmQ4MjNjODgxZC4uZDc2OTg3Y2U4ZTUwIDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2No
aXAsZ3Bpby1iYW5rLnlhbWwKPiBAQCAtNDEsNiArNDEsMTMgQEAgcHJvcGVydGllczoKPiAgICAi
I2ludGVycnVwdC1jZWxscyI6Cj4gICAgICBjb25zdDogMgo+Cj4gK3BhdHRlcm5Qcm9wZXJ0aWVz
Ogo+ICsgICJeListaG9nKC1bMC05XSspPyQiOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKwo+ICsg
ICAgcmVxdWlyZWQ6Cj4gKyAgICAgIC0gZ3Bpby1ob2cKPiArCj4gIHJlcXVpcmVkOgo+ICAgIC0g
Y29tcGF0aWJsZQo+ICAgIC0gcmVnCj4gLS0KPiAyLjM5LjIKPgoKQXBwbGllZCwgdGhhbmtzIQoK
QmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

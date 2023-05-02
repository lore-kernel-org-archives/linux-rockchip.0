Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B158C77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeXPxbjPzaMZsyMP2gYR+s7JCBd9okyMvIicl6Cd4Ig=; b=oF1hJ99YgeEFo7
	+Ha7Ff5DG/SIagaOkbsmEUdj9G3laFsmYvQTXtz1jaw1bj0NB9dEc71hGRojj1Q0G2rEgBoetxIJi
	bTgPMJgOcWICGc3+NgW/+nhyXG5nJi/b0Ztx9st5sGtR6qU21ZGSoZDQZvZHh4qrIXFLtGqgPF9ao
	i4H8Bm0rdvBlVKmgcoLM0bGGm1qUbvE6On6Et4aLlW1kF13HXOMoT3Dch3kd05N2Jav3fU4Qv3bBT
	e7OU/R75MZAOF70mq2KkVWhgSLB0Wmt2Dp6GpQwG0ExLaygkrbXP2y/yEM+4LU/1GlJGKNgrhYI8I
	7kGEFu3CdmJrg1SLbtAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpPI-001V0R-2f;
	Tue, 02 May 2023 12:47:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpPF-001UzK-1A;
	Tue, 02 May 2023 12:46:58 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 57A6F6602121;
	Tue,  2 May 2023 13:46:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683031616;
	bh=NaKJyyPWlHN9Ghox5nlaOW5ko2zxa/A4ZsnzrN3xZyM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lDD+DhBxRnivcBILM1CnoJkcAAyxRI5um7/wJsE+DYEizYRyWXO1XGQWXqxCnQbhr
	 347qrJFWA+WvKPc3o4f9aDjf7iFKJlWYneIR24poZX8CVSAe6FirpsKTFLACtb7p8s
	 wii4MMzGOnFF0yzJCHk6kw9WPnkmE0X2xlIib50UbF7u41wm72+hkD1kOazU2ONwVs
	 4lwRZIZZIM1IJJ+t9aXAVmPqQ2h12kdoVU9026YSNNatth/+VEYb/AVeQQolpa6zbp
	 div6AN51e14EovwgIFpZFM/gvExNcvN5eM6Rir/mmVclwSt7OCOlWbJZDN1wsiRu5j
	 a0sI1iV0yQUMw==
Message-ID: <9c8ca0e7-819a-ac6a-04be-c2dba1f61952@collabora.com>
Date: Tue, 2 May 2023 15:46:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for
 RK3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
 <5471965.k3LOHGUjKi@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <5471965.k3LOHGUjKi@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_054657_532015_559889F3 
X-CRM114-Status: GOOD (  10.36  )
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

SGVsbG8gSGVpa28sCgpPbiA1LzIvMjMgMTE6NDIsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
LAo+IAo+IEFtIE1vbnRhZywgMS4gTWFpIDIwMjMsIDEwOjQzOjU0IENFU1Qgc2NocmllYiBDcmlz
dGlhbiBDaW9jYWx0ZWE6Cj4+IERvY3VtZW50IHRoZSBPVFAgbWVtb3J5IGZvdW5kIG9uIFJvY2tj
aGlwIFJLMzU4OCBTb0MuCj4gCj4gbml0OiBJIGd1ZXNzIHRoZSBjaGFuZ2VkIGNsb2NrIGFuZCBy
ZXNldHMgY29uZmlndXJhdGlvbiBmb3IgcmszNTg4IHZhcmlhbnRzCj4gY291bGQgYmUgbWVudGlv
bmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KClN1cmUsIEkgd2lsbCB1cGRhdGUgdGhlIGNvbW1p
dCBtZXNzYWdlIGlmIGEgbmV3IHJldmlzaW9uIG9mIHRoZSBwYXRjaApzZXJpZXMgaXMgcmVxdWly
ZWQuCgo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKVGhh
bmtzIGZvciByZXZpZXdpbmchCgpSZWdhcmRzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

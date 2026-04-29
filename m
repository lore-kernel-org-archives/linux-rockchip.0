Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A1FCCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 22:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMy2ubyGzAkvCWY3b6F+GhPwkTFF5NPWpifmfkhbBYI=; b=BqzP06bmkxyq6P
	5cCl2AOpW9uXuFrU2DHpTlNLafKarEyEOHQuDn3NpdaFCe5mTNcKzGqAKvj3b8Vu5kSfEIDk4/Ah7
	YQBV7hLN/B2Qsq0lExonSPxzGPJSaKatS8Cehu+ue8w0KQ9eLfnMBUVb43Jt+wIzjutVXxegvngGU
	nbr/wYQmTkJM++gTa60M7ut3JMgMJnILOfxJaKwI0gizL0UB1NurzfrFSnozKU64VT7yA2E/hW2P4
	/OwNpzyA127B2m6S/FbBNhsr62naZwj/V5dM7mJ9MLz5fNZsXgxovy+wXE0R2M6MwhojVRftZlCkG
	hdlASwRdozrMkVX5paYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIDVC-00000004HIC-2tx5;
	Wed, 29 Apr 2026 22:35:30 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIDVA-00000004HH0-0PV5
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 22:35:29 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-35d95017a68so157475a91.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 15:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777502126; x=1778106926; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+QdR822Oh+h/wb6tFT1ZtMo5BW1zB1OWiICj47LJjjk=;
        b=VMrMR/CbX381epuUubeK6pgr2EthfopJVy+e2qWhIiFdZHPa+DLSjE0dJXBaMBfeWh
         /RlcgAmG+i57CnA5a5QSQcA5df3/oUOS+ij98PB8FDJKyvX8HWuiCAWMuxy6veA8Mvxg
         RSW1CrjaOmT1khxl88ktj3xqpOgUBFr0LoQoeWkH7jnzdE/BL6xhK798/yUCDD2FCWsL
         U0G/ukwKPM9BBzAxVnuSEUmBLY1zh0vTomacWYqGlJ6vFhQMnZaqY/nMyF0y91X8pb6p
         LXPWJJJnNSd3HGRdi/4rIXtxILKLnclG3ie8PeTh1ASaUgNdQ4/+gvaYI4DrPexoQX1V
         l1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777502126; x=1778106926;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+QdR822Oh+h/wb6tFT1ZtMo5BW1zB1OWiICj47LJjjk=;
        b=HDoy1Zn4KG21qRbGOvavB7HkPtXNb4M/1S46Ry4U3eDnr45Knl4YDdKi/oel3OnUW3
         jF7LWA8tsxChYkBHeTh6ctVQWbCZMmFhAdbMBUJRiQVHAuc+tAxb9HEn03dq+T8MxLFh
         Usef0utRCqrTp8y0DoeMVppJYBBGBRTGsCzC5F3LyhU6mjUEG7vl7/GUyKlfuiT41t76
         KcAD4+vy3onBMn1wXbsNLz59OKRzctSe2VHoMctLPaUhlpXwfXJtw5m7Cr1JPK0LMrw+
         yuloctQvBNAPdHHpNIISeY1pPsB95Kbb6bV4O7AWt5/sBCZs8tfHvAX9Z0c2qNNFfLhq
         IT7g==
X-Forwarded-Encrypted: i=1; AFNElJ8WZ0Bj0RS8SHmRV6pcNEE8/yArPV/a2HUa8Kk/Lzdc1Z8n0SiPlHHo09+K6CMzVwueQT3G4otIjyUFewAM+A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxG+NoP2gj+0IcNUnt1p4K70HIPONjxDx9xMf1qnKVQni8lmPg2
	e61VtWkE0E3l0Vw2kkVnwA/PhkbceCnr6dlNLEh4gx7tEpey34WhokbwnNqcfu4t
X-Gm-Gg: AeBDietS5JYthtcZB6Wz96+hDyrjPIfMFQmwUjea88EAYjvW5nI+TYWsmI6V3Z7yt41
	TSrT/gcMHCYU39XLZOrW7ygvxyRQRCW6LQUEQOnDuRUQBqauvQnicm11VXe9bltF5C/A92WElUa
	m5uyCf4PXqHdXLMbAztPqaWV8Pm2BmoYoFmPUvB9GnpK+HNwTx9fKeTgELwfhHgAaOZ6Rt7Isau
	sPjdj99wcKUHbwciOeMzwONXbol5PP7hGkYMeVzh8CIxxshNEn3uO8PxMwR0vAQMUJcbzqnEbXb
	5eXIN1FPNaEwBVpf5bSIhIms1QJG5PNm98710MnMsoVwtPKPTEn5cLlIWvvJt4UMYT0EyM0lgpS
	mSAMx5Bl8/BiHSE4b6fZ01e+Es9pBUutCEdAhcIyVUlKMOOtJ1c2kHvnEROcEuHYlpm/7d3alib
	UROpQWI9OYNMQrFhohpTWhEbWE4hj5Pj6ntQ3UZqPZEaES0b+CnQ==
X-Received: by 2002:a17:90b:3505:b0:35b:e690:c5ad with SMTP id 98e67ed59e1d1-364c310b735mr183471a91.25.1777502126475;
        Wed, 29 Apr 2026 15:35:26 -0700 (PDT)
Received: from [172.30.1.27] ([222.106.243.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-364bdf69bc2sm649418a91.10.2026.04.29.15.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2026 15:35:25 -0700 (PDT)
Message-ID: <097b96b4-9a43-404d-b06e-9b087a37dec4@gmail.com>
Date: Thu, 30 Apr 2026 07:35:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] devfreq: event: rockchip-dfi: fix missing
 clk_disable_unprepare() on error
Content-Language: ko
To: Anas Iqbal <mohd.abd.6602@gmail.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260319163011.18876-1-mohd.abd.6602@gmail.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260319163011.18876-1-mohd.abd.6602@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_153528_136050_9C6AF0A9 
X-CRM114-Status: GOOD (  16.69  )
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

CgoyMDI2LTAzLTIwIEFNIDE6MzDsl5AgQW5hcyBJcWJhbCDsnbQo6rCAKSDsk7Qg6riAOgo+IFNt
YXRjaCByZXBvcnRzOgo+IGRyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYzoyMTUg
cm9ja2NoaXBfZGZpX2VuYWJsZSgpIHdhcm46Cj4gJ2RmaS0+Y2xrJyBmcm9tIGNsa19wcmVwYXJl
X2VuYWJsZSgpIG5vdCByZWxlYXNlZC4KPiAKPiBJZiByb2NrY2hpcF9kZmlfZGRydHlwZV90b19j
dHJsKCkgZmFpbHMgYWZ0ZXIgY2xrX3ByZXBhcmVfZW5hYmxlKCksCj4gdGhlIGNsb2NrIGlzIG5v
dCBkaXNhYmxlZCwgbGVhZGluZyB0byBhIHJlc291cmNlIGxlYWsuCj4gCj4gQWRkIGNsa19kaXNh
YmxlX3VucHJlcGFyZSgpIGluIHRoZSBlcnJvciBwYXRoIHRvIHByb3Blcmx5IHJlbGVhc2UKPiB0
aGUgY2xvY2suCj4gCj4gRml4ZXM6IGQ3MjRmNGE0NTgxYiAoIlBNIC8gZGV2ZnJlcTogcm9ja2No
aXAtZGZpOiBQcmVwYXJlIGZvciBtdWx0aXBsZSB1c2VycyIpCj4gU2lnbmVkLW9mZi1ieTogQW5h
cyBJcWJhbCA8bW9oZC5hYmQuNjYwMkBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJl
cS9ldmVudC9yb2NrY2hpcC1kZmkuYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJl
cS9ldmVudC9yb2NrY2hpcC1kZmkuYyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1k
ZmkuYwo+IGluZGV4IDVlNmU3ZTkwMGJkYS4uOGRiMGJjZWVkZWQ0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+IEBAIC0xODUsOCArMTg1LDEwIEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfZGZpX2VuYWJsZShzdHJ1Y3Qgcm9ja2NoaXBfZGZpICpkZmkpCj4gIAl9Cj4gIAo+
ICAJcmV0ID0gcm9ja2NoaXBfZGZpX2RkcnR5cGVfdG9fY3RybChkZmksICZjdHJsKTsKPiAtCWlm
IChyZXQpCj4gKwlpZiAocmV0KSB7Cj4gKwkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRmaS0+Y2xr
KTsKPiAgCQlnb3RvIG91dDsKPiArCX0KPiAgCj4gIAlmb3IgKGkgPSAwOyBpIDwgZGZpLT5tYXhf
Y2hhbm5lbHM7IGkrKykgewo+ICAKCkFwcGxpZWQgaXQuCgpUaGFua3MsCkNoYW53b28gQ2hvaQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

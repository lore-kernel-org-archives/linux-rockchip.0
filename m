Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1F4D1BDD4
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 20:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u7bNacwcXdN4HWUjNWkWOsCOf3f+tBSpVEYbS24hW+k=; b=SLpRmnsaJ9dMN9+xY/HiHM+iV6
	vy8gCOYGz2dYjD4h1fiMnLgYFPcDnDuhK8wjuYUCx3IhgJiPjzdbZey2GuQt6SDX9qhMI6vkAoTwK
	H2/LeVdxbtFFZFu7wjU6udWzIw7Aq1VZg58jee49Oo6XOop7ufDjxJc6FmHBsnAz+m3FtbnnuJrUr
	eI2OoWjkeBk678fd4eYSrjc763XmEwnEuObG7trUMc1VMiKlM6OGV7/JVhagXZI8n1AJW3Ked5H1r
	gnbWGhgKMoUuOKANtddmG3iBcK/g14osq5HCRMXqhf5jG8g2Ke5vfyZUQSlzJp7xDooEu25+mXNPk
	p56kNj8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQtNc-000000071n3-3ObU;
	Wed, 03 Dec 2025 20:23:16 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQtNZ-000000071kR-2RPk
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 20:23:15 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-477632b0621so1197305e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 12:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764793391; x=1765398191; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=la5DY+nye5Y4WsEMXBxzYTG6S0M/hvXAkvJ3L0NdBQ8=;
        b=FnQ96lmMCnTwr7Z0kjGmauXNPVIM4zg/SSjl2MxUD4ftx0tTg+qxdBVgs5JLrZv+XM
         5gxcOS2RkkdnW26p5Tc05dLGx7J4hkVO2mo4aMVRMB6384vEtHNpI7VeyXxMOpb8ytb9
         uzY9Y9LNpM/GhUnTwx9RG7LExGl8P+3VqX2XHQN+NrDdlwZc/NaQTf0wOdSGNjfbSHHi
         SLVHck9t4ACiKuBto/IrLs3Ysfl8MF3D7s+3LdwJBgi4qHHtHPEsC0zEAQ/W0vhJd2aX
         sP6A++7zc4JjmCXGPdy8S5jiWdOL6FH/XxzDIrn7wz6Ro/S6XPojAVIbAATvGmP5VU1p
         8K2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764793391; x=1765398191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=la5DY+nye5Y4WsEMXBxzYTG6S0M/hvXAkvJ3L0NdBQ8=;
        b=CmwYrebJ8Py4Rzn54NZa/D8twTt0udICtwPU7oIq3TX551s3ae9s9W4cwkjJl3NXe+
         mzWcyMECJm3W2yjfAb1Xvo+unn7jcCRmWefGQYbSFHenm37G4/AguBvkLot3vdV2aDo6
         /tKBl4EPMYGvIPxT2GhStj2OlzjVS6vR5F+c07F3nhaOjITaUn4kVZ+2Ve+J3awI9usE
         wLkXK65mbajqJQYzDiip2E8nA8kOC1vdohc9F4vBa4xJA5eVjQSgYs7yH84jQw3xqxRb
         ZzNO7qRhW5H2XqlXJe80smI2DTzpQMZ59Lq4sM/n/lvMNWkdjFLgr/6UPrB79M7phG2t
         sLvw==
X-Forwarded-Encrypted: i=1; AJvYcCUkBei0LFnTX8ccdKm9QCtSwl6Tsa2jz6CpigWAq6gRcyyvavKEaKErnk4Iup8/fbcQGm+7lgpAluCI2r2YYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeUj5Pn0EOHBCTHJ1m84bfB9+yiHRn752Ogg8XbuzcuRi4bMj8
	GHBRh4sTTlAzcU9WVLnRY4tnwLIIwPeYNh3w/v5NIzRjGtUekGJLu+Q=
X-Gm-Gg: ASbGncvuujW/yHQDFltYAgkM8DI1YVyTuANhtb0HYlse3o+/V9RCpX6E8/Uj/7ndhNW
	8DYIq+v9rOWWZgPCUtNfX0rtw08KAdUaoVT/PLBChv0Xs+wMJJJfrOpdpjL47iay512vKb5p9Dk
	HHbSbt0YezH92OYVYcLH+7tpcUyCMc5tUfF+SrG7u1AktMAyQNKQlchHT5tbtpB0Dd+ZZRReeAV
	4bYs7Wko8KfMlbKSyveoBv9K6VuPfJpCU/aU2FYP+xs2AWBlXBzn89cRZjPta7mRzQAq3ZhQzbz
	Ry4WphdCy0DLd4NzbWQVUr/jHgxAurWNmQGE0UKfpXXzLLHxdnSgjArt+9F4GnvHabTMSh6YqJN
	ZTERXU+UjI12sD+4LZscrpC5K0yeMNJQlv+gkcYyfJ8n4POjYK9AUxiFdfbivwxh7tPydIY49EM
	0ODU0V82zMyRLqx1pVOAzDxbD0cltknDKV+0JfPkwkWYBwFQZvKWBHYh/SU9xB48qVMg8=
X-Google-Smtp-Source: AGHT+IEpGSW/EFraUJRRr3A4U1L8grZ6drN7sy7XuL6+qwvpsW1qlvzAiO5Upxd981TrT5V2Ub2FOw==
X-Received: by 2002:a05:600c:4443:b0:477:9b35:3e36 with SMTP id 5b1f17b1804b1-4792aedfbf4mr38189915e9.2.1764793391265;
        Wed, 03 Dec 2025 12:23:11 -0800 (PST)
Received: from ?IPV6:2a02:810b:f13:8500:3079:1d24:47d4:553a? ([2a02:810b:f13:8500:3079:1d24:47d4:553a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a7971c7sm68875275e9.2.2025.12.03.12.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 12:23:10 -0800 (PST)
Message-ID: <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
Date: Wed, 3 Dec 2025 21:23:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Robin Murphy <robin.murphy@arm.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_122313_651586_E7D0CEB4 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iaW4sCgpBbSAwMy4xMi4yNSB1bSAxNzoyMSBzY2hyaWViIFJvYmluIE11cnBoeToKPiBb
IEp1c3Qgbm90aWNlZCB0aGlzLi4uIF0KPgo+IE9uIDIwMjUtMDgtMjggNTo0MyBwbSwgQ2hyaXN0
aWFuIEhld2l0dCB3cm90ZToKPj4gRnJvbTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+
Cj4+Cj4+IEFkZCB0aGUgcmVxdWlyZWQgbm9kZXMgdG8gZW5hYmxlIFNQRElGIGF1ZGlvIG91dHB1
dCBvbgo+PiB0aGUgQmVlbGluayBBMSBzZXQtdG9wLWJveC4KPgo+IEJ1dCB0aGUgQTEgZG9lc24n
dCBoYXZlIFMvUERJRj8gT25seSBIRE1JIHBsdXMgYSAzLjVtbSBqYWNrIGNvbm5lY3RlZCAKPiB0
byB0aGUgYW5hbG9nIGF1ZGlvIGNvZGVjIChhbmQgcG9zc2libHkgdGhlIGNvbXBvc2l0ZSBUViBv
dXQpIDovCj4KWWVhaCwgc29ycnkgLSB0aGlzIHBhdGNoIHdhc24ndCBzdXBwb3NlZCB0byBiZSBz
dWJtaXR0ZWQgdXBzdHJlYW0uCgpSZWdhcmRzLAoKQWxleAoKPiBUaGFua3MsCj4gUm9iaW4uCj4K
Pj4gU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBIZXdpdHQgPGNocmlzdGlhbnNoZXdpdHRAZ21haWwuY29tPgo+
PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRzIHwg
MjMgKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtYTEuZHRzIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LWEx
LmR0cwo+PiBpbmRleCBmN2M0NTc4ODY1YzUuLmIyNzZhMjliZGQ4NSAxMDA2NDQKPj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRzCj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LWExLmR0cwo+PiBAQCAtNTgsNiArNTgsMjQg
QEAgaXItcmVjZWl2ZXIgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8yIFJL
X1BBMiBHUElPX0FDVElWRV9MT1c+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGludXgscmMtbWFw
LW5hbWUgPSAicmMtYmVlbGluay1nczEiOwo+PiDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDC
oCBzcGRpZl9zb3VuZDogc3BkaWYtc291bmQgewo+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBzaW1wbGUtYXVkaW8t
Y2FyZCxuYW1lID0gIlNQRElGIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgc2ltcGxlLWF1ZGlv
LWNhcmQsY3B1IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc291bmQtZGFpID0gPCZzcGRp
Zj47Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBzaW1wbGUt
YXVkaW8tY2FyZCxjb2RlYyB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNvdW5kLWRhaSA9
IDwmc3BkaWZfZGl0PjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4gKwo+
PiArwqDCoMKgIHNwZGlmX2RpdDogc3BkaWYtZGl0IHsKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBh
dGlibGUgPSAibGludXgsc3BkaWYtZGl0IjsKPj4gK8KgwqDCoMKgwqDCoMKgICNzb3VuZC1kYWkt
Y2VsbHMgPSA8MD47Cj4+ICvCoMKgwqAgfTsKPj4gwqAgfTsKPj4gwqAgwqAgJmFuYWxvZ19zb3Vu
ZCB7Cj4+IEBAIC0zMjUsNiArMzQzLDExIEBAICZzZG1tYyB7Cj4+IMKgwqDCoMKgwqAgc3RhdHVz
ID0gIm9rYXkiOwo+PiDCoCB9Owo+PiDCoCArJnNwZGlmIHsKPj4gK8KgwqDCoCBwaW5jdHJsLTAg
PSA8JnNwZGlmbTBfdHg+Owo+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsK
Pj4gwqAgJnRzYWRjIHsKPj4gwqDCoMKgwqDCoCByb2NrY2hpcCxody10c2h1dC1tb2RlID0gPDA+
Owo+PiDCoMKgwqDCoMKgIHJvY2tjaGlwLGh3LXRzaHV0LXBvbGFyaXR5ID0gPDA+OwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

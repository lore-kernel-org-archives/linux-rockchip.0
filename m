Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B31FC6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 07:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lng0bzuRuLd5GMgcZGTwV4Z8UxhvA9mhwKLcJLK13g=; b=cnzlNVAs98f/9D
	1KJ+86+kMZBoepvgfmYCtcMC3WzcKIId59z/24XtzfORY8528vWN8aQcdtaXsXJwW/+Ab2xFrcui8
	noVHH1MGp2hWMLbT9uXxW6wgcBmIBemdx3Y5pASNBoBV1LGV6dbav5xC2UtCNt/sbM20qFRNk212q
	8Jkdn9aXk5jovQh+gKcdNTqwandcQ3mpRRQThORydkeITq24yFlOdF9CZeQra23GKQpJU0MAGOoy+
	oD2FC9nAqC3Bawqi4FxXjhI9+98m7wP5IJXfP84NOfgivaSDC2t8fVuWOdAZi1o+o0XY1JEen1vlQ
	dHFqbjo3eJbbQa4aUChQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phQ4r-00GtPz-0n;
	Wed, 29 Mar 2023 07:18:37 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phQ4o-00GtOT-02
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Mar 2023 07:18:35 +0000
Received: by mail-wr1-x42c.google.com with SMTP id m2so14587396wrh.6
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Mar 2023 00:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680074310;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eajfSt8w9ufgtddPRPPD3ycsjjI6dYwIY70vn8OhuP8=;
        b=JSFX3SUpSO5Pnvj3Bqsee5QeVRvC2/QwIyuCX8YXzGW5i6X0bCAvZLf1SupVEtz9UN
         gWwlHf96GuuINcA1o7sN3ygP5HYuSo3uU0xg3t2cl3SYta1zrA83TbWB0hvtj5rRA9Sc
         HV0juj5v3ecuAP/ce0rn4BjDpEVsBrLy1rMJqs8Cfy9vz8lAouIOy71e1tvEvb5a4ffr
         tTrJzYV969vDjgvXcW8u0u8g863K1CSaP8NmoqUbU3UZi21B+uTtoOR8MMVjlMEkaLGV
         tjpGeEu8vDUCA8qPVH1YKFk3tYIcTKnUbvoCO34usOfWxaFUV8fnmnDk3hvC+7EoS6xe
         6Obw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680074310;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eajfSt8w9ufgtddPRPPD3ycsjjI6dYwIY70vn8OhuP8=;
        b=D6MR/j4Tc8fw6UQiQZDU5uuu3a+BK9f7aRMIAF6YSmFxhlY1+yS+oEwSrIwbeL/P0W
         hYO3605JiYleEYKJuN1oqqLNRQnFhszxXhQd304SWNCLdFKgTgBk8G5tL0tTnP6Ilseu
         WM5C2WqjejjCfwxqpZ5DSxIm7kerR6/U9Q5hzsP8VXWZWA0xDCxme88FYoghhTGOdish
         LqCz0gEPxLu88t9iYkN9uIv5g9xzr9VE955m0yzTgka41WudbyuWOpLtKHSkybAPeVss
         Aowo/Ly4W+nCPG+0sEPH7pPqc6PXSBrOLQyBosLCQioV/+V1kRDo2DBe/K4AQ+lUTuHQ
         XP/Q==
X-Gm-Message-State: AAQBX9c8nSy5P2TiDNLelsg7JqJsQaQTDvF63V+gq+ngYv1VBEyFQ4vx
	xNocj7CgdezedZkGIDpy3wsECQ==
X-Google-Smtp-Source: AKy350bo70toYQ1jB282XzP5A8Q0DmRgF0RkhKapiG7TXsz1y7SEzDi3UbCgIf7qeNPJVgxKvgJFNg==
X-Received: by 2002:adf:ce01:0:b0:2e2:730a:c7de with SMTP id p1-20020adfce01000000b002e2730ac7demr3550893wrn.24.1680074310088;
        Wed, 29 Mar 2023 00:18:30 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.91])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d484c000000b002c59f18674asm29503250wrs.22.2023.03.29.00.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 00:18:29 -0700 (PDT)
Message-ID: <e01a753e-aea2-5489-e436-2ec0f3fedb64@linaro.org>
Date: Wed, 29 Mar 2023 08:18:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH -next] spi: rockchip-sfc: Use
 devm_platform_get_and_ioremap_resource()
Content-Language: en-US
To: "Yang.Lee" <yang.lee@linux.alibaba.com>, broonie <broonie@kernel.org>
Cc: heiko <heiko@sntech.de>, linux-spi <linux-spi@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20230328062118.86336-1-yang.lee@linux.alibaba.com>
 <48f1ee32-a030-8188-3a9d-612888b9678f@linaro.org>
 <e6d8f4ce-8b3b-4cce-be94-cd5902c676ae.yang.lee@linux.alibaba.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <e6d8f4ce-8b3b-4cce-be94-cd5902c676ae.yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_001834_044844_617D1427 
X-CRM114-Status: GOOD (  12.60  )
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

CgpPbiAzLzI5LzIzIDA3OjA2LCBZYW5nLkxlZSB3cm90ZToKPiAKPiBGcm9tOlR1ZG9yIEFtYmFy
dXMgPHR1ZG9yLmFtYmFydXNAbGluYXJvLm9yZz4KPiBTZW5kIFRpbWU6MjAyM+W5tDPmnIgyOOaX
pSjmmJ/mnJ/kuowpIDIzOjE2Cj4+wqBJZsKgScKgd2VyZcKgeW91wqBJwqB3b3VsZMKgbWFrZcKg
YcKgc2luZ2xlwqBwYXRjaMKgYWRkcmVzc2luZ8KgYWxswqB0aGXCoGRyaXZlcnMKPj7CoGZyb23C
oFNQScKgYXPCoHRoaXPCoGlzwqBhwqBzaW5nbGXCoGxvZ2ljYWzCoGNoYW5nZS7CoFlvdcKgZ2V0
wqBleHRyYcKgcG9pbnRzwqBhc8KgeW91Cj4+wqBhdm9pZMKgcG9sbHV0aW5nwqB0aGXCoGxvZy4K
PiAKPiBGaXJzdMKgb2bCoGFsbCzCoHRoYW5rwqB5b3XCoGZvcsKgcG9pbnRpbmfCoG91dMKgdGhp
cy4KPiBCZWNhdXNlwqB0aGXCoG1haW50YWluZXLCoGxpc3TCoG9mwqBlYWNowqBTUEnCoGRyaXZl
csKgZmlsZcKgaXPCoG5vdMKgaWRlbnRpY2FsLMKgScKgYW3CoHdvcnJpZWTCoGFib3V0wqBjYXVz
aW5nwqB0cm91YmxlwqBmb3LCoHRvb8KgbWFuecKgcGVvcGxlLMKgc2/CoEnCoHNwbGl0wqBpdMKg
aW50b8KgbXVsdGlwbGXCoHBhdGNoZXPCoGJhc2VkwqBvbsKgdGhpcy4KClRoZSBjaGFuZ2UgaXMg
dHJpdmlhbCBlbm91Z2ggdG8gZG9uJ3QgYm90aGVyIGF0IGFsbC4gSGVyZSdzIGFuIGV4YW1wbGU6
Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGlu
dXgtbmV4dC5naXQvY29tbWl0Lz9pZD00YjIzNjAzYTI1MWQyNDAyMmYyZmE0OGVlNjc2MTBlYjI0
NWE0MTE1Cj4gCj4+wqBObyzCoHlvdcKgYmV0dGVywqB1c2XCoGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZSgpwqBhc8KgcmVzwqBpc8Kgbm90wqB1c2VkCj4+wqBhZnRlcndhcmRzLsKgWW91
J2xswqBnZXTCoHJpZMKgb2bCoHRoZcKgbG9jYWzCoHZhcmlhYmxlwqB0b28uCj4gCj4gSXQncyBt
eSBiYWQswqBJwqB3aWxswqBzZW5kwqBhwqBuZXfCoHZlcnNpb24uCj4gCj4gUmVnYXJkcywKPiBZ
YW5nIExpCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5241C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 09:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5BkxywQeaiG8E1oI7ibMzwW1mThnmDfmXS0QjyYn54=; b=jVKFPcJm7vUrz+
	R1jjqY6oILBqR9QxCfQJk4IH3WF6rcLSwjk9DNsuU9qXrol+x5TH6QU0Dv418NPjHazowkewyvNGq
	eXwM/LVgWEAuU1OwSvIp/KkQuKuyMYB/mzMOihh+7bynCWc+BLycOynY7Jh4Mem8EuggkhFA4FB6G
	cpTbJc1E/KoP+Ljn5lTUc9aDm86itFR1nCygZyllffr60v0HgBfNAhhtDGQOwXIvbYX7hwCSjJHnL
	TNRdstv8OMOvF3zj1NCFS3BxgMbHRjMhjV6YNISnP9STiHKeGrnHPa7GjL2hlwXLDnADnY9KTdmZv
	VVHGnxj4md2jf3XvrcNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghT4-00000008DUZ-3Coa;
	Wed, 21 Aug 2024 09:17:26 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghSs-00000008DRa-26BR
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 09:17:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52efd530a4eso9756345e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Aug 2024 02:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724231832; x=1724836632; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yTcEdq32gQ8iIeeDJABv9Npe6xpZYxMHLhniGRjw0fw=;
        b=Jh+aT+NQLEVYWJwDD2Scwnx28NLqbapgWq1F3n6h5zd1pOGLS5YNAh+tg+GVoFndaI
         32sBQYxxG2PNseHEkRa8d8ChjaocZm5zsyV+SzSjLigMIXJOuhUnza5G32VlJuqK0x37
         46ztF13k9AuFKahL7gyk9esx7dMqaU3oqxbZZf9gjrtUuBa3bG8caY1e8lVGbJ9HS5l3
         Cu95gmzZ6nk+z/rkp4XFFsBD7ldqT0zRpxIaqvC8Egm5m+n+3cE0dUqKcqN4KyjRL468
         c0L55MvJPdHvY5fk6+FcTkgB/zxRwA17yCoCwsclAjoImbuBHqnMUc/TW6DpOLYzucMh
         Ca9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724231832; x=1724836632;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTcEdq32gQ8iIeeDJABv9Npe6xpZYxMHLhniGRjw0fw=;
        b=igoCDhLG/9RvGC+qoGwLDZJPmX3VnV2Gm9KmB8NEOTILm7SPeA+J/Y3GZtZV3guerT
         U9ayarPMmFWkBV+Su/IABBLGMwHla7w4m7lXLF58l1jMHAHqZORFbENvNWSH2UxV5aqn
         R68RlR/MB0m1rI4OMtwUWXREqwQPAtlWLLF2rOLQN8Big0jX2WWY3DkaMXP2hrIHW+wj
         KCp40lqAjdQxwGFnKs2eFXClPwfMKEBVVtOY5fPRf1Mh64HDIF7q38tPfc6ZDze90iES
         Yyn9KHasnVh/1rYATD0iItLcZ8/U0W65U0Bucj/eeFLG0FXfYygXZWDiTjO67iYedio6
         DG9A==
X-Gm-Message-State: AOJu0YxO+ZPxFARZB4fXX21lVZozGI5xAHlkwLVm20H0GCuA2QUaaYUp
	Q0CEICyXYmDwIijEen0dNAIKcvIxKYDMe8wD8vW1oXmVvzuYJdOs08RYj5pTfsU=
X-Google-Smtp-Source: AGHT+IGFyvankiGiqQlirNKT5gEQwGDaAytLh8lRTrrOtuwFakO1Unbag8AurjSGdFyt6Ve4vsa7eA==
X-Received: by 2002:a05:6512:3d02:b0:52e:9b15:1c60 with SMTP id 2adb3069b0e04-5334859542dmr962544e87.48.1724231831849;
        Wed, 21 Aug 2024 02:17:11 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838d0271sm870311166b.82.2024.08.21.02.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 02:17:11 -0700 (PDT)
Message-ID: <5551c256-a21a-4914-b987-2cbe2eedb28f@linaro.org>
Date: Wed, 21 Aug 2024 11:17:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: rockchip: enable SPI flash on
 NanoPC-T6 LTS
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-3-e0138bb10042@linaro.org>
 <2890737.yaVYbkx8dN@diego>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <2890737.yaVYbkx8dN@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_021714_719185_9C00A4C6 
X-CRM114-Status: GOOD (  12.31  )
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

T24gMjEuMDguMjAyNCAxMDo1OSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIxLiBBdWd1c3QgMjAyNCwgMTA6MjU6MzIgQ0VTVCBzY2hyaWViIE1hcmNpbiBKdXN6a2lld2lj
ejoKPj4gRnJpZW5kbHlFTEVDIE5hbm9QQy1UNiBMVFMgaGFzIDMyTUIgb2YgU1BJIGZsYXNoIG9u
LWJvYXJkLiBPbiBub24tTFRTCj4+IGJvYXJkcyB0aGlzIGlzIG9wdGlvbmFsIGNoaXAuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1hcmNpbiBKdXN6a2lld2ljeiA8bWFyY2luLmp1c3praWV3aWN6QGxp
bmFyby5vcmc+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW5hbm9wYy10Ni5kdHMgfCAxNCArKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtbmFub3BjLXQ2LmR0cwo+PiBpbmRleCBiZjJjNDQyN2FkNzQuLjBmOWRmNjRkYzFi
MSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFu
b3BjLXQ2LmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1u
YW5vcGMtdDYuZHRzCj4+IEBAIC01OTQsNiArNTk0LDIwIEBAICZzZG1tYyB7Cj4+ICAgCXN0YXR1
cyA9ICJva2F5IjsKPj4gICB9Owo+PiAgIAo+PiArJnNmYyB7Cj4+ICsJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JmZzcGltMV9waW5zPjsKPj4gKwlzdGF0dXMg
PSAib2theSI7Cj4+ICsKPj4gKwlmbGFzaEAwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJqZWRlYyxz
cGktbm9yIjsKPj4gKwkJcmVnID0gPDA+Owo+PiArCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwxMDQw
MDAwMDA+Owo+PiArCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Owo+PiArCQlzcGktdHgtYnVzLXdp
ZHRoID0gPDE+Owo+PiArCX07Cj4+ICt9Owo+PiArCj4gCj4gc2FtZSBxdWVzdGlvbiBhcyBwYXRj
aDEuIFlvdSBlbmFibGUgdGhpcyBhbHNvIG9uIHRoZSBub24tTFRTIGJvYXJkcyBub3cKPiB0aGF0
IGRvbid0IGhhdmUgdGhpcyBmbGFzaCBjaGlwPwoKbm9uLUxUUyB2ZXJzaW9uIG9mIGJvYXJkIGhh
cyBhIHNwYWNlIGZvciB0aGlzIFNQSSBjaGlwIHNvIGl0IGNhbiBiZSAKcG9wdWxhdGVkIGVpdGhl
ciBieSB2ZW5kb3Igb3IgYnkgdXNlci4gQW55IE9TL2Zpcm13YXJlIHdoaWNoIHRvdWNoIFNQSSAK
Zmxhc2ggc2hvdWxkIChJTUhPKSBjaGVjayBpcyBjaGlwIHByZXNlbnQgLSBEVCB0ZWxscyB3aGVy
ZSB0byBsb29rLgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C22C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 07:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFJYbBJGe7Nwcwp2dPcQn86JFa6Eak21VqIRpVfEPE4=; b=tz3e7mX4Xz036w
	2YvfgTFaITj63uGDq5PSWGcneeJ+b9I5rmsVQ51ki7PfuJoP7JUBe946sH4tWU1YQQ5YQ3oViKjEl
	0CZp2R+dVP1wD4HYZmQis8VC+hrSFqo/pI1n5nQtQ2pNYk5XW0DT29hgGZC5WJTggu4jbPj1T5gdB
	zqobfvUeHwhIDavpAbozWgPEG5Mbyj/sfZPUy0teYYNpIHUt/k2vHQJh32q6LzsZVUvvrxLZoL8jW
	a8or74urDFaYlCqjdFeiEFffa+tmmxy0fgw1XSWUQ6IGQZXSpAEJRnYtV25O5/dbBTBe4KWnoUJG9
	dzu9z7ZeUIlWuqDd5omg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdoc-00BCwF-1q;
	Tue, 16 Jan 2024 07:24:54 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdoX-00BCs5-2l
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jan 2024 07:24:52 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50edf4f478eso7466436e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jan 2024 23:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705389886; x=1705994686; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QmuNQYYSxRr/CS/I56kykdOCBdz6OEQC10FmQ1EeQhc=;
        b=inkkNmTqLMvMsGGZeT2OAyFJadWGkcNxS7KU/tCex79sjkXLLxSqlKPD4S/rLO09Oz
         T3CFBdW495dvCGwB4+/KrZLK6zADS2/VB32Fqj7szfCkM715e8cemgPTJHi7xNFhEkXd
         aE4U8isdZojCULvZvMJqnTB6kccWk9M6yIM87CTc/ST+5uUipxwB8yjAd8vnyPt6so2x
         KdTtDBfRhAnbV9q8YA6qGkaeA4hGmwnMtmgyYerujuej2gVgcB+6qkR4s9OsrP4BaabU
         +WG5/xszkdyH7tXojqBzcgisZuwyb5SNEn2KvunsEBSXhsfL1Ml/B2iSj7h+9NLCStxK
         trRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705389886; x=1705994686;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QmuNQYYSxRr/CS/I56kykdOCBdz6OEQC10FmQ1EeQhc=;
        b=GinsUhwwv9+l5+emXWKBDcyV3INxVsi4HLwWyBQ/XDEYTBpyn1uapzkBzoIgCAkISq
         8CCKpSw2GJnwjdke+lgOpZBNpVlvD98Vd9B6+6zlqGqeuk3CAhKlZr6E/1FHzN19HeKB
         PbFCorQJPFYNdkZAfa1isEWwxGIhgXjIjrteEq/xaoTCOakYaQT0dD167sc0m6tyYi9+
         pUrW99+PTzXjyJ5Lh1WFRW+iI0fppYHq9wr6xRYh4idAXUwjyMjjxQQlM2vfP/UvfRi+
         a/1W7RJ8+RuX3SJf4o9ln4S8b6smqhpzxmo+YWzR3vYIfKMbq6uCdiOaE9Ev1g9MziNN
         VJbA==
X-Gm-Message-State: AOJu0Yxt2IR9Mfr63zI5g4F+JH5nSUR59G8YVB+C/jf9xHJYIqVIjYfP
	U5GtMob6QH0HSjz/jW1k79AJNEvtRpaPJw==
X-Google-Smtp-Source: AGHT+IHo/uu1hzJDpzHccNQb1Ziup25P9UjfC6TNi547r4ligiqKnJdY8c8q7eyttgP5SakChtGebA==
X-Received: by 2002:a05:6512:1247:b0:50e:7be0:3c38 with SMTP id fb7-20020a056512124700b0050e7be03c38mr3701566lfb.98.1705389885808;
        Mon, 15 Jan 2024 23:24:45 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id cw1-20020a170907160100b00a2dae4e408bsm2554928ejd.15.2024.01.15.23.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jan 2024 23:24:45 -0800 (PST)
Message-ID: <3dfe868d-ff8d-44ac-a68e-066ac42a6705@linaro.org>
Date: Tue, 16 Jan 2024 08:24:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, KyuHyuk Lee <lee@kyuhyuk.kr>,
 Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 Andy Yan <andyshrk@163.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
 <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_232449_893897_272520D3 
X-CRM114-Status: GOOD (  13.91  )
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

T24gMTYvMDEvMjAyNCAwMzowMCwgVGltIEx1bm4gd3JvdGU6Cj4gCj4gT24gMS8xNi8yNCAwMTo1
OCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMTUvMDEvMjAyNCAxNTo1MSwgS3l1
SHl1ayBMZWUgd3JvdGU6Cj4+PiBUaGUgdmVuZG9yIGluIE9EUk9JRC1NMSBpcyBoYXJka2VybmVs
LCBidXQgaXQgd2FzIGluY29ycmVjdGx5IHdyaXR0ZW4KPj4+IGFzIHJvY2tjaGlwLiBGaXhlZCB0
aGUgdmVuZG9yIHByZWZpeCBjb3JyZWN0bHkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS3l1SHl1
ayBMZWUgPGxlZUBreXVoeXVrLmtyPgo+Pj4gLS0tCj4+PiAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDIgKy0KPj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+IFlvdSBuZWVkIHRvIHN0YXJ0IHRl
c3RpbmcgeW91ciBwYXRjaGVzLiBZb3VyIGxhc3QgTTEgZmFpbHMgYXMgd2VsbCBpbgo+PiBtdWx0
aXBsZSBwbGFjZXMuCj4+Cj4+IEl0IGRvZXMgbm90IGxvb2sgbGlrZSB5b3UgdGVzdGVkIHRoZSBE
VFMgYWdhaW5zdCBiaW5kaW5ncy4gUGxlYXNlIHJ1bgo+PiBgbWFrZSBkdGJzX2NoZWNrIFc9MWAg
KHNlZQo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd3JpdGluZy1zY2hlbWEu
cnN0IG9yCj4+IGh0dHBzOi8vd3d3LmxpbmFyby5vcmcvYmxvZy90aXBzLWFuZC10cmlja3MtZm9y
LXZhbGlkYXRpbmctZGV2aWNldHJlZS1zb3VyY2VzLXdpdGgtdGhlLWRldmljZXRyZWUtc2NoZW1h
Lwo+PiBmb3IgaW5zdHJ1Y3Rpb25zKS4KPj4KPj4gVGhlIERUUyBjaGFuZ2Ugd2lsbCBicmVhayB0
aGUgdXNlcnMsIHNvIHdvdWxkIGJlIG5pY2UgdG8gbWVudGlvbiB0aGlzIGluCj4+IGl0cyBjb21t
aXQgbXNnLgo+IAo+IEkgbm90aWNlIHRoZXJlIGFyZSBhIGNvdXBsZSBvZiBvdGhlciBib2FyZHMg
dGhhdCBpbmNvcnJlY3RseSB1c2UgCj4gcm9ja2NoaXAgYXMgdGhlIHZlbmRvciBhbHNvOgo+IAo+
ICDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5LW9yYW5nZXBpCj4g
IMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtYnBpLXIycHJvCj4g
Cj4gUGVyaGFwcyB0aGVzZSBzaG91bGQgYWxzbyBiZSBmaXhlZCBhdCB0aGUgc2FtZSB0aW1lPwoK
V2hhdCBpcyBoYXBwZW5pbmcgd2l0aCByb2NrY2hpcCBib2FyZHM/CgpCZXN0IHJlZ2FyZHMsCkty
enlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

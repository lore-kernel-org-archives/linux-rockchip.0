Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B862C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 13:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ad91c1OD9BloFox4l0IFW/vqHq7WHgvj8jLJW6RzJUw=; b=r9Nufdxx1FUKzD
	GtdwBffDPioj4dR8KVQ0ZpWGOtrNkG/atwCNisqyXkwRX74+QXkNFWrcatp7gdTU7GtUOGAdiGQ9y
	XE/Xn5GSc7uw4bce5cx0+H/gA4e8D0V847IgTrgrwyjWIt4OwwRReBmeLUTq7tVlqlNN64iNtPrdD
	dPV4+MfxI9T0wSf7rzQYk9OWboeVS9Q/gP54IGEZzDmbPoVY8908wHY5GoBjNOR0dWfZAf0L3xcgA
	bRq1EQP8bndfZVJ9Zlzkp412ijVEwxC7Ncw381QrJJFH+wm2g6GjgeGIPNocPUVHUCuS+79ERfCJG
	fmZvuJyAJ4+ktkv6yIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHBP-00GghX-21;
	Tue, 23 Jan 2024 13:51:19 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHBM-00Ggfi-0W;
	Tue, 23 Jan 2024 13:51:17 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40eac352733so23980215e9.0;
        Tue, 23 Jan 2024 05:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706017871; x=1706622671; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dV+BDeygc2noRbP53tgI9IP4fQK/HUWRgHZ0AVe1P88=;
        b=hCkdqD2f6ESBnwVHANUJ26kokPI4UoWNxjVcUljKCZ+6gkhl6aiOIZCHxdiDeQz3A3
         wGpcpoIaicDSKSqpoHECzMhr9WynBsgoiI/3B4AqztzheB6Gff/YNeun4fzg46stliEG
         DBBKXr69jcqnlTcu6EkISckJ6m+z5oAa368oyKLez5K5YGOL5VOavhvFgnLi/BDawIUc
         4lcrTGv3UR9jEsKESgILj8uxJDZWkl3KagF9bjOIkBrKxbrKU52J6kAmPExsqNEs1YJD
         OwDjLpbhHcHZvRi3rDruRujQF5T+zOsoK7crpzRodmc3nEBreNGXubvYmZT5llCnS5Nq
         ZkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706017871; x=1706622671;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dV+BDeygc2noRbP53tgI9IP4fQK/HUWRgHZ0AVe1P88=;
        b=ZtmcyygQi5YVNr+bE3ft8hvTsXtaMOqtyQ3YpXAhlG5E2VNLDt2WuRK2xqjcO40Y9O
         fFnpYLO+A4WxQtqp5Gmx+Smgd32RsKA3QzRm8m0BbEMzEg1tTkkqOtGKAVueejXNJt6e
         O+S/k42EEq2lLewEUACnunlATEEZnyVkyM47J7KLe4bELQgtrRtj+LdyUSHEWPUN6ZcB
         9AE/a9GDqVsKiCJxHWOU6JwQUrI2qFtuXoEQRvOGzVUOIPiLzC5X5uAjgef2JG0ViyFu
         ewAy1ZT47LP/xGSR8sfgxosu46+UObTFy2T/j777tWDAXoXhy1xYWtto0RZ8YDkd7wGp
         3/EQ==
X-Gm-Message-State: AOJu0Yy4gZay4q5bi+JcFK9KfaYmcu1XFo9Dqy4X0P1gssBWgXrJuXqW
	6QXbfTGQIuKWvZPhaBMwwY6rXSoHh/AHviUTmhMwKdWVV8IBvyEz
X-Google-Smtp-Source: AGHT+IFbptdjITkQ6GhGrCP/WSSPwBibDyt75XrZLT7OV1LlskK6f/3gKqz29PjZYXDdRobWhPVKMQ==
X-Received: by 2002:a05:600c:3482:b0:40d:9377:d97c with SMTP id a2-20020a05600c348200b0040d9377d97cmr169438wmq.65.1706017871382;
        Tue, 23 Jan 2024 05:51:11 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id x8-20020adfdd88000000b003392ae3aee8sm8552647wrl.97.2024.01.23.05.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 05:51:11 -0800 (PST)
Message-ID: <733a2572-779f-4354-a51a-23c0b6732ca2@gmail.com>
Date: Tue, 23 Jan 2024 14:51:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
 <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
 <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
From: Luis de Arquer <ldearquer@gmail.com>
In-Reply-To: <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_055116_202337_715E2EE0 
X-CRM114-Status: GOOD (  15.27  )
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

T24gMS8yMy8yNCAxMTo0OSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IAo+IAo+IE9uIDEvMjMvMjQg
MTA6MTcsIEx1aXMgZGUgQXJxdWVyIHdyb3RlOgo+PiBPbiAxLzIyLzI0IDIzOjU5LCBKb2hhbiBK
b25rZXIgd3JvdGU6Cj4+PiBJbiB0aGUgZHJpdmVyIHNwaS1yb2NrY2hpcC5jIG1heF9uYXRpdmVf
Y3MgaXMgbGltaXRlZCB0byA0IGFuZCB0aGUKPj4+IGRlZmF1bHQgbnVtLWNzIHByb3BlcnR5IGlz
IDEuIFJlc3RyaWN0IG51bS1jcyBpbiBzcGktcm9ja2NoaXAueWFtbC4KPj4+Cj4+Cj4gCj4+IERv
ZXNuJ3QgbnVtLWNzIGluY2x1ZGUgZ3BpbyBjaGlwIHNlbGVjdHMgdG9vPwo+PiBJIGhhdmUgYSBz
ZXR1cCB3aXRoIG51bS1jcyA9IDwxMj4gd2hpY2ggdXNlcyBub24tbmF0aXZlIGNzLWdwaW9zIGp1
c3QgZmluZQo+IAo+IEdpdmVuIHRoYXQgYmluZGluZ3MgYW5kIExpbnV4IGRyaXZlcnMgY2FwYWJp
bGl0aWVzIGFyZSAyIHNlcGFyYXRlIHRoaW5ncy4KPiBIb3dldmVyIHRoaXMgZG9jdW1lbnQgaGFz
IGFsc28gYSBwdXJwb3NlIHRoYXQgbXVzdCBub3RpZnkgbWFpbmxpbmUgbWFpbnRhaW5lcnMgaWYg
dXNlcnMgc3VibWl0IGJvZ3VzIERUIHZhbHVlcy4KPiBDdXJyZW50bHkgdGhhdCBsaW1pdCBpcyBz
ZXQgdG8gNCBpbiB0aGUgbWFpbmxpbmUgZHJpdmVyLgo+IFlvdSBhcmUgZnJlZSB0byBzdWJtaXQg
YSByZWFsIGJvYXJkIGZpbGUvcGF0Y2ggc2VyaWUgYWZ0ZXJ3b3JkcyBhcyBwcm9vZiBmb3IgcmV2
aWV3IHdpdGggMTIgc3BpIGNoaXBzIGFuZCB0aGVuIGFkanVzdCB0aGlzIGxpbWl0IGFuZCBpbmNy
ZWFzZSBST0NLQ0hJUF9TUElfTUFYX0NTX05VTS4KCkhpIEpvaGFuLAoKT0sgdG8gdGhhdCwgSSB3
YXMgbm90IGF3YXJlIGEgZHJpdmVyIGNvdWxkIGxpbWl0IG51bS1jcyAoSSB0aG91Z2h0IGl0IApj
b3VsZCBiZSBleHRlbmRlZCB3aXRoIGFzIG1hbnkgZ3Bpb3MgYXMgbmVlZGVkIHdpdGhvdXQgaW52
b2x2aW5nIHRoZSAKY29udHJvbGxlciBkcml2ZXIpLiBJIHRob3VnaHQgb2YgbnVtLWNzIGFzIGEg
c3BpIHN1YnN5c3RlbSBnZW5lcmljIHRoaW5nLgoKSW4gZmFjdCwgSSB3YXMgcmV2aWV3aW5nIHRo
ZSBzZXR1cCBJIG1lbnRpb25lZCwgYW5kIGV2ZW4gaXQgZGVmaW5lcyAxMiAKY3MgaW4gdGhlIGNv
bnRyb2xsZXIgd2l0aCBubyBkcml2ZXIgY29tcGxhaW50cywgc28gZmFyIG9ubHkgMyBvZiB0aGVt
IAphcmUgbWFwcGVkIHRvIGRldmljZXMgKEknbGwgaGF2ZSB0byByZXZpZXcgdGhlIGRyaXZlciBi
ZWZvcmUgZ29pbmcgYW55IApmdXRoZXIhKQoKTHVpcwoKCj4gCj4gSm9oYW4KPiAKPj4KPj4gTHVp
cwo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4K
Pj4+IC0tLQo+Pj4gIMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3Bp
LXJvY2tjaGlwLnlhbWwgfCA1ICsrKysrCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbAo+Pj4gaW5kZXggZTQ5NDFlOTIxMmQxLi4wMGQ1
NTViY2JhZDMgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sCj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sCj4+PiBAQCAtNjUsNiArNjUsMTEgQEAg
cHJvcGVydGllczoKPj4+ICDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiB0eAo+Pj4gIMKgwqDCoMKg
wqDCoMKgIC0gY29uc3Q6IHJ4Cj4+Pgo+Pj4gK8KgIG51bS1jczoKPj4+ICvCoMKgwqAgZGVmYXVs
dDogMQo+Pj4gK8KgwqDCoCBtaW5pbXVtOiAxCj4+PiArwqDCoMKgIG1heGltdW06IDQKPj4+ICsK
Pj4+ICDCoMKgwqAgcngtc2FtcGxlLWRlbGF5LW5zOgo+Pj4gIMKgwqDCoMKgwqAgZGVmYXVsdDog
MAo+Pj4gIMKgwqDCoMKgwqAgZGVzY3JpcHRpb246Cj4+PiAtLSAKPj4+IDIuMzkuMgo+Pj4KPj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

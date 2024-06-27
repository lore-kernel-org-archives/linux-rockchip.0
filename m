Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00DB9C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 11:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtTu48Xr/tvEoA4s8NCCcmf5gujZKbAug3F20Mm5r24=; b=VufBP30QHy6rWI
	gohP8nRHPNQq/jfBH8tqOaenXFgFndbsFyw51WwZWIABjKzGgfuly4b4Oq6FAur+G+Ucr1W+eRxzc
	J1hyVKXwK0Aec8ovsa9PaGlQX4bDfgcyWVXOcMa524z4Yav5cUoVB+L9+tC4+fGZ5Gl0r5cx8ngUu
	EEJuRCefmYZ0rQnk/wlfFpON9QEl9T65ZjEa5+Je/NI4MVFgUDW/pxz9H+Li4f4ETN1hn3jHYnwuA
	BiiyikZnqMdOeHth4zK7tTjHBm1hXNQiKpyAu3Ss//d3Fi4I4Hx5DvKvHiKfuOutUw2F8rlToeo/9
	Hs8Z38r1NUotGj46ufGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMnio-0000000AETf-410C;
	Thu, 27 Jun 2024 11:55:26 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMniV-0000000AELe-3iig;
	Thu, 27 Jun 2024 11:55:18 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a7245453319so300187966b.1;
        Thu, 27 Jun 2024 04:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719489306; x=1720094106; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f6KkV+F4kIU0bW6gmxjlssxeZSnVSf59l2WAqPYRLBQ=;
        b=TrhdeqREFWO4fYflj89eD+AMYFr50YzwMBD3WbpGHMeVrX/vcQI1ibUXvAoDdCCDAC
         C0V1U/lsfp9AvF/Pr+/Bekmp2jGytbf0ggyDllhptVhzRBaUy133AiDiaM0XO8ljBoKh
         8OrPsj1kzf4BlfHfnYPi7pu6MkRpIxm6g0FZ0hC9p9ys0kYMJFPhF5lFNmKPGR++Uihc
         CPF2C87ipGYp0UrTiiLetwfGc/kx5mKcAqT+R2ZTsLDsvFfGLffPDQWFNeBi0lV/q5/W
         7kvip5xy4e4z/SXD8OOh9d9mH5s/qebrVCcDdU5KJn8+F+3qSMCPZabfZUL7VL9InAIy
         ew0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489306; x=1720094106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6KkV+F4kIU0bW6gmxjlssxeZSnVSf59l2WAqPYRLBQ=;
        b=UrS69Wsy5ayOEuqUD1MUVbzhZ9S4GWeeU7ALep42kA0jNm2k8hoTbSvq1I5Ph8iFLc
         TKGqoNFfkYX5SGzyQcPRvOHflqRS8jIBjsJFi/FDNFbD9ZaXXeO6tljvwYZBFlLLMcRN
         w9GZDPysX0G2eCdd2qWM23LWxqqxqgOQKXODo3V2Wr2be+k0D+7KM2hEj9Sougw44JQV
         Kd9XWrR0tidFepyhOx+KswEPkIUvQ4+Y3K51o0AXsjeH3G9r/Pl5CBVSQ/jbl05rX9rq
         0T7GZbrp6A5ysHIRyXni5OrRxI1Nnth1VhAAoIBp/zg4FzVoLVgwTIignfP+4sxbnNzf
         n78w==
X-Forwarded-Encrypted: i=1; AJvYcCW+kZ+GXdpy67UrJpC83j+tVL+VTwqfOA1kNeQcGFpDBCrkWGntnUeEwzUcR5YlxZ4PzRBL9y+52u+mXcwJGaLGRCIlIau5+mE6B2MajUNPKiQl+bsV+iNfLrM3czqUFvMqGyIG0fYj7h5CdrlcPOJyBD1NS9u/fZc=
X-Gm-Message-State: AOJu0YzG03sgpLxGLeG0EqY/qMmWdxc3wzpOjr30ROJVyC9pnh8NROoG
	hW2XSzOrDex5KUGaapwKzbzNGO39mYe21kHzU0Wg5bYAFhG8VMM=
X-Google-Smtp-Source: AGHT+IHWnk4OjMl2anVNYk/1eRisoMwR3RkY/QD/8dhORfPg8XmxZYhqSK+1slPIt9ubo8i6ryQ3Pg==
X-Received: by 2002:a17:906:daca:b0:a6f:4287:f196 with SMTP id a640c23a62f3a-a729b7328a1mr163548666b.2.1719489304428;
        Thu, 27 Jun 2024 04:55:04 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:2023:48bf:6b4:88a4? ([2a02:810b:f40:4600:2023:48bf:6b4:88a4])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a729d7ca30asm52116966b.205.2024.06.27.04.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 04:55:04 -0700 (PDT)
Message-ID: <ec684a50-2b06-4a83-9ba0-6ae14b48728b@gmail.com>
Date: Thu, 27 Jun 2024 13:55:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3B
To: FUKAUMI Naoki <naoki@radxa.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240626201502.1384123-1-jonas@kwiboo.se>
 <20240626201502.1384123-3-jonas@kwiboo.se>
 <7F75D4B7290C2A91+8b029861-21dc-4f52-acbc-89087b4c0f0d@radxa.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <7F75D4B7290C2A91+8b029861-21dc-4f52-acbc-89087b4c0f0d@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_045513_895757_1D73FD87 
X-CRM114-Status: GOOD (  20.22  )
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

QW0gMjcuMDYuMjQgdW0gMDA6Mjkgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+IEhpLAo+IAo+IHRo
YW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgZWZmb3J0IQo+IAo+IE9uIDYvMjcvMjQgMDU6MTQs
IEpvbmFzIEthcmxtYW4gd3JvdGU6Cj4+IFRoZSBSYWR4YSBST0NLIDNCIGlzIGEgc2luZ2xlLWJv
YXJkIGNvbXB1dGVyIGJhc2VkIG9uIHRoZSBQaWNvLUlUWCBmb3JtCj4+IGZhY3RvciAoMTAwbW0g
eCA3NW1tKS4gVHdvIHZlcnNpb25zIG9mIHRoZSBST0NLIDNCIGV4aXN0cywgYSBjb21tdW5pdHkK
Pj4gdmVyc2lvbiBiYXNlZCBvbiB0aGUgUkszNTY4IFNvQyBhbmQgYW4gaW5kdXN0cmlhbCB2ZXJz
aW9uIGJhc2VkIG9uIHRoZQo+PiBSSzM1NjhKIFNvQy4KPj4KPj4gQWRkIGluaXRpYWwgc3VwcG9y
dCBmb3IgZU1NQywgU0QtY2FyZCwgRXRoZXJuZXQsIEhETUksIFBDSWUgYW5kIFVTQi4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+PiAtLS0KPj4g
djI6Cj4+IC0gVXNlIHJlZ3VsYXRvci0uKiBub2RlbmFtZSBmb3IgZml4ZWQgcmVndWxhdG9ycwo+
PiAtIERyb3Agcm9ja2NoaXAsbWljLWluLWRpZmZlcmVudGlhbCBwcm9wCj4+IC0gU2hvcnRlbiBF
dGhlcm5ldCBwaHkgcmVzZXQtZGVhc3NlcnQtdXMgdG8gNTAgbXMKPj4gLSBGaXggcGNpZSBwaW5j
dHJsCj4+IC0gQWRkIGtlZXAtcG93ZXItaW4tc3VzcGVuZCB0byBzZG1tYzIKPj4KPj4gRm9sbG93
aW5nIGlzc3VlIGlzIHJlcG9ydGVkIGJ5IGR0YnNfY2hlY2sgYW5kIGlzIGZpeGVkIGJ5IHNlcmll
cyBhdCBbMV06Cj4+Cj4+IMKgwqAgcG1pY0AyMDogJyNzb3VuZC1kYWktY2VsbHMnLCAnYXNzaWdu
ZWQtY2xvY2stcGFyZW50cycsIAo+PiAnYXNzaWduZWQtY2xvY2tzJywgJ2Nsb2NrLW5hbWVzJywg
J2Nsb2NrcycKPj4gwqDCoMKgwqAgZG8gbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3Bp
bmN0cmwtWzAtOV0rJwo+PiDCoMKgIGZyb20gc2NoZW1hICRpZDogCj4+IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL21mZC9yb2NrY2hpcCxyazgwOS55YW1sIwo+Pgo+PiBbMV0gCj4+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDYyMi1yazgwOS1maXhlcy12Mi0wLWMwZGI0
MjBkMzYzOUBjb2xsYWJvcmEuY29tLwo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIC4uLi9ib290
L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHPCoMKgwqDCoMKgIHwgNzgwICsrKysrKysr
KysrKysrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDc4MSBpbnNlcnRpb25zKCspCj4+IMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1y
b2NrLTNiLmR0cwo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZSAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+
IGluZGV4IDkwZjUxNzJmMzdlNi4uYWUwYWUwMmY1MWU5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUKPj4gQEAgLTExNCw2ICsxMTQsNyBAQCBkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXFuYXAtdHM0MzMuZHRiCj4+IMKgIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazM1NjgtcmFkeGEtZTI1LmR0Ygo+PiDCoCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXJvYy1wYy5kdGIKPj4gwqAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1yb2NrLTNhLmR0Ygo+PiArZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU2OC1yb2NrLTNiLmR0Ygo+PiDCoCBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LmR0Ygo+PiDCoCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LWRpc3BsYXktdnouZHRi
bwo+PiDCoCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXdvbGZ2aXNpb24t
cGY1LWlvLWV4cGFuZGVyLmR0Ym8KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4
IDAwMDAwMDAwMDAwMC4uNDZjOTU5ZjFjNmFkCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPj4gQEAgLTAsMCAr
MSw3ODAgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlU
KQo+PiArCj4+ICsvZHRzLXYxLzsKPj4gKwo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8v
Z3Bpby5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+Cj4+ICsjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+PiArI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL3NvYy9yb2NrY2hpcCx2b3AyLmg+Cj4+ICsjaW5jbHVkZSAicmszNTY4LmR0c2kiCj4+
ICsKPj4gKy8gewo+PiArwqDCoMKgIG1vZGVsID0gIlJhZHhhIFJPQ0sgM0IiOwo+PiArwqDCoMKg
IGNvbXBhdGlibGUgPSAicmFkeGEscm9jay0zYiIsICJyb2NrY2hpcCxyazM1NjgiOwo+PiArCj4+
ICvCoMKgwqAgYWxpYXNlcyB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBldGhlcm5ldDAgPSAmZ21hYzA7
Cj4+ICvCoMKgwqDCoMKgwqDCoCBldGhlcm5ldDEgPSAmZ21hYzE7Cj4+ICvCoMKgwqDCoMKgwqDC
oCBtbWMwID0gJnNkaGNpOwo+PiArwqDCoMKgwqDCoMKgwqAgbW1jMSA9ICZzZG1tYzA7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBtbWMyID0gJnNkbW1jMjsKPj4gK8KgwqDCoCB9Owo+PiArCj4+ICvCoMKg
wqAgY2hvc2VuIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUw
MDAwMG44IjsKPj4gK8KgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqAgaGRtaS1jb24gewo+PiArwqDC
oMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJoZG1pLWNvbm5lY3RvciI7Cj4+ICvCoMKgwqDCoMKg
wqDCoCB0eXBlID0gImEiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBwb3J0IHsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaGRtaV9jb25faW46IGVuZHBvaW50IHsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWlfb3V0X2Nvbj47Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDC
oMKgIH07Cj4+ICsKPj4gK8KgwqDCoCBpci1yZWNlaXZlciB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBj
b21wYXRpYmxlID0gImdwaW8taXItcmVjZWl2ZXIiOwo+PiArwqDCoMKgwqDCoMKgwqAgZ3Bpb3Mg
PSA8JmdwaW8wIFJLX1BDMiBHUElPX0FDVElWRV9MT1c+Owo+PiArwqDCoMKgwqDCoMKgwqAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwm
cHdtM19pcj47Cj4+ICvCoMKgwqAgfTsKPj4gKwo+PiArwqDCoMKgIGxlZHMgewo+PiArwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDC
oCBsZWQtZ3JlZW4gewo+IAo+IGxlZC0wIG9yIGp1c3QgbGVkIChsZWRzLWdwaW8ueWFtbCkKPiAK
VGhhdCdzIGEgbWlzaW50ZXJwcmV0YXRpb24gb2YgdGhlIHBhdHRlcm4tcHJvcGVydGllcyByZWdl
eDogVGhlCiJub24tcHJlZmVycmVkIiBwYXJ0IG9mIHRoZSByZWdleCBkb2VzIG5laXRoZXIgaGF2
ZSBhICJeIiBub3IgYW4gIiQiLCB0aHVzCml0IGFsbG93cyBhbGwgbm9kZXMgbmFtZXMgd2hpY2gg
aGF2ZSAibGVkIiBzb21ld2hlcmUuCj4gQmVzdCByZWdhcmRzLAo+IAo+IC0tIAo+IEZVS0FVTUkg
TmFva2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

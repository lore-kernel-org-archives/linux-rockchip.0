Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BD2C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 19:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7c0Xb3C+AYVJty53+d3dKB2UwCyen/HdyzCJYpI/Jjo=; b=JIBlMz6F8ffQEg
	HiA1W8PU+rxSNH+e0bOLzG38TqXvdegGQi4fAYX7bMupDqwIGVGXOb2rpsJJXE33b4aMokQ0gOhRA
	PWCqRshQ/8RsyYLltbh6G82Zl7hC7rrPrWZ9k/WmXBMJCcq3LY/FblVkEw4xzXEdj+ITktV+4D6LQ
	AkHGauVAdCAYgjyw7lhPOMqb7ssR2z8kd2cjG0nBXZJWD1qCpa0qIT+RrJB+8v/4vNDhdskWzgOvv
	erGkLqOOhm6QDIfjRNe7zu8SwiD102ymrgjD4eHWbHVts8e3C3MPhRt83v8OXrO2kHFVDKv9dymI7
	Q6iEnScGFhuKjiviU8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVew-00E09A-3p; Thu, 05 Jan 2023 19:12:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDL32-0083W7-Oy; Thu, 05 Jan 2023 07:52:28 +0000
Received: from [IPV6:2a01:e0a:120:3210:ead5:88fc:cd91:c042] (unknown [IPv6:2a01:e0a:120:3210:ead5:88fc:cd91:c042])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE3B96602D29;
	Thu,  5 Jan 2023 07:52:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672905139;
	bh=I9+kXg3GpKIbjc5YSQXZHG/6U6cH7e+ZQgdfpA18EMM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ADMxEGvXipnJKcNj5GP8AvdiMDBFxRXT0YpNOYNJa6CJrbl5t8ZhHfXTnCnwQMKS8
	 kLfG9Uzw3qA6trfC776ndavgII8win/f4eE7Y2jmBP1Gd/OqWLhOMgLl67mMZzv3um
	 uCAxkniZaXgx4Vgq4v7MeRUz1QemNSASGs4f5T9A4s9lfzgkc8/ib1Vc7SSnbN3dON
	 joXSvfmO2qBdpt6GaZRNE4FuHtThJ7vprYUIWrgsNQieZaS7VL2UOmu2gHv11xpEs/
	 Md92k1tfQYJQJWigRxJDVAQyqWq7cVh/Abyb7rbK0M9vg1b56+01ZgbbQa4MBKWow9
	 aH7V00V9V5giw==
Message-ID: <20ff6ebe-7469-444a-f9f4-cb8b38e31538@collabora.com>
Date: Thu, 5 Jan 2023 08:52:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/13] media: verisilicon: Check AV1 bitstreams bit
 depth
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
 <20230103170058.810597-8-benjamin.gaignard@collabora.com>
 <CAAEAJfBpGwa-ZDFFCep8rk4+dgLrYOFdfyrqBZP68C+jkN0qMQ@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfBpGwa-ZDFFCep8rk4+dgLrYOFdfyrqBZP68C+jkN0qMQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_235225_155931_B68936B4 
X-CRM114-Status: GOOD (  20.48  )
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

CkxlIDA0LzAxLzIwMjMgw6AgMjA6MzMsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4KPiBPbiBUdWUsIEphbiAzLCAy
MDIzIGF0IDI6MDEgUE0gQmVuamFtaW4gR2FpZ25hcmQKPiA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4gd3JvdGU6Cj4+IFRoZSBkcml2ZXIgc3VwcG9ydHMgOCBhbmQgMTAgYml0cyBi
aXRzdHJlYW1zLCBtYWtlIHN1cmUgdG8gZGlzY2FyZAo+PiBvdGhlciBjYXNlcy4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9y
YS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX2Rydi5jIHwgMTQgKysrKysrKysrKysrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+PiBpbmRleCA4ZTkzNzEwZGNmZWQuLjE2NTM5
ZTg5OTM1YyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fZHJ2LmMKPj4gQEAgLTI4Miw3ICsyODIsMTMgQEAgc3RhdGljIGludCBoYW50cm9f
dHJ5X2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPj4gICAgICAgICAgICAgICAgICAvKiBX
ZSBvbmx5IHN1cHBvcnQgcHJvZmlsZSAwICovCj4+ICAgICAgICAgICAgICAgICAgaWYgKGRlY19w
YXJhbXMtPnByb2ZpbGUgIT0gMCkKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+PiArICAgICAgIH0gZWxzZSBpZiAoY3RybC0+aWQgPT0gVjRMMl9DSURfU1RBVEVM
RVNTX0FWMV9TRVFVRU5DRSkgewo+PiArICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHY0bDJf
Y3RybF9hdjFfc2VxdWVuY2UgKnNlcXVlbmNlID0gY3RybC0+cF9uZXcucF9hdjFfc2VxdWVuY2U7
Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIGlmIChzZXF1ZW5jZS0+Yml0X2RlcHRoICE9IDggJiYg
c2VxdWVuY2UtPmJpdF9kZXB0aCAhPSAxMCkKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7Cj4+ICAgICAgICAgIH0KPj4gKwo+PiAgICAgICAgICByZXR1cm4gMDsKPj4g
ICB9Cj4+Cj4+IEBAIC0zMzMsNyArMzM5LDEzIEBAIHN0YXRpYyBpbnQgaGFudHJvX2F2MV9zX2N0
cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPj4KPj4gICAgICAgICAgc3dpdGNoIChjdHJsLT5p
ZCkgewo+PiAgICAgICAgICBjYXNlIFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFfU0VRVUVOQ0U6Cj4+
IC0gICAgICAgICAgICAgICBjdHgtPmJpdF9kZXB0aCA9IGN0cmwtPnBfbmV3LnBfYXYxX3NlcXVl
bmNlLT5iaXRfZGVwdGg7Cj4+ICsgICAgICAgICAgICAgICBpbnQgYml0X2RlcHRoID0gY3RybC0+
cF9uZXcucF9hdjFfc2VxdWVuY2UtPmJpdF9kZXB0aDsKPj4gKwo+PiArICAgICAgICAgICAgICAg
aWYgKHZiMl9pc19zdHJlYW1pbmcodjRsMl9tMm1fZ2V0X3NyY192cShjdHgtPmZoLm0ybV9jdHgp
KSkKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKGN0eC0+Yml0X2RlcHRoICE9IGJpdF9k
ZXB0aCkKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsK
Pj4gKwo+IFBsZWFzZSB1c2UgdGhlIHY0bDJfY3RybF9ncmFiIEFQSS4gQ2FuIHlvdSBzZW5kIGEg
c2VwYXJhdGUgc2VyaWVzIHRvIGFkZHJlc3MKPiB0aGlzIGZvciB0aGUgb3RoZXIgY29kZWNzPwoK
SSBoYXZlIHRyaWVkIHRvIHVzZSB2NGwyX2N0cmxfZ3JhYiBBUEkgYnV0IHdoZW4geW91IGdyYWIg
YSBjb250cm9sIHlvdSBjYW4gc2V0IGl0IGFueW1vcmUKYW5kIFY0TDJfQ0lEX1NUQVRFTEVTU19B
VjFfU0VRVUVOQ0UgaXMgc2VuZCBmb3IgZWFjaCBmcmFtZSBzbyBpdCBibG9ja3MgZXZlcnl0aGlu
Zy4KCkJlbmphbWluCgo+Cj4gVGhhbmtzIGEgbG90IQo+IEV6ZXF1aWVsCj4KPj4gKyAgICAgICAg
ICAgICAgIGN0eC0+Yml0X2RlcHRoID0gYml0X2RlcHRoOwo+PiAgICAgICAgICAgICAgICAgIGJy
ZWFrOwo+PiAgICAgICAgICBkZWZhdWx0Ogo+PiAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwo+PiAtLQo+PiAyLjM0LjEKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

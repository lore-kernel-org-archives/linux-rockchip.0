Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB6DD3ABF4
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 19:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfnjulX/quCqhMqkggGK93glPn5gNZDHgJOpTUUJ5XI=; b=aUHwWbTQFBNY4N
	H9K5y7oCwo+RWWc2V2mXrzJzVrsmG8abvhrKGuO6mhPaRoeRJPG8sZQV8Tneii8DTZFWS48qVNAzd
	RF/MnOLhCRjgsrNAVYHOozMva+g/vuNQRa6/d1c2iBLuQYLUO4Qx/EfANAM884SgVa9CLThtgyhrA
	hF4CtvxRnX56VoXpuhQAb8H4IAiXTNFRKXYNOPsZQdrQJJZsp5UXj6MJjwPvxKK1JWhe1kwFIv4Wv
	D2ny4G9yTDBg0j/xp4UAVgY8Kux3G+n0bIjW60q8TlpUuKuY7C+Zm/jcoGvkZV+h4l0sN8HueqkMz
	x3vP9ssaQOEDoaGwMp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZlv-000000010S0-1XtO;
	Mon, 11 Nov 2024 19:08:23 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZk9-000000010FQ-1zVq
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Nov 2024 19:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731351974;
 bh=kYHKDYyg+2ly+dMUeJ/cLWI4XcdPgA25RQIFqXCblz0=;
 b=CqUOv845dWIcsXI8fXS+1a9kBYL/23xyPaBVw0yqXKuaCw5smETxbxnPf14OyGqTAG4e1VQUA
 M8WJ/1kJuqfHH6LaINYZQntJz8qmDnkznw3GaN6k2BTdIzE93M1YX0sAdr4xzMUIkjGJEMHmImV
 XEzFSyJ6ydEGDCfFUzB9VTg8c9OfK9VfO/HQl2sZjvQuSyQFZ0dlmVupvNNs4KoRw04IcJolx4I
 TGersC4jVJSEAYtdXJ/7fk5BwZCwyNje+pmOk3yOLkhEodnZccgEAofMQNh5glhDK7HoTNM0czi
 4bcPsfhEIeIq2OcXwoO/48iDFayR+dI3fSe/tRjjdDbA==
Message-ID: <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se>
Date: Mon, 11 Nov 2024 20:06:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-3-tszucs@linux.com>
Content-Language: en-US
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241111181807.13211-3-tszucs@linux.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 673255a41b4710f318d5f267
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_110633_559632_CD2D860E 
X-CRM114-Status: GOOD (  12.61  )
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

SGkgVGFtw6FzLAoKT24gMjAyNC0xMS0xMSAxOToxNywgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiBF
bmFibGUgU0RJTyBvbiBSYWR4YSBST0NLIDMgTW9kZWwgQiBNLjIgS2V5IEUuIEFkZCBhbGwgc3Vw
cG9ydGVkIFVIUy1JIHJhdGVzIGFuZAo+IGVuYWJsZSAyMDAgTUh6IG1heGltdW0gY2xvY2suIEFs
c28sIGFsbG93IGhvc3Qgd2FrZXVwIHZpYSBTRElPIElSUS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
YW3DoXMgU3rFsWNzIDx0c3p1Y3NAbGludXguY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDggKysrKysrKy0KPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gaW5kZXggMjQyYWY1MzM3
Y2RmLi5iNzUyN2JhNDE4ZjcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+IEBAIC02ODgsMTQgKzY4OCwyMCBAQCAmc2RtbWMyIHsK
PiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gIAljYXAtc2Rpby1pcnE7Cj4gIAlrZWVwLXBvd2VyLWlu
LXN1c3BlbmQ7Cj4gKwltYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4gIAltbWMtcHdyc2Vx
ID0gPCZzZGlvX3B3cnNlcT47Cj4gIAlub24tcmVtb3ZhYmxlOwo+ICAJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiAgCXBpbmN0cmwtMCA9IDwmc2RtbWMybTBfYnVzNCAmc2RtbWMybTBfY2xr
ICZzZG1tYzJtMF9jbWQ+Owo+ICsJc2QtdWhzLXNkcjEyOwo+ICsJc2QtdWhzLXNkcjI1Owo+ICsJ
c2QtdWhzLXNkcjUwOwoKSSB0aG91Z2h0IHRoYXQgbG93ZXIgc3BlZWRzIHdhcyBpbXBsaWVkIGJ5
IHVocy1zZHIxMDQ/Cgo+ICAJc2QtdWhzLXNkcjEwNDsKPiArCXNkLXVocy1kZHI1MDsKPiAgCXZt
bWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzMj47Cj4gIAl2cW1tYy1zdXBwbHkgPSA8JnZjY18xdjg+
Owo+IC0Jc3RhdHVzID0gImRpc2FibGVkIjsKPiArCXdha2V1cC1zb3VyY2U7Cj4gKwlzdGF0dXMg
PSAib2theSI7CgpUaGlzIHNob3VsZCBwcm9iYWJseSBiZSBlbmFibGVkIHVzaW5nIGFuIGR0LW92
ZXJsYXksIHRoZXJlIGlzIG5vIFNESU8KZGV2aWNlIGVtYmVkZGVkIG9uIHRoZSBib2FyZCBhbmQg
dGhlIHJlYXNvbiBJIGxlZnQgaXQgZGlzYWJsZWQgaW4Kb3JpZ2luYWwgYm9hcmQgRFQgc3VibWlz
c2lvbi4KClJlZ2FyZHMsCkpvbmFzCgo+ICB9Owo+ICAKPiAgJnNmYyB7CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

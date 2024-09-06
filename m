Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6008CE7B18
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 13:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alW1zCa0CW200DDVWShUPBiWielpr32kPi1SDC9st3g=; b=uqU9K4LAooxQh3
	pwnlwv939ZKj0rLWclz0T/IwbO98JjjswTSYwsxRP/qa17MoLus6n8ayVXSyaxJSX0y5HKWVwWoFj
	Q/eaauR0lxC207Mhv98rZqVlNAVn3k6flT8twRM8w17o56v8Jvm/S0u/qgmOUgcNGFq1gbf6z9cHB
	+gzdiD40ZFt0ssFAWBQyedfVJSEWKwnJ3poNIjYdTMsanBpfG7l2i7hCZPoaqIbTu0VK9tlvUU7Zg
	HeBhTagYSQaD5pAz+yVdsPvBnStFTu0ZE0R2+MswyinonO1wFtGAa94oT+z75EhUrqM4YzuQDxbtK
	qzzi/N7N6Pr7DZBWrl+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZMi-0000000CPn0-3A5E;
	Fri, 06 Sep 2024 13:51:08 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZK9-0000000CPMo-1p8b;
	Fri, 06 Sep 2024 13:48:30 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 87A39789F3;
	Fri,  6 Sep 2024 21:48:25 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 87A39789F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725630506;
	bh=naamg7UNm6mx3z8yDA7GqJbR3zn2wb64TfuOIljta10=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=n0RKf9b/BT9pj0TqQuZAJCtA+K9QdxCzyNV2W+mW02toJQh7G1JEjiqdtQto5j+QZ
	 z3U8LTHHqrtkvIKGlcR1XEsiqaGremCMy13hGmd7uhkTIGoEifo+PeGrMzy8GMcy/d
	 BZez3KgmN0sFed3e726VlCfDBh5NFNzJ5o8toZtc=
Message-ID: <e1f98265-ab75-45fe-a7a9-8e65cc13908e@classfun.cn>
Date: Fri, 6 Sep 2024 21:49:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] hwmon: Add support for Photonicat PMU board
 temperature sensor
To: Guenter Roeck <linux@roeck-us.net>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-7-bigfoot@classfun.cn>
 <a33633be-800c-4ca0-9d1e-f190e23384d5@roeck-us.net>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor Dooley,"
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, Junhao Xie <bigfoot@classfun.cn>
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <a33633be-800c-4ca0-9d1e-f190e23384d5@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_064829_657815_6D67B06F 
X-CRM114-Status: GOOD (  13.24  )
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

T24gMjAyNC85LzYgMTk6NDEsIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4gT24gOS82LzI0IDAyOjM2
LCBKdW5oYW8gWGllIHdyb3RlOgo+PiBQaG90b25pY2F0IFBNVSBNQ1Ugd2lsbCBzZW5kIHN0YXR1
cyByZXBvcnRzIHJlZ3VsYXJseSwKPj4gaW5jbHVkaW5nIGJvYXJkIHRlbXBlcmF0dXJlLgo+Pgo+
IAo+IFRoaXMgaXMgbm90IGFuIGFwcHJvcHJpYXRlIGRlc2NyaXB0aW9uLgoKSSB3aWxsIGNoYW5n
ZSB0byBhIGJldHRlciBkZXNjcmlwdGlvbi4KCj4gCj4+IFNpZ25lZC1vZmYtYnk6IEp1bmhhbyBY
aWUgPGJpZ2Zvb3RAY2xhc3NmdW4uY24+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2h3bW9uL0tjb25m
aWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMCArKysKPj4gwqAgZHJpdmVycy9od21vbi9N
YWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+PiDCoCBkcml2ZXJzL2h3bW9u
L3Bob3RvbmljYXQtaHdtb24uYyB8IDEyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gCj4gRG9jdW1lbnRhdGlvbiBtaXNzaW5nLgoKRG9lcyBpdCBuZWVkIHRvIGJlIHBsYWNlZCBp
biBEb2N1bWVudGF0aW9uL2h3bW9uL3Bob3RvbmljYXQtaHdtb24ucnN0PwoKPiAKPj4gK3N0YXRp
YyBpbnQgcGNhdF9od21vbl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAr
ewo+IC4uLgo+PiArwqDCoMKgIGRldl9pbmZvKGRldiwgIkJvYXJkIFRlbXByYXR1cmU6ICVkIGRl
Z3Jlc3MgQ1xuIiwgaHdtb24tPnRlbXBlcmF0dXJlKTsKPj4gKwo+IAo+IFVuYWNjZXB0YWJsZSAo
bWlzc3BlbGxlZCkgbm9pc2UuCj4gCj4+ICvCoMKgwqAgaHdtb24tPmh3bW9uID0gZGV2bV9od21v
bl9kZXZpY2VfcmVnaXN0ZXJfd2l0aF9ncm91cHMoCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXYsIGxh
YmVsLCBod21vbiwgcGNhdF9wbXVfdGVtcF9ncm91cHMpOwo+PiArCj4gCj4gUGxlYXNlIHVzZSB0
aGUgd2l0aF9pbmZvIEFQSS4gSSBhbSBub3QgZ29pbmcgdG8gcmV2aWV3IHRoZSBjb2RlIGJlY2F1
c2UKPiBpdCB3aWxsIG5lZWQgdG8gYmUgY29tcGxldGVseSByZXdyaXR0ZW4uCj4gCj4gR3VlbnRl
cgo+IAoKVGhhbmtzIGZvciB5b3VyIHJldmlldywgSSB3aWxsIHJld3JpdGUgdGhpcyBkcml2ZXIh
CgpCZXN0IHJlZ2FyZHMsCkp1bmhhbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

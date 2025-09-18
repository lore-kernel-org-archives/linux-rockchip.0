Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438D8CAC59A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 11:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yVt/fPmR14GNZvTB/xihCx5UjeyYNZ2M6cvPJg4ffmw=; b=aA2DS4BgzPnb91fm4Zy1EEBxTR
	t1Kr8xtwuMq+hcvIpCbUc+ESIvJen0XVTM743a2Zu5mNEaZCLNRQrBTmgcpcNPpVD8hHol8do3oPT
	IpasB9KW42pZah9hfr44OGm1GSMEaeLl1EP93fZTx5tES4tavccP3+9GeNdAbUJZHgnCmi4OuUU0r
	OxAlieJhRMP8X/dCVExZKy/xR5V6+5suYxBjkQwdTgvIA4oxQ+qPmPZiS/8W9qS6su/elr3nt6Xpl
	Uvn3xliDWp4KFafv+MVx78tnF0aB4oIy76dy6JgyY83b6WPOoktByy+QTDd8t8qbZcUmU9W4afXj+
	/Pvg1hPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzCp0-0000000HDmI-27Mk;
	Thu, 18 Sep 2025 11:29:06 +0000
Received: from mail-m1973196.qiye.163.com ([220.197.31.96])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzCox-0000000HDkD-15Nd;
	Thu, 18 Sep 2025 11:29:05 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 23446c063;
	Thu, 18 Sep 2025 19:28:53 +0800 (GMT+08:00)
Message-ID: <404b35bb-e32b-4830-8d34-d0cfd0a262ff@rock-chips.com>
Date: Thu, 18 Sep 2025 19:28:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable DisplayPort for
 rk3588-evb2
To: Quentin Schulz <quentin.schulz@cherry.de>, Chaoyi Chen
 <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20250918062825.194-1-kernel@airkyi.com>
 <ecc96b5a-2062-43f4-9959-b4e2b126d9f3@cherry.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <ecc96b5a-2062-43f4-9959-b4e2b126d9f3@cherry.de>
X-HM-Tid: 0a995c959e2a03abkunmced0bb073b07de
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0kYTlYZTUNCSE9DTktNShhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=elkMJm4McaadIkkxl9fxLZoKq6Ze48UUrVlEjcI3WVLV40memdMgXm0I6AlCiX9ppEReD/3c/Nm7xJFq6PpWmPM2GkBysoDpOXA7mmd0Zi3S9um4ewP5ED4b9LA5oLOuzjAq6qC//pV6KmZVkqUt5oA+K/XdNzWO1RJv+q3qbuo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=oRwpANH20f3O41DZeZFj63uF99IcxizRzfbRD2S6WOw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_042903_786458_5994182E 
X-CRM114-Status: GOOD (  17.24  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUXVlbnRpbiwKCk9uIDkvMTgvMjAyNSA2OjM5IFBNLCBRdWVudGluIFNjaHVseiB3cm90ZToK
PiBIaSBDaGFveWkgQ2hlbiwKPgo+IE9uIDkvMTgvMjUgODoyOCBBTSwgQ2hhb3lpIENoZW4gd3Jv
dGU6Cj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4K
Pj4gVGhlIHJrMzU4OCBldmIyIGJvYXJkIGhhcyBhIGZ1bGwgc2l6ZSBEaXNwbGF5UG9ydCBjb25u
ZWN0b3IsIGVuYWJsZQo+PiBmb3IgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVu
IDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjI6
Cj4+Cj4+IC0gTGluayB0byBWMTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwOTE2
MDgwODAyLjEyNS0xLWtlcm5lbEBhaXJreWkuY29tLwo+PiAtIEZpeCBpbnZhbGlkIERQIGNvbm5l
Y3RvciB0eXBlCj4+IC0gQWRkIG1vcmUgY29tbWVudCBhYm91dCBkY2xrX3ZwMiBwYXJlbnQgY2xv
Y2sKPj4KPj4gwqAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIyLXYxMC5kdHPCoMKg
wqDCoCB8IDQ4ICsrKysrKysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQ4IGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWV2YjItdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LWV2YjItdjEwLmR0cwo+PiBpbmRleCA5MWZlODEwZDM4ZDguLjYwYmE2YWM1NWIyMyAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAu
ZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEw
LmR0cwo+PiBAQCAtMjUsNiArMjUsMTggQEAgY2hvc2VuIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPj4gwqDCoMKgwqDCoCB9Owo+PiDC
oCArwqDCoMKgIGRwLWNvbiB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImRwLWNv
bm5lY3RvciI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBsYWJlbCA9ICJEUCBPVVQiOwo+PiArwqDCoMKg
wqDCoMKgwqAgdHlwZSA9ICJmdWxsLXNpemUiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBwb3J0
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBfY29uX2luOiBlbmRwb2ludCB7Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZkcDBfb3V0
X2Nvbj47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoCB9
Owo+PiArwqDCoMKgIH07Cj4+ICsKPj4gwqDCoMKgwqDCoCBoZG1pLWNvbiB7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImhkbWktY29ubmVjdG9yIjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIHR5cGUgPSAiYSI7Cj4+IEBAIC0xMDYsNiArMTE4LDI0IEBAIHZjYzV2MF91c2JkY2lu
OiByZWd1bGF0b3ItdmNjNXYwLXVzYmRjaW4gewo+PiDCoMKgwqDCoMKgIH07Cj4+IMKgIH07Cj4+
IMKgICsmZHAwIHsKPj4gK8KgwqDCoCBwaW5jdHJsLTAgPSA8JmRwMG0wX3BpbnM+Owo+PiArwqDC
oMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXki
Owo+PiArfTsKPj4gKwo+PiArJmRwMF9pbiB7Cj4+ICvCoMKgwqAgZHAwX2luX3ZwMjogZW5kcG9p
bnQgewo+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZ2cDJfb3V0X2RwMD47
Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZkcDBfb3V0IHsKPj4gK8KgwqDCoCBkcDBf
b3V0X2NvbjogZW5kcG9pbnQgewo+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0g
PCZkcF9jb25faW4+Owo+PiArwqDCoMKgIH07Cj4+ICt9Owo+PiArCj4+IMKgICZncHUgewo+PiDC
oMKgwqDCoMKgIG1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1X3MwPjsKPj4gwqDCoMKgwqDCoCBzcmFt
LXN1cHBseSA9IDwmdmRkX2dwdV9tZW1fczA+Owo+PiBAQCAtOTE2LDYgKzk0NiwxNyBAQCAmdXNi
X2hvc3QxX3hoY2kgewo+PiDCoCB9Owo+PiDCoCDCoCAmdm9wIHsKPj4gK8KgwqDCoCAvKgo+PiAr
wqDCoMKgwqAgKiBJZiBubyBkZWRpY2F0ZWQgUExMIHdhcyBzcGVjaWZpZWQsIHRoZSBHUExMIHdv
dWxkIGJlIGF1dG9tYXRpY2FsbHkKPj4gK8KgwqDCoMKgICogYXNzaWduZWQgYXMgdGhlIFBMTCBz
b3VyY2UgZm9yIGRjbGtfdm9wMi4gQXMgdGhlIGZyZXF1ZW5jeSBvZiBHUExMCj4+ICvCoMKgwqDC
oCAqIGlzIDExODggTUh6LCB3ZSBjYW4gb25seSBnZXQgdHlwaWNhbCBjbG9jayBmcmVxdWVuY2ll
cyBzdWNoIGFzCj4+ICvCoMKgwqDCoCAqIDc0LjI1TUh6LCAxNDguNU1IeiwgMjk3TUh6LCA1OTRN
SHouCj4+ICvCoMKgwqDCoCAqCj4+ICvCoMKgwqDCoCAqIFNvIGhlcmUgd2Ugc2V0IHRoZSBwYXJl
bnQgY2xvY2sgb2YgVlAyIHRvIFYwUExMIHNvIHRoYXQgd2UgY2FuIGdldAo+PiArwqDCoMKgwqAg
KiBhbnkgZnJlcXVlbmN5Lgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBhc3NpZ25lZC1jbG9j
a3MgPSA8JmNydSBEQ0xLX1ZPUDJfU1JDPjsKPj4gK8KgwqDCoCBhc3NpZ25lZC1jbG9jay1wYXJl
bnRzID0gPCZjcnUgUExMX1YwUExMPjsKPgo+IEFyZSB0aG9zZSBib2FyZC1zcGVjaWZpYz8gQ29u
c2lkZXJpbmcgdGhlIFZPUCBhbmQgRFAvSERNSS8uLi4gY29udHJvbGxlcnMvUEhZcyBhcmUgYWxs
IGludGVybmFsIHRvIHRoZSBTb0MsIHdvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gaGF2ZSB0aG9zZSBz
cGVjaWZpZWQgaW4gdGhlIFNvQyBEVFNJPyBJJ20gbm90IGZhbWlsaWFyIHdpdGggdGhlIHZpZGVv
IG91dHB1dCBzdGFjayBzbyBtYXliZSBpdCBkb2Vzbid0IGFwcGx5IGhlcmUgb3IgaXMgYSBiYWQg
aWRlYSwgc28gSSdtIG5vdCBhY3R1YWxseSBhc2tpbmcgZm9yIGEgY2hhbmdlIGhlcmUsIGp1c3Qg
YXNraW5nIGEgcXVlc3Rpb24gOikKClllcCwgdGhleSBhcmUgYm9hcmQtc3BlY2lmaWMuIEJlY2F1
c2UgdGhlIFYwUExMIG1heSBiZSB1c2VkIGZvciBub24tZGlzcGxheSBhcHBsaWNhdGlvbnMuCgoK
Cj4KPiBDaGVlcnMsCj4gUXVlbnRpbgo+Cj4KLS0gCkJlc3QsCkNoYW95aQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

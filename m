Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5917ECAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 09:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oymiFpvdD8BdXQ3skUgqK1mPwXwQ2HKsPUG0sPJ/qOI=; b=FWG8glI856WVCXFMauzUJcjyo5
	1lw/vEWtoUfwVe4ikdm0tZvkAUB+Z4c7Jb/KYMr6Vnoyfh8RMJc+9fCHugn4eZ62rhxcETaQtPWQ8
	W9t/MKmqPuR3+09u/oyxi6RSrfJAhAGGnapN48UWM8xhrB8j2Xm9aFh2Yw4RlIqN+l6MNPsvN/wAI
	z3eJvovGUIcm5CDQT1OF0w2Kwl3nvdzXRqjtyqXw2pUujSPzABE/tiTpmGXj9+Sehntm4J0lj+W9T
	wjAMjQLC8OGYs0pvDBi6Bxxo2xQtWL1T4JI26WFOnoFKqVHtcLO+8/EcuJdB5szJuiR/NGrC5+Ku+
	xgFRnDiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uySIs-00000007R6P-3Ji4;
	Tue, 16 Sep 2025 09:48:50 +0000
Received: from mail-m49218.qiye.163.com ([45.254.49.218])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uySIq-00000007R4j-0SrW;
	Tue, 16 Sep 2025 09:48:49 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22fa8c585;
	Tue, 16 Sep 2025 17:48:42 +0800 (GMT+08:00)
Message-ID: <0884990e-f349-49d5-804a-932125aca1cf@rock-chips.com>
Date: Tue, 16 Sep 2025 17:48:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable DisplayPort for rk3588-evb2
To: Quentin Schulz <quentin.schulz@cherry.de>, Chaoyi Chen
 <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20250916080802.125-1-kernel@airkyi.com>
 <50379c05-c8b7-4858-98ff-da7ebdc06863@cherry.de>
 <352856bb-76b6-4861-8a3f-80f94f7c7375@rock-chips.com>
 <72ddffd6-bd8f-418e-996d-70267d3ca7e4@cherry.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <72ddffd6-bd8f-418e-996d-70267d3ca7e4@cherry.de>
X-HM-Tid: 0a9951ed2ff003abkunm32f498e5d8bb91
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNLTFZISUNDGh4eGUtLHxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=R9/jhyaeiQNQfJtgCzehtt6RrRPLqn6tbG2q1oPYRF3wo6bnDdF36Zxb4k5z6khktrTZLIFBnpCb33wggPZkrqH7hg2ZckvlgacvyM9Silxk8STtUYD5H4b8htgOWTDhKQQPnEhufVsdA2F9Xfe9uApvqMsdKZwHSQN9WyGYt9w=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XF3T4nBs0sA1ZYhwUsQTaa5y0TGq1rpcYRNrh7Ts0IU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_024848_681583_B2714D26 
X-CRM114-Status: GOOD (  20.37  )
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

T24gOS8xNi8yMDI1IDU6MjQgUE0sIFF1ZW50aW4gU2NodWx6IHdyb3RlOgoKPiBPbiA5LzE2LzI1
IDExOjE4IEFNLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4gSGkgUXVlbnRpbiwKPj4KPj4gT24gOS8x
Ni8yMDI1IDQ6NDEgUE0sIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+Pj4gSGkgQ2hhb3lpIENoZW4s
Cj4+Pgo+Pj4gT24gOS8xNi8yNSAxMDowOCBBTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+Pj4gRnJv
bTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Cj4+Pj4gVGhl
IHJrMzU4OCBldmIyIGJvYXJkIGhhcyBhIGZ1bGwgc2l6ZSBEaXNwbGF5UG9ydCBjb25uZWN0b3Is
IGVuYWJsZQo+Pj4+IGZvciBpdC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVu
IDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0c8KgwqDCoMKgIHwgMzkgKysrKysrKysrKysr
KysrKysrKwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12
MTAuZHRzIGIvYXJjaC8gYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0
cwo+Pj4+IGluZGV4IDkxZmU4MTBkMzhkOC4uMGU1YWY2MWY2NmZlIDEwMDY0NAo+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0cwo+Pj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0cwo+Pj4+
IEBAIC0yNSw2ICsyNSwxOCBAQCBjaG9zZW4gewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdGRv
dXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4+IMKg
ICvCoMKgwqAgZHAtY29uIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJkcC1j
b25uZWN0b3IiOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBsYWJlbCA9ICJEUCBPVVQiOwo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCB0eXBlID0gImZ1bGwgc2l6ZSI7Cj4+Pgo+Pj4gVGhpcyBpc24ndCB2YWxp
ZCBhY2NvcmRpbmcgdG8gdGhlIGR0IGJpbmRpbmcuIEl0IHNob3VsZCBiZSAiZnVsbC1zaXplIiBp
bnN0ZWFkLgo+Pgo+PiBXaWxsIGZpeCBpbiB2Mi4KPj4KPj4KPj4+Cj4+Pj4gKwo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBwb3J0IHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcF9jb25faW46
IGVuZHBvaW50IHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1l
bmRwb2ludCA9IDwmZHAwX291dF9jb24+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+Pj4gK8KgwqDCoCB9Owo+Pj4+ICsKPj4+PiDCoMKg
wqDCoMKgIGhkbWktY29uIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJo
ZG1pLWNvbm5lY3RvciI7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHR5cGUgPSAiYSI7Cj4+Pj4g
QEAgLTEwNiw2ICsxMTgsMjQgQEAgdmNjNXYwX3VzYmRjaW46IHJlZ3VsYXRvci12Y2M1djAtdXNi
ZGNpbiB7Cj4+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4+IMKgIH07Cj4+Pj4gwqAgKyZkcDAgewo+Pj4+
ICvCoMKgwqAgcGluY3RybC0wID0gPCZkcDBtMF9waW5zPjsKPj4+PiArwqDCoMKgIHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gK8KgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+Pj4gK307
Cj4+Pj4gKwo+Pj4+ICsmZHAwX2luIHsKPj4+PiArwqDCoMKgIGRwMF9pbl92cDI6IGVuZHBvaW50
IHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZ2cDJfb3V0X2RwMD47
Cj4+Pj4gK8KgwqDCoCB9Owo+Pj4+ICt9Owo+Pj4+ICsKPj4+PiArJmRwMF9vdXQgewo+Pj4+ICvC
oMKgwqAgZHAwX291dF9jb246IGVuZHBvaW50IHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3Rl
LWVuZHBvaW50ID0gPCZkcF9jb25faW4+Owo+Pj4+ICvCoMKgwqAgfTsKPj4+PiArfTsKPj4+PiAr
Cj4+Pj4gwqAgJmdwdSB7Cj4+Pj4gwqDCoMKgwqDCoCBtYWxpLXN1cHBseSA9IDwmdmRkX2dwdV9z
MD47Cj4+Pj4gwqDCoMKgwqDCoCBzcmFtLXN1cHBseSA9IDwmdmRkX2dwdV9tZW1fczA+Owo+Pj4+
IEBAIC05MTYsNiArOTQ2LDggQEAgJnVzYl9ob3N0MV94aGNpIHsKPj4+PiDCoCB9Owo+Pj4+IMKg
IMKgICZ2b3Agewo+Pj4+ICvCoMKgwqAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1Ay
X1NSQz47Cj4+Pj4gK8KgwqDCoCBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjcnUgUExMX1Yw
UExMPjsKPj4+Cj4+PiBUaGlzIGlzIHN1cnByaXNpbmcsIHRoZSBvbmx5IG90aGVyIGJvYXJkIHdo
aWNoIGhhcyB0aGUgRFAwIGVuYWJsZWQgKHRoZSBDb29sUGkgNEIpIGRvZXNuJ3Qgc2V0IHRoZXNl
IHR3by4KPj4+Cj4+PiBEb2VzIEhETUkgc3RpbGwgd29yayBhcyB3ZWxsIGFzIGl0IHVzZWQgdG8g
d2l0aCB0aGVzZSBuZXcgcHJvcGVydGllcz8gV2h5IGFyZSB0aG9zZSBuZWVkZWQ/IFNvbWUgY29u
dGV4dCBpbiB0aGUgY29tbWl0IGxvZyBvciBhcyBhIGNvbW1lbnQgaW4gdGhlIERUIHdvdWxkIGJl
IG1vc3Qgd2VsY29tZSEKPj4KPj4gWWVzLCBIRE1JIGFuZCBEUCBjYW4gd29yayBub3JtYWxseSB3
aGV0aGVyIHRoZXNlIG5ld8KgcHJvcGVydGllcyByZW1vdmVkIG9yIG5vdC4KPj4KPj4gVGhlIGtl
eSBwb2ludCBpcyB0aGF0IHdoZW4gdXNpbmcgVjBQTEwsIHdlIGNhbiBnZXQgbW9yZSB1c2FibGUg
cmVzb2x1dGlvbiBiZWNhdXNlIERQIHJlcXVpcmVzIGEgcHJlY2lzZSBjbG9jay4gSWYgVjBQTEwg
aXMgbm90IGV4cGxpY2l0bHkgc3BlY2lmaWVkIGhlcmUsIHRoZW4gZGNsa192b3AyIChWUDIpIG1h
eSBiZSBkaXZpZGVkIGRvd24gb24gR1BMTCwgQ1BMTCwgZXRjLiBJbiB0aGlzIGNhc2UsIG9ubHkg
YSBmZXcgZnJlcXVlbmN5IHBvaW50cyBhcmUgYXZhaWxhYmxlLiBJbiBteSBjYXNlLCB3aGVuIFYw
UExMIGlzIG5vdCB1c2VkLCBvbmx5IHJlc29sdXRpb25zIHN1Y2ggYXMgMTAyNHg3NjggYW5kIDY0
MHg0ODAgYXJlIGF2YWlsYWJsZS4KCk9oISBUaGlzIGlzIGJlY2F1c2UgR1BMTCB3YXMgbm90IGlu
aXRpYWxpemVkIHRvIHRoZSBjb3JyZWN0IGZyZXF1ZW5jeSBkdXJpbmcgdGhlIFUtQm9vdCBzdGFn
ZS4gSXQgc2hvdWxkIHN1cHBvcnQgdHlwaWNhbCBmcmVxdWVuY2llcyBzdWNoIGFzIDEwODBQICgx
NDguNU0pLCA0SyAoNTk0TSkgLgoKCj4+Cj4+IEZvciBIRE1JLCBJIHRoaW5rIGl0IHdpbGwgdXNl
IGNsa19oZG1pcGh5X3BpeGVsMC8xIGFzIGNsb2NrIHBhcmVudCB3aGljaCBpcyBwcm92aWRlZCBi
eSB0aGUgSERNSSBQSFkgd2hlbiBpdCB3b3JrIG9uIFRNRFMgbW9kZSBzbyB0aGF0IHdlIGRvbid0
IG5lZWQgdG8gc2V0IGl0IC4KPj4KPgo+IENvbnNpZGVyaW5nIHRoZSBjbG9ja3MgYXJlIGFsbCBp
bnRlcm5hbCB0byB0aGUgU29DLCBzaG91bGRuJ3QgYWxsIHlvdSBoYXZlIGV4cGxhaW5lZCBiZSBh
cHBsaWNhYmxlIHRvIHRoZSBDb29sUGkgNEIgdG9vIChhbmQgb3RoZXIgYm9hcmRzIHdpdGggRFAp
PyBJJ20gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgaWYgd2Ugc2hvdWxkIGFkZCBzb21ldGhpbmcgc2lt
aWxhciB0byBDb29sUGkgNEIgRFRTIGFzIHdlbGw/CgpZZXMsIEkgdGhpbmsgdGhpcyBtb2RpZmlj
YXRpb24gaXMgbmVjZXNzYXJ5IGJlY2F1c2Ugc29tZSByZXNvbHV0aW9ucyB1c2Ugc3BlY2lhbCBm
cmVxdWVuY2llcy4KCgo+Cj4gQEFuZHksIHlvdSdyZSB0aGUgb25lIHdobyBhZGRlZCBzdXBwb3J0
IGZvciBEUCB0byBDb29sUGkgNEIsIHdpdGhvdXQgdGhlc2UgcHJvcGVydGllcywgaXMgdGhlcmUg
c29tZXRoaW5nIHdlIG5lZWQgdG8gZG8gdGhlcmUgYXMgd2VsbD8KPgo+IFRoYW5rcyEKPiBRdWVu
dGluCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

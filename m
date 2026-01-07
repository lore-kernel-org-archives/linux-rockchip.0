Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F54BCD5823
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOX1uoF14LMz6DFmgzobWYAgUaObNKdoN+60BnbvVOM=; b=G+Z44FwAPPAUMy
	F7syIZi7SfyQV7xLcxT4s/YXN3sLC/ZApRPVsF1fPMONyGCGS0hu7GL7GJEG4hJegcZorbHDB1DqR
	uBhnimqghQiL4Cm322MKG4uz2Ph+KSsWWfffFh9sHjvhRUD8PeJkS36FB1IYe+IguU1AhX4pOeyEd
	ujQeWnAjP33EbbZRk00v0AI2inSP6P4RBF8l4eYYLIt3ijrecb0LB5FP1SW6DdfVikGR0Jiw7Z84Z
	i/ZKUdikbqg80JKDUmZw89TReWh+E5qSq2R/78Posr3QHBYY6cpeC8yFcOfEexYKFkqjGPtzH1A5O
	6qyoIaF12CbZSmpJH4mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQIe-0000000EcYO-3dox;
	Wed, 07 Jan 2026 09:57:56 +0000
Received: from mail-m49228.qiye.163.com ([45.254.49.228])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQIb-0000000EcVv-3qMQ;
	Wed, 07 Jan 2026 09:57:55 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fcf9f2ae;
	Wed, 7 Jan 2026 17:57:49 +0800 (GMT+08:00)
Message-ID: <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
Date: Wed, 7 Jan 2026 17:57:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
 <2437891.BjyWNHgNrj@diego>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2437891.BjyWNHgNrj@diego>
X-HM-Tid: 0a9b97e423ab03abkunmdf9f022cdcc062
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1PQlYYGUkZHh9LHkNCSEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CbuHjoAKF1SH96bKLC8UN9zFsIJgDGedN5XXHY37NWuC2kSyT7v5dhrpqzEvCVpym2t8xWMmM2flcSJofP9kdHC5FkX/A67WVuKVS0oggSbtgMPFHrWGjxC4KNZtWK2kJcoplHV6f4gK3t6x2ivOAsshiocTHzDBTFLdHZ2su0E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ZpI7ixf6pE65MWX/ISGsLaSM7+uU0I5nnjsyA1XGxI4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_015754_201382_9902F6F3 
X-CRM114-Status: GOOD (  18.43  )
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

SGkgSGVpa28sCgpPbiAxLzcvMjAyNiA0OjIxIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBB
bSBNaXR0d29jaCwgNy4gSmFudWFyIDIwMjYsIDA4OjU2OjA0IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4+IEhpIENoYW95aSwKPj4KPj4gT24g
V2VkLCBKYW4gNywgMjAyNiBhdCAxMTowNOKAr0FNIENoYW95aSBDaGVuIDxrZXJuZWxAYWlya3lp
LmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2st
Y2hpcHMuY29tPgo+Pj4KPj4+IEdlbmVyYWwgZmVhdHVyZXMgZm9yIHJrMzU3NiBldmIyIGJvYXJk
Ogo+Pj4gICAgIC0gUm9ja2NoaXAgUkszNTc2Cj4+PiAgICAgLSBMUEREUjQvNFgKPj4+ICAgICAt
IGVNTUM1LjEKPj4+ICAgICAtIFJLODA2LTJ4MnBjcyArIERpc2NyZXRlUG93ZXIKPj4+ICAgICAt
IDF4IEhETUkyLjEgVFggLyBIRE1JMi4wIFJYCj4+PiAgICAgLSAxeCBmdWxsIHNpemUgRFAxLjQg
VFggKE9ubHkgMiBMYW5lcykKPj4+ICAgICAtIDJ4IDEwLzEwMC8xMDAwTSBFdGhlcm5ldAo+Pj4g
ICAgIC0gNXggU0FUQTMuMCA3UGluIFNsb3QKPj4+ICAgICAtIDJ4IFVTQjMuMiBHZW4xIEhvc3QK
Pj4+ICAgICAtIDN4IFVTQjIuMCBIb3N0Cj4+PiAgICAgLSBXSUZJL0JUCj4+PiAgICAgLSAuLi4K
Pj4+Cj4+PiBUZXN0ZWQgd2l0aCBlTU1DL1NETU1DL0hETUkvVVNCL0V0aGVybmV0L1dJRkkvQlQg
bW9kdWxlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KPiAKPiBbLi4uXQo+IAo+Pj4gKyAgICAgICB2YnVzNXYwX3R5cGVjOiBy
ZWd1bGF0b3ItdmJ1czV2MC10eXBlYyB7Cj4+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0g
InZidXM1djBfdHlwZWMiOwo+Pgo+PiBUaGlzIG1pZ2h0IGJldHRlciBiZSByZW5hbWVkLCBnaXZl
biB0aGF0IGxhc3QgdGltZSB5b3UgbWVudGlvbmVkIHRoaXMKPj4gYm9hcmQgZG9lc24ndCBoYXZl
IGEgVHlwZS1DIGNvbm5lY3Rvci4gUGVyaGFwcyByZWd1bGF0b3ItdmJ1czV2MC1vdGc/Cj4gCj4g
QWx0ZXJuYXRpdmVseSBhIGNvbW1lbnQgYWJvdmUgaXQuCj4gCj4gSS5lLiByZWd1bGF0b3ItbmFt
aW5nIHNob3VsZCBhbHdheXMgZm9sbG93IHRoZSBuYW1pbmcgdXNlZCBpbiB0aGUKPiBzY2hlbWF0
aWNzLCBzbyB0aGF0IGl0IGdldHMgZWFzaWVyIHRvIHJlZmVyZW5jZSBiZXR3ZWVuIHNjaGVtYXRp
Y3MKPiBhbmQgZGV2aWNldHJlZS4KPiAKClRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLiBJIHdp
bGwgZml4IHRoaXMgaW4gdjMuCgo+IAo+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDUwMDAwMDA+Owo+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDUwMDAwMDA+Owo+Pj4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUt
aGlnaDsKPj4+ICsgICAgICAgICAgICAgICBncGlvID0gPCZncGlvMCBSS19QRDEgR1BJT19BQ1RJ
VkVfSElHSD47Cj4+PiArICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX2Rldmlj
ZT47Cj4+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICsg
ICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnVzYl9vdGcwX3B3cmVuPjsKPj4+ICsgICAgICAg
fTsKPj4+ICsKPj4+ICsgICAgICAgdmNjMTJ2X2RjaW46IHJlZ3VsYXRvci12Y2MxMnYtZGNpbiB7
Cj4+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzEydl9kY2luIjsKPj4+ICsgICAg
ICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1ib290LW9uOwo+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDEyMDAwMDAwPjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwxMjAwMDAwMD47Cj4+PiArICAgICAgIH07Cj4+PiArCj4+PiArICAgICAgIHZjYzF2Ml91
ZnNfdmNjcV9zMDogcmVndWxhdG9yLXZjYzF2Mi11ZnMtdmNjcS1zMCB7Cj4+PiArICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4gKyAgICAgICAgICAgICAg
IHJlZ3VsYXRvci1uYW1lID0gInZjYzF2Ml91ZnNfdmNjcV9zMCI7Cj4+PiArICAgICAgICAgICAg
ICAgcmVndWxhdG9yLWJvb3Qtb247Cj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5
cy1vbjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAw
MDAwPjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAw
MDAwPjsKPj4+ICsgICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4+ICsg
ICAgICAgfTsKPj4+ICsKPj4+ICsgICAgICAgdmNjMXY4X3Vmc192Y2NxMl9zMDogcmVndWxhdG9y
LXZjYzF2OC11ZnMtdmNjcTItczAgewo+Pj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLWZpeGVkIjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2
Y2MxdjhfdWZzX3ZjY3EyX3MwIjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1v
bjsKPj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4gKyAgICAgICAg
ICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+Pj4gKyAgICAgICAg
ICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+Pj4gKyAgICAgICAg
ICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjY18xdjhfczM+Owo+Pj4gKyAgICAgICB9Owo+Pj4gKwo+
Pj4gKyAgICAgICB2Y2MzdjNfaHVicmVzZXQ6IHZjYzN2My1odWJyZXNldCB7Cj4+PiArICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4gKyAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzN2M19odWJyZXNldCI7Cj4+PiArICAgICAgICAgICAg
ICAgcmVndWxhdG9yLWJvb3Qtb247Cj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5
cy1vbjsKPj4KPj4gSWYgdGhpcyByZWd1bGF0b3Igc3VwcGxpZXMgYSBzb2xkZXJlZC1vbiBkaXNj
cmV0ZSBodWIgYW5kIGlzIHJlcXVpcmVkCj4+IHRvIHBvd2VyIGl0IHVwLCB3b24ndCBpdCBiZSBi
ZXR0ZXIgdG8gZGVzY3JpYmUgdGhlIGh1YiBpbiB0aGUgZGV2aWNlCj4+IHRyZWUgKHNlZSBiaW5k
aW5nIGF0IFsxXSksIG1ha2UgdGhlIHJlZ3VsYXRvciBpdHMgc3VwcGx5LCBhbmQgcGVyaGFwcwo+
PiBkcm9wIHRoZSAicmVndWxhdG9yLWJvb3Qtb24vcmVndWxhdG9yLWFsd2F5cy1vbiIgYW5ub3Rh
dGlvbiBoZXJlLAo+PiBsZXR0aW5nIHRoZSByZWd1bGF0b3IgY29yZSBkZWFsIHdpdGggaXRzIGVu
YWJsaW5nIGluc3RlYWQ/Cj4+Cj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGlu
dXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2It
ZGV2aWNlLnlhbWwKPiAKPiBZZXAsIGl0IHdvdWxkIGJlIG5pY2VyIHRvIGl0IHRoaXMgd2F5Lgo+
IEEgbGl2ZSBleGFtcGxlIGNhbiBiZSBmb3VuZCBpbiB0aGUgUm9jayA1IElUWCBbMl0KPiAKPiBb
Ml0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01LWl0eC5kdHMjbjEyNjYKClRoYW5rIHlvdSBmb3IgdGhlIGdyZWF0IGV4YW1wbGUuIEJUVyB0
aGUgaHViIHVzZWQgaGVyZSBpcyBDSDM0NC4gSXQKbG9va3MgbGlrZSB3ZSBuZWVkIHRvIGFkZCBh
IG5ldyBiaW5kaW5nIDopCgo+IAo+IAo+IEhlaWtvCj4gCj4gCj4+IFtzbmlwXQo+Pgo+PiBPdGhl
ciB0aGFuIHRoZXNlLCBMR1RNIC0gdGhhbmtzIGZvciBhZGRyZXNzaW5nIG15IGNvbW1lbnRzIGZy
b20gdjEhCj4+IEZlZWwgZnJlZSB0byBpbmNsdWRlIG15Ogo+Pgo+PiBSZXZpZXdlZC1ieTogQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEFs
ZXhleQo+Pgo+IAo+IAo+IAo+IAo+IAo+IAoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

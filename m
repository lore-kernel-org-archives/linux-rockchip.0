Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD9CCD5829
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 10:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn8yV94PrPC3TjY3LOoN8cLusSvD7hBKyhUJzr5FnQA=; b=0uBs1F/ONs+MZY
	f+kClw/xjo3h9uhKIzQr9Nj9kec/Bq2DoovsAg0RMZeflehoP3rkdTuaePqC9KAsJFR+1eeMHPwbN
	Pfl5ta4tXM3LDQy7CJn0qGtDaUKzjHr0UlKMvxYvPVr1V/yt+OkHC0eIkngbtM2McXhq5VrYA69VN
	OADsGilDi3Dgr6hV6cdC05o9edMICkQOmZcXm1XMa6tbAqKQDctMBn2CHs1g7W2rXdrhEmYj3ICFE
	6xVjdJu2Jcjmq/TJONOcadIj1+0DUUvQuEbs9CGaULpbZdXtlZS7xz68GmfAgDn9Zm4mu4UNg/zCY
	it2hedP2Q9tKehtrKKTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQPM-0000000Edqj-3bgM;
	Wed, 07 Jan 2026 10:04:52 +0000
Received: from mail-m1973188.qiye.163.com ([220.197.31.88])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQPK-0000000Edpr-0urD;
	Wed, 07 Jan 2026 10:04:51 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fcfe245c;
	Wed, 7 Jan 2026 18:04:43 +0800 (GMT+08:00)
Message-ID: <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
Date: Wed, 7 Jan 2026 18:04:42 +0800
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
 <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
X-HM-Tid: 0a9b97ea758003abkunmda7f342cdcde1e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4YH1ZCS0seSUodHk4dSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Csu+8ZE0U7sudqThazPqJ8qMKRTtF2M9R7Hmzm4Mr6Lw+8GhdhviTKYJo4Fs0F6WMWa/wMp4HBDl5Y9fOd75QotUsQ5FM2aCbH0edvtdUPH9i3y91mzTdKKUvVcZ3/8KWOhpx7e4cmi5ZJ7GbEsJEMybXJ8M/HS2hGcXlf5Bwv0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vfngUEu+5lUJU0zdatrZqi6JxVQ6DnTxJ3QXwkR4q8g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_020450_497179_6D68E276 
X-CRM114-Status: GOOD (  16.66  )
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

Ck9uIDEvNy8yMDI2IDU6NTcgUE0sIENoYW95aSBDaGVuIHdyb3RlOgo+IEhpIEhlaWtvLAo+IAo+
IE9uIDEvNy8yMDI2IDQ6MjEgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBNaXR0d29j
aCwgNy4gSmFudWFyIDIwMjYsIDA4OjU2OjA0IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0
IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4+PiBIaSBDaGFveWksCj4+Pgo+Pj4gT24gV2VkLCBK
YW4gNywgMjAyNiBhdCAxMTowNOKAr0FNIENoYW95aSBDaGVuIDxrZXJuZWxAYWlya3lpLmNvbT4g
d3JvdGU6Cj4+Pj4KPj4+PiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlw
cy5jb20+Cj4+Pj4KPj4+PiBHZW5lcmFsIGZlYXR1cmVzIGZvciByazM1NzYgZXZiMiBib2FyZDoK
Pj4+PiAgICAgLSBSb2NrY2hpcCBSSzM1NzYKPj4+PiAgICAgLSBMUEREUjQvNFgKPj4+PiAgICAg
LSBlTU1DNS4xCj4+Pj4gICAgIC0gUks4MDYtMngycGNzICsgRGlzY3JldGVQb3dlcgo+Pj4+ICAg
ICAtIDF4IEhETUkyLjEgVFggLyBIRE1JMi4wIFJYCj4+Pj4gICAgIC0gMXggZnVsbCBzaXplIERQ
MS40IFRYIChPbmx5IDIgTGFuZXMpCj4+Pj4gICAgIC0gMnggMTAvMTAwLzEwMDBNIEV0aGVybmV0
Cj4+Pj4gICAgIC0gNXggU0FUQTMuMCA3UGluIFNsb3QKPj4+PiAgICAgLSAyeCBVU0IzLjIgR2Vu
MSBIb3N0Cj4+Pj4gICAgIC0gM3ggVVNCMi4wIEhvc3QKPj4+PiAgICAgLSBXSUZJL0JUCj4+Pj4g
ICAgIC0gLi4uCj4+Pj4KPj4+PiBUZXN0ZWQgd2l0aCBlTU1DL1NETU1DL0hETUkvVVNCL0V0aGVy
bmV0L1dJRkkvQlQgbW9kdWxlLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4g
PGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBbLi4uXQo+Pgo+Pj4+ICsgICAgICAg
dmJ1czV2MF90eXBlYzogcmVndWxhdG9yLXZidXM1djAtdHlwZWMgewo+Pj4+ICsgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+Pj4gKyAgICAgICAgICAgICAg
IHJlZ3VsYXRvci1uYW1lID0gInZidXM1djBfdHlwZWMiOwo+Pj4KPj4+IFRoaXMgbWlnaHQgYmV0
dGVyIGJlIHJlbmFtZWQsIGdpdmVuIHRoYXQgbGFzdCB0aW1lIHlvdSBtZW50aW9uZWQgdGhpcwo+
Pj4gYm9hcmQgZG9lc24ndCBoYXZlIGEgVHlwZS1DIGNvbm5lY3Rvci4gUGVyaGFwcyByZWd1bGF0
b3ItdmJ1czV2MC1vdGc/Cj4+Cj4+IEFsdGVybmF0aXZlbHkgYSBjb21tZW50IGFib3ZlIGl0Lgo+
Pgo+PiBJLmUuIHJlZ3VsYXRvci1uYW1pbmcgc2hvdWxkIGFsd2F5cyBmb2xsb3cgdGhlIG5hbWlu
ZyB1c2VkIGluIHRoZQo+PiBzY2hlbWF0aWNzLCBzbyB0aGF0IGl0IGdldHMgZWFzaWVyIHRvIHJl
ZmVyZW5jZSBiZXR3ZWVuIHNjaGVtYXRpY3MKPj4gYW5kIGRldmljZXRyZWUuCj4+Cj4gCj4gVGhh
bmtzIGZvciB0aGUgZXhwbGFuYXRpb24uIEkgd2lsbCBmaXggdGhpcyBpbiB2My4KPiAKPj4KPj4+
PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+
Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+
Pj4+ICsgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4+Pj4gKyAgICAgICAgICAg
ICAgIGdwaW8gPSA8JmdwaW8wIFJLX1BEMSBHUElPX0FDVElWRV9ISUdIPjsKPj4+PiArICAgICAg
ICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX2RldmljZT47Cj4+Pj4gKyAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gKyAgICAgICAgICAgICAgIHBpbmN0
cmwtMCA9IDwmdXNiX290ZzBfcHdyZW4+Owo+Pj4+ICsgICAgICAgfTsKPj4+PiArCj4+Pj4gKyAg
ICAgICB2Y2MxMnZfZGNpbjogcmVndWxhdG9yLXZjYzEydi1kY2luIHsKPj4+PiArICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+ICsgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxMnZfZGNpbiI7Cj4+Pj4gKyAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1hbHdheXMtb247Cj4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9u
Owo+Pj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAw
MD47Cj4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAw
MDAwPjsKPj4+PiArICAgICAgIH07Cj4+Pj4gKwo+Pj4+ICsgICAgICAgdmNjMXYyX3Vmc192Y2Nx
X3MwOiByZWd1bGF0b3ItdmNjMXYyLXVmcy12Y2NxLXMwIHsKPj4+PiArICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+ICsgICAgICAgICAgICAgICByZWd1
bGF0b3ItbmFtZSA9ICJ2Y2MxdjJfdWZzX3ZjY3FfczAiOwo+Pj4+ICsgICAgICAgICAgICAgICBy
ZWd1bGF0b3ItYm9vdC1vbjsKPj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTIwMDAw
MD47Cj4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAw
MDA+Owo+Pj4+ICsgICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4+PiAr
ICAgICAgIH07Cj4+Pj4gKwo+Pj4+ICsgICAgICAgdmNjMXY4X3Vmc192Y2NxMl9zMDogcmVndWxh
dG9yLXZjYzF2OC11ZnMtdmNjcTItczAgewo+Pj4+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1l
ID0gInZjYzF2OF91ZnNfdmNjcTJfczAiOwo+Pj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3It
Ym9vdC1vbjsKPj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+PiAr
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+Pj4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+Pj4+
ICsgICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2NfMXY4X3MzPjsKPj4+PiArICAgICAg
IH07Cj4+Pj4gKwo+Pj4+ICsgICAgICAgdmNjM3YzX2h1YnJlc2V0OiB2Y2MzdjMtaHVicmVzZXQg
ewo+Pj4+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+
Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzN2M19odWJyZXNldCI7Cj4+
Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+Pj4+ICsgICAgICAgICAgICAg
ICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4KPj4+IElmIHRoaXMgcmVndWxhdG9yIHN1cHBsaWVz
IGEgc29sZGVyZWQtb24gZGlzY3JldGUgaHViIGFuZCBpcyByZXF1aXJlZAo+Pj4gdG8gcG93ZXIg
aXQgdXAsIHdvbid0IGl0IGJlIGJldHRlciB0byBkZXNjcmliZSB0aGUgaHViIGluIHRoZSBkZXZp
Y2UKPj4+IHRyZWUgKHNlZSBiaW5kaW5nIGF0IFsxXSksIG1ha2UgdGhlIHJlZ3VsYXRvciBpdHMg
c3VwcGx5LCBhbmQgcGVyaGFwcwo+Pj4gZHJvcCB0aGUgInJlZ3VsYXRvci1ib290LW9uL3JlZ3Vs
YXRvci1hbHdheXMtb24iIGFubm90YXRpb24gaGVyZSwKPj4+IGxldHRpbmcgdGhlIHJlZ3VsYXRv
ciBjb3JlIGRlYWwgd2l0aCBpdHMgZW5hYmxpbmcgaW5zdGVhZD8KPj4+Cj4+PiBbMV0gaHR0cHM6
Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvdXNiLWRldmljZS55YW1sCj4+Cj4+IFllcCwgaXQgd291bGQg
YmUgbmljZXIgdG8gaXQgdGhpcyB3YXkuCj4+IEEgbGl2ZSBleGFtcGxlIGNhbiBiZSBmb3VuZCBp
biB0aGUgUm9jayA1IElUWCBbMl0KPj4KPj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRzI24xMjY2Cj4gCj4gVGhhbmsg
eW91IGZvciB0aGUgZ3JlYXQgZXhhbXBsZS4gQlRXIHRoZSBodWIgdXNlZCBoZXJlIGlzIENIMzQ0
LiBJdAo+IGxvb2tzIGxpa2Ugd2UgbmVlZCB0byBhZGQgYSBuZXcgYmluZGluZyA6KQo+CgpUeXBv
Li4uIEl0IGlzIFdDSCBDSDMzNC4KCj4+Cj4+Cj4+IEhlaWtvCj4+Cj4+Cj4+PiBbc25pcF0KPj4+
Cj4+PiBPdGhlciB0aGFuIHRoZXNlLCBMR1RNIC0gdGhhbmtzIGZvciBhZGRyZXNzaW5nIG15IGNv
bW1lbnRzIGZyb20gdjEhCj4+PiBGZWVsIGZyZWUgdG8gaW5jbHVkZSBteToKPj4+Cj4+PiBSZXZp
ZXdlZC1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+Pj4KPj4+IEJlc3Qg
cmVnYXJkcywKPj4+IEFsZXhleQo+Pj4KPj4KPj4KPj4KPj4KPj4KPj4KPiAKCi0tIApCZXN0LCAK
Q2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

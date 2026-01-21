Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F731D2629F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 02:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaJELu9Em3x6sB38JAzhsPPWFmfy7CoC7DmMQ+NdxwA=; b=UBE+Dg5mvHr3F7
	0bhgn8Ez6qx0WEF6vbMZ8bjZfPUdGnQua0oyvNRunIWw7o39k9vmC+vTmrSHYrRkUf5FBH4+xagKE
	KoHkV+DqtwrDxJ/ZuM6/cg5fkf9Lkc9ReodDakFQgeyMX+Se8X8r5ttne/w6NebUrbj3VwPiu4w9z
	uKAeErGAJVA8nADI57jXIVn3oiIuWHeKwERJQP8Tr9XAi+HO+GQn+VxE2NBweLlZ+djnvvZIIFln7
	IG8kG+gw2zjKt47e/SvPkmAIAODLyF0u+/t2DyDDqrm0oN5J2iBnSWcrRCCGGMX0JUdHJ6ORbx/+D
	UfpGExwiZMrm1qJxpckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNyK-00000004n3o-358h;
	Wed, 21 Jan 2026 02:29:28 +0000
Received: from mail-m1973194.qiye.163.com ([220.197.31.94])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNyH-00000004n2j-3JLF;
	Wed, 21 Jan 2026 02:29:27 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3160d3b68;
	Wed, 21 Jan 2026 10:29:16 +0800 (GMT+08:00)
Message-ID: <e9cf22c2-a41d-464e-b6cb-ec36149aeb50@rock-chips.com>
Date: Wed, 21 Jan 2026 10:29:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Hsun Lai <i@chainsx.cn>, John Clark <inindev@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
 <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
X-HM-Tid: 0a9bde62830503abkunm076ac87eafb1c1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4eHVZOTE9JQxhPSUJLSB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JITe9yhlKbMe3EXkJwwJc/dpKo2i2d37oUt6cOXPuLbzPmU575Zk9T6dwQeBv0Z9F0QGFEUdGHWmBzzzQPgn/IcwNow6/o0HlrePFp8cpTk7rjXYBqJpl7RQ5VA49kfhxALCFvwIEUMHB0XQwk1z7o7vWyZkwXDwqRHRV58jOMI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2eh4KD7y1g6vQGusKiA5g415ChW3lPdxO7SBQzAgVns=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_182926_303855_AAE27CF6 
X-CRM114-Status: GOOD (  12.04  )
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

SGkgU2hhd24sCgpPbiAxLzIxLzIwMjYgMTA6MDkgQU0sIFNoYXduIExpbiB3cm90ZToKPiDlnKgg
MjAyNi8wMS8yMSDmmJ/mnJ/kuIkgOTo1MywgQ2hhb3lpIENoZW4g5YaZ6YGTOgo+PiBGcm9tOiBD
aGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IEdlbmVyYWwgZmVh
dHVyZXMgZm9yIHJrMzU3NiBldmIyIGJvYXJkOgo+PiDCoMKgwqDCoCAtIFJvY2tjaGlwIFJLMzU3
Ngo+PiDCoMKgwqDCoCAtIExQRERSNC80WAo+PiDCoMKgwqDCoCAtIGVNTUM1LjEKPj4gwqDCoMKg
wqAgLSBSSzgwNi0yeDJwY3MgKyBEaXNjcmV0ZVBvd2VyCj4+IMKgwqDCoMKgIC0gMXggSERNSTIu
MSBUWCAvIEhETUkyLjAgUlgKPj4gwqDCoMKgwqAgLSAxeCBmdWxsIHNpemUgRFAxLjQgVFggKE9u
bHkgMiBMYW5lcykKPj4gwqDCoMKgwqAgLSAyeCAxMC8xMDAvMTAwME0gRXRoZXJuZXQKPj4gwqDC
oMKgwqAgLSA1eCBTQVRBMy4wIDdQaW4gU2xvdAo+PiDCoMKgwqDCoCAtIDJ4IFVTQjMuMiBHZW4x
IEhvc3QKPj4gwqDCoMKgwqAgLSAzeCBVU0IyLjAgSG9zdAo+PiDCoMKgwqDCoCAtIFdJRkkvQlQK
Pj4gwqDCoMKgwqAgLSAuLi4KPj4KPj4gVGVzdGVkIHdpdGggZU1NQy9TRE1NQy9IRE1JL1VTQi9F
dGhlcm5ldC9XSUZJL0JUIG1vZHVsZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4g
PGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+PiBSZXZpZXdlZC1ieTogQWxleGV5IENoYXJr
b3YgPGFsY2hhcmtAZ21haWwuY29tPgo+PiAtLS0KPiAKPiAtLS04PC0tLS0KPiAKPj4gKwo+PiAr
JnNkaW8gewo+PiArwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArwqDCoMKgICNzaXpl
LWNlbGxzID0gPDA+Owo+PiArwqDCoMKgIGJ1cy13aWR0aCA9IDw0PjsKPj4gK8KgwqDCoCBjYXAt
c2QtaGlnaHNwZWVkOwo+PiArwqDCoMKgIGNhcC1zZGlvLWlycTsKPj4gK8KgwqDCoCBkaXNhYmxl
LXdwOwo+IAo+IGRpc2FibGUtd3AgaXMgbm90IHVzZWQgZm9yIFNESU8gY2FzZSwgY291bGQgYmUg
cmVtb3ZlZC4KPiAKPiAKCldpbGwgZml4IGluIHY1LgoKPj4gK8KgwqDCoCBrZWVwLXBvd2VyLWlu
LXN1c3BlbmQ7Cj4+ICvCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+PiArwqDC
oMKgIG1tYy1wd3JzZXEgPSA8JnNkaW9fcHdyc2VxPjsKPj4gK8KgwqDCoCBuby1zZDsKPj4gK8Kg
wqDCoCBuby1tbWM7Cj4+ICvCoMKgwqAgbm9uLXJlbW92YWJsZTsKPj4gK8KgwqDCoCBwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+PiArwqDCoMKgIHBpbmN0cmwtMCA9IDwmc2RtbWMxbTBfYnVz
NCAmc2RtbWMxbTBfY2xrICZzZG1tYzFtMF9jbWQ+Owo+PiArwqDCoMKgIHNkLXVocy1zZHIxMDQ7
Cj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICvCoMKgwqAgYnJjbWY6IHdpZmlA
MSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImJyY20sYmNtNDMyOS1mbWFjIjsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJlZyA9IDwxPjsKPj4gK8KgwqDCoMKgwqDCoMKgIGludGVycnVw
dC1wYXJlbnQgPSA8JmdwaW8wPjsKPj4gK8KgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8Uktf
UEIwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0LW5h
bWVzID0gImhvc3Qtd2FrZSI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiArwqDCoMKgwqDCoMKgwqAgcGluY3RybC0wID0gPCZ3aWZpX2hvc3Rfd2FrZT47
Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZzZGhjaSB7Cj4+ICvCoMKgwqAgYnVzLXdp
ZHRoID0gPDg+Owo+PiArwqDCoMKgIGZ1bGwtcHdyLWN5Y2xlLWluLXN1c3BlbmQ7Cj4+ICvCoMKg
wqAgbW1jLWhzNDAwLTFfOHY7Cj4+ICvCoMKgwqAgbW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsK
Pj4gK8KgwqDCoCBuby1zZGlvOwo+PiArwqDCoMKgIG5vLXNkOwo+PiArwqDCoMKgIG5vbi1yZW1v
dmFibGU7Cj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiArJnNkbW1j
IHsKPj4gK8KgwqDCoCBidXMtd2lkdGggPSA8ND47Cj4+ICvCoMKgwqAgY2FwLXNkLWhpZ2hzcGVl
ZDsKPj4gK8KgwqDCoCBjZC1ncGlvcyA9IDwmZ3BpbzAgUktfUEE3IEdQSU9fQUNUSVZFX0xPVz47
Cj4+ICvCoMKgwqAgZGlzYWJsZS13cDsKPj4gK8KgwqDCoCBuby1zZGlvOwo+PiArwqDCoMKgIG5v
LW1tYzsKPj4gK8KgwqDCoCBzZC11aHMtc2RyMTA0Owo+PiArwqDCoMKgIHZxbW1jLXN1cHBseSA9
IDwmdmNjaW9fc2RfczA+Owo+IAo+IFNob3VsZCB1c2Ugdm1tYy1zdXBwbHkgdG8gY29udHJsIHRo
ZSBwb3dlciwgdGhlIHNhbWUgYXMgRVZCMVsxXS4KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcm9ja2NoaXAvMTc2ODUyNDkzMi0xNjM5MjktNS1naXQtc2VuZC1lbWFpbC1z
aGF3bi5saW5Acm9jay1jaGlwcy5jb20vVC8jdQo+IAoKVGhhdCBtYWtlIHNlbnNlLiBXaWxsIGZp
eCBpbiB2NS4KCj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiArJnUy
cGh5MCB7Cj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+IAo+IAo+IAo+
IAoKLS0gCkJlc3QsIApDaGFveWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

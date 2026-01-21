Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26112D262B3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mv6A4IoOuTRebacLZC+UhgEhvAvCjLad9ifJUMjfpKs=; b=BvQXdZ4cWTuUxg
	vaViKclrka/32vkaU5PF/mdLotJ8xkvtpyOG3bJYY+iaLkRtknD1O9LRCCm+mmcYHmYI+H5FK63Oy
	wASK4HJ3mMbJH+tkiJu/oUQecieDFRo/e4Ql7Bw6IpmfDRXhuUxT8wfgySERa/aQZf0pOlH0kWiak
	jaYXzv2NGSUO7i2eZ1pXdSAsONIrt/04n1dV5PtztE3uPcM8quwxLpfl5GjzJeYSBV2D8Bg6WXrHa
	0FgM85STSHDlBsg8cRTDOmOLCyYVvKE0ySw/e4RRrUqatIHwuEQDzmjZO9IEYecNvNB/rCi+sRijI
	lhXY9sxV3f+DXNb6iuqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNfH-00000004kxF-14lR;
	Wed, 21 Jan 2026 02:09:47 +0000
Received: from mail-m81244.xmail.ntesmail.com ([156.224.81.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNfE-00000004kwn-092x;
	Wed, 21 Jan 2026 02:09:46 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3160079c9;
	Wed, 21 Jan 2026 10:09:36 +0800 (GMT+08:00)
Message-ID: <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
Date: Wed, 21 Jan 2026 10:09:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Hsun Lai <i@chainsx.cn>,
 John Clark <inindev@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260121015357.291-3-kernel@airkyi.com>
X-HM-Tid: 0a9bde507f6a09cckunm61165221ae686c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ08eHVZCSRlLT01LTUoeSBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OTnBNxqLyT/ATGNdjWCVeQIbbGmNGD7G2Ag2Ri6UofQbwdtTkPS4Zr3WTt/ADmgt3INO+I0u/ui36nmRIORe5sDY3KtB3nBbGrFJRMP5ssqP23UuNzAa/k/bgDT5u+rIUl+6rHblHuYH/D4F/2Lae628Bq6b6Yo/ynvPGPHzKyE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=px66oAjk4XaqMxJ6LP/bn8wEYOzMSxyTszaBJt3RpgU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_180944_684097_BF6F5521 
X-CRM114-Status: GOOD (  10.29  )
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

5ZyoIDIwMjYvMDEvMjEg5pif5pyf5LiJIDk6NTMsIENoYW95aSBDaGVuIOWGmemBkzoKPiBGcm9t
OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gR2VuZXJhbCBm
ZWF0dXJlcyBmb3IgcmszNTc2IGV2YjIgYm9hcmQ6Cj4gICAgICAtIFJvY2tjaGlwIFJLMzU3Ngo+
ICAgICAgLSBMUEREUjQvNFgKPiAgICAgIC0gZU1NQzUuMQo+ICAgICAgLSBSSzgwNi0yeDJwY3Mg
KyBEaXNjcmV0ZVBvd2VyCj4gICAgICAtIDF4IEhETUkyLjEgVFggLyBIRE1JMi4wIFJYCj4gICAg
ICAtIDF4IGZ1bGwgc2l6ZSBEUDEuNCBUWCAoT25seSAyIExhbmVzKQo+ICAgICAgLSAyeCAxMC8x
MDAvMTAwME0gRXRoZXJuZXQKPiAgICAgIC0gNXggU0FUQTMuMCA3UGluIFNsb3QKPiAgICAgIC0g
MnggVVNCMy4yIEdlbjEgSG9zdAo+ICAgICAgLSAzeCBVU0IyLjAgSG9zdAo+ICAgICAgLSBXSUZJ
L0JUCj4gICAgICAtIC4uLgo+IAo+IFRlc3RlZCB3aXRoIGVNTUMvU0RNTUMvSERNSS9VU0IvRXRo
ZXJuZXQvV0lGSS9CVCBtb2R1bGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNo
YW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IFJldmlld2VkLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8
YWxjaGFya0BnbWFpbC5jb20+Cj4gLS0tCgotLS04PC0tLS0KCj4gKwo+ICsmc2RpbyB7Cj4gKwkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCSNzaXplLWNlbGxzID0gPDA+Owo+ICsJYnVzLXdpZHRo
ID0gPDQ+Owo+ICsJY2FwLXNkLWhpZ2hzcGVlZDsKPiArCWNhcC1zZGlvLWlycTsKPiArCWRpc2Fi
bGUtd3A7CgpkaXNhYmxlLXdwIGlzIG5vdCB1c2VkIGZvciBTRElPIGNhc2UsIGNvdWxkIGJlIHJl
bW92ZWQuCgoKPiArCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiArCW1heC1mcmVxdWVuY3kgPSA8
MTUwMDAwMDAwPjsKPiArCW1tYy1wd3JzZXEgPSA8JnNkaW9fcHdyc2VxPjsKPiArCW5vLXNkOwo+
ICsJbm8tbW1jOwo+ICsJbm9uLXJlbW92YWJsZTsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnNkbW1jMW0wX2J1czQgJnNkbW1jMW0wX2NsayAmc2RtbWMx
bTBfY21kPjsKPiArCXNkLXVocy1zZHIxMDQ7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gKwo+ICsJ
YnJjbWY6IHdpZmlAMSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTQzMjktZm1hYyI7Cj4g
KwkJcmVnID0gPDE+Owo+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKPiArCQlpbnRl
cnJ1cHRzID0gPFJLX1BCMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQlpbnRlcnJ1cHQtbmFt
ZXMgPSAiaG9zdC13YWtlIjsKPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXBp
bmN0cmwtMCA9IDwmd2lmaV9ob3N0X3dha2U+Owo+ICsJfTsKPiArfTsKPiArCj4gKyZzZGhjaSB7
Cj4gKwlidXMtd2lkdGggPSA8OD47Cj4gKwlmdWxsLXB3ci1jeWNsZS1pbi1zdXNwZW5kOwo+ICsJ
bW1jLWhzNDAwLTFfOHY7Cj4gKwltbWMtaHM0MDAtZW5oYW5jZWQtc3Ryb2JlOwo+ICsJbm8tc2Rp
bzsKPiArCW5vLXNkOwo+ICsJbm9uLXJlbW92YWJsZTsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiArCj4gKyZzZG1tYyB7Cj4gKwlidXMtd2lkdGggPSA8ND47Cj4gKwljYXAtc2QtaGlnaHNw
ZWVkOwo+ICsJY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNyBHUElPX0FDVElWRV9MT1c+Owo+ICsJ
ZGlzYWJsZS13cDsKPiArCW5vLXNkaW87Cj4gKwluby1tbWM7Cj4gKwlzZC11aHMtc2RyMTA0Owo+
ICsJdnFtbWMtc3VwcGx5ID0gPCZ2Y2Npb19zZF9zMD47CgpTaG91bGQgdXNlIHZtbWMtc3VwcGx5
IHRvIGNvbnRybCB0aGUgcG93ZXIsIHRoZSBzYW1lIGFzIEVWQjFbMV0uCgpbMV0gCmh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzE3Njg1MjQ5MzItMTYzOTI5LTUtZ2l0LXNl
bmQtZW1haWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29tL1QvI3UKCj4gKwlzdGF0dXMgPSAib2th
eSI7Cj4gK307Cj4gKwo+ICsmdTJwaHkwIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiAr
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31C03CCD1AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkF3CKjBfa9UJxp9A3z1rrETcZW+SwXLR0jfIZEj+mQ=; b=IpSq2r8Chjgp5B
	vLSVYPVAn7DuxsgjIJv0ung1VMixKOvhNZnVOuWkMFQ9/h+HY+/sqgsd3mVhf+Nn5r/Ud1iz/Mkyf
	2F3/PuwMpFo1bjP/39GASAKA4ElOd1kGeXZ/tsmPuaEdsNvuZ6zNr8PMnu5e7Fm1Dfd7eXLOFLh0Y
	M8Xi6SG8mtMCJuIfGvgvU45g3uDSG7+gUQ2RUeQa/3rwGzrOdOjVwLwHgME1+MSLtY5U1UCb/y/i0
	RX8Z8atMb7GqFEf1HjuawQo5tnhhk0Q2HUE8uaMnw4dOkDdQ57D92lMExoGjAgX3tcqlvqqjkStuF
	lGUhbHw8aSCAwVQSq6HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7tM-0000000GJMU-3kB1;
	Tue, 21 Oct 2025 08:38:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7tK-0000000GJLK-0Mb4;
	Tue, 21 Oct 2025 08:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GXbqGEqtn7uQLSJTDpkbfTb/HIT9zRnLyNNGASNhKDc=; b=iEdMi9lIca+YqotIqGbMIEpwR8
	z073jtgmRswef6NyTJsXqw8tvedCaf67afY5Up+KyW2MoL+XrmFr6G0+2reuEJ1HdXbvIuA/ePs9r
	4HuGjGADqCQMBO5DJUxD9RGGTzwtzzVZQbtXvdCyc+Og6PCT8aRmiSeSIibQK9GdBz9a7q4OfO/Qv
	LYiRKWrveDlm8s1T2cmeKVum+KxCcyQ2QAagVs+BL5OKQGhMuMNl+hWVX6tHFAydUkonqZo6hQctF
	OWPz21P82+fVZd+CujyborfqXwX5kOqBvc+Rt7XmC5ST7WdLe3S3mT1nEbi8LQhEXwSxW4HrXf3gx
	uaNGptCA==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB7tH-0001Ua-Sv; Tue, 21 Oct 2025 10:38:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: clock, reset: Add support for rv1126b
Date: Tue, 21 Oct 2025 10:38:46 +0200
Message-ID: <4463339.ejJDZkT8p0@phil>
In-Reply-To: <20251021065232.2201500-3-zhangqing@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
 <20251021065232.2201500-3-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_013850_124513_E8223CCC 
X-CRM114-Status: GOOD (  15.82  )
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

SGkgRWxhaW5lLAoKQW0gRGllbnN0YWcsIDIxLiBPa3RvYmVyIDIwMjUsIDA4OjUyOjI3IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgo+IEFkZCBjbG9j
ayBhbmQgcmVzZXQgSUQgZGVmaW5lcyBmb3IgcnYxMTI2Yi4KPiBBbHNvIGFkZCBkb2N1bWVudGF0
aW9uIGZvciB0aGUgcnYxMTI2YiBDUlUgY29yZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUg
WmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPiBBY2tlZC1ieTogQ29ub3IgRG9vbGV5
IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL2Nsb2Nr
L3JvY2tjaGlwLHJ2MTEyNmItY3J1LnlhbWwgIHwgIDUyICsrKwo+ICAuLi4vZHQtYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscnYxMTI2Yi1jcnUuaCAgfCAzOTIgKysrKysrKysrKysrKysrKysKPiAg
Li4uL2R0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJ2MTEyNmItY3J1LmggIHwgNDA1ICsrKysr
KysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDg0OSBpbnNlcnRpb25zKCspCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2sv
cm9ja2NoaXAscnYxMTI2Yi1jcnUueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9k
dC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS5oCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJ2MTEyNmItY3J1LmgKPiAK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3Jv
Y2tjaGlwLHJ2MTEyNmItY3J1LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvY2xvY2svcm9ja2NoaXAscnYxMTI2Yi1jcnUueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wNGIwYTVjNTFlNGUKPiAtLS0gL2Rldi9udWxsCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEy
NmItY3J1LnlhbWwKPiBAQCAtMCwwICsxLDUyIEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEyNmIt
Y3J1LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMv
Y29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFJvY2tjaGlwIFJWMTEyNkIgQ2xvY2sgYW5kIFJlc2V0
IFVuaXQKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdA
cm9jay1jaGlwcy5jb20+Cj4gKyAgLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
ICsKPiArZGVzY3JpcHRpb246Cj4gKyAgVGhlIHJ2MTEyNmIgY2xvY2sgY29udHJvbGxlciBnZW5l
cmF0ZXMgdGhlIGNsb2NrIGFuZCBhbHNvIGltcGxlbWVudHMgYQo+ICsgIHJlc2V0IGNvbnRyb2xs
ZXIgZm9yIFNvQyBwZXJpcGhlcmFscy4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJs
ZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gcm9ja2NoaXAscnYxMTI2Yi1jcnUKPiArCj4gKyAg
cmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgIiNjbG9jay1jZWxscyI6Cj4gKyAgICBj
b25zdDogMQo+ICsKPiArICAiI3Jlc2V0LWNlbGxzIjoKPiArICAgIGNvbnN0OiAxCj4gKwo+ICsg
IGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrLW5hbWVzOgo+ICsgICAg
Y29uc3Q6IHhpbjI0bQoKSSB0aGluayB3ZSdyZSBtaXNzaW5nIHRoZSBvcHRpb25hbAoKICAgcm9j
a2NoaXAsZ3JmOgogICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Bo
YW5kbGUKICAgICBkZXNjcmlwdGlvbjoKICAgICAgIFBoYW5kbGUgdG8gdGhlIHN5c2NvbiBtYW5h
Z2luZyB0aGUgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiIChHUkYpLAogICAgICAgaWYgbWlzc2lu
ZyBwbGwgcmF0ZXMgYXJlIG5vdCBjaGFuZ2VhYmxlLCBkdWUgdG8gdGhlIG1pc3NpbmcgcGxsCiAg
ICAgICBsb2NrIHN0YXR1cy4KCgpiZWNhdXNlIFJWMTEyNkJfR1JGX1NPQ19TVEFUVVMwIGNvbnRh
aW5zIHRoZSBQTEwgbG9jayBzdGF0dXMuCgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

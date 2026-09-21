Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D9CC982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 21:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujnqcFVmLYf1X1knySMxSON4bbStymUaMcth8Dkf8RQ=; b=ziiu/zQbSPg4oV
	F6msWoZGxh1K7RY5r/GgiF+5PqeVDwDHFxN+TJOF+qCyj9/omU5YhgqS/lBDFqnZ3FP1Ykup2L5Yd
	pMpV2JbSEyzitTIBq8eNPkVutOkTtOQfBogziDG0hp4+UxaTcdDXsD2fwdMKsA4uDYYt9z79XioBM
	BkWgY1oWP8OS4olJrhkBeByuQ9T3QB06npmwjCshq3V3hGYPHViMOtswi+b/CCuYxHTt4ZEKtPILa
	RYcuh+c8kHpdwqa/wLCOfJNmy3CJLVvXUCPv9Wr1NrrQ/EFpD3zEbeVXgwAybRDgn7hyVvUD2QAuW
	05yPUnSK73uD6SAOQN6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8lwP-00000003Vbn-3b8H;
	Mon, 21 Sep 2026 21:52:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8lwO-00000003VbI-2IBg;
	Mon, 21 Sep 2026 21:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=eoWfYjj7geBEgtBjXdF5/WIH4GJNtcxQHnt+xjX8Kvw=; b=HkrQOOOjlx+TKDtRusn+0FvMZb
	cIQVej5QlqC5aNt9TSJBmhMFVrTv+LGfIiE4s8aVKeG87AVmsK59TDZNkV4s8uAral2Wj9yzZ+6MG
	4AIFzT7pFhMHERPxAWz7pyQxezfxsCszmb+fUjuizXVCZVV2o/Z7qfi1AstO8X9MfmMDqctoyyOmd
	SVmhKeXsoinCwOo04WoXysB/QPB36+COgNw1X2wbQCGFK8zzWen79TAtgYBvX+CXvswROL0gXHEKY
	Cw7rssjp6IZinvyZAoQI6HGsYqDnb2ovGb5UzzPfYq1kCeNMA5IqGeK2cJYMHvFASwE7apkI9Hyqs
	ZqWfS36A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8lwL-00000005ftg-1vZn;
	Mon, 21 Sep 2026 21:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=eoWfYjj7geBEgtBjXdF5/WIH4GJNtcxQHnt+xjX8Kvw=; b=kOKh+tO180j0JZFNK/WRL9wKCn
	OsrbwpICbLRHcW+J3f/ISUueH6+dPWCMG8lkIeWPJM2/kT9gRaTTvaYlUEdJbSW5yPbvIsFIKotX8
	4vlKwGkEN29oWCVA0oEA26cAn0CM4u+ile4EdpHQ0Nsja0IwHNvfxvjJJODjLLWCYIutNkJR9U7kL
	cxkRTYOklkTtzeASjPrsO/Svnu01pm00kH3Z/Q43Y3FC3unz6hZsQA0fYFDOGPJv09UXidcW4UenI
	O8hJh/gXD8lBrT+PEvLGlcnSWizPbOnDYLpT0uQHRBKW2XlD7zPwXxcBlpyPKkzYgDWaH5v9FEcLN
	c/2G0pNA==;
From: Heiko Stuebner <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v13 07/14] dt-bindings: power: rockchip: allow resets in a power
 domain node
Date: Mon, 21 Sep 2026 23:52:31 +0200
Message-ID: <2492931.NG923GbCHz@phil>
In-Reply-To: <20260915104328.45901-8-gahing@gahingwoo.com>
References: <20260915104328.45901-1-gahing@gahingwoo.com>
 <20260915104328.45901-8-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_225245_543296_4F1259F0 
X-CRM114-Status: GOOD (  11.52  )
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

QW0gRGllbnN0YWcsIDE1LiBTZXB0ZW1iZXIgMjAyNiwgMTI6NDM6MjEgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IFNvbWUgZG9tYWlucyBkbyBub3Qg
Y29tZSB1cCBpbiBhIHVzYWJsZSBzdGF0ZSBvbiB0aGVpciBvd24gYW5kIG5lZWQgdGhlaXIKPiBy
ZXNldHMgY3ljbGVkIG9uY2UgcG93ZXIgaXMgb24uIFRoZSBSSzM1NzYgTlBVIGRvbWFpbnMgYXJl
IG9uZQo+IGNhc2U6IHdpdGhvdXQgaXQgdGhlIGZpcnN0IGFjY2VzcyBhZnRlciBwb3dlci1vbiB0
YWtlcyBhbiBhc3luYyBTRXJyb3IuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2Fo
aW5nQGdhaGluZ3dvby5jb20+Cj4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5
QG1pY3JvY2hpcC5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KCj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9s
bGVyLnlhbWwgICAgICAgICB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3JvY2tjaGlwLHBvd2VyLWNvbnRyb2xsZXIueWFtbAo+
IGluZGV4IGI0MWRiNTc2Zi4uODM3NDFmMDQ4IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwK
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcm9ja2NoaXAs
cG93ZXItY29udHJvbGxlci55YW1sCj4gQEAgLTEzNiw2ICsxMzYsMTMgQEAgJGRlZnM6Cj4gICAg
ICAgICAgICBBIG51bWJlciBvZiBwaGFuZGxlcyB0byBjbG9ja3MgdGhhdCBuZWVkIHRvIGJlIGVu
YWJsZWQKPiAgICAgICAgICAgIHdoaWxlIHBvd2VyIGRvbWFpbiBzd2l0Y2hlcyBzdGF0ZS4KPiAg
Cj4gKyAgICAgIHJlc2V0czoKPiArICAgICAgICBtYXhJdGVtczogMQo+ICsgICAgICAgIGRlc2Ny
aXB0aW9uOgo+ICsgICAgICAgICAgQSBwaGFuZGxlIHRvIGEgcmVzZXQgdGhhdCBuZWVkcyB0byBi
ZSBjeWNsZWQgb25jZSB0aGUgcG93ZXIgZG9tYWluIGhhcwo+ICsgICAgICAgICAgYmVlbiBzd2l0
Y2hlZCBvbiwgZm9yIGRvbWFpbnMgd2hvc2UgbG9naWMgZG9lcyBub3QgY29tZSB1cCBpbiBhIHVz
YWJsZQo+ICsgICAgICAgICAgc3RhdGUgYnkgaXRzZWxmLgo+ICsKPiAgICAgICAgZG9tYWluLXN1
cHBseToKPiAgICAgICAgICBkZXNjcmlwdGlvbjogZG9tYWluIHJlZ3VsYXRvciBzdXBwbHkuCj4g
IAo+IEBAIC0yMTYsNiArMjIzLDcgQEAgZXhhbXBsZXM6Cj4gICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPFJLMzM5OV9QRF9JRVA+Owo+ICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Y3J1IEFDTEtfSUVQPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBIQ0xL
X0lFUD47Cj4gKyAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX0lFUD47
Cj4gICAgICAgICAgICAgICAgICAgICAgcG1fcW9zID0gPCZxb3NfaWVwPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+ICAgICAgICAgICAgICAgICAg
fTsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

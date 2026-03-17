Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9138FFB5E93
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 00:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n6TsSucjOqOWaJ0nuT+KcVzHjdAFZ1S+opoiIQjALYg=; b=AxCMQd+iOLgaHOnnS393fNkxtg
	IGv3L32Jgz9pKwuoWLn5waQ0aj8gPmlHxliWlcEN96iX/1kftqVgP3dsv1hF0IBiOA0RgZm9CabfA
	8EoHPOHxG+Tuockk5cz4ZoxSp2QV7HJc54WQtWsqI/nby4AHmvmtSOKq5m3kpgdfont6uTXEIf9Wx
	Wp4ie6vHt+iFMr8zH5oONSYod7+APbesMnNt4yfcQEoj9V/Q3K4VqhCQd4saBzkDbLiO7dcdPFg+7
	WqQLnsOb8QrRYeAzTqNW7GCRi/WU3i70+779ettn3cv52tPgtrEAm6xjnPmFSG7xxEIWV40B4cuBc
	0CrGsd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2IPp-000000058rl-3btH;
	Tue, 17 Mar 2026 00:36:09 +0000
Received: from mail-m1031.netease.com ([154.81.10.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2IPm-000000058qs-2AWC;
	Tue, 17 Mar 2026 00:36:08 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372d36eb6;
	Tue, 17 Mar 2026 08:35:52 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260316073621.39027-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <96d6664a-5d6d-64b3-1999-b15579ff1aa4@rock-chips.com>
Date: Tue, 17 Mar 2026 08:35:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20260316073621.39027-1-linux.amoon@gmail.com>
X-HM-Tid: 0a9cf938725f09cckunma9077e0e407f16
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUweGlYZGBpOTRhNSBlKTU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cUT7gP9v69WpsBFTtIuAAaSFK2LHAQxbA+b2qLMh5V3b08DXBWksI99YAkTl4qAKFBFgbF3BMx24jBTLDkK4x7kJuBAzLSuzOJaLT4auWIChio3RSuJQwLnGfhpRvmREAh7bdr4wWNjm8e3D1rKTonbw4iTmRWLDThf3hVqLJdk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uFg8XXcHtxFALcYZA+0V2jzBhaeA7BFfLpChxVZJYMw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_173607_092466_F1BB3E7A 
X-CRM114-Status: GOOD (  16.34  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8xNiDQx8ba0rsgMTU6MzMsIEFuYW5kIE1vb24g0LS1wDoKPiBBZGQgc3VwcG9y
dHMtY2xrcmVxIGFuZCB0aGUgY29ycmVzcG9uZGluZyBwaW5tdXggY29uZmlndXJhdGlvbnMgZm9y
IFBDSWUKPiBBU1BNIEwxIHN1YnN0YXRlcyBvbiB0aGUgUm9jayA1QiwgNUIrIGFuZCA1VC4KPiBU
aGUgc3VwcG9ydHMtY2xrcmVxIGZsYWcgaW5mb3JtcyB0aGUgUENJZSBjb250cm9sbGVyIHRoYXQg
dGhlIGhhcmR3YXJlCj4gcm91dGluZyBmb3IgdGhlIENMS1JFUSMgc2lkZWJhbmQgc2lnbmFsIGlz
IHByZXNlbnQuIFRoaXMgZW5hYmxlcyBzdXBwb3J0Cj4gZm9yIFBDSWUgQVNQTSAoQWN0aXZlIFN0
YXRlIFBvd2VyIE1hbmFnZW1lbnQpIEwxIHN1YnN0YXRlcywgYWxsb3dpbmcgZm9yCj4gYmV0dGVy
IHBvd2VyIGVmZmljaWVuY3kuCj4gCj4gQ2M6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hp
cHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNv
bT4KPiAtLS0KPiBSb2NrNWIgc2NoZW1hdGljcy4KPiBbMV0gIGh0dHBzOi8vZGwucmFkeGEuY29t
L3JvY2s1LzViKy9kb2NzL2h3L3JhZHhhX3JvY2s1YnBfdjEuMl9zY2hlbWF0aWMucGRmCj4gdjI6
IGRyb3AgdGhlIGNsa3JlcSBwaW5jdHJsIGZvciBwY2llM3g0IGFzIHN1Z2dlZXN0ZWQgYnkgU2h3
YW4gTGluLgo+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAzMTExMTU1MDIu
NzM1My0xLWxpbnV4LmFtb29uQGdtYWlsLmNvbS8KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kgfCA2ICsrKystLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi01YnAtNXQu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0
LmR0c2kKPiBpbmRleCBiM2U3NmFkMmQ4Njk0Li5iZjRhMWQyZTU1Y2EzIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01
dC5kdHNpCgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+
CgpUaGFua3MuCgo+IEBAIC00NjgsNyArNDY4LDggQEAgbWFwMSB7Cj4gICAKPiAgICZwY2llMngx
bDAgewo+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gLQlwaW5jdHJsLTAgPSA8JnBj
aWUyXzBfcnN0PjsKPiArCXBpbmN0cmwtMCA9IDwmcGNpZTJfMF9yc3Q+LCA8JnBjaWUzMHgxbTFf
MF9jbGtyZXFuPjsKPiArCXN1cHBvcnRzLWNsa3JlcTsKPiAgIAlyZXNldC1ncGlvcyA9IDwmZ3Bp
bzQgUktfUEE1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAgCXZwY2llM3YzLXN1cHBseSA9IDwmdmNj
M3YzX3BjaWUyeDFsMD47Cj4gICAJc3RhdHVzID0gIm9rYXkiOwo+IEBAIC00NzYsNyArNDc3LDgg
QEAgJnBjaWUyeDFsMCB7Cj4gICAKPiAgICZwY2llMngxbDIgewo+ICAgCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gLQlwaW5jdHJsLTAgPSA8JnBjaWUyXzJfcnN0PjsKPiArCXBpbmN0cmwt
MCA9IDwmcGNpZTJfMl9yc3Q+LCA8JnBjaWUyMHgxbTBfY2xrcmVxbj47Cj4gKwlzdXBwb3J0cy1j
bGtyZXE7Cj4gICAJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCMCBHUElPX0FDVElWRV9ISUdI
PjsKPiAgIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDI+Owo+ICAgCXN0YXR1
cyA9ICJva2F5IjsKPiAKPiBiYXNlLWNvbW1pdDogZjMzOGU3NzM4Mzc4OWMwY2FlMjNjYTNkNDhh
ZGNjNWU5ZTEzN2UzYwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DA3C3ABC0
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTS0TE7+nlkI1LGOFL4Uz/9+sh8k9hAZmOJngnxw5lQ=; b=0c4UPRpZfDxKTr
	CRMLeaA1UHYGlSWpT08TB7z0NVnQntGDUF+xNWZEUIoedAnx7ucOjHuKmBCcjr8oCzkMDntzHwyw+
	rcOE1U4/l8wV/F/db7D13Ob3Q2p4AhuLr+mYhtKL15arnuMYXI/1Cymz//vkxTwJDk84CNXayiFfm
	t1pDR8Pj6yg7tHEjiVsNMS3EcIYhn9BYz0/Jp2d1iK2RUzwsQpACZAaUHdf4qc4fLOEIvMeNH3Yk2
	8LzFlvsyBBFvsyuLGl8k36+7d5A1t5kS0lL+fJuegE/+RI/TkSP8jn/WFny5rMq6lRkhDLVtC9+cC
	p3ebbnnEkhGAt5syXkUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD52n-00000001QHc-2p2N;
	Thu, 08 May 2025 17:28:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD50p-00000001Pu0-0Vw3;
	Thu, 08 May 2025 17:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=zVpWPkQC/BSrKmTaROIAJ2ktAZPNsmJUsbJbTHTQuig=; b=WVupt5vKzq+NYFhvA9EtHnjRUJ
	LD/oMvqGztz+HzkcvcY7CfKwH15pJTHlYCxA64rFsiaKm7VsWZIOl2HuKGbtrGd3MVKsknG4iEluO
	+WdSdlg4tfXeKr6j5zOXJ+saBgShePZHNs2fhsnCGto+3vjJI2LRdcpbw3PwEVOhlu+wvwODc9lhe
	V+ETisC8tJWY8eCSIreGGDyAD8HPhkKl84cdB1vm0//SUKPq6zRRoMJ1VPqK4T459u7HW5DiurHsB
	fmCP54Af1nCPFql81lIIY6XU3VdftiJKlhiQGiNJkww9kX+l/1BvkEHLaj6BIjgCFUm8GnAmDa4Qb
	I1dDMv9g==;
Received: from [61.8.144.177] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD50h-00086Y-9V; Thu, 08 May 2025 19:26:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Frank Wang <frank.wang@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Jonas Karlman <jonas@kwiboo.se>, Yao Zi <ziyao@disroot.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] phy: rockchip: naneng-combphy: Add RK3528 support
Date: Thu, 08 May 2025 19:26:13 +0200
Message-ID: <5349721.GXAFRqVoOG@phil>
In-Reply-To: <20250508135307.14726-1-ziyao@disroot.org>
References: <20250508134332.14668-2-ziyao@disroot.org>
 <20250508135307.14726-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_102623_158283_EB203C1D 
X-CRM114-Status: GOOD (  14.72  )
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

QW0gRG9ubmVyc3RhZywgOC4gTWFpIDIwMjUsIDE1OjUzOjA2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgWWFvIFppOgo+IFJvY2tjaGlwIFJLMzUyOCBpbnRlZ3JhdGVzIG9u
ZSBuYW5lbmctY29tYnBoeSB0aGF0IGlzIGFibGUgdG8gb3BlcmF0ZSBpbgo+IFBDSWUgYW5kIFVT
QjMgbW9kZS4gVGhlIGNvbnRyb2wgbG9naWMgaXMgc2ltaWxhciB0byBwcmV2aW91cyB2YXJpYW50
cyBvZgo+IG5hbmVuZy1jb21icGh5IGJ1dCB0aGUgcmVnaXN0ZXIgbGF5b3V0IGlzIGFwcGVyYW50
bHkgZGlmZmVyZW50IGZyb20gdGhlCj4gUkszNTY4IG9uZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZ
YW8gWmkgPHppeWFvQGRpc3Jvb3Qub3JnPgo+IC0tLQo+ICAuLi4vcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLW5hbmVuZy1jb21icGh5LmMgICAgfCAxODAgKysrKysrKysrKysrKysrKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNzkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYyBi
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gaW5k
ZXggMWQxYzc3MjM1ODRiLi43YzkyZjdhYzNjN2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IEBAIC0yMCw3ICsyMCw0
MCBAQAo+ICAjZGVmaW5lIFJFRl9DTE9DS18yNU1IegkJCSgyNSAqIEhaX1BFUl9NSFopCj4gICNk
ZWZpbmUgUkVGX0NMT0NLXzEwME1IegkJKDEwMCAqIEhaX1BFUl9NSFopCj4gIAo+IC0vKiBDT01C
TyBQSFkgUkVHICovCj4gKy8qIFJLMzUyOCBDT01CTyBQSFkgUkVHICovCj4gKyNkZWZpbmUgUksz
NTI4X1BIWVJFRzYJCQkJMHgxOAo+ICsjZGVmaW5lICBSSzM1MjhfUEhZUkVHNl9QTExfS1ZDTwkJ
R0VOTUFTSygxMiwgMTApCj4gKyNkZWZpbmUgICBSSzM1MjhfUEhZUkVHNl9QTExfS1ZDT19WQUxV
RQkJMHgyCj4gKyNkZWZpbmUgIFJLMzUyOF9QSFlSRUc2X1NTQ19ESVIJCQlHRU5NQVNLKDUsIDQp
Cj4gKyNkZWZpbmUgICBSSzM1MjhfUEhZUkVHNl9TU0NfVVBXQVJECQkwCj4gKyNkZWZpbmUgICBS
SzM1MjhfUEhZUkVHNl9TU0NfRE9XTldBUkQJCTEKPiArI2RlZmluZSBSSzM1MjhfUEhZUkVHNDAJ
CQkJMHgxMDAKPiArI2RlZmluZSAgUkszNTI4X1BIWVJFRzQwX1NTQ19FTgkJCUJJVCgyMCkKPiAr
I2RlZmluZSAgUkszNTI4X1BIWVJFRzQwX1NTQ19DTlQJCUdFTk1BU0soMTAsIDApCj4gKyNkZWZp
bmUgICBSSzM1MjhfUEhZUkVHNDBfU1NDX0NOVF9WQUxVRQkJMHgxN2QKPiArI2RlZmluZSBSSzM1
MjhfUEhZUkVHNDIJCQkJMHgxMDgKPiArI2RlZmluZSAgUkszNTI4X1BIWVJFRzQyX0NLRFJWX0NM
S19TRUwJCUJJVCgyOSkKPiArI2RlZmluZSAgIFJLMzUyOF9QSFlSRUc0Ml9DS0RSVl9DTEtfUExM
CQkwCj4gKyNkZWZpbmUgICBSSzM1MjhfUEhZUkVHNDJfQ0tEUlZfQ0xLX0NLUkNWCTEKPiArI2Rl
ZmluZSAgUkszNTI4X1BIWVJFRzQyX1BMTF9MUEZfUjFfQURKCQlHRU5NQVNLKDEwLCA3KQo+ICsj
ZGVmaW5lICAgUkszNTI4X1BIWVJFRzQyX1BMTF9MUEZfUjFfQURKX1ZBTFVFCTB4OQo+ICsjZGVm
aW5lICBSSzM1MjhfUEhZUkVHNDJfUExMX0NIR1BVTVBfQ1VSX0FESglHRU5NQVNLKDYsIDQpCj4g
KyNkZWZpbmUgICBSSzM1MjhfUEhZUkVHNDJfUExMX0NIR1BVTVBfQ1VSX0FESl9WQUxVRSAweDcK
PiArI2RlZmluZSAgUkszNTI4X1BIWVJFRzQyX1BMTF9LVkNPX0FESgkJR0VOTUFTSygyLCAwKQo+
ICsjZGVmaW5lICAgUkszNTI4X1BIWVJFRzQyX1BMTF9LVkNPX0FESl9WQUxVRQkweDAKPiArI2Rl
ZmluZSBSSzM1MjhfUEhZUkVHODAJCQkJMHgyMDAKPiArI2RlZmluZSAgUkszNTI4X1BIWVJFRzgw
X0NUTEVfRU4JCUJJVCgxNykKPiArI2RlZmluZSBSSzM1MjhfUEhZUkVHODEJCQkJMHgyMDQKPiAr
I2RlZmluZSAgUkszNTI4X1BIWVJFRzgxX0NEUl9QSEFTRV9QQVRIX0dBSU5fMlgJQklUKDUpCj4g
KyNkZWZpbmUgIFJLMzUyOF9QSFlSRUc4MV9TTEVXX1JBVEVfQ1RSTAkJR0VOTUFTSygyLCAwKQo+
ICsjZGVmaW5lICAgUkszNTI4X1BIWVJFRzgxX1NMRVdfUkFURV9DVFJMX1NMT1cJMHg3Cj4gKyNk
ZWZpbmUgUkszNTI4X1BIWVJFRzgzCQkJCTB4MjBjCj4gKyNkZWZpbmUgIFJLMzUyOF9QSFlSRUc4
M19SWF9TUVVFTENICQlHRU5NQVNLKDIsIDApCj4gKyNkZWZpbmUgICBSSzM1MjhfUEhZUkVHODNf
UlhfU1FVRUxDSF9WQUxVRQkweDYKPiArI2RlZmluZSBSSzM1MjhfUEhZUkVHODYJCQkJMHgyMTgK
PiArI2RlZmluZSAgUkszNTI4X1BIWVJFRzg2X1JURVJNX0RFVF9DTEtfRU4JQklUKDE0KQoKSSdk
IHRoaW5rIHN0YXlpbmcgd2l0aCBvbmUgbGF5b3V0IHdvdWxkIGJlIGJlc3QsIHNvIG5vdCBkb2lu
ZyB0aGlzCmluZGVudGF0aW9uIGhlcmUuIEluc3RlYWQgbWF5YmUgZm9sbG93IHRoZSBvdGhlciBv
bmVzIGxpa2UKCiNkZWZpbmUgUkszNTI4X1BIWVJFRzYJCQkJMHgxOAojZGVmaW5lIFJLMzUyOF9Q
SFlSRUc2X1BMTF9LVkNPCQlHRU5NQVNLKDEyLCAxMCkKI2RlZmluZSBSSzM1MjhfUEhZUkVHNl9Q
TExfS1ZDT19WQUxVRQkJMHgyCiNkZWZpbmUgUkszNTI4X1BIWVJFRzZfU1NDX0RJUgkJCUdFTk1B
U0soNSwgNCkKI2RlZmluZSBSSzM1MjhfUEhZUkVHNl9TU0NfVVBXQVJECQkwCiNkZWZpbmUgUksz
NTI4X1BIWVJFRzZfU1NDX0RPV05XQVJECQkxCgojZGVmaW5lIFJLMzUyOF9QSFlSRUc0MAkJCQkw
eDEwMAojZGVmaW5lIFJLMzUyOF9QSFlSRUc0MF9TU0NfRU4JCQlCSVQoMjApCiNkZWZpbmUgUksz
NTI4X1BIWVJFRzQwX1NTQ19DTlQJCUdFTk1BU0soMTAsIDApCiNkZWZpbmUgUkszNTI4X1BIWVJF
RzQwX1NTQ19DTlRfVkFMVUUJCTB4MTdkCgouLi4KCmkuZS4gcmVnaXN0ZXIgKyBiaXRzICsgYmxh
bmsgbGluZQoKb3RoZXIgdGhhbiB0aGF0CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

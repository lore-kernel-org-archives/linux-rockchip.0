Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D01F2C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 17:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxlsenONKbyjfLNoTPGLwhLB/DO4SXTeFjNxeJydoxo=; b=fLXrYeaDWd2yRh
	As2R+ujy/vfN7ci43SZz0kaND7OttviXWiXzDWey9Iu3HuQRPX4OOIGtCcg0/6zQOR2DaXe2HozqY
	oPzbWPI2U0YZLvH5YRFgbAbRoMWttK6nQ+Wv+0caEZQwb9IOe+itwImzzAIBwu2pqfbFlfmEXYE65
	8nVcwU7eq0/XqO394HqCiHZFn2CYoDHVdDQCN6SuUxsjszqFkCEif6YH3dRtmVforUmBu37QoTib9
	IEJ1srymjfv9t0sp1vjCyYFJli1h3g64HgdPW8LlIQmsso+PvMUpgKFXf2QxQX+mRUp9FNLt/Zi67
	V3XkiS8a99R8A2BglFuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD4wK-00000001O3r-0eS2;
	Thu, 08 May 2025 17:21:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD4qr-00000001MA4-0YRt;
	Thu, 08 May 2025 17:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=b+ZizUotZK/18JQ4QX3F6gdp6ns7bch/VC6ViFwIDYA=; b=x/vmDNAvCAAs+eu7Ag26+PGRjQ
	uPnX3w4LUrTOG4lTqzHXTl2DnEQ2rXTVVDiWHPeIjepWDFpsiKAzrXHv4T+P4c+6fID8zNtKRM1G6
	djVR6xBgD6v4fD6Xqt7LynBWNJgy0Mx1i9FCBKL/L4EZSw6PK8SQBe0xPyIIWGIXtfD25io88xL+Z
	c0MHOadpyo/aBsrjTe2pu9l/4gXpif2I6v2jaEiEtBfMJWWw5po2ImxFJllX6KlfvPxtpv8nT2dqI
	pUEOxephowVfF+I0PWQQg5orL9tTaFyO89uaoirRY6qY02TTQTc9mbgyzMxLFFQWUeZhSoXpPlERD
	rjK/Hrkg==;
Received: from [61.8.144.177] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD4qg-0007uM-1c; Thu, 08 May 2025 19:15:54 +0200
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
Subject: Re: [PATCH 2/5] dt-bindings: phy: rockchip: naneng-combphy: Add RK3528
 variant
Date: Thu, 08 May 2025 19:15:52 +0200
Message-ID: <6254524.DvuYhMxLoT@phil>
In-Reply-To: <20250508134332.14668-4-ziyao@disroot.org>
References: <20250508134332.14668-2-ziyao@disroot.org>
 <20250508134332.14668-4-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_101605_186756_F5E7CF47 
X-CRM114-Status: GOOD (  12.13  )
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

QW0gRG9ubmVyc3RhZywgOC4gTWFpIDIwMjUsIDE1OjQzOjMwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgWWFvIFppOgo+IFJvY2tjaGlwIFJLMzUyOCBzaGlwcyBvbmUgbmFu
ZW5nLWNvbWJwaHkgd2hpY2ggb3BlcmF0ZXMgaW4gZWl0aGVyIFBDSWUKPiBvciBVU0IgMyBtb2Rl
LiBEb2N1bWVudCBpdHMgY29tcGF0aWJsZSBzdHJpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFv
IFppIDx6aXlhb0BkaXNyb290Lm9yZz4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgoKPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1y
b2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sIHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hp
cC1uYW5lbmctY29tYnBoeS55YW1sCj4gaW5kZXggODg4ZTZiMmFhYzVhLi5iZDA2NDc1NGU1Mzcg
MTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwKPiBAQCAt
MTIsNiArMTIsNyBAQCBtYWludGFpbmVyczoKPiAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxl
Ogo+ICAgICAgZW51bToKPiArICAgICAgLSByb2NrY2hpcCxyazM1MjgtbmFuZW5nLWNvbWJwaHkK
PiAgICAgICAgLSByb2NrY2hpcCxyazM1NjItbmFuZW5nLWNvbWJwaHkKPiAgICAgICAgLSByb2Nr
Y2hpcCxyazM1NjgtbmFuZW5nLWNvbWJwaHkKPiAgICAgICAgLSByb2NrY2hpcCxyazM1NzYtbmFu
ZW5nLWNvbWJwaHkKPiBAQCAtMTAyLDcgKzEwMyw5IEBAIGFsbE9mOgo+ICAgICAgICBwcm9wZXJ0
aWVzOgo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgICBjb250YWluczoKPiAtICAg
ICAgICAgICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU4OC1uYW5lbmctY29tYnBoeQo+ICsgICAgICAg
ICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1MjgtbmFuZW5nLWNvbWJw
aHkKPiArICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LW5hbmVuZy1jb21icGh5Cj4gICAg
ICB0aGVuOgo+ICAgICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAgIHJlc2V0czoKPiAKCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

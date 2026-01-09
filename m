Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3401D26D94
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SsSg2g+c0k2uZYg2LEB0QKPxPxueufgvTeKGhdGyVI=; b=JdlPe2Z1ov4iQ7
	Moq/WIsq4uPv1ex3+5eVx+gHRozIEmgz2qNCoag6cbHoWFPGgyN46CS8HayeMoVK76hUW5A1ozAUY
	PmsfuHlm7Tf360rDV85SmLYZAGMc1zv07+SH9w/tGeiO5RxR3Yq2/gH4FHf0xB8Mgo5DtAU888qF+
	23FE8tONp63SAC85LyJtfbE9G+L3sZ4qh2chESPI8XFUJCFbZbsD6qK61LcQx8GxNy4S2Ti36r7Z7
	xQGIoZIVJ1udT8P5wX2BGlrFgp2J7mBjKaZyssI5r9PJP6TRrux0UnTtUf1ffHtyn1h1LDoJPiZZW
	ZfqRsTbVrRcynRa5zJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veHj6-00000002ub0-0EFl;
	Fri, 09 Jan 2026 19:00:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veHj2-00000002uaE-2VDt;
	Fri, 09 Jan 2026 19:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OeweFw3yUXjrRcyiy2cr3jMXmJJei7ulqdxDcunsWNk=; b=NKlO+Yr+9H5IHftz7yq17xYjze
	1V/k3oO6vssk9e6UPN/t+W5R+d5HhBViDw5o2QDzbVwTqG1H8SS9dQDNR6tEFlGC0AqAKQd5O3U2S
	Cy0Q+q8WYkcZg/Hglpu4Fj4WCv+YmkDKtIiJneKxADsbBYE77MdVoP4xgEK/vTh6hqXH+o+2fCiVY
	qLtLLH5y9E5B0meVXB1wFaqhdcd2mWo4wNVr/AGKzjs6XahWRQ/iwsb0RSiCgfVR0xZc9EfMQS/Nk
	QaZD8DGZQqO5V/siiMsLahLQChTLm8DoGfnGCAZ39q0l2eB/zqob5NQ3n9EtNDAMpa29igzz2ys7x
	A5pi1cZw==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veHim-001fb6-87; Fri, 09 Jan 2026 20:00:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 David Wu <david.wu@rock-chips.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next] dt-bindings: net: rockchip-dwmac: Allow "dma-coherent"
Date: Fri, 09 Jan 2026 20:00:28 +0100
Message-ID: <8189811.4vTCxPXJkl@phil>
In-Reply-To: <20260108225318.1325114-2-robh@kernel.org>
References: <20260108225318.1325114-2-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_110044_681400_D8AEC582 
X-CRM114-Status: GOOD (  13.55  )
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

QW0gRG9ubmVyc3RhZywgOC4gSmFudWFyIDIwMjYsIDIzOjUzOjE4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmcgKEFybSk6Cj4gVGhlIEdNQUMgaXMgY29o
ZXJlbnQgb24gUkszNTc2LCBzbyBhbGxvdyB0aGUgImRtYS1jb2hlcmVudCIgcHJvcGVydHkuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KClJl
dmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sIHwg
MiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMu
eWFtbAo+IGluZGV4IGQxNzExMjUyN2RhYi4uODBjMjUyODQ1MzQ5IDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMueWFtbAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdt
YWMueWFtbAo+IEBAIC04NSw2ICs4NSw4IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgLSBjbGtf
bWFjX3JlZm91dAo+ICAgICAgICAgIC0gY2xrX21hY19zcGVlZAo+ICAKPiArICBkbWEtY29oZXJl
bnQ6IHRydWUKPiArCj4gICAgY2xvY2tfaW5fb3V0Ogo+ICAgICAgZGVzY3JpcHRpb246Cj4gICAg
ICAgIEZvciBSR01JSSwgaXQgbXVzdCBiZSAiaW5wdXQiLCBtZWFucyBtYWluIGNsb2NrKDEyNU1I
eikKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

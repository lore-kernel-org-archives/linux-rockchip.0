Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D07CEBF83
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 19:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elj8HhZltD5Y24W4WDWxmo4aqB/pRxZ/P78IeJyh4gc=; b=oBd2p4NCm4d10X
	dzDNkNuHMQfwqhz6bE2UMWTgLAf9X8C1WDqTynkSIkAyrBmjpd46ATiNUf6nIQa330T7k6zbw1j+a
	n5yiDinsgmst8+bLoaAEcUSzSjUa949gNtYcL500UtjmUVLJSw+QYyj1dPduoMKuzs6FGmgHH1NsX
	9uCKF0sMPyPcZfxv4LeN9gMlqiLlUlhnVeRga9HGuNKkxJDGDjKsS8BAjTUXwpnSASopT4bxCirTd
	QbeiYMlesq74dXdCLOER7KKSZwbaY1dIcH8Ou2j8gCe0Xc/polrJ9SmcesdkaqQn9A2hHlak6XeTa
	4lhNGeBljjKHGGKCm9Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKMKr-0000000E26w-1C38;
	Sat, 15 Nov 2025 19:53:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKMKo-0000000E26Q-1C6k;
	Sat, 15 Nov 2025 19:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rCnLinFSCuqBJDyfqX+tMbAqkI3HnLPnZBm6nawq29I=; b=PlMCL/QMATDToyk283lXVcUG4b
	dg+oiL5O+e164xittfMKOqOLXsDOV7rVdOi8R4/OqDeIqWxu1kwFuNvLTZBzyvDuzwhMbvePqHLsd
	FJWRlOuR9JPf7q4E2j/dPE+1Qn6bcCcLjWyxh5QRU2fhMDQr29apUYxBOM+qkFmAC1tSl9hjUbouJ
	L7GSsjr3MmakPY100yy6ybzhGJKkJyll8iDT8YgXxG/lbkINjlFCHLG0N+N8xxSHi1bZ25ASWFjOR
	tZEH2yWUPSVe3Ysli+SEtYm+fJLX1X+QC3nn9C9M7dOccrpaejKhFPHleaBXiP+osr8py2gJiyPVP
	YS4RezbA==;
Received: from i53875bd0.versanet.de ([83.135.91.208] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vKMKf-0000BN-5F; Sat, 15 Nov 2025 20:53:13 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: Re: (subset) [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK
 DshanPi A1
Date: Sat, 15 Nov 2025 20:53:12 +0100
Message-ID: <2251982.Mh6RI2rZIc@diego>
In-Reply-To: <20251115150010.1052575-1-amadeus@jmu.edu.cn>
References: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
 <20251115150010.1052575-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_115322_366736_CC830D04 
X-CRM114-Status: GOOD (  11.34  )
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

SGksCgpBbSBTYW1zdGFnLCAxNS4gTm92ZW1iZXIgMjAyNSwgMTY6MDA6MTAgTWl0dGVsZXVyb3DD
pGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+ID4gQXBwbGllZCwgdGhhbmtz
IQo+IAo+ID4gWzQvNl0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeGVzIHN1cHBseSBmb3IgMTAw
QVNLIERzaGFuUGkgQTEKPiA+ICAgICAgIGNvbW1pdDogNjIxYmIwOWE3NmZhMTJhOWU2MWM5ZDc0
NWFlNTI0ZGI4NmFiZjc4MQo+IAo+IFNvcnJ5LCBJIGRvbid0IGtub3cgaWYgdGhpcyBpcyBhIHBy
b2JsZW06Cj4gCj4gVGhlIGNvbW1pdCBtZXNzYWdlIHN0YXJ0ZWQgd2l0aCBhbiBleHRyYSAiPiIu
Cj4gCj4gPkZyb20gdGhlIHNjaGVtYXRpYywgdGhlIHN1cHBseSBvZiBFUzgzODggY2hpcCBhbmQg
dGhlIHZtbWMtc3VwcGx5Cj4gb2YgU0QgY2FyZCBib3RoIG9yaWdpbmF0ZSBmcm9tIHRoZSBWQ0Mz
VjNfUzAgcmVndWxhdG9yLCBmaXggaXQuCj4gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aWQ9
NjIxYmIwOWE3NmZhMTJhOWU2MWM5ZDc0NWFlNTI0ZGI4NmFiZjc4MQoKdGhhbmtzIGZvciBub3Rp
Y2luZyB0aGlzLiBJJ3ZlIG5vdyBlZGl0ZWQgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHBsYWNlCnRv
IGZpeCB0aGF0LgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED30CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 11:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlfdOiSXlOUK8rjnYOeEg1qIHzRKikdfp7Pvnu1sDzQ=; b=YO5/5rsY7MYFvE
	WPq7Q/1PlLE794cFK/7O5469Am+9hHBccFVjsslk4f4ilx8WmFZiX/ofp7l/MiCLyqSYecpWPOOEd
	zRRcUi0bWGe77K+qM+eR6EXNDuMeSML4gZC0bB+2vBW+e1wLAV4fLXX1k6Vsv4A8Mt1hS4la/eAPp
	buCGORr+/rc+nP4kCboxEMDo4/M3qBTJBXiHn8VdIZoMurSbAO3xjG4/KYTpnWPIJNmUbPBbJRiRt
	/1clsn11o4kdIHGBRAJImMpgqA85Y8H/51LVe5Hfo86Iu2cEsM3L7vpEXvmbSJqGGTXSxaAuGpp/p
	3gbokpJcP5osBdvhZe2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8ht-000000063gv-1gtH;
	Sun, 24 Aug 2025 11:16:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8PL-000000061se-1wxl;
	Sun, 24 Aug 2025 10:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SvhkTLwnsyU6LHTKXKMHL524UpqTw6jFMLYcBdGhtHU=; b=a4kTDiris9yS3x12O7/dXFjzBQ
	mNtLHCnN4WqJdpm+eNdWPbTyLsNyWsRq5b8cslO5gYhxfU0jQtFdSC6WqV1Cyw4ZPbqe+LKXAE+5K
	r7HRh4OjrJ4n7PJM6X0GEvHjddsnMTGyqC7LPYN48Xzmr7j0gBDchFpMNscsM8ghogIMeIWIELLc5
	/IDma2X/PeG/q/HJ5V7J/nL/2zHIxXGyumfeeQVjwWgpHIX2qd6KIP1eRc6ZNh0xzRDbpZpx5u9Jg
	1c8Ffu4QhIKVDJSwpnh0TgGvs/Vv7lGJfyC56s9sNpPs+deAnQM/w8VEd2BTuaQhVJayOm0yQf5pJ
	b/GPTOZQ==;
Received: from [62.245.128.201] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq8PJ-0005c9-Ne; Sun, 24 Aug 2025 12:57:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hsun Lai <i@chainsx.cn>,
 Alex Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: stable+noautosel@kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: Fix wifi interrupts flag on
 Sakura Pi RK3308B
Date: Sun, 24 Aug 2025 12:57:05 +0200
Message-ID: <16812972.uLZWGnKmhe@phil>
In-Reply-To: <175603280229.3445205.18144135063810636432.b4-ty@sntech.de>
References: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
 <175603280229.3445205.18144135063810636432.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_035707_499868_D7F2D46C 
X-CRM114-Status: GOOD (  12.86  )
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

QW0gU29ubnRhZywgMjQuIEF1Z3VzdCAyMDI1LCAxMjo1NDo0MyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+IAo+IE9uIE1vbiwgMTggQXVnIDIw
MjUgMTE6MDQ6NDYgKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBHUElPX0FD
VElWRV94IGZsYWdzIGFyZSBub3QgY29ycmVjdCBpbiB0aGUgY29udGV4dCBvZiBpbnRlcnJ1cHQg
ZmxhZ3MuCj4gPiBUaGVzZSBhcmUgc2ltcGxlIGRlZmluZXMgc28gdGhleSBjb3VsZCBiZSB1c2Vk
IGluIERUUyBidXQgdGhleSB3aWxsIG5vdAo+ID4gaGF2ZSB0aGUgc2FtZSBtZWFuaW5nOiBHUElP
X0FDVElWRV9ISUdIID0gMCA9IElSUV9UWVBFX05PTkUuCj4gPiAKPiA+IENvcnJlY3QgdGhlIGlu
dGVycnVwdCBmbGFncywgYXNzdW1pbmcgdGhlIGF1dGhvciBvZiB0aGUgY29kZSB3YW50ZWQgc2Ft
ZQo+ID4gbG9naWNhbCBiZWhhdmlvciBiZWhpbmQgdGhlIG5hbWUgIkFDVElWRV94eHgiLCB0aGlz
IGlzOgo+ID4gICBBQ1RJVkVfSElHSCAgPT4gSVJRX1RZUEVfTEVWRUxfSElHSAo+ID4gCj4gPiBb
Li4uXQo+IAo+IEFwcGxpZWQsIHRoYW5rcyEKPiAKPiBbMi8yXSBhcm02NDogZHRzOiByb2NrY2hp
cDogRml4IEJsdWV0b290aCBpbnRlcnJ1cHRzIGZsYWcgb24gTmVhcmRpIExCQTMzNjgKPiAgICAg
ICBjb21taXQ6IGM5Zjk4NmE1NGQ0MDMxYTliOWRmZjFlYjYxNmIwNzk2YWEyOGM3MzAKCldhaXRp
bmcgYSBiaXQgbW9yZSBmb3IgcGF0Y2gxLCB0byBwb3NzaWJseSBnZXQgc29tZSB0ZXN0aW5nLgoK
CkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

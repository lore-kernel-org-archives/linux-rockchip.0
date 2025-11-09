Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26BA8CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 22:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zx5ebkc9Eu+vz5VReY2qFm7kgPtpI5R7mZhotLJqzk0=; b=QdH4aQAqBhZ/hG
	vflfDdUdEM/FVyx9lHdJ0gHupDvgGBYQARlUuYq8Z3ZK05eBkRGcOgcwtPQRy3nw7zbdRc8ZPtHnl
	crhWbaArkGnqIkPLEEZuAIexHPYWd7raMEuqVvO+R2sdL763+EE6LFkDPEAInRa6YGHuCgvHXsUqc
	N8DWuwpMl9u4MPdRIW3Jy6aDJEthST21DS2bVqbup7DFSBsDb99ofjsBmzpkTnoX0Qv3bYM8Hcxa3
	ypWWGlJ0z6mpht18F7nhQOgxCXZNUatdHt+SH+WYgR7lDNEqFLI745f0xQ2gmCfPy66T5QwNR+dKZ
	oPPPbmOTrf692DE3gaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIDiG-00000004Qm3-3CvV;
	Sun, 09 Nov 2025 22:16:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIDiE-00000004Qkg-1qH7;
	Sun, 09 Nov 2025 22:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=byT23yRuymPPdxIdTw9swgQHBmcIsr3XjUFDrG55fV8=; b=UeTugOV+E0hXGyFevS5N0iiGGy
	Z04TlC1xumdZH+nmT/wlZcT6VB2EYFmR5T6N9pMYBtx76N4ewTk6uMCuHCsiWKrcR7XySmYklHaMC
	hHfkllprfyx2azRK9MI2rzFID9QWqakDL9f1eOVT8TS9jPoT337W+xY/HjDHO9ieBL5qCUzrPvBgf
	X9eLxHb7W+PcihWt40WJDr/4r2+jbqR8aUuVVwzuOvHzKgV20FBx3jq7hJiLizl94tWjQIeuJ4G5D
	by/ZGccOPc4ibNr6sXwPMx4McXn/3OHYx/1i/E0HK7JB9sMgWWwefHd1UP2X2WbX1RaYGCmouKCjg
	evGZ3JHw==;
Received: from i53875a5e.versanet.de ([83.135.90.94] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vIDhv-0007Wr-0V; Sun, 09 Nov 2025 23:16:23 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: hrdl <git@hrdl.eu>, phantomas <phantomas@phantomas.xyz>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Simplify usb-c-connector port on
 rk3566-pinenote
Date: Sun, 09 Nov 2025 23:16:22 +0100
Message-ID: <5024969.GXAFRqVoOG@diego>
In-Reply-To: <a726fac9-afe5-4639-b06a-4bccc256d98f@kernel.org>
References: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
 <20251109-rk3566-pinenote-dt-fixes-upstream-v1-1-ed38d200cc04@cknow-tech.com>
 <a726fac9-afe5-4639-b06a-4bccc256d98f@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_141642_498336_2B29957B 
X-CRM114-Status: GOOD (  14.91  )
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

QW0gU29ubnRhZywgOS4gTm92ZW1iZXIgMjAyNSwgMTg6Mzc6MjYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+IE9uIDA5LzExLzIwMjUg
MTg6MDUsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPiBUaGUgVVNCLUMgY29ubmVjdG9yIG9u
IHRoZSBQaW5lTm90ZSBoYXMgb25seSAxIHBvcnQsIHNvIHRoZXJlJ3Mgbm8gbmVlZAo+ID4gZm9y
IGEgJ3BvcnRzJyBub2RlIHdpdGggYWRkcmVzcy0vc2l6ZS1jZWxscyBwcm9wZXJ0aWVzIGFzIGEg
c2luZ2xlCj4gPiAncG9ydCcgbm9kZSBzdWZmaWNlcy4KPiA+IAo+ID4gVGhpcyBmaXhlcyB0aGUg
Zm9sbG93aW5nIERUIHZhbGlkYXRpb24gaXNzdWU6Cj4gPiAKPiA+ICAgV2FybmluZyAoZ3JhcGhf
Y2hpbGRfYWRkcmVzcyk6IC9pMmNAZmU1YzAwMDAvdGNwY0A2MC9jb25uZWN0b3IvcG9ydHM6Cj4g
PiAgICAgZ3JhcGggbm9kZSBoYXMgc2luZ2xlIGNoaWxkIG5vZGUgJ3BvcnRAMCcsCj4gPiAgICAg
I2FkZHJlc3MtY2VsbHMvI3NpemUtY2VsbHMgYXJlIG5vdCBuZWNlc3NhcnkKPiAKPiBUaGlzIGlz
IG5vdCBhIERUIHZhbGlkYXRpb24sIGJ1dCBEVEMgd2FybmluZyB3aGljaCB3ZSBkbyBub3QgcmVh
bGx5IGZpeC4KClRoYXQgaXMgZ29vZCB0byBrbm93LiBJcyB0aGUgc2FtZSB0cnVlIGZvciBvdGhl
ciBkdGMgd2FybmluZ3M/CgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0447D5B16E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 11:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tuLyBmVN+pIC8T/m0duxBCYsISM5drGxrngFeYfTKE=; b=zGFCYwY1JGP0En
	WJLOyC5+PoFoJo4yxWGuOu8XDDSHIAqStfUGAN7zlVXZvVSDh0dTaYaqvsV/4ZOwLQKgPOTArW/7W
	2Cftsh47ncYO/54fsSFsTxMaLE/vrEWKKCZ84XpvRbMCUZIE0O6Cb89l7R+01+6BK1OVmeDEaBzau
	IlX36TlEdZIOvnAZjdEgqR6mUIDZGEBS52nkiPWLrDwKncwWyqgsWXEKVGkZ7Ce2kd1rXQXtZrU/S
	gZI4eq6f3Jvcw0klbFMrztdZanjxeqmwpp4Nt2gU6JZ/znQQ2Z4E51RPdoSANmhslXyZ58JyvcIhm
	lDPBGjMDPpSgKMlUre/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6uF-00000003XSF-0uGp;
	Mon, 15 Dec 2025 11:38:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6uC-00000003XRa-2Cyf;
	Mon, 15 Dec 2025 11:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gYPdjCs2I4pKStwB8vwr/UnSwkBP0xQatRIbmAK/KFA=; b=OdCBfSVEdv2ReAg+WKWx43rNzw
	zcUqPS79qXRZQ7rP82AHOeQJ+ncOzDbBwLM35SE2VJAQ64T5tEd7NH4cInw4KoYGyAnTiDm4UdPfA
	UkAUmCuhbZqV3nTd/Ix2Rs0xjLGdy2Zb6I+matGxiVOM0EXd1vaBcx5R7tKwo9WfUBFHZ+p2BKiRG
	xgazN6dei/Fi1iQupd/lK4pP+xsJUNtRG2zq8eU63V8Lzb5GACnF3Wax9pwiyXIHpQle/fwAsqAnR
	/Nvczwt37mvB+Wm/pSFCcw7fvR6P0E69z/Vsk4gbx5Ja2TrI2YY8nVf3rqHBK1xAjzkcr2CxCF4Av
	BCy7klPQ==;
Received: from [192.76.154.237] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV6uA-0000CP-HC; Mon, 15 Dec 2025 12:38:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>,
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>,
 Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v5 3/4] arm64: dts: rockchip: Add magnetometer sensor to Pinephone
 Pro
Date: Mon, 15 Dec 2025 12:38:17 +0100
Message-ID: <7420522.MhkbZ0Pkbq@phil>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-3-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
 <20251124-ppp_light_accel_mag_vol-down-v5-3-f9a10a0a50eb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_033820_594162_AC4D094D 
X-CRM114-Status: GOOD (  12.42  )
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

QW0gRGllbnN0YWcsIDI1LiBOb3ZlbWJlciAyMDI1LCAwNDo0NzowMiBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIFJ1ZHJha3NoYSBHdXB0YSB2aWEgQjQgUmVsYXk6Cgo+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyB8IDE1
ICsrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9u
ZS1wcm8uZHRzCj4gaW5kZXggZjhjNzRiNDNhZTlmLi4wMzcyMWQ3MTc2NmMgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJv
LmR0cwo+IEBAIC01NTMsNiArNTUzLDIxIEBAIG1wdTY1MDBANjggewo+ICAJfTsKPiAgfTsKPiAg
Cj4gKyZpMmM0IHsKPiArCWFmODEzM2o6IGNvbXBhc3NAMWMgewo+ICsJCWNvbXBhdGlibGUgPSAi
dm9sdGFmaWVsZCxhZjgxMzNqIjsKPiArCQlyZWcgPSA8MHgxYz47Cj4gKwkJcmVzZXQtZ3Bpb3Mg
PSA8JmdwaW8xIFJLX1BBMSBHUElPX0FDVElWRV9MT1c+OwoKcmVzZXQtZ3Bpb3MgYmVsb3cgZHZk
ZC0qCgpBbmQgZm9yIGNvbXBsZXRlbmVzcyBzYWtlLCB5b3UgcHJvYmFibHkgd2FudCB0byBhbHNv
IGFkZCBhIHNpbXBsZQpwaW5jdHJsIGVudHJ5Cgo+ICsJCWF2ZGQtc3VwcGx5ID0gPCZ2Y2NfM3Yw
PjsKPiArCQlkdmRkLXN1cHBseSA9IDwmdmNjXzF2OD47Cj4gKwo+ICsJCW1vdW50LW1hdHJpeCA9
Cj4gKwkJCSIwIiwgIjEiLCAiMCIsCj4gKwkJCSItMSIsICIwIiwgIjAiLAo+ICsJCQkiMCIsICIw
IiwgIjEiOwo+ICsJfTsKPiArfTsKPiArCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4147CCA470
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 07:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMPun7LcuI5xR/Hskg12aa85WRb5kNgnyCMZn3Adulg=; b=vcSlXfTI8/Frgq
	U98CNvLY0L7phWtYYRV0g/eSvHTW5jc6eO9w6uT5/XTQvbg9rwT8mQvxOTRjG9SMOndjBRmUoF0XS
	UJ5zFa3IrdEkJKw+VVmNzVLuC2MivBc4tU+O+YgCfsOhgnKz7MGU85S4MYHJ6FHDV4FvNGlrjMz8g
	D2r5TV4im+qN/6x88HsRBdIJmdOYMZk20u1nIz9AvFfzNvjUWWU2JBl4rEhX2Cc/WE0/kgrTFYb0s
	aCOnGlWMTf17FWvqdhYmJT2ELL4nBC4slEvXndW0g4p9/ThOUHYTtyfcFdQJU4DN8ic38vmEqJ3Q5
	VxvhN/H5iLShVJ4Pf0RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Pu-00000001cg2-1FHU;
	Mon, 29 Sep 2025 07:35:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Pn-00000001cag-2RDU;
	Mon, 29 Sep 2025 07:35:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1998E62319;
	Mon, 29 Sep 2025 07:35:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DFE7C4AF0B;
	Mon, 29 Sep 2025 07:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759131313;
	bh=Bay7gvRD8WEKKONQKFBF0O+fwmVm+YlEq+tKHT0KRKA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CaAg0DaBk5igaM4TpFf1Au1liTovydHaKRSmeHMjrQndyPaQw//SrhK55m5PfGPFT
	 Y75bhR+ulDCix/+e3cjFIVBgyA2kbATTNzy3Y88lLyyHBzU1KzM0HAVhmH2DiLRj1+
	 rKIcE+yKlSGYg5K8mEYBKrqrRboZ2XsALfrL9mEzDn4omnmMNRjWiLbt/2YcFxn2bf
	 PuNUTZodimMQ/ssoCXIg/K+5+ruIhXOFR8qVHdx/oycZZ6aXiYpFxv4jtJFFG741pS
	 D6IqXKMDKTXjlvHPiW67gabuuZlBmV063n7LPTQ3ZhUzxx8ihDWb/3czQQvdch8VZt
	 SOkrtRiPAFoyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A8A4CAC5B5;
	Mon, 29 Sep 2025 07:35:13 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 29 Sep 2025 00:35:13 -0700
Subject: [PATCH v4 2/4] arm64: dts: rk3399-pinephone-pro: Add accelerometer
 sensor support
MIME-Version: 1.0
Message-Id: <20250929-ppp_light_accel_mag_vol-down-v4-2-6598f22d3451@gmail.com>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
In-Reply-To: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>, 
 Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759131312; l=1864;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=BRZsP1UdL6OFWqM2mRykWAS8dysAco3k6Kyv3eBDv+E=;
 b=qUkXHOgkg9QDIAccXCuh9iCn8uQ3DvTVFAEX5pjOxmDyP/Lb8YzSzOTQ9g1e2KPPpd/59qbKB
 g0enuB+eYi2Cnr3VE6toJhAopuGqneFWjEEu9KY9/XFj1TSugfTHMNz
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpQaW5lcGhvbmUgUHJvIHVzZXMgbXB1
NjUwMCBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpYy4KClRlc3RzOgovLyBTZXR1cDogVGhpcyB3
YXRjaGVzIHRoZSByYXcgdmFsdWVzIGZyb20gdGhlIGRldmljZS4gVGhlIHZhcmlhYmxlIHdpdGgK
Ly8gdGhlIGJpZ2dlc3QgbWFnbml0dWRlIGFuZCBpdHMgc2lnbiB3aWxsIGJlIHJlY29yZGVkCiQg
c3VkbyBzeXN0ZW1jdGwgc3RvcCBpaW8tc2Vuc29yLXByb3h5CiQgY2F0IC9zeXMvYnVzL2lpby9k
ZXZpY2VzL2lpbzpkZXZpY2UzL2luX2FjY2VsX3t4LHksen1fcmF3CgovLyBMZXQncyBzdGFydCB3
aXRoIHBob25lIHNjcmVlbiBmYWNpbmcgdXAgdG8gdGhlIHNreSBhbmQgdGhlIGNoYXJnZXIKLy8g
cG9ydCBjbG9zZXIgdG8geW91IHRoYW4gdGhlIGZyb250IGNhbWVyYS4KejogLTE2MDAwCgovLyBU
aWx0IHRoZSBwaG9uZSBvbnRvIGl0J3MgbGVmdCBlZGdlCng6IC0xNjAwMAoKLy8gVGlsdCB0aGUg
cGhvbmUgb250byBpdCdzIHJpZ2h0IGVkZ2UKeDogMTYwMDAKCi8vIFRpbHQgdGhlIHBob25lIHNv
IHRoYXQgdGhlIGNoYXJnZXIgcG9ydCBpcyBwb2ludGluZyBzdHJhaWdodCB1cCB0bwovLyB0aGUg
c2t5Cnk6IC0xNjAwMAoKLy8gVGlsdCB0aGUgcGhvbmUgc28gdGhhdCB0aGUgdG9wIG9mIHRoZSBw
aG9uZSBpcyBwb2ludGluZyBzdHJhaWdodCB1cAovLyB0byB0aGUgc2t5Cnk6IDE2MDAwCgovLyBQ
dXQgdGhlIHBob25lIGZhY2UgZG93biBzbyB0aGUgc2NyZWVuIGlzIHRvdWNoaW5nIHRoZSB0YWJs
ZQp6OiAxNjAwMAoKQ28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhp
dC5ubD4KU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CkNv
LWRldmVsb3BlZC1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KU2lnbmVk
LW9mZi1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KU2lnbmVkLW9mZi1i
eTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+ClNpZ25lZC1vZmYtYnk6IFJ1ZHJha3NoYSBH
dXB0YSA8Z3VwdGFydWRAZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCmluZGV4IDcxZDMyYzRiYWUwZDAzMzZhYzBjOTEyMDQz
NjE4ZmM5Yjk0OTE5ZWYuLmQ5ZjE4YTgwMDVmMTVmM2VjMjZlMDg2ZTViNDUxYmYxYmJkYzIxYzAg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9u
ZS1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVw
aG9uZS1wcm8uZHRzCkBAIC01NDIsNyArNTQyLDEzIEBAIG1wdTY1MDBANjggewogCQlyZWcgPSA8
MHg2OD47CiAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKIAkJaW50ZXJydXB0cyA9IDxS
S19QQzYgSVJRX1RZUEVfTEVWRUxfTE9XPjsKKwkJdmRkLXN1cHBseSA9IDwmdmNjXzF2OD47CiAJ
CXZkZGlvLXN1cHBseSA9IDwmdmNjXzF2OD47CisKKwkJbW91bnQtbWF0cml4ID0KKwkJCSIxIiwg
IjAiLCAiMCIsCisJCQkiMCIsICIxIiwgIjAiLAorCQkJIjAiLCAiMCIsICItMSI7CiAJfTsKIH07
CiAKCi0tIAoyLjUxLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

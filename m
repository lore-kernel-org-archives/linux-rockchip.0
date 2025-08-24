Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF8CCA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 06:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5zlyLz1oxy5aITBj2HOpnixhj7LS3bWDch8NergDvs=; b=oW83sHZzY/arLr
	azeq7GCtuTxH1fQs+ECa0p+0lu4WWSywV02jttDFtd88/IyzctixNsC7Ett+28JdFWmzSj9Tfeg6Q
	SF9tBJv2qBsjvO/WJq4f51tyXJrZHfNK1A3sg73Q2EljBM+IWz8oVtnjPmfavzeY1B2rUQQaD/KB7
	gMcs7Sn3MvN73+jZTNDSX9my193Wg0cSX6Qf6YwKRXdZZ69QRuvquSlUpLUCvEMQ8LXc/m/A8S5RB
	r3qSzTmJRjAaUuMwcSgiXf8dH6FKo3R8tmxc1zeOb+UjnwSajL6G6u2tU0s0ucQQvb/9hwS1+NmKh
	KpaZMFvgBo2MV/iT57Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4Sl-00000005mlR-20wd;
	Sun, 24 Aug 2025 06:44:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4Q8-00000005mgF-0lyH;
	Sun, 24 Aug 2025 06:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VZCaMapTETng5pIytVlEMZBY5TruZH+760du3o1zOpA=; b=B7OGi2FbZnIosyM5CTBNRrnNKH
	eKExY8+NIQyIVYn8PaHlqmcoXZhRWWjD1f9czvj4Q/fTXfS7RrPvP5WZGz7Eereqnw2FDXvFldL4G
	JvcHyBM72S2YdAcbpKYRGQDj3H7I/FsqqJZnyZI+Q0XvSjsInDm7iWgG6yKHOqhRYD5oy7SSXJaHj
	OaJpdhCCYGBCFo+/zd1fTak8eHrqgauBfoWMj5zTegBFvOqFn3ynxjeXzPkkA/hhT/g5xFaVfTtAC
	ow479OHIuOwfeOJ0ri3/20piHCMKpahgSRUJ2eYSn/Lrawb9LPGIIi2eCAIOINGq3qyWbiOoKv5GK
	EWTT/clQ==;
Received: from [212.111.254.164] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq4Px-0007JE-D7; Sun, 24 Aug 2025 08:41:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: remove vcc_3v3_pmu regulator for
 Radxa E52C
Date: Sun, 24 Aug 2025 08:41:28 +0200
Message-ID: <7988840.GXAFRqVoOG@phil>
In-Reply-To: <0318E801E3D6726D+65c4f189-4e22-4a9b-83d7-cbb0816df373@radxa.com>
References: <BCD8E43E564BC334+1e45d36f-edc7-4c3c-90c9-7b0f2a52360f@radxa.com>
 <20250819134028.634780-1-amadeus@jmu.edu.cn>
 <0318E801E3D6726D+65c4f189-4e22-4a9b-83d7-cbb0816df373@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_234140_221622_6A756703 
X-CRM114-Status: GOOD (  15.99  )
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

QW0gTWl0dHdvY2gsIDIwLiBBdWd1c3QgMjAyNSwgMDQ6MTA6MjQgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+IEhpIENodWt1biwKPiAKPiBPbiA4
LzE5LzI1IDIyOjQwLCBDaHVrdW4gUGFuIHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+PiBIb3cgYWJv
dXQgdGhlIGZvbGxvd2luZyBpbnN0ZWFkPwo+ID4+Cj4gPj4gQEAgLTUzOCw3ICs1MzgsNyBAQCBy
ZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+PiAJCQkJfTsKPiA+PiAJCQl9Owo+ID4+Cj4gPj4gLQkJ
CXZjY18zdjNfczM6IGRjZGMtcmVnOCB7Cj4gPj4gKwkJCXZjY18zdjNfcG11OiB2Y2NfM3YzX3Mz
OiBkY2RjLXJlZzggewo+ID4+IAkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfM3YzX3MzIjsKPiA+
PiAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+PiAJCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4g
PiAKPiA+IE9uIHJrMzU2eCwgdGhlIEZsYXNoIGNoaXAgaXMgdXN1YWxseSBwb3dlcmVkIGJ5IFZD
Q0lPX0ZMQVNILCB3aGljaAo+ID4gaXMgYWxzbyBjb25uZWN0ZWQgdGhyb3VnaCBhIDAgb2htIHJl
c2lzdG9yLCBzbyBJIGRpZG4ndCB3cml0ZSBsaWtlCj4gPiB0aGlzLiBlLmcuIGh0dHBzOi8vZ2l0
aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvYTcwNmE1OTNjYjE5Cj4gCj4gSSB0aGluayBp
dCBzaG91bGQgbWF0Y2ggdGhlIHNjaGVtYXRpYywgaS5lLiBpdCBzaG91bGQgYmUgInZjYy1zdXBw
bHkgPSAKPiA8JnZjY2lvX2ZsYXNoPjsiLgoKSSB2ZXJ5IG11Y2ggYWdyZWUgOi0pIC4KCkhhdmlu
ZyBhdCBsZWFzdCB0aGUgcGhhbmRsZSBtYXRjaCB0aGUgc2NoZW1hdGljcyBuYW1laW5nIGlzIHZl
cnkgaGVscGZ1bAp3aGVuIHNvbWVvbmUgdHJpZXMgdG8gbG9vayBzb21ldGhpbmcgdXAgYmV0d2Vl
biB0aG9zZSB0d28uCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

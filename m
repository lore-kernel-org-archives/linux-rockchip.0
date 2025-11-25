Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A2ACCFD377
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 03:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BnJGTP+UWXItvfOL6iU2Tn5+uxG2TDylmNq8POgcco=; b=liLuks/i06uBsf
	ZKvqH1hzLQcGsCLL6bCd5VXR6fXm0bGeHJ8HYyPIlkF4o25Z6cOP8v3Hfd8wKxBnOq4s9DH4CWkKC
	5IN+VfIJECW68ec43wa7Tr0oukV6GbVsgkRi5HgSIc+uB3PvldJdGsgVUjp1FDfmQM3RZHEadr+Dj
	/MZlaNSj0577rtiv0G9aT/ycxH5ngu9LF757WXwokQREnl/eLiFaw2A8oHXwdGv6h/xkLESXLUp9v
	YLPGkS1r/jbiZp6vIaPhYNlDvO7hb5ZzmZcnnyLsJDlmMgcmRC0nlsMx0po51Z2E1wbDJhtZ33esC
	Ftzz6qu9mGu90LbCnOsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk1A-0000000ChE5-3xm7;
	Tue, 25 Nov 2025 03:47:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk18-0000000ChCA-253J;
	Tue, 25 Nov 2025 03:47:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A0D8B60185;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B8DDC116C6;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042421;
	bh=4J3g5j51PBpP7n9+7mbzEOrB/xPKifWDPpyCNDHAijs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=cgz7ubkiHQB+YPvJjBzXk4y4/EV4gcWAmbVLc9+A7mGlbLiAsHv00zS3SGuF2N9aF
	 VyqXCQ6D7dw8cIQZaSQ4sG7u0t/E2pWBSYUP+Z8h/+drd8hCqLZ3+45dRJXZLSiuFh
	 39gpW9CIX1/DW3yOiLAg4Dq8t93re1FqQqsdJ5XPGRSxLxnmqestJ4CyQt/DmxiEYg
	 IOkTImNfBARJIkn887xFp6rMYtXOabmoRctYC5YcEEIw4BKmhOuAFLTNJF1KSQ51vh
	 gG6qbhc6zS9xJf/GEr5dcms/AuZFvYUOk7foWfB2Z4IJKAJabJKIocxwHDmV9Z9kUq
	 JdlA1ROCY5/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 408A2CFD315;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Nov 2025 19:47:00 -0800
Subject: [PATCH v5 1/4] arm64: dts: rockchip: Add light/proximity sensor to
 Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251124-ppp_light_accel_mag_vol-down-v5-1-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764042420; l=2100;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=P3jxHkWmNKoMTa/ZH2mI0b285/Gcq9KBGUYb5ASdyDI=;
 b=ePPb+2twvyymvlXtx7y6tuGBD2TrnI06XJtJAi3RUVXg/E81weVnx5FMV9z0bHTAH20GUuxG9
 lLv17Ls0n5dAqqvlqB7pJBDa+PTWHU6QL7vHzdUvjEfz7SL7brgj+V+
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpQaW5lcGhvbmUgUHJvIHVzZXMgU1RL
MzMxMSBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MuCgpUZXN0czoKfiAkIG1vbml0b3Itc2Vu
c29yIC0tbGlnaHQKICAgIC8vIFdoZW4gdGhlIHNlbnNvciBpcyBleHBvc2VkLCBpdCBnZXQncyBm
bHVjdGF0aW5nIHZhbHVlcyBzdWNoIGFzCiAgICBMaWdodCBjaGFuZ2VkOiAxLjgwMDAwMCAobHV4
KQogICAgTGlnaHQgY2hhbmdlZDogMS43MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5nZWQ6IDEu
ODAwMDAwIChsdXgpCiAgICBMaWdodCBjaGFuZ2VkOiAxLjcwMDAwMCAobHV4KQogICAgTGlnaHQg
Y2hhbmdlZDogMS42MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5nZWQ6IDEuMTAwMDAwIChsdXgp
CiAgICAvLyBXaGVuIGNvdmVyaW5nIHRoZSBzZW5zb3IsIGl0IHByaW50cyBhIGxvdyB2YWx1ZSBh
bmQgc3RvcHMgcHJpbnRpbmcKICAgIExpZ2h0IGNoYW5nZWQ6IDAuMjAwMDAwIChsdXgpCgp+ICQg
bW9uaXRvci1zZW5zb3IgLS1wcm94aW1pdHkKICAgIC8vIFdoZW4gaXQgZ29lcyBhd2F5IGZyb20g
YW4gb2JqZWN0CiAgICBQcm94aW1pdHkgdmFsdWUgY2hhbmdlZDogMAogICAgLy8gV2hlbiBpdCBj
b21lcyBuZWFyIGFuIG9iamVjdAogICAgUHJveGltaXR5IHZhbHVlIGNoYW5nZWQ6IDEKCkNvLWRl
dmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYt
Ynk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpDby1kZXZlbG9wZWQtYnk6IEth
bWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IEthbWlsIFRy
emNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4g
PG1lZ2lAeGZmLmN6PgpTaWduZWQtb2ZmLWJ5OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdt
YWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lcGhvbmUtcHJvLmR0cwppbmRleCA2Zjk3ZTU3ZjM2ZjUuLjJkMjg1OGVlMTQ5ZSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXBy
by5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25l
LXByby5kdHMKQEAgLTUyMCw2ICs1MjAsMTYgQEAgdG91Y2hzY3JlZW5AMTQgewogCQl0b3VjaHNj
cmVlbi1zaXplLXggPSA8NzIwPjsKIAkJdG91Y2hzY3JlZW4tc2l6ZS15ID0gPDE0NDA+OwogCX07
CisKKwlsaWdodC1zZW5zb3JANDggeworCQljb21wYXRpYmxlID0gInNlbnNvcnRlayxzdGszMzEx
IjsKKwkJcHJveGltaXR5LW5lYXItbGV2ZWwgPSA8MzAwPjsKKwkJcmVnID0gPDB4NDg+OworCQlp
bnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvND47CisJCWludGVycnVwdHMgPSA8UktfUEQzIElSUV9U
WVBFX0VER0VfRkFMTElORz47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0
cmwtMCA9IDwmbGlnaHRfaW50X2w+OworCX07CiB9OwogCiAmaTJjNCB7CkBAIC02ODksNiArNjk5
LDEyIEBAIHZjYzF2OF9jb2RlY19lbjogdmNjMXY4LWNvZGVjLWVuIHsKIAkJfTsKIAl9OwogCisJ
c3RrMzMxMSB7CisJCWxpZ2h0X2ludF9sOiBsaWdodC1pbnQtbCB7CisJCQlyb2NrY2hpcCxwaW5z
ID0gPDQgUktfUEQzIFJLX0ZVTkNfR1BJTyAmcGNmZ19pbnB1dF9wdWxsX3VwPjsKKwkJfTsKKwl9
OworCiAJd2lyZWxlc3MtYmx1ZXRvb3RoIHsKIAkJYnRfd2FrZV9waW46IGJ0LXdha2UtcGluIHsK
IAkJCXJvY2tjaGlwLHBpbnMgPSA8MiBSS19QRDIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47CgotLSAKMi41Mi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

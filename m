Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0F0CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 07:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXvMRI0OrDAzQDotaQWkNr1/Y20TuoqnfHUgt2bdLrk=; b=rd57btk2t0+MEX
	JMn5rEoZC7rNNno0cDifmqwzclH3JKS5aD1zIEAsLNb06zNRw481baHrHDvqctshH/lGypSlKgtyJ
	IK+aTgp3Mj6MvslFM24ANncomHEXENzf1t8rasnT5WMODM8dXqROXFwXJ4I+dlALJlUKn5lFOCpny
	elRGJ6e9z/DUfI9xbLQTFRFAudueWOSgwcoGxtY+Gl3CwPDWfpmDwDIvP7omqvWUT2KZDfpHbYKiv
	M+ryAYP6tU51R5ScEXNzt4FU0nY+D4lA0mFvqRGheeGTRMLUeMhoCK7CO+132JVQQBOFjE4vLYaYk
	8FVce30jD9Da17YEZX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Ps-00000001cdO-2f6B;
	Mon, 29 Sep 2025 07:35:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Pn-00000001caj-10w8;
	Mon, 29 Sep 2025 07:35:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CC41D62314;
	Mon, 29 Sep 2025 07:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79224C116B1;
	Mon, 29 Sep 2025 07:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759131313;
	bh=8VBQdbInkyT4SO9ZYbFABhR/xaRBu7JaZ6KrCbUKrbI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tmSdGKUzYR8fczBUyshYTpijLbi5HxJfpYRcuUwdk901/GJCfU/P+dkyCWFElp98g
	 Z7nL82rt4QJGF3rOuK8mRCplIzIXRqy6CsntPMGGREq3KLUHMkunDnm92MIPdXUhwD
	 67m7cFHm0BQIbmnVjr5snY4LK8156YauIM1hILdKe+gn7IEoa30zGzmXPjvOsiyPVc
	 Fw5OAu/wKd3lhg70v27e2qVmmAYomRI1FE0b9jE/1QpeUaEm/216XrcGT7CEsgABNq
	 AZuSr9TtipN7Hirz+OP/5lK0YXJl96tFHg3HWjrc13NjClCY/tsYUDcvLDuzeqXt+5
	 cfinOgOw6OyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692A2CAC5B0;
	Mon, 29 Sep 2025 07:35:13 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 29 Sep 2025 00:35:12 -0700
Subject: [PATCH v4 1/4] arm64: dts: rk3399-pinephone-pro: Add
 light/proximity sensor support
MIME-Version: 1.0
Message-Id: <20250929-ppp_light_accel_mag_vol-down-v4-1-6598f22d3451@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759131312; l=2306;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=/lKiD65MbRWEXijfwwhiyC0MPS0vO7bZZUd/tftK3Ok=;
 b=Mv7RMAhsAjMFMpCjbxt8lewBE9asnKX3oaeMWL7sBzt7hMppyU5mfnZhti464TMiN9hm7Ljat
 +f9sM8uRhuRBLoBty12REVq3oa6cAf/qo1sMPKytS5CdRSZYLCcTm3+
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
MzMxMSBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MuCgpUZXN0czoKfiAkIGh3dGVzdCAjIG91
dHB1dCB0d2Vha2VkIHRvIGZpdCBpbiA4MCBjaGFycwpDYXRlZ29yeSAgcHJveGltaXR5Ck1vZGVs
ICAgICBzdGszMzEwClBhdGggICAgICAvc3lzL2J1cy9paW8vZGV2aWNlcy9paW86ZGV2aWNlMApT
dGF0dXMgICAgd29ya2luZwpWYWx1ZSAgICAgNTkuMyAod2hlbiBjb3ZlcmVkKSBhbmQgMi4yICh3
aGVuIHVuY292ZXJlZCkKCkNhdGVnb3J5ICBpbGx1bWluYW5jZQpNb2RlbCAgICAgc3RrMzMxMApQ
YXRoICAgICAgL3N5cy9idXMvaWlvL2RldmljZXMvaWlvOmRldmljZTAKU3RhdHVzICAgIHdvcmtp
bmcKVmFsdWUgICAgIDEgKHdoZW4gY292ZXJlZCkgYW5kIDEwMSAod2hlbiB1bmNvdmVyZWQpCgp+
ICQgbW9uaXRvci1zZW5zb3IKICAgIC8vIFdoZW4gdGhlIHNlbnNvciBpcyBleHBvc2VkLCBpdCBn
ZXQncyBmbHVjdGF0aW5nIHZhbHVlcyBzdWNoIGFzCiAgICBMaWdodCBjaGFuZ2VkOiAxLjgwMDAw
MCAobHV4KQogICAgTGlnaHQgY2hhbmdlZDogMS43MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5n
ZWQ6IDEuODAwMDAwIChsdXgpCiAgICBMaWdodCBjaGFuZ2VkOiAxLjcwMDAwMCAobHV4KQogICAg
TGlnaHQgY2hhbmdlZDogMS42MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5nZWQ6IDEuMTAwMDAw
IChsdXgpCiAgICAvLyBXaGVuIGNvdmVyaW5nIHRoZSBzZW5zb3IsIGl0IHByaW50cyBhIGxvdyB2
YWx1ZSBhbmQgc3RvcHMgcHJpbnRpbmcKICAgIExpZ2h0IGNoYW5nZWQ6IDAuMjAwMDAwIChsdXgp
CgpDby1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KQ28tZGV2ZWxvcGVk
LWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBL
YW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBPbmRyZWog
SmlybWFuIDxtZWdpQHhmZi5jej4KU2lnbmVkLW9mZi1ieTogUnVkcmFrc2hhIEd1cHRhIDxndXB0
YXJ1ZEBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwppbmRleCA2Zjk3ZTU3ZjM2ZjU1OTlmNDAyN2EwZjNk
Yjk4YmNiYzY5Y2VmNWU1Li43MWQzMmM0YmFlMGQwMzM2YWMwYzkxMjA0MzYxOGZjOWI5NDkxOWVm
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5l
cGhvbmUtcHJvLmR0cwpAQCAtNTIwLDYgKzUyMCwxNSBAQCB0b3VjaHNjcmVlbkAxNCB7CiAJCXRv
dWNoc2NyZWVuLXNpemUteCA9IDw3MjA+OwogCQl0b3VjaHNjcmVlbi1zaXplLXkgPSA8MTQ0MD47
CiAJfTsKKworCWxpZ2h0LXNlbnNvckA0OCB7CisJCWNvbXBhdGlibGUgPSAic2Vuc29ydGVrLHN0
azMzMTEiOworCQlyZWcgPSA8MHg0OD47CisJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW80PjsK
KwkJaW50ZXJydXB0cyA9IDxSS19QRDMgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsKKwkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZzdGszMzExX2ludD47CisJfTsK
IH07CiAKICZpMmM0IHsKQEAgLTY4OSw2ICs2OTgsMTIgQEAgdmNjMXY4X2NvZGVjX2VuOiB2Y2Mx
djgtY29kZWMtZW4gewogCQl9OwogCX07CiAKKwlzdGszMzExIHsKKwkJc3RrMzMxMV9pbnQ6IHN0
azMzMTEtaW50IHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDMgUktfRlVOQ19HUElPICZw
Y2ZnX2lucHV0X3B1bGxfdXA+OworCQl9OworCX07CisKIAl3aXJlbGVzcy1ibHVldG9vdGggewog
CQlidF93YWtlX3BpbjogYnQtd2FrZS1waW4gewogCQkJcm9ja2NoaXAscGlucyA9IDwyIFJLX1BE
MiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKCi0tIAoyLjUxLjAKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

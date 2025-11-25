Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE38CCFD37A
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 03:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ye9TBC9VmnW/0MoGcP8Uj1epZq7Cm0F/M12aezxzW6w=; b=RL9pRpy79AOobk
	EA0jbn4U7/AfnbwQbHkhA1HdxB/6+jbvzPo6wc5QzLqeBY55/vwa4hQWMJWkoefLjIocHdT6pTN/4
	nA97tgu4RNbq6JmZZDihediy+0VbV2pjmu5nVsabgmDkKxeW9GJXc8mxGkFAY42+peFN+1U4KHh4p
	H+GEsCi84nmzxuGkyxdtUT4824rw0ZIxtP7aKO3RHQsjrdKF+m5ZH11pYfv/68RkVpyjfHZYZFC8E
	VWdsN9ssQeufHEtaYVPeBthlE9F2j4HCgyYw8oHr6mUiHQX5g9Jxn7nDEu6azZq551s+C9MIu0XyD
	fwrvXI60Kvj2mr2d4tug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk1G-0000000ChG7-28Xr;
	Tue, 25 Nov 2025 03:47:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk18-0000000ChC8-2uTr;
	Tue, 25 Nov 2025 03:47:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 861C844337;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 599AEC116B1;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042421;
	bh=ycM7LXSKbuEanMKnAqYP54DyEq9xsY1JOHTdVmdmdrs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mZvPGvwSZmfA2Xv76Eaoh2Nq0QduKe/rrFDuNLRmF/sovTWu3WznWhVDq6e1yEPJk
	 +5G7RUN3Rp7iTWY2fkJpJysWunIJ9gHAZ380zQpx55Awp4Qh46x1TwP+iSuAN29LIT
	 4lbbLltn6usdBq675cH6sf4FTuqAEMLeNIczboIUgG6qGh+1XyK5ZEFGiMT3mkhGG3
	 0DMU7kpCUM/Pj+bxV1Hl+Xa1xPYBRlAC16We5yjARQvEV+DWBsmNi759fYcvlcYZBf
	 m4S12vBolPLc/EFPSw2MG0MG681zKTlI7Pxi+pZUZ1yId+klJa7srRMhsNSXLHjZzp
	 cqAHFcAZ2sebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50036CFD377;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Nov 2025 19:47:01 -0800
Subject: [PATCH v5 2/4] arm64: dts: rockchip: Add accelerometer sensor to
 Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251124-ppp_light_accel_mag_vol-down-v5-2-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764042420; l=1266;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=owuI4HZdlvQp/fF0o2W6LK/Li46MndqpBMI0zHW5OxA=;
 b=FsSvN3r0QicnJ/w3S/WAeTY96iFwVszQDSQC0oT7MLn0LeC4PC5RFl3S5/VDEb1Y/4qGuCgQc
 ciIlNIszl9wDaFG9F9VZCx+tlca+23MeQ1xrJPXA0fj6iVKW99UO08h
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_194702_751726_5024311F 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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
NjUwMCBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpYy4gVGhpcyB3YXMgdmVyaWZpZWQKdmlhIGBt
b25pdG9yLXNlbnNvciAtLWFjY2VsYC4gV2hpbGUgcm90YXRpbmcgdGhlIGRldmljZSwgdGhlIG91
dHB1dCB3YXMKY29ycmVjdCAoZWcuIHdoZW4gaXQgd2FzIGZhY2UgdXAsIGxlZnQgZWRnZSB3YXMg
dXAsIHZlcnRpY2FsLCBldGMuKS4KCkNvLWRldmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8bWFy
dGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJp
eGl0Lm5sPgpDby1kZXZlbG9wZWQtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4u
ZXU+ClNpZ25lZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNp
Z25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgpTaWduZWQtb2ZmLWJ5OiBS
dWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IFBhdmVsIE1h
Y2hlayA8cGF2ZWxAdWN3LmN6PgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXBpbmVwaG9uZS1wcm8uZHRzIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lcGhvbmUtcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXBpbmVwaG9uZS1wcm8uZHRzCmluZGV4IDJkMjg1OGVlMTQ5ZS4uZjhjNzRiNDNhZTlmIDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJv
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUt
cHJvLmR0cwpAQCAtNTQzLDcgKzU0MywxMyBAQCBtcHU2NTAwQDY4IHsKIAkJcmVnID0gPDB4Njg+
OwogCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47CiAJCWludGVycnVwdHMgPSA8UktfUEM2
IElSUV9UWVBFX0xFVkVMX0xPVz47CisJCXZkZC1zdXBwbHkgPSA8JnZjY18xdjg+OwogCQl2ZGRp
by1zdXBwbHkgPSA8JnZjY18xdjg+OworCisJCW1vdW50LW1hdHJpeCA9CisJCQkiMSIsICIwIiwg
IjAiLAorCQkJIjAiLCAiLTEiLCAiMCIsCisJCQkiMCIsICIwIiwgIi0xIjsKIAl9OwogfTsKIAoK
LS0gCjIuNTIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

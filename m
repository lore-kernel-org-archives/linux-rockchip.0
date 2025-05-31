Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A06CC5AE59
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 May 2025 13:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJK3X+BQmFsSsk3b7s7TeDEtfr4r3nuVelrHDiJpmwc=; b=w/YixBUblFWvmI
	soe9DFhOFf8HeSe+Zg6tP96LRifuhjhKKMK1lQ3Szc+y1RML0xauzKQ3kfbocTcNg3D7azSHWkpaa
	dcSCM6OZSPM4cgkpt7VObdNd12socxHE8C5/iuDiFOXofDYSdBC3rwY0Qfi52QU99PGj3PLubiXJO
	qlIXKNHo9v6MWVfHxmSV+gx8EnhcURNKl2ZHPsvo/hjZhfsTNiFXKTjYn6/CRsUBan7s8QxZI7vhs
	HsyAV9Nbi9oeN88PkUk9U2yByR9W9crDIPkQwwC9CkGLNDlGW9bDlPEiOblPsYpmXGbJwznGBxHX+
	LqlgucoxZOVske7h5UYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLLqK-00000003lCz-0mfd;
	Sat, 31 May 2025 13:01:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLLoB-00000003l70-1Gba;
	Sat, 31 May 2025 12:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/QvtLNBteUL/eoLfwenUJUkU6N99pIrssBMZcazvFXE=; b=qhj/8mZElYbDGGnYnH5ZkSah2m
	r+HVjvfjaV4NJVyvl05yBCjwXMsUNBkYXAC3g6ou8vEpMRh1a03Dw1kNzLw9/5CFnSCMEX2ETxzuR
	xFKMKrhOpPeydmV2oe0ocsYfUVcw/obPOpOzCU8V8mm/eXfhWRCUDW85qieblAwRtv1Cit1jy9Fz2
	Pu6U6b5oOZOKsQrGVV9jfra5Vdvqu2CkyjqEA1kPCPsZCZ0g9I/Xz7pvNho9FjRo5k8psmadmS/wO
	260bSocfh4be5JXcffZpDDoS/Y984BBAN64KBxnfDYemIwh5yW3Q/OlYme6CxFPVBuusLoh9uvGXh
	dnihS9qg==;
Received: from i53875a3e.versanet.de ([83.135.90.62] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uLLo0-0002Xd-EM; Sat, 31 May 2025 14:59:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 1/7] dt-bindings: pinctrl: rockchip: increase max amount of device
 functions
Date: Sat, 31 May 2025 14:59:17 +0200
Message-ID: <23957563.6Emhk5qWAg@diego>
In-Reply-To: <20250408-rk3576-pwm-v1-1-a49286c2ca8e@collabora.com>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <20250408-rk3576-pwm-v1-1-a49286c2ca8e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250531_055931_364012_1A234CFE 
X-CRM114-Status: GOOD (  11.20  )
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
Cc: linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDguIEFwcmlsIDIwMjUsIDE0OjMyOjEzIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFdpdGggdGhlIGludHJvZHVj
dGlvbiBvZiB0aGUgUkszNTc2LCB0aGUgbWF4aW11bSBkZXZpY2UgZnVuY3Rpb24gSUQgdXNlZAo+
IGluY3JlYXNlZCB0byAxNCwgYXMgYW55b25lIGNhbiBlYXNpbHkgdmVyaWZ5IGZvciB0aGVtc2Vs
dmVzIHdpdGg6Cj4gCj4gICByZyAtZyAnKi1waW5jdHJsLmR0c2knICc8XGQrXHMrUktfUC4uXHMr
KD88ZnVuYz5cZCspXHMuKj47JCcgLS10cmltIFwKPiAgIC1OSSAtciAnJGZ1bmMnIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvIHwgc29ydCAtZyB8IHVuaXEKPiAKPiBVbmZvcnR1bmF0ZWx5
LCB0aGlzIHdhc24ndCBjYXVnaHQgYnkgZHQtdmFsaWRhdGUgYXMgdGhvc2UgcGlucyBhcmUKPiBv
bWl0LWlmLW5vLXJlZiBhbmQgd2UgaGFkIG5vIHJlZmVyZW5jZSB0byB0aGVtIGluIGFueSB0cmVl
IHNvIGZhci4KPiAKPiBPbmNlIGFnYWluIGtpY2sgdGhlIGNhbiBkb3duIHRoZSByb2FkIGJ5IGlu
Y3JlYXNpbmcgdGhlIGxpbWl0IHRvIDE0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJh
dHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

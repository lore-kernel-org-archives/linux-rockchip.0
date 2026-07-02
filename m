Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736A2C43327
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 16:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CstGIUvkxXZQr33X2si8Meo87YV+7Aa4DbdQxEBq5zo=; b=GcAxES5HNt7DNH
	5y59aI/qjVnLLZMEcSh48u4T2vRiB9zQDvQr37IyWY8MJBnYC3pufqFpxU6vRQFkCRwuvZ3sH5cDB
	Fq+kM9dK9NaTvcIc6uX7Lxquk7atmB2Uv2m+5FToIDCfx0VUj0rfe0Ff3ECYAxrE65aB9fw3x18ju
	MSDpb74Hdo7AORlqPikbGtlZiOouHzRMMC+Dlwdpxi6zIekQFIP3wJtV0g0Hx1FOxByUvJelBYCMw
	gaXzX2zrTsbZd3SwX78+DrLcgncXElMfiA3ZlYrsho+CqXznN3KQGa4O7vHaRLINMiGmr/yEzRMwt
	CwZbnfT7IqWl7cVWXHpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJqz-00000004tr7-17MD;
	Thu, 02 Jul 2026 16:01:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJqx-00000004tq9-0G7q;
	Thu, 02 Jul 2026 16:01:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=r+wrJuVhFDbFHGAbhIGnA2cIJXtpLd/P8h4Mv8rR6ZU=; b=RqesHXHXaYOPCKhUf9LBqc52Pd
	Nx8ajwVcRXhNtLf33JzWPlsmGpA6yjCpfX1JTkYxG2/dnhV69dQsPFzEMpcZLFYA0W6SuXklLRkg/
	UPtKVC7irgrR+C1Dd07QhNbeQAqMonruQ2vBXPY+pBx/HIOWgm/WONwB6BAwPGqvkl7tfZ1A4pqBj
	cY+uvDNZz5eiPgIbRoDBIu/q1rW13g40ZAu/2OI4k7QuIeFd+67dJzQ0K6tdBU8hnSGOtrE0N1rfn
	z5l/Htbn3wRbSBIpd/Enf1ZiZJe12ef5FuwDawa1pvfNzUcczyQfJnH/Wqyf4AfRA/48dqMgF3GHZ
	2MfYmDMw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-can <linux-can@vger.kernel.org>, 1579567540@qq.com
Cc: Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel <kernel@pengutronix.de>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Karl Mehltretter <kmehltretter@gmail.com>, Yixun Lan <dlan@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Cunhao Lu <1579567540@qq.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: can: rockchip: add rk3588 CAN-FD compatible
Date: Thu, 02 Jul 2026 18:01:06 +0200
Message-ID: <2459655.BjyWNHgNrj@diego>
In-Reply-To: <tencent_3B2B6003D1DE4FB7A984665A062581766405@qq.com>
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_3B2B6003D1DE4FB7A984665A062581766405@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_090127_130231_575A38B3 
X-CRM114-Status: GOOD (  12.34  )
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

QW0gRG9ubmVyc3RhZywgMi4gSnVsaSAyMDI2LCAxNjowNjo1MSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIDE1Nzk1Njc1NDBAcXEuY29tOgo+IEZyb206IEN1bmhhbyBMdSA8
MTU3OTU2NzU0MEBxcS5jb20+Cj4gCj4gUkszNTg4IGludGVncmF0ZXMgYSBSb2NrY2hpcCBDQU4t
RkQgY29udHJvbGxlciB2YXJpYW50IHRoYXQgaXMgbm90Cj4gZnVsbHkgY29tcGF0aWJsZSB3aXRo
IFJLMzU2OHYyLiBUaGUgUlggRklGTyBjb3VudCByZWdpc3RlciBmaWVsZCBpcwo+IGVuY29kZWQg
aW4gYml0cyA3OjUgb24gUkszNTg4LCB3aGlsZSBSSzM1Njh2MiB1c2VzIGJpdHMgNjo0Lgo+IAo+
IEFkZCBhIGRlZGljYXRlZCByb2NrY2hpcCxyazM1ODgtY2FuZmQgY29tcGF0aWJsZSB0byBkZXNj
cmliZSB0aGlzCj4gdmFyaWFudC4gRG8gbm90IHVzZSByb2NrY2hpcCxyazM1Njh2Mi1jYW5mZCBh
cyBhIGZhbGxiYWNrLCBiZWNhdXNlIHRoYXQKPiB3b3VsZCBkZXNjcmliZSBhIHJlZ2lzdGVyIGxh
eW91dCB0aGF0IGRvZXMgbm90IG1hdGNoIHRoZSBoYXJkd2FyZS4KPiAKPiBDaGFuZ2VzIGluIHYy
Ogo+IC0gVXNlIGVudW0gZm9yIHRoZSBzaW5nbGUtY29tcGF0aWJsZSBlbnRyaWVzLCBhcyBzdWdn
ZXN0ZWQgYnkgS3J6eXN6dG9mLgo+IC0gUmV3b3JkIHRoZSBjb21taXQgbWVzc2FnZSB0byBleHBs
YWluIHRoZSBoYXJkd2FyZSBkaWZmZXJlbmNlIGluc3RlYWQKPiAgIG9mIHJlZmVycmluZyB0byBM
aW51eCBkcml2ZXIgbWF0Y2ggZGF0YS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDdW5oYW8gTHUgPDE1
Nzk1Njc1NDBAcXEuY29tPgoKYWZ0ZXIgZml4aW5nICBLcnp5c3p0b2YncyBjb21tZW50OgpSZXZp
ZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCmFuZCBkb2luZyBkdGJz
Y2hlY2sgb2YgdGhlIGJpbmRpbmcgYWdhaW5zdCB0aGUgZHQtcGF0Y2hlczoKVGVzdGVkLWJ5OiBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

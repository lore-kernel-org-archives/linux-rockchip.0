Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFAFEC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 15:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPNpEPa9HTQ9TokXr+y0oGFm9xporEU6BwVFs8lqLYA=; b=tGxLG4cl6Rlqrj
	z2VGPAW4s/zW2cLAdPmdy5bMVSwwREZ7Enjnhybt7X4VaF0W1jfmVLBGQdQO9XKy2Q4OP4wxCs/kf
	8G/LvJI6GW2Vig2lLefH8xxmJfMxePJQIG0QkRqb8YY4f4P0x7Aegn3hSW9Q1fFXJjK8GLxWWk7rG
	JEc4vC+xecos8PY1J1hTUNCzbnU0luSz+PY5XxPqoI1QyhlmxkkM0vHJQ+EMmiq+jC16WsUvSzzXX
	1T/z09alA1R7Csaahupt+J46t4fElkEXFbHF1iAn3FiN8ftUiBwrfLUpJOFMGW5tM3/1NFuFIeh1a
	dvvfefiBrv+QovpcYDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o57lg-006XWP-ES; Sat, 25 Jun 2022 15:32:16 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o57lV-006XT0-06; Sat, 25 Jun 2022 15:32:06 +0000
Received: by mail-lf1-x12e.google.com with SMTP id i18so9329941lfu.8;
        Sat, 25 Jun 2022 08:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Z9ETXVQoG+NSia4BWAvn8UPiHwd3KtEYBLM24GpcwVY=;
        b=Gg3ivGB/psyf11Mg4SFHWWk4639JAi/73oqYuQ/Bw62+6wcg29IedtjpTCpD6fPyVx
         OFMCg9N9y7lNOJ2Zy9rQG87KUtXYmbjd2+1xSAC+ZDKVfMKIlX5/W+oYLHnOPHUo7gzv
         yYq/6c/rQHKOxf6R2kCZ4NNr0/rTCSuTzcYKvTACr22HGPDSN/cRGArwOxOxQIfZpazx
         cu69leHGF3zlwBUksXt9hL5/4v4xeE4jeNx1lNYsYXJvtycxZnmIwTReS66duc5TnSTC
         QOuzx8guse6oXrARHOrsDnL5c9DytUnHVDDsWwqw8jmybflzBuFiKHtsrxQjJoOkpXBA
         gCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Z9ETXVQoG+NSia4BWAvn8UPiHwd3KtEYBLM24GpcwVY=;
        b=tpMSJRQr7aGnw6n/IojvvBVa0TmRB27WlUKkL5oUFYdCuMF85QqjH1qbmjYvkCq5eP
         37eBgad7yj47yKh8KTYr8X5imtn87UN8fBUhZQGsq8nZQhoJ7Kk8yrO5lUQydgsmrzWS
         ND1ZObp00o3BZpenTtxioUsQ4LgjhxlQZfbv5FrHHXJ2qoPvolTgiJ4C+nSxlmZYnhqV
         7cW6f6QCN1QDPV/j7H+mI1bSiVhJoSbxcqGjMlHlPL34/+UQ3x2YIv9S98QkqeFclLgw
         FTQEeLThPuWVqq0RPVGyt6T0EDSPAtROzxVEIogQ+Ydw4oUWTsvFyChgCGomcqUBvDMN
         7aeQ==
X-Gm-Message-State: AJIora/FlGQjhJUbXxcw/s0HdJ0TpKJAOA/hkreuqt+I84RqtdXqio8s
	W+h44pBTQjyGa28KWGn6qGE=
X-Google-Smtp-Source: AGRyM1tYRUZ2+K9ffQbbS2qyHHn7CfSUYEej8iuTqyvLAig+xeKvZnz3WV5JP/I16y9lw5dsM8GbxA==
X-Received: by 2002:a05:6512:1281:b0:47f:7066:6fb2 with SMTP id u1-20020a056512128100b0047f70666fb2mr2658566lfs.247.1656171121420;
        Sat, 25 Jun 2022 08:32:01 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d2117csm908460lfe.171.2022.06.25.08.32.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jun 2022 08:32:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
Date: Sat, 25 Jun 2022 17:31:59 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_083205_079906_4B0CF1AB 
X-CRM114-Status: GOOD (  11.11  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAyNS4wNi4yMDIyLCBvIGdvZHouIDE2OjAwOgo+IAo+IAo+IFRoZSBmaXJz
dCBpc3N1ZSB5b3UgaGF2ZSBpcyB0aGUgVFYgaXNuJ3QgcmVzcG9uZGluZyB1bnRpbCB0aGUgYWJz
b2x1dGUKPiBlbmQuCgpJIHN1c3BlY3QgdGhpcyBpcyBiZWNhdXNlIGxhY2sgb24gaWRsZSBnYXBz
IGJldHdlZW4gY2VjIGNvbW1hbmRzIHNlbnQgZnJvbSBib2FyZCB0byB0di4KTWF5YmUgVFYgc3cu
IGNhbid0IGRlYWwgd2l0aCBjb25zZWN1dGl2ZSBjb21tYW5kcyB3aXRob3V0IGFueSBpZGxlIGJl
dHdlZW4gdGhlbT8gCgpJdCBpcyBpbnRlcmVzdGluZyB0aGF0IGRpc2Nvbm5lY3RpbmcgVFYgLSBz
byBDRUMgbGluZSBpcyBkcml2ZW4gb25seSBieSBib2FyZCAtIHJvY2szYSBzdGlsbCBkb24ndCBo
YXZlIGFueSBpZGxlIGdhcHMgd2hpbGUgcm9jazNiIChhbmQgcmFkeGEgNC4xOSBic3ApIGhhcyB0
aGVtICh2ZXJ5IHNpbWlsYXIgYmV0d2VlbiA1LjE4bWFpbGluZSBhbmQgNC4xOSBic3ApLgoKSG93
IHRoaXMgaXMgcG9zc2libGUgdGhhdCBjaGFuZ2UgSS9PIGZyb20gbTAtPm0xIGltcGFjdHMgX3Rp
bWluZ3NfIG9uIGZyZWUgaGFuZ2luZyBDRUMgbGluZT8gCgo+IFRoaXMgc3RyaWtlcyBtZSBhcyBh
IHNpZ25hbCBpbnRlZ3JpdHkgaXNzdWUuIERvIHlvdSBoYXZlIGFuCj4gb3NjaWxsb3Njb3BlIChu
b3QgYSBsb2dpYyBhbmFseXplciwgeW91IG5lZWQgdm9sdGFnZXMgYW5kIHJhbXAgdGltZXMpCj4g
dG8gY29tcGFyZSB0aGUgd29ya2luZyB2cyBub24td29ya2luZyBzaWduYWxzPyBDaGVjayBib3Ro
IHNpZGVzIG9mIHRoZQo+IGxldmVsIHNoaWZ0ZXIuCgpJbmRlZWQgLSBpIHdpbGwgdmVyaWZ5IHRo
aXMgd2l0aCBkaWdpdGFsIG9zY2lsbG9zY29wZS4gCkFscmVhZHkgb3JkZXJlZCBhbmQgbXVzdCBh
d2FpdCB3ZWVrIG9yIDIgZm9yIGRlbGl2ZXJ5IDotKAoKTXkgYW5hbG9nIG9zY2lsbG9zY29wZSBz
aG93cyBjb3JyZWN0IGxldmVscyBhbmQgc2xvcGVzICJzZWVtcyIgdG8gYmUgdGhlIHNhbWUgbGlr
ZSBpbiB3b3JraW5nIChubyBtZW1vcnkgc28gaSBjYW4gY29tcGFyZSBvbmx5IHZpc3VhbGx5IG9u
IGZ1enp5IHNjcmVlbikgCgpGb3IgbWUga2V5IGlzIHRvIHVuZGVyc3RhbmQgd2h5IG9uIHJvY2sz
YSB0aGVyZSBpcyBubyBhbnkgaWRsZXMgYmV0d2VlbiBjZWMgY29tbWFuZHMgLSBldmVuIHdoZW4g
bm90aGluZyBpcyBjb25uZWN0ZWQgdG8gYmFyZCAoc28gY2VjIGlzIG9ubHkgc2VuZGluZyBhbmQg
bm90aGluZyBleHRlcm5hbCBpbXBhY3RzIGNlYyBzdGF0ZSBtYWNoaW5lKS4uLi4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

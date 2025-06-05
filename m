Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7074DC5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 14:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twZ9oODGLRadlGqiY6aEv0DJFj2FXxugU53ZEY33Y4w=; b=dhye3C5FD5MKlj
	vy2KHDFqKh44XpQCEjqqJPH6qXkYeYMnYz0kTE+coAYOXQ7WQ942i6BgmR+usM/CjczSUPGZLtQxb
	yaDob6iv2dN8Mo+XFGa7trPmuMrVvf5YGOUzOvriha3myAeFxGq3xWgqUvCz4diag09OAywiVs4te
	PdP269z7GYbsRQJLbGJ05gTd20bnBniMjHT1trvEbB7+74xUtwk+ouzOrI4qCdcHVz+MA8n8VppzT
	h5up7oxrAqPmVMp1S6tOwNyFcfv8zn9xUmIqXQ9Lyv/u0spJbdctiPLN0B+QbYsmiIY5Z8XTDB6up
	GAbLOVQrEpSg5YYrColQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBj5-0000000Fo0G-408p;
	Thu, 05 Jun 2025 14:37:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBgp-0000000Fnk2-3XSk;
	Thu, 05 Jun 2025 14:35:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749134114; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NKn+SpOWGZY0QJiLOqY4x5Ai/Yv0TIZeaJezXC5g0ZWILWNQmwGJFWpEwycIA2HzIN1mCmRJ3lrQ+hHCgl6pjkXRIxothuFj2Ag8wxZl4+Ty/ThCLtpKCUsR4cTkTfcd7NP1DlPYr95uR7DP313/2QpjpFOHEQwx04AgqXCylHc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749134114; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=0uzu1/EqrenMvPymkgwGDWP8FLVCKuEu8+xxxlpKXEc=; 
	b=LmLYwrivhz2E1yJeeGrUCihMh7inHsS0qrHwn1M+edFm2h8MYO4b8dGKP2O91A2LYT6yhG/u4seV30tnNEs+I/hgrhTBC7fMw/qyFiP6jdjelXdpn8fHFHGjX+ys+2vHF6bm3aA2cHibTTvwRpciXC+p8Iw4QuSvPDEAif/ZDUk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749134114;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=0uzu1/EqrenMvPymkgwGDWP8FLVCKuEu8+xxxlpKXEc=;
	b=OSILMwkw/0Mp9nvmWRFPhHe7GWjcRXLUfogUADlprLqTFnfGNGmypMwGhjY1dvCe
	0EmTHbfvP8VDn5JKm/e502sL90mToWYUGwiectxirFIjH5j1AD2h6HDBGLPRN0WzvdN
	Jbh/ZHimXwKzwzBG6KNOXPJrui4kvu7M+EB3/NPA=
Received: by mx.zohomail.com with SMTPS id 1749134112355222.8330067732718;
	Thu, 5 Jun 2025 07:35:12 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Lee Jones <lee@kernel.org>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, kernel@collabora.com,
 Jonas Karlman <jonas@kwiboo.se>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pinctrl: rockchip: increase max amount of
 device functions
Date: Thu, 05 Jun 2025 16:35:05 +0200
Message-ID: <5876990.GXAFRqVoOG@workhorse>
In-Reply-To: <CACRpkdZRjLFa3Bni=wMG1LBoWnW+Zenj2FVP=_2s+U_1eykt7Q@mail.gmail.com>
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com>
 <20250602-rk3576-pwm-v2-1-a6434b0ce60c@collabora.com>
 <CACRpkdZRjLFa3Bni=wMG1LBoWnW+Zenj2FVP=_2s+U_1eykt7Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_073531_944642_E398FADC 
X-CRM114-Status: GOOD (  14.53  )
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

T24gVGh1cnNkYXksIDUgSnVuZSAyMDI1IDE1OjI5OjAzIENlbnRyYWwgRXVyb3BlYW4gU3VtbWVy
IFRpbWUgTGludXMgV2FsbGVpaiB3cm90ZToKPiBPbiBNb24sIEp1biAyLCAyMDI1IGF0IDY6MjDi
gK9QTSBOaWNvbGFzIEZyYXR0YXJvbGkKPiA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5j
b20+IHdyb3RlOgo+IAo+ID4gV2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSBSSzM1NzYsIHRo
ZSBtYXhpbXVtIGRldmljZSBmdW5jdGlvbiBJRCB1c2VkCj4gPiBpbmNyZWFzZWQgdG8gMTQsIGFz
IGFueW9uZSBjYW4gZWFzaWx5IHZlcmlmeSBmb3IgdGhlbXNlbHZlcyB3aXRoOgo+ID4KPiA+ICAg
cmcgLWcgJyotcGluY3RybC5kdHNpJyAnPFxkK1xzK1JLX1AuLlxzKyg/PGZ1bmM+XGQrKVxzLio+
OyQnIC0tdHJpbSBcCj4gPiAgIC1OSSAtciAnJGZ1bmMnIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvIHwgc29ydCAtZyB8IHVuaXEKPiA+Cj4gPiBVbmZvcnR1bmF0ZWx5LCB0aGlzIHdhc24n
dCBjYXVnaHQgYnkgZHQtdmFsaWRhdGUgYXMgdGhvc2UgcGlucyBhcmUKPiA+IG9taXQtaWYtbm8t
cmVmIGFuZCB3ZSBoYWQgbm8gcmVmZXJlbmNlIHRvIHRoZW0gaW4gYW55IHRyZWUgc28gZmFyLgo+
ID4KPiA+IE9uY2UgYWdhaW4ga2ljayB0aGUgY2FuIGRvd24gdGhlIHJvYWQgYnkgaW5jcmVhc2lu
ZyB0aGUgbGltaXQgdG8gMTQuCj4gPgo+ID4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3Iu
ZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJv
bGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+IAo+IFJldmlld2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gCj4gSXMgdGhpcyBzb21l
dGhpbmcgSSBjYW4ganVzdCBhcHBseT8KPiAKPiBZb3VycywKPiBMaW51cyBXYWxsZWlqCj4gCgpB
YnNvbHV0ZWx5LCB0aGVyZSdzIG5vIGhhcm0gaW4gaXQgbGFuZGluZyBlYXJseSwgYW5kIGlzIG9u
bHkgdGFuZ2VudGlhbGx5CnJlbGF0ZWQgdG8gdGhlIHJlc3Qgb2YgdGhlIHNlcmllcyBiZWNhdXNl
IGl0IGNhbWUgdXAgd2hpbGUgSSB3YXMgcGlubXV4aW5nCm15IFBXTSBwaW5zLgoKS2luZCByZWdh
cmRzLApOaWNvbGFzIEZyYXR0YXJvbGkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

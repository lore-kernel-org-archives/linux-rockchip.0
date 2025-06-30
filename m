Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E48C83030
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 11:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp85PJ8SoOlRZXy4qpWheN3f+GEnZZ670bMzJtSqcSs=; b=tv0YCxFfJaJNmW
	rmMhJfi3Fn0pFBxglKeSjd3hQwnFrCzW01zr0xXeeuxfRrLaCWToLoWAkX4b4mno/pHzWfW4x8Hrg
	8siNDuk3U6cTYblU4Yk/IQjtG8pYIq1Sl8FNA3ovX8n55l9c4DOYASknx+FLqsVe4mAeZifPqFulL
	IcAtKNkXy91Hq1wz0gjRSB5kJA4MkILykWJrkuiQGcMCm/br4uIZdX7kocNTqsYj/+bxNH3LXMrNX
	4It2DSCwBvMJE/RFWUh9SYwcIJrW4jQYi+ck/rD1OnZ304S0SWo8y2YZSa/60SEQI48VUCd36LwtR
	TyEzpZJUwJVgDQpF1vnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWD9o-000000027Sp-0QAg;
	Mon, 30 Jun 2025 11:58:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWCpP-000000023fn-1xDP;
	Mon, 30 Jun 2025 11:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xPFwbPUWBXDT92ojYtJuOQPO2L8B2j+IEn0/GIzjJBo=; b=Ui75+re1+KHTh458MbR2Bd8mPl
	fOrvQv6wD2E4IGeav9+UmD++98eSS9csdwlsEA1HIomHH3gzWvvVfs41PHmk7llKYSQwgXNKtaOiL
	AOXC7abgKoZk9smIrQjMKrpBQzXk8XxXwt1QTHgadnWPBVsOOLNlExIqBeGdqrsFfWcXcNMsQID88
	RZ8ydWZg0j6zM/5m4DhUwJ+QOgcUx9rKl5qEqME542DtN4XORD/Efywkrz/iKmOMLuOAwc3ehtmM5
	i3haBZVQrj/fCb3bx3+hhOOvLmWU57e00f7fFkB8kKL3kTCkLBh4p1STkCL24tcOgHeYoo7WksAvU
	ONCuxQHQ==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWCpJ-0008LL-Qw; Mon, 30 Jun 2025 13:37:33 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: input: adc-keys: allow linux,input-type property
Date: Mon, 30 Jun 2025 13:37:32 +0200
Message-ID: <5913630.hdfAi7Kttb@diego>
In-Reply-To: <20250630-rock4d-audio-v1-1-0b3c8e8fda9c@collabora.com>
References: <20250630-rock4d-audio-v1-0-0b3c8e8fda9c@collabora.com>
 <20250630-rock4d-audio-v1-1-0b3c8e8fda9c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_043739_520710_2110265F 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAzMC4gSnVuaSAyMDI1LCAxMjoxOToyNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToKPiBhZGMta2V5cywgdW5saWtlIGdw
aW8ta2V5cywgZG9lcyBub3QgYWxsb3cgbGludXgsaW5wdXQtdHlwZSBhcyBhIHZhbGlkCj4gcHJv
cGVydHkuIFRoaXMgbWFrZXMgaXQgaW1wb3NzaWJsZSB0byBtb2RlbCBkZXZpY2VzIHRoYXQgaGF2
ZSBBREMgaW5wdXRzCj4gdGhhdCBzaG91bGQgZ2VuZXJhdGUgc3dpdGNoIGV2ZW50cy4KPiAKPiBB
ZGQgdGhlIHByb3BlcnR5IHRvIHRoZSBiaW5kaW5nIHdpdGggdGhlIHNhbWUgZGVmYXVsdCBhcyBn
cGlvLWtleXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFz
LmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2lucHV0L2FkYy1rZXlzLnlhbWwgfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9pbnB1dC9hZGMta2V5cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2lucHV0L2FkYy1rZXlzLnlhbWwKPiBpbmRleCA3YWEwNzhkZWFkMzc4MTYy
OTQ3MzI1MDFlMTk4M2FiODY5ZjM4MzExLi5lMzcyZWJjMjNkMTY1MWQ3M2VmMzc0OWE1NmQ1NDg3
MjA2NzAzN2I1IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pbnB1dC9hZGMta2V5cy55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2lucHV0L2FkYy1rZXlzLnlhbWwKPiBAQCAtNDIsNiArNDIsOSBAQCBwYXR0ZXJuUHJv
cGVydGllczoKPiAgCj4gICAgICAgIGxpbnV4LGNvZGU6IHRydWUKPiAgCj4gKyAgICAgIGxpbnV4
LGlucHV0LXR5cGU6Cj4gKyAgICAgICAgZGVmYXVsdDogMSAgIyBFVl9LRVkKPiArCgpoYXZpbmcg
Ym90aCBhZGMtIGFuZCBncGlvLWtleXMgYmVoYXZlIHRoZSBzYW1lIGluIHRoYXQgcmVnYXJkIG1h
a2VzIGEgbG90Cm9mIHNlbnNlLCBhbmQgdGhlIGFkZGl0aW9uIG1hdGNoZXMgZ3Bpby1rZXlzLnlh
bWwsIHNvCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4g
ICAgICAgIHByZXNzLXRocmVzaG9sZC1taWNyb3ZvbHQ6Cj4gICAgICAgICAgZGVzY3JpcHRpb246
Cj4gICAgICAgICAgICBWb2x0YWdlIGFib3ZlIG9yIGVxdWFsIHRvIHdoaWNoIHRoaXMga2V5IGlz
IGNvbnNpZGVyZWQgcHJlc3NlZC4gTm8KPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

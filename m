Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B12A6C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS5+DHwjDQcTIvNe9UgY/yfQ8CCCMGiYXQxgXoVKSb0=; b=Fg3yuEhxG59PVF
	7Kvb/t86AwZ9J2v7vsYCc0ddokOAG3jLi8pMbggD7QodOskXT4V7REpd3Lq47ZbpSjtEjfsLFNdO3
	3eF+Jy+S8tgryR+mEusBOvtRfUm35sXWMUbOKCABSuWLGDttNKC7YlZ9RPlWdn9+mMf2GMtj7W4zo
	I3Nw9d275xsOfOK2JFZcpkZ7JGpYgcCygn35W6ET/ahnkglfHwxyPGyH4+X/e0livwAKJ0mkOO/QU
	5H4sPOEtgjkXcVUKmmC2j1WdsSsz0OE24g21KjErnPQgchCpF5ZIv8PrIGzRKi7JsNEcjktF8zwEN
	mVtM+YHDWk7MzfQDlUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqlK-0000000BpoE-2H35;
	Thu, 10 Jul 2025 12:52:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpLD-0000000Bcpy-1SQF;
	Thu, 10 Jul 2025 11:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=44pTvFaVwV8DGemXvVyLFKizLr/RNUQE/CGSbN7Xx/4=; b=oWqA3t5FpiwDDXz3OxYTP0050s
	uo4AjZyZHhIUBwCD3rcwbx1oUdmgKY/XOq8QfxELCK0s0b6ROHLFRy0hpIm1B2jYOnC2k9yQEoxyo
	CAUJB8l3om1s7GESdPFCQaYxCQf6QF30ziZ9hTXT5L7163S4KBLqsf2hUVPUMiBfwaZxvp/QrDk31
	Q1rNS16MOCr9O3SY3PK5WJrNZtvqKaEvgth0l6a+tQg1c3zAIyf/LWtsBsCYF7HG0mmaitsPwMeHW
	svILvWuLii/xUsSMZYLlFz+AauuNXHNxM3oIQEetbP2yJm40YmcesL5jG8PDCGmewJtxxIPQnwACz
	f6WwTd7Q==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZpL6-0004SZ-8y; Thu, 10 Jul 2025 13:21:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v6 4/7] dt-bindings: thermal: rockchip: document otp thermal trim
Date: Thu, 10 Jul 2025 13:21:19 +0200
Message-ID: <3592348.tdWV9SEqCh@phil>
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-4-b6e9efbf1015@collabora.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <20250610-rk3576-tsadc-upstream-v6-4-b6e9efbf1015@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_042127_390619_2936A70B 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDEwLiBKdW5pIDIwMjUsIDE0OjMyOjQwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFNldmVyYWwgUm9ja2NoaXAg
U29Dcywgc3VjaCBhcyB0aGUgUkszNTc2LCBjYW4gc3RvcmUgY2FsaWJyYXRpb24gdHJpbQo+IGRh
dGEgZm9yIHRoZXJtYWwgc2Vuc29ycyBpbiBPVFAgY2VsbHMuIFRoaXMgY2FwYWJpbGl0eSBzaG91
bGQgYmUKPiBkb2N1bWVudGVkLgo+IAo+IFN1Y2ggYSByb2NrY2hpcCB0aGVybWFsIHNlbnNvciBt
YXkgcmVmZXJlbmNlIGNlbGwgaGFuZGxlcyB0aGF0IHN0b3JlCj4gYm90aCBhIGNoaXAtd2lkZSB0
cmltIGZvciBhbGwgdGhlIHNlbnNvcnMsIGFzIHdlbGwgYXMgY2VsbCBoYW5kbGVzCj4gZm9yIGVh
Y2ggaW5kaXZpZHVhbCBzZW5zb3IgY2hhbm5lbCBwb2ludGluZyB0byB0aGF0IHNwZWNpZmljIHNl
bnNvcidzCj4gdHJpbSB2YWx1ZS4KPiAKPiBBZGRpdGlvbmFsbHksIHRoZSB0aGVybWFsIHNlbnNv
ciBtYXkgb3B0aW9uYWxseSByZWZlcmVuY2UgY2VsbHMgd2hpY2gKPiBzdG9yZSB0aGUgYmFzZSBp
biB0ZXJtcyBvZiBkZWdyZWVzIGNlbHNpdXMgYW5kIGRlY2ljZWxzaXVzIHRoYXQgdGhlIHRyaW0K
PiBpcyByZWxhdGl2ZSB0by4KPiAKPiBFYWNoIFNvQyB0aGF0IGltcGxlbWVudHMgdGhpcyBhcHBl
YXJzIHRvIGhhdmUgYSBzbGlnaHRseSBkaWZmZXJlbnQKPiBjb21iaW5hdGlvbiBvZiBjaGlwLXdp
ZGUgdHJpbSwgYmFzZSwgYmFzZSBmcmFjdGlvbmFsIHBhcnQgYW5kCj4gcGVyLWNoYW5uZWwgdHJp
bSwgc28gd2hpY2ggb25lcyBkbyB3aGljaCBpcyBkb2N1bWVudGVkIGluIHRoZSBiaW5kaW5ncy4K
PiAKPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiBT
aWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xs
YWJvcmEuY29tPgoKQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cgp3
aXRoIG9uZSBxdWVzdGlvbiBiZWxvdwoKPiAtLS0KPiAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvcm9j
a2NoaXAtdGhlcm1hbC55YW1sICAgICAgICAgfCA2MSArKysrKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRo
ZXJtYWwueWFtbAo+IGluZGV4IDQ5Y2VlZDY4YzkyY2U1YTMyZWQ4ZDRmMzliZDg4ZmQwNTJkZTBl
ODAuLjU3M2Y0NDdjYzI2ZWQ3MTAwNjM4Mjc3NTk4YjBlNzQ1ZDQzNmZkMDEgMTAwNjQ0Cj4gLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhl
cm1hbC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvcm9ja2NoaXAtdGhlcm1hbC55YW1sCj4gQEAgLTQwLDYgKzQwLDE3IEBAIHByb3BlcnRpZXM6
Cj4gICAgICAgIC0gY29uc3Q6IHRzYWRjCj4gICAgICAgIC0gY29uc3Q6IGFwYl9wY2xrCj4gIAo+
ICsgIG52bWVtLWNlbGxzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IGNl
bGwgaGFuZGxlIHRvIHdoZXJlIHRoZSB0cmltJ3MgYmFzZSB0ZW1wZXJhdHVyZSBpcyBzdG9yZWQK
PiArICAgICAgLSBkZXNjcmlwdGlvbjoKPiArICAgICAgICAgIGNlbGwgaGFuZGxlIHRvIHdoZXJl
IHRoZSB0cmltJ3MgdGVudGhzIG9mIENlbHNpdXMgYmFzZSB2YWx1ZSBpcyBzdG9yZWQKPiArCj4g
KyAgbnZtZW0tY2VsbC1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiB0cmlt
X2Jhc2UKPiArICAgICAgLSBjb25zdDogdHJpbV9iYXNlX2ZyYWMKPiArCgphcmUgd2Ugc3VyZSwg
d2Ugd2FudCB1bmRlcnNjb3JlcyBoZXJlPwp0cmltLWJhc2UsIHRyaW0tYmFzZS1mcmFjIGxvb2tz
IHNvbWV3aGF0IG5pY2VyLgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5104C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 11:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ODJkU5Sp6AwJw60AHSB6MmcdVogp7tu/mWx9V9bksM=; b=Q3Ip9b2RNpaUSg
	u55eMefzAqYDSLfMSAArSOu+E1cT5xqP1m6EKJWdaVZpOCwraPU9ZDQG9EyDCDuVpnJBlQiCKyBal
	vgzNJf2w8nhLsWVDEPBjLqJhm7hWKp9wforSs7KYNBvMvNrZaRmjiMIg+SjANWyByjlal1Q5gpIay
	xGYDF1Qt8jNthj5n8NcFihFYxQQUnpti5ztmWmw1GAB5C5ah2cm4Ek9onVg3NJF4BMpxI/7EMT2EQ
	eUzIpLTcP8Vr6Lb/jAymitG/ERWOfANy6g2DaDtuqo8UolXaaH5uxGWbpT9IdNQqwI8R5a/9s1hl0
	6uGrzhRVnkhBrm88WbEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDUt-0000000Ct0m-4A3g;
	Thu, 19 Jun 2025 11:31:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB9j-0000000CXbO-0X3x;
	Thu, 19 Jun 2025 09:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=YHxb3G7EW8RzN+dJgsKeTL9lqcEi84ddNrYeIybSCPk=; b=Lz+dxvYl7ugAV5gMsPRzO/Zn6T
	Mxdaho/YZVeiUWxOl3h4OrtvnZ6048BbBDlX5dPKQ1XqhZujSpQjlCFGyTGDJm7if6VNINPaxvQ7o
	/8kFNcpB0Rj4uYwQn53p69/iF6U2l0VZMcGB4ZK08SUUkSee1C2Bd+uoY3lEBnaDa99ka8xdolaYd
	SkyMcwGzxVNOJqlu0QcVtDNjVOvnvaWwLcfmxjA1+76juFgGKqfFU9c6d/YlIZdO9oBjq1meeEYDr
	PAGkuq1Dd0gbw/v6G9F9GSdHqYL3yb71Yy3TIRlUw3GNSjlg/GLMdhqeQKNJ7KWRkbwdsBY/RvAPs
	pKCLP7BA==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSB9C-0007Ey-OE; Thu, 19 Jun 2025 11:01:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
Date: Thu, 19 Jun 2025 11:01:25 +0200
Message-ID: <2217684.TLkxdtWsSY@phil>
In-Reply-To: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_020159_162474_1F8E54DD 
X-CRM114-Status: GOOD (  13.12  )
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

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwODoyODoyMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFRvbWV1IFZpem9zbzoKPiBUaGlzIHNlcmllcyBhZGRzIGEgbmV3IGRy
aXZlciBmb3IgdGhlIE5QVSB0aGF0IFJvY2tjaGlwIGluY2x1ZGVzIGluIGl0cwo+IG5ld2VyIFNv
Q3MsIGRldmVsb3BlZCBieSB0aGVtIG9uIHRoZSBOVkRMQSBiYXNlLgo+IAo+IEluIGl0cyBjdXJy
ZW50IGZvcm0sIGl0IHN1cHBvcnRzIHRoZSBzcGVjaWZpYyBOUFUgaW4gdGhlIFJLMzU4OCBTb0Mu
Cj4gCj4gVGhlIHVzZXJzcGFjZSBkcml2ZXIgaXMgcGFydCBvZiBNZXNhIGFuZCBhbiBpbml0aWFs
IGRyYWZ0IGNhbiBiZSBmb3VuZCBhdDoKPiAKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMjk2OTgKPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
b21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiAtLS0KPiBDaGFuZ2VzIGluIHY3
Ogo+IC0gQWN0dWFsbHkgZW5hYmxlIHByb2Nlc3MgaXNvbGF0aW9uIGJ5IGFsbG9jYXRpbmcgaXRz
IG93biBJT01NVSBkb21haW4KPiAgIHRvIGVhY2ggRFJNIGNsaWVudC4KPiAtIExpbmsgdG8gdjY6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA2MDQtNi0xMC1yb2NrZXQtdjYtMC0yMzdh
Yzc1ZGRiNWVAdG9tZXV2aXpvc28ubmV0CgpJIHdhcyBhYmxlIHRvIHN1Y2Nlc3NmdWxseSBydW4g
dGhlIFNTRExpdGUgTW9iaWxlRGV0IG1vZGVsLCBkZXRlY3RpbmcKZWxlbWVudHMgY29ycmVjdGx5
IG9uIHRoYXQgIlNvdW5kcyBvZiBOZXcgWW9yayIgeW91dHViZSB2aWRlbyBhbGwgdGhlCmRlbW9z
IHNlZW0gdG8gYmUgdXNpbmcgOy0pIC0gb24gYSByazM1ODgtdGlnZXIgYm9hcmQuCgpOUFUgbmVl
ZGVkIGxpa2UgMzBtcyBwZXIgZnJhbWUgb3Igc28gYW5kIGFsc28gZGV0ZWN0ZWQgdGhlIGV4cGVj
dGVkCnRoaW5ncywgc28KClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

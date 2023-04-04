Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E517C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZcahnkEOXHTu0ar+BaZvI3HP+Rxz8t7B9ooa2dnbkI=; b=2YOxQO0Iz1NtED
	695ZUw9+ezQFU4M5C7qM+foREHidUFxd3udjIR0Ih7rgGQ4SjcKcvsfg1Lh4+n+p6Zj5h43KRuYhz
	S9kvKsBbfuHTjra+MbHiQj5JE+4ToNGebVguwj2NdRodjAZKJdqesZb+xzB6b4FCT1FlYTSs+Uzwu
	SVdlN01O9A2iwIij8JZIMqRK3n466vKaS2smTfNJ9QmFxO+HBx8+gLzgdtttYdTqSPc8w5npiF0+N
	4WbpXfcgQrwm6+88Pdno6HNsoBChDAuPFlp70ATTH92CuzoX4tVmsAIGQZnVnyuYPh3g8jG6Adyrj
	cu1aBtOpyiJKaQP+6/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjakP-000GNK-0Q;
	Tue, 04 Apr 2023 07:06:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjakK-000GKk-1o;
	Tue, 04 Apr 2023 07:06:26 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D4BA76603157;
	Tue,  4 Apr 2023 08:06:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680591980;
	bh=gUi49HxcibXURy7ru7avIXwC6889apHBnBbYdOtrg2k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mcmBCL9ctN+gY4WIy7tzjD50vo57Ignj2I1azKQWs0Q0duZRxhHIgkiGgk4eN8xvh
	 4J59+U0pH//LqFqLzlcovuiAWikY9Lpm0HyIrJkNo1Z6nW2HHPXafCgZ600BdgBeCS
	 FZTA1FkttFOyqkKuduaXfNV0MtYCqDWWOJ04afN2mQGuYXx2ZgONluHwc8sFWsoZk/
	 QGIHt+YEh7B16p7SlH96kMw/+BCtHrs2NfMgV1K5j/4GT+BLHGQpGELuABoOBtJ0gL
	 XTM0vXvrnDOHk7xVrIhTNrA5Qgd4zLsOGJA0tUPouIwWsnuIMw6GO2WfetsZf0rR73
	 e+bMXGpawGMsA==
Message-ID: <a4385349-1776-85af-5dda-7d846ac2dd18@collabora.com>
Date: Tue, 4 Apr 2023 10:06:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Chris Morgan <macroalpha82@gmail.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
 <642b134c.4a0a0220.1d01a.5990@mx.google.com> <4981873.LvFx2qVVIh@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <4981873.LvFx2qVVIh@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_000624_806571_82794665 
X-CRM114-Status: GOOD (  17.08  )
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

T24gNC80LzIzIDAwOjU1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDMuIEFw
cmlsIDIwMjMsIDE5OjU2OjI2IENFU1Qgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4+IE9uIE1vbiwg
QXByIDAzLCAyMDIzIGF0IDAxOjUwOjUyUE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90
ZToKPj4+IEFkZCB0aGUgbmVjZXNzYXJ5IERUIGNoYW5nZXMgZm9yIHRoZSBSb2NrIDVCIGJvYXJk
IHRvIGVuYWJsZSBzdXBwb3J0IGZvcgo+Pj4gdGhlIFBXTSBjb250cm9sbGVkIGhlYXQgc2luayBm
YW4uCj4+Cj4+IEhvbmVzdCBxdWVzdGlvbiwgYnV0IHNob3VsZCB3ZSBiZSBhZGRpbmcgdGhpcyB0
byB0aGUgYm9hcmQgZmlsZSBpZiBub3QKPj4gZXZlcnkgZGV2aWNlIGhhcyBhIFBXTSBmYW4gKHRo
ZXkgYWxsIGhhdmUgdGhlIHNvY2tldCBmb3IgdGhlIGZhbiwgYnV0Cj4+IG5vdCB0aGUgZmFuKT8g
Rm9yIGV4YW1wbGUgSSBoYXZlIGEgcGFzc2l2ZWx5IGNvb2xlZCBjYXNlIHRoYXQgZG9lc24ndAo+
PiBpbmNsdWRlIGEgZmFuLgo+IAo+IFdlIGFsc28gc2V0IHVwIHRoZSBzZG1tYyBob3N0IHdpdGhv
dXQga25vd2luZyBpZiB0aGUgdXNlciB3aWxsIHBsdWcgaW4KPiBhbiBzZC1jYXJkIDstKSAuCj4g
Cj4gU28gZXNwZWNpYWxseSBpbiB0aGUgY2FzZSB3aGVyZSB0aGVyZSBpcyBhIGRlZGljYXRlZCBz
b2NrZXQgZm9yIGl0LAo+IGFzIHlvdSB3cml0ZSwgd2Ugc2hvdWxkIGRlZmluaXRseSBhZGQgaXQg
Zm9yIHRoZSBib2FyZC4KPiAKPiBCeSB0aGUgd2F5LCBhbSBJIGNvcnJlY3QgaW4gdGhpbmtpbmcg
dGhhdCBwYXRjaCAxIGFuZCAyIGFyZSBhY3R1YWxseQo+IGluZGVwZW5kZW50IG9mIGVhY2ggb3Ro
ZXI/IFNvIEknZCBqdXN0IHBpY2sgcGF0Y2gyIGZvciB0aGUgUm9ja2NoaXAgdHJlZQo+IChhcyB3
ZSBkbyBoYXZlIGEgdGV4dC1iaW5kaW5nKSBhbmQgeW91IGNhbiBoYW5kbGUgdGhlIHlhbWwgY29u
dmVyc2lvbgo+IGluIGEgZm9sbG93dXAgb3Igd2hhdGV2ZXI/CgpZZXMsIHRoZSBiaW5kaW5ncyBj
b252ZXJzaW9uIGNhbiBiZSBoYW5kbGVkIGluZGVwZW5kZW50bHkuCgpUaGFua3MsCkNyaXN0aWFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

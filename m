Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3061C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 10:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPqRQvR69ngby2EOBh0hGJ7eUWixd2jjpITROyrscGg=; b=Qzqxo9Xg5QzZ1L
	ZNZibAZwR5Z5dzK40phCU6MVWS+huHMck3r3JQsuBje/bqVMEjbcQib4c6QxnKhJWEfXwRCLymc+C
	YAeMP7HkuhbK6fdM81NDAb68E2tmTb+uzSluxqq4UyDtBjGVNzqGXnJipzQLBUfzD5apYHIIJZ8LQ
	efEY3kJpZc6Mxzyolae/cRB23zztJqksi4fM1iiZfGuYDkK2o/slFtXRr8o0auduv2GCac2umvUjU
	5cs1r+r9DqYrWfNMwCs1x/BD7R5Vn8+vD130Uh7I54wDeBfaSErdWO+NZFQzhhZO2x6LjKAZFtEGR
	h/JVctYSWk2Zb8F4xxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucim4-0000000CN6p-1L6u;
	Fri, 18 Jul 2025 10:57:08 +0000
Received: from mail-m49244.qiye.163.com ([45.254.49.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uciVC-0000000CKDV-1Lz1;
	Fri, 18 Jul 2025 10:39:44 +0000
Received: from [172.16.12.153] (gy-adaptive-ssl-proxy-3-entmail-virt135.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c7e0c39a;
	Fri, 18 Jul 2025 18:39:28 +0800 (GMT+08:00)
Message-ID: <45c9eaa6-6ad0-4364-b5f8-b56aa3c44f69@rock-chips.com>
Date: Fri, 18 Jul 2025 18:39:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-2-kernel@airkyi.com>
 <20250718-psychedelic-panda-of-defiance-ef6aac@kuoka>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20250718-psychedelic-panda-of-defiance-ef6aac@kuoka>
X-HM-Tid: 0a981d1e190003abkunm7ec24102152465
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNLGVZMTEseS08eHR9IQ0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZuLZxF+WTFuWApXhP8dJJ5vNLXac2B6ezKmHuKb2coSmmtZwD9oTwpU+21pr6ArbSjEit/L7TtYifgkka1DZNyUpAbFrB1qW0xRuOXbzluQkT5jfXNwcCUszbsRGex/72Cs9IS1/qGQeBzD2IywmuWZwF7+3WYhnThas02obWKs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zmzQ+FhY/AiTq0leos07zT40/sgCDe3I6hdGUfeDUWc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_033942_881343_B8A994F0 
X-CRM114-Status: GOOD (  12.60  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gMjAyNS83LzE4IDE2OjEwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDE4LCAyMDI1IGF0IDAyOjI2OjE1UE0gKzA4MDAsIENoYW95aSBD
aGVuIHdyb3RlOgo+PiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5j
b20+Cj4+Cj4+IFRoZSBSSzMzOTkgaGFzIHR3byBVU0IvRFAgY29tYm8gUEhZLiBXaXRoIHRoZSBo
ZWxwIG9mIGV4dGVybmFsIFR5cGUtQwo+PiBjb250cm9sbGVyLCB0aGUgUEhZIGNhbiBzd2l0Y2gg
YWx0bW9kZSBiZXR3ZWVuIFVTQiBhbmQgRFAuCj4+Cj4+IFRoZWlyIGNvbm5lY3Rpb24gZGlhZ3Jh
bSBpcyBzaG93biBiZWxvdzoKPj4KPj4gZXh0ZXJuYWwgVHlwZS1DIENoaXAwIC0tLT4gVVNCL0RQ
IFBIWTAgLS0tKwo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCA8LS0tLT4gQ0ROLURQIGNvbnRyb2xsZXIKPj4gZXh0ZXJuYWwgVHlwZS1DIENoaXAxIC0tLT4g
VVNCL0RQIFBIWTEgLS0tKwo+IEl0IGxvb2tzIGxpa2UgeW91ciAiZXh0ZXJuYWwiIGNvbnRyb2xs
ZXIgaXMgbm90IGRlc2NyaWJlZC4gTG9vayBhdCB5b3VyCj4gcG9ydCBwcm9wZXJ0eSAtICJDb25u
ZWN0aW9uIHRvIFVTQiBUeXBlLUMgY29ubmVjdG9yIi4gTGFjayBvZiBwcm9wZXIKPiBoYXJkd2Fy
ZSBkZXNjcmlwdGlvbiBsZWFkcyB5b3UgdG8gY2xhaW0gdGhhdCB0aGUgUEhZIGlzIHRoZSBtb2Rl
IHN3aXRjaC4KPiBJIGhhdmUgZG91YnRzIG9uIHRoYXQuCj4KPiBZb3UgYWxyZWFkeSByZWNlaXZl
ZCB0aGUgY29tbWVudHMgdGhhdCB5b3UgbmVlZCB0byBjb21lIHdpdGggcmF0aW9uYWxlCj4gd2h5
IG1ha2luZyBQSFkgYSBVU0Igc3dpdGNoIGlzIGNvcnJlY3QuIEkgZG9uJ3Qgc2VlIHRoZSBhcmd1
bWVudHMgZm9yCj4gdGhhdC4KClNvcnJ5LCBJIGRpZG4ndCBnZXQgeW91ciBwb2ludCBiZWZvcmUu
IE5vdyBsZXQgbWUgY2xlYXIgaXQgdXAuCgpUaGUgUkszMzk5IFVTQi9EUCBjb21tYm8gUEhZIHN1
cHBvcnTCoCBjaGFuZ2UgaXQncyBwaW4gbWFwcGluZywgdGhpcyAKbWVhbnMgdGhhdCB3ZSBjYW4g
aW1wbGVtZW50IHRoZSBmdW5jdGlvbiBvZiB0eXBlYyBzd2l0Y2ggYnkgY2hhbmdpbmcgdGhlIApw
aW4gbWFwcGluZyB0aHJvdWdoIHNvZnR3YXJlIGNvbmZpZ3VyYXRpb24uIEluIGFkZGl0aW9uLCBE
UCBsYW5lIGNhbiBiZSAKY29uZmlndXJlZCBmb3IgUEhZcyB2aWEgc29mdHdhcmUuIFRoZXJlZm9y
ZSwgYm90aCBtb2RlLXN3aXRjaCBhbmQgCm9yaWVudGF0aW9uLXN3aXRjaCBhcmUgYWN0dWFsbHkg
cGVyZm9ybWVkIGJ5IHRoZSBQSFkgaXRzZWxmLCByYXRoZXIgdGhhbiAKYnkgYW4gZXh0ZXJuYWwg
VHlwZS1DIGNvbnRyb2xsZXIgY2hpcC4gVGhlIGV4dGVybmFsIGNoaXAgaXMgb25seSB1c2VkIHRv
IApyZXBvcnQgUEQgZXZlbnRzLgoKQmVzaWRlcyBSSzMzOTksIFJLMzU3Ni9SSzM1ODggYWxzbyBp
bnRlZ3JhdGUgdGhlc2UgY2FwYWJpbGl0aWVzIGluIHRoZWlyIApVU0IvRFAgUEhZLCB3aXRoIGJv
dGggbW9kZS1zd2l0Y2ggYW5kwqBvcmllbnRhdGlvbi1zd2l0Y2ggaGFuZGxlZCBieSB0aGUgClBI
WVswXSAuCgpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBJJ2xsIGFkZCBtb3JlIGRldGFp
bCBpbiB2My4KCgpbMF06IApodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xNS42
L3NvdXJjZS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyNMNjkzCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

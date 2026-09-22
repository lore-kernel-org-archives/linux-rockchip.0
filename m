Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A34EC982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 09:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPpfizLAv0Qly8X7ZFUFjZYCuvOWTvkYC44JBKB5XsI=; b=po1+Oi5cDiQ5UA
	cORtoq8hFoB+9ky0YfnSvi0DVKcqB81nJIv5JU+gsdGS8qaBb54fHQLB3FA3xWOBjC7vck4vpXPcS
	2/19tAZeqiyy2zkfeoLiOAnB/CaIR1XXHw5qN89llDn0d/gnBDVtEuMswH7ZC0tjcI6+AIM+I5h+f
	fqfjU9P1egdi4RqZFsQDnQ2CCiR54jGPwn09AOtiJ1QDS4G6SbkwTE3J4EFFv62qVE4DA2V/Vaz5I
	r6raGoQrRX54s0Evqv7KfcR30ZurC8/1JGvEB9X957j21ZEYKOJ/HtAvgfAXI7VJh1nryNBNzRMFv
	y+SX01VA4sE0yMLyqLKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ws6-00000004vmL-1LLk;
	Tue, 22 Sep 2026 09:33:06 +0000
Received: from mail-m12740.qiye.163.com ([115.236.127.40])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ws3-00000004vlT-31vM;
	Tue, 22 Sep 2026 09:33:05 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4eb536cd9;
	Tue, 22 Sep 2026 16:57:55 +0800 (GMT+08:00)
Message-ID: <3bfb61d5-333d-4005-ad3b-2e8179c0e45e@rock-chips.com>
Date: Tue, 22 Sep 2026 16:57:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 19/19] drm/bridge: analogix_dp: don't create a
 panel_bridge
To: Heiko Stuebner <heiko@sntech.de>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, Anusha Srivatsa
 <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
 <DLLOZYM6YWJ3.6Q0LRD1WABGW@bootlin.com> <1889588.TLkxdtWsSY@phil>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <1889588.TLkxdtWsSY@phil>
X-HM-Tid: 0aa0c856048703a8kunm13843dd282f85
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTRhCVksYHh5IT0IaGRhKTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5KVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=TNR/0SotamoVdJUJEBCwZjRW5KZCgNHWIy7B4TOS3SPVjThz6kkpecEQfCBm1hET0QLLrXnQiPdxL1/ZgQBcxH6Fgs4gwH89bNW1b35Mip8zJ7P9QGBceDdbWh0z3SX9ZKl3hyUCylvmgOVFto0lOSx+M5/QgWBF7muvoV2pXBE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3BVvMws54RIF3ziE5nORoR5QOkw6Rpw6m98i1VFobSo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_023303_983063_AE1ED8F9 
X-CRM114-Status: GOOD (  14.19  )
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

SGkgSGVpa28sCgpPbiA5LzIyLzIwMjYgNDoyMiBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4g
SGkgTHVjYSwKPiAKPiBBbSBEaWVuc3RhZywgMjIuIFNlcHRlbWJlciAyMDI2LCAxMDoxMjo0MSBN
aXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEx1Y2EgQ2VyZXNvbGk6Cj4+IE9u
IE1vbiBTZXAgMjEsIDIwMjYgYXQgNTowNyBBTSBDRVNULCBEYW1vbiBEaW5nIHdyb3RlOgo+Pj4g
T24gOS8xNi8yMDI2IDk6NDUgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4gCj4gWy4uLl0KPiAK
Pj4+PiBAQCAtMTYzLDE4ICsxNjEsNiBAQCBzdGF0aWMgaW50IGV4eW5vc19kcF9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+ICAgIAkgKi8KPj4+PiAgICAJcGxhdGZvcm1f
c2V0X2RydmRhdGEocGRldiwgZHApOwo+Pj4+Cj4+Pj4gLQkvKiBUaGlzIGlzIGZvciB0aGUgYmFj
a3dhcmQgY29tcGF0aWJpbGl0eS4gKi8KPj4+PiAtCW5wID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYt
Pm9mX25vZGUsICJwYW5lbCIsIDApOwo+Pj4+IC0JaWYgKG5wKSB7Cj4+Pj4gLQkJZHAtPnBsYXRf
ZGF0YS5wYW5lbCA9IG9mX2RybV9maW5kX3BhbmVsKG5wKTsKPj4+PiAtCj4+Pj4gLQkJb2Zfbm9k
ZV9wdXQobnApOwo+Pj4+IC0JCWlmIChJU19FUlIoZHAtPnBsYXRfZGF0YS5wYW5lbCkpCj4+Pj4g
LQkJCXJldHVybiBQVFJfRVJSKGRwLT5wbGF0X2RhdGEucGFuZWwpOwo+Pj4+IC0KPj4+PiAtCQln
b3RvIG91dDsKPj4+PiAtCX0KPj4+PiAtCj4+Pgo+Pj4gVElQOiBJbiBteSBXSVAgdjMgcGF0Y2gg
c2VyaWVzLCBJIHVzZSBvZl9kcm1fZmluZF9wYW5lbCgpIHRvZ2V0aGVyIHdpdGgKPj4+IGRldm1f
ZHJtX3BhbmVsX2JyaWRnZV9hZGQoKSB0byBtYWludGFpbiB0aGlzIGJhY2t3YXJkIGNvbXBhdGli
aWxpdHkuIEJ1dAo+Pj4gSSBhbHNvIHRoaW5rIHRoaXMgb2xkIGFwcHJvYWNoIHNob3VsZCBiZSBk
ZXByZWNhdGVkIG5vdy4gU2hhbGwgd2UgYWRkCj4+PiBzb21lIG5vdGVzIGluIHRoZSBjb21taXQg
bWVzc2FnZSB0byBtZW50aW9uIHRoZSBkZXByZWNhdGlvbiBvZiB0aGlzIG1ldGhvZD8KPj4KPj4g
V2hhdCBpcyB0aGUgIldJUCB2MyIgc2VyaWVzIGV4YWN0bHk/IERvIHlvdSBoYXZlIGEgbGluayAo
dG8gdjIgaW4gY2FzZSB2Mwo+PiBpcyBub3QgeWV0IHB1YmxpYyk/Cj4gCj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNjA4MDQwODE3MTcuNzQxNDA0LTEtZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbS8KPiBpcyB0aGUgc2VyaWVzIGluIHF1ZXN0aW9uLgo+IAo+IAoK
U29ycnkgZm9yIHRoZSBjb25mdXNpb24uIEkgd2FzIGRpc2N1c3NpbmcgYW5vdGhlciBzZXBhcmF0
ZSBzZXJpZXMgaW4gCnRoaXMgdGhyZWFkLCB3aGljaCBjYXVzZWQgbWlzdW5kZXJzdGFuZGluZy4g
SSBtZW50aW9uZWQgZWFybGllciB0aGF0IEkgCndpbGwgdHJ5IHRvIHBvc3QgaXRzIHYzIHVwZGF0
ZSB3aXRoaW4gdGhpcyB3ZWVrLlswXQoKQmVzdCByZWdhcmRzLApEYW1vbgoKWzBdIApodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvNTdmNTdmNDAtODdlYy00N2EyLWE4YjktY2M4YjFhZGMzYjhm
QHJvY2stY2hpcHMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0763BC982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gybKpDWMjH0zoxmzWd9Mz9LT3wjkb26uOYxfdYWgJlk=; b=BGi7evcFTO9P+O
	hQYv72G8YElwq77FBYVXSlUYetGvBfiamh9zTnR/n1vM7Ch5AgmZcLO+WbAr2mzHwH71XIsl1qfmD
	Qaw3fKcN3xjeRpdyBEMDyGgVYynw0LBhg0zwPlXYr4eZX2CtVT8aoexutfme9qhDkxMDWHtIq0zft
	p7mNFgZHejClgxCqNlgtZT86zIO3YMq8eZHw9s/0f+dcfQxd59FM47hbdbTLl+Pgp6ImwP2yQgmRH
	QIeydMSzUBlX5YURxQOM0nK2nGfMLXYuk14FenGRKH8NGLUqo0pVDNq+Zc+00VG5wlE0ZRKSeh0Y7
	DUPDEexH6Tj4/DDn+kEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vmx-00000004fA0-3Jli;
	Tue, 22 Sep 2026 08:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vmu-00000004f8z-2AZ9;
	Tue, 22 Sep 2026 08:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jhl12w2BK3T73bfh332u/N28Aqr0VzNZAxke4cgagwM=; b=u2EoGzb0ti7/TwOnyh9MQVstlN
	w0Pg4/YOo2FcGHfMzDj6DJWTLAZl/q6wfb0gQBuemkKb1j0eeW+WYstTYzTZ6EoAxsccNubqQJUZN
	+EareNsxJgvta6aTnqHlYNGYQ7C3eiT2vi9mBsUwMy++Rd5ky9sTpJAoeHrfvRv2Tdpzcd7STIENx
	qSKtdU4j3clbqQeFKrx0t6PTBYYSXYjWGzr5u0CaUp+ZTrI5ngCU9xUwss//eYPvorO28GHHAVxC1
	dHDdKIt8PuB9naKPeh9/KaHsg4R0I1BlucAmJM3BYHEO3lnkZ28rRXo9h86iKeESOIYIqjw9nbcN9
	C7eDjFYw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>,
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
 Randy Dunlap <rdunlap@infradead.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Albert Esteve <aesteve@redhat.com>, Anusha Srivatsa <asrivats@redhat.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 19/19] drm/bridge: analogix_dp: don't create a panel_bridge
Date: Tue, 22 Sep 2026 10:22:37 +0200
Message-ID: <1889588.TLkxdtWsSY@phil>
In-Reply-To: <DLLOZYM6YWJ3.6Q0LRD1WABGW@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
 <DLLOZYM6YWJ3.6Q0LRD1WABGW@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_012340_559689_5A5967D4 
X-CRM114-Status: GOOD (  17.53  )
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

SGkgTHVjYSwKCkFtIERpZW5zdGFnLCAyMi4gU2VwdGVtYmVyIDIwMjYsIDEwOjEyOjQxIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTHVjYSBDZXJlc29saToKPiBPbiBNb24g
U2VwIDIxLCAyMDI2IGF0IDU6MDcgQU0gQ0VTVCwgRGFtb24gRGluZyB3cm90ZToKPiA+IE9uIDkv
MTYvMjAyNiA5OjQ1IFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgoKWy4uLl0KCj4gPj4gQEAgLTE2
MywxOCArMTYxLDYgQEAgc3RhdGljIGludCBleHlub3NfZHBfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiA+PiAgIAkgKi8KPiA+PiAgIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShw
ZGV2LCBkcCk7Cj4gPj4KPiA+PiAtCS8qIFRoaXMgaXMgZm9yIHRoZSBiYWNrd2FyZCBjb21wYXRp
YmlsaXR5LiAqLwo+ID4+IC0JbnAgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgInBh
bmVsIiwgMCk7Cj4gPj4gLQlpZiAobnApIHsKPiA+PiAtCQlkcC0+cGxhdF9kYXRhLnBhbmVsID0g
b2ZfZHJtX2ZpbmRfcGFuZWwobnApOwo+ID4+IC0KPiA+PiAtCQlvZl9ub2RlX3B1dChucCk7Cj4g
Pj4gLQkJaWYgKElTX0VSUihkcC0+cGxhdF9kYXRhLnBhbmVsKSkKPiA+PiAtCQkJcmV0dXJuIFBU
Ul9FUlIoZHAtPnBsYXRfZGF0YS5wYW5lbCk7Cj4gPj4gLQo+ID4+IC0JCWdvdG8gb3V0Owo+ID4+
IC0JfQo+ID4+IC0KPiA+Cj4gPiBUSVA6IEluIG15IFdJUCB2MyBwYXRjaCBzZXJpZXMsIEkgdXNl
IG9mX2RybV9maW5kX3BhbmVsKCkgdG9nZXRoZXIgd2l0aAo+ID4gZGV2bV9kcm1fcGFuZWxfYnJp
ZGdlX2FkZCgpIHRvIG1haW50YWluIHRoaXMgYmFja3dhcmQgY29tcGF0aWJpbGl0eS4gQnV0Cj4g
PiBJIGFsc28gdGhpbmsgdGhpcyBvbGQgYXBwcm9hY2ggc2hvdWxkIGJlIGRlcHJlY2F0ZWQgbm93
LiBTaGFsbCB3ZSBhZGQKPiA+IHNvbWUgbm90ZXMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRvIG1l
bnRpb24gdGhlIGRlcHJlY2F0aW9uIG9mIHRoaXMgbWV0aG9kPwo+IAo+IFdoYXQgaXMgdGhlICJX
SVAgdjMiIHNlcmllcyBleGFjdGx5PyBEbyB5b3UgaGF2ZSBhIGxpbmsgKHRvIHYyIGluIGNhc2Ug
djMKPiBpcyBub3QgeWV0IHB1YmxpYyk/CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC8yMDI2MDgwNDA4MTcxNy43NDE0MDQtMS1kYW1vbi5kaW5nQHJvY2stY2hpcHMuY29t
LwppcyB0aGUgc2VyaWVzIGluIHF1ZXN0aW9uLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

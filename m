Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0361FCD5BA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 09:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJzt85b9nj2aGUIKuqrX06JSWVyB1d694F4ytJx7Tsc=; b=k/qaLynLDL/CvB
	690Dz7poJPALQD47DRWIjB9HTgsC+BVS1xx4NpTpQDkgsBZmVJHz2kvYSFGyArgaJ4fVPuz3zW999
	qJd7Sij+X30EMmsYi9HoBsymrexvo5TaNlSFX7NyE8Fe65EPlD5bQVxxm/CpiAHlYxcGFBJmHVsJM
	d5G+IbGlyhxA8CL5WtMC1NojfLHFgGcVWA2yC+fbqNRjStFGLJU2JiEDqYkLLswAhAox1xV/n8Q4u
	2xOpecJEqwHQwxknXPaAfDrQiUOUjMRwl47UdoLcMD1c7d0TLOZffwyz0g7WeKISwwS/C4vL9C5RO
	n1RGteHaYn1rRVvjDlcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzMQ-00000007FMH-3LmV;
	Thu, 21 May 2026 09:06:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzMO-00000007FLE-1iNi;
	Thu, 21 May 2026 09:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kxMOs4dXD0pN1U9+9L/WIABEp5JlmFEPKJTJy5jes9s=; b=MeioAS9DTu5IYnt6P16wWIwEbV
	O1lzZIcq3aPJXnIb1w3JxeLGVULUrwITtkN5eTFgaXIiNsVtQ2PGhAQXAZqCU9I3+56T4jHvuVfBT
	ywE270IiPQDw6eZMtk3jIuhz2kw5lMs9pGXGvQhp4g4ksVoitkItqRKECkoNT0vFnr8lzKonzv4Jj
	bSPgx52zBiuRIylfVOMY6yl3/K6C+NsiZBl8NgpGlHVb0TWs836bHSvuOhDy86M0Z9mqjyHpkTKhX
	FyM7prAKoDq7wWHD8DP+4RuUnhu3I1I54AQTxowOX1x3oNnkX0brQD37HsdY/br150JBVWumq79Sz
	/TP49C0A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
Date: Thu, 21 May 2026 11:06:12 +0200
Message-ID: <7886213.zQ0Gbyo6oJ@phil>
In-Reply-To: <20260521032854.103-4-kernel@airkyi.com>
References: <20260521032854.103-1-kernel@airkyi.com>
 <20260521032854.103-4-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_020632_541017_67F6083C 
X-CRM114-Status: GOOD (  18.31  )
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

SGksCgpBbSBEb25uZXJzdGFnLCAyMS4gTWFpIDIwMjYsIDA1OjI4OjUyIE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gRnJvbTogQ2hhb3lpIENoZW4g
PGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IAo+IFVzaW5nIHRoZSBEUk1fQVVYX0JSSURH
RSBoZWxwZXIgdG8gY3JlYXRlIHRoZSB0cmFuc3BhcmVudCBEUk0gYnJpZGdlCj4gZGV2aWNlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNv
bT4KPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5v
cmc+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgpAVmlu
b2Q6CmNvdWxkIHlvdSBnaXZlIHRoaXMgcGF0Y2ggYW4gQWNrIHRvIGdvIHRocm91Z2ggdGhlIERS
TSB0cmVlIHBsZWFzZT8KCkl0IGlzIGluZGVwZW5kZW50IG9mIGFueSBvdGhlciBwaHkgY2hhbmdl
cywgYnV0IG5lZWRzIHRoZSBkcm0tcGF0Y2hlcyAxKzIKZnJvbSB0aGlzIHNlcmllcywgc28gaWRl
YWxseSB3b3VsZCBnbyB0aHJvdWdoIHRoZSBkcm0gdHJlZSB0b2dldGhlciB3aXRoCnRoZW0uCgpU
aGFua3MgYSBsb3QKSGVpa28KCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9LY29uZmln
ICAgICAgICAgICAgICB8ICAyICsrCj4gIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC10eXBlYy5jIHwgMTMgKysrKysrKysrKystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9LY29uZmlnCj4gaW5kZXggMTQ2
OTg1NzFiNjA3Li45MTczZDNiNGZlZjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2No
aXAvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL0tjb25maWcKPiBAQCAtMTE5
LDYgKzExOSw4IEBAIGNvbmZpZyBQSFlfUk9DS0NISVBfU05QU19QQ0lFMwo+ICBjb25maWcgUEhZ
X1JPQ0tDSElQX1RZUEVDCj4gIAl0cmlzdGF0ZSAiUm9ja2NoaXAgVFlQRUMgUEhZIERyaXZlciIK
PiAgCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfUk9DS0NISVAgfHwgQ09NUElMRV9URVNUKQo+ICsJ
ZGVwZW5kcyBvbiBEUk0gfHwgRFJNPW4KPiArCXNlbGVjdCBEUk1fQVVYX0JSSURHRSBpZiBEUk1f
QlJJREdFCj4gIAlzZWxlY3QgRVhUQ09OCj4gIAlzZWxlY3QgR0VORVJJQ19QSFkKPiAgCXNlbGVj
dCBSRVNFVF9DT05UUk9MTEVSCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC10eXBlYy5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5
cGVjLmMKPiBpbmRleCBkOTcwMWI2MTA2ZDUuLjQ4MDcwYjUwNDE2ZSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gQEAgLTU0LDYgKzU0LDcgQEAKPiAg
Cj4gICNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkv
cGh5Lmg+Cj4gKyNpbmNsdWRlIDxkcm0vYnJpZGdlL2F1eC1icmlkZ2UuaD4KPiAgCj4gICNkZWZp
bmUgQ01OX1NTTV9CQU5ER0FQCQkJKDB4MjEgPDwgMikKPiAgI2RlZmluZSBDTU5fU1NNX0JJQVMJ
CQkoMHgyMiA8PCAyKQo+IEBAIC0xMTYyLDE2ICsxMTYzLDI0IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfdHlwZWNfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJ
Zm9yX2VhY2hfYXZhaWxhYmxlX2NoaWxkX29mX25vZGUobnAsIGNoaWxkX25wKSB7Cj4gIAkJc3Ry
dWN0IHBoeSAqcGh5Owo+ICsJCXJldCA9IDA7Cj4gIAo+IC0JCWlmIChvZl9ub2RlX25hbWVfZXEo
Y2hpbGRfbnAsICJkcC1wb3J0IikpCj4gKwkJaWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwg
ImRwLXBvcnQiKSkgewo+ICAJCQlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwK
PiAgCQkJCQkgICAgICAmcm9ja2NoaXBfZHBfcGh5X29wcyk7Cj4gLQkJZWxzZSBpZiAob2Zfbm9k
ZV9uYW1lX2VxKGNoaWxkX25wLCAidXNiMy1wb3J0IikpCj4gKwkJCXJldCA9IGRybV9hdXhfYnJp
ZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZShkZXYsIGNoaWxkX25wKTsKPiArCQl9IGVsc2UgaWYgKG9m
X25vZGVfbmFtZV9lcShjaGlsZF9ucCwgInVzYjMtcG9ydCIpKQo+ICAJCQlwaHkgPSBkZXZtX3Bo
eV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAgCQkJCQkgICAgICAmcm9ja2NoaXBfdXNiM19waHlf
b3BzKTsKPiAgCQllbHNlCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiArCQlpZiAocmV0KSB7Cj4gKwkJ
CXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ICsJCQlvZl9ub2RlX3B1dChjaGlsZF9ucCk7Cj4g
KwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsKPiAgCQlpZiAoSVNfRVJSKHBoeSkpIHsKPiAgCQkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIHBoeTogJXBPRm5cbiIsCj4gIAkJCQljaGls
ZF9ucCk7Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

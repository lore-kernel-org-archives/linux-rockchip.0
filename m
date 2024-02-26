Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09424C54E49
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 12:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRkBeUwe68uaVgOkjMjboEK7Yh9J0M3PhDgGUrDxZ5g=; b=gbUbibg5YguYdT
	Y1RkaymIhunXtl6Trs+uOY3zanRF/iTs/8aoQ/EgO016sYVeB3fj8o+BUeo8XbjR7cyBE6ykuRN11
	ROsExhttYDV572CIxrOeTj0X+6pfndthiApLz0XbOp5YbQV2MDnOXlvOSaOdWTM1+fgh4/tSxLRlT
	mkKtk7BYouIAnhYYpn79ZSShCfVUv6/ogSGGze+N/q6JJzUUvDnEA7UFrlgT3KPPuqFFcPZWtGmIe
	TsfBXMGoWcZ935XHmL77FknOxv0cQkp0zr/vcnN2BRuOSNX17dlmzvxySm7j7Ecnf8H851frzU6Fw
	4rKmY/09n0y0ItRJJ8xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea4X-00000000ZEu-21xC;
	Mon, 26 Feb 2024 12:27:05 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea4T-00000000ZCs-0YqD;
	Mon, 26 Feb 2024 12:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=X62s8SRMke89gytb6JZNVCmlCtS3wHwCrunVCrHXdQU=; b=bT79gdFiTA/GcUxLwiLuVnAKkS
	4suDRCbzG0TI2IIJrxWoSNa0uwTQSbr7g17hrLHmp+++T27M3L5eStMvgjuj2Z3ZVforoIckjMu1z
	Y85eDnAIuWraGwOK+lfAbXBxNWI6/lRudFc7pKokW/MAVxz0+5Tqw/6BGZcsvCWFpnjZxvVo0ROI4
	qWwcI2B9CCF0AOEAk/exr0iguotC58IaHwJUfJhBk0LHVptBpDZ5LDx2+cJWXvD101/GABj2HQHaC
	uOsTZ99yM4wPkmHGiGN8O6cXlbFpdU6kmP1eFkY+jeMJnkkTXbzYcNDA8UAhNy1BN+50yYoB+xF0/
	jTwfKE0A==;
Received: from [177.34.169.255] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rea4A-003Yij-2B; Mon, 26 Feb 2024 13:26:42 +0100
Message-ID: <4aab64fe-18ab-425b-9dc1-e4e9dc6b0087@igalia.com>
Date: Mon, 26 Feb 2024 09:26:33 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/36] drm/tests: Add helper to create mock crtc
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-4-8f4af575fce2@kernel.org>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xjMEZIsaeRYJKwYBBAHaRw8BAQdAGU6aY8oojw61KS5rGGMrlcilFqR6p6ID45IZ6ovX0h3N
 H01haXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT7CjwQTFggANxYhBDMCqFtIvFKVRJZQ
 hDSPnHLaGFVuBQJkixp5BQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQNI+cctoYVW5u
 GAEAwpaC5rI3wD8zqETKwGVoXd6+AbmGfZuVD40xepy7z/8BAM5w95/oyPsHUqOsg/xUTlNp
 rlbhA+WWoaOXA3XgR+wCzjgEZIsaeRIKKwYBBAGXVQEFAQEHQGoOK0jgh0IorMAacx6WUUWb
 s3RLiJYWUU6iNrk5wWUbAwEIB8J+BBgWCAAmFiEEMwKoW0i8UpVEllCENI+cctoYVW4FAmSL
 GnkFCQWjmoACGwwACgkQNI+cctoYVW6cqwD/Q9R98msvkhgRvi18fzUPFDwwogn+F+gQJJ6o
 pwpgFkAA/R2zOfla3IT6G3SBoV5ucdpdCpnIXFpQLbmfHK7dXsAC
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-4-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_042701_225404_EB93340F 
X-CRM114-Status: GOOD (  20.52  )
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

T24gMi8yMi8yNCAxNToxMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBXZSdyZSBnb2luZyB0byBu
ZWVkIGEgZnVsbC1ibG93biwgZnVuY3Rpb25hbCwgS01TIGRldmljZSB0byB0ZXN0IG1vcmUKPiBj
b21wb25lbnRzIG9mIHRoZSBhdG9taWMgbW9kZXNldHRpbmcgaW5mcmFzdHJ1Y3R1cmUuCj4gCj4g
TGV0J3MgYWRkIGEgbmV3IGhlbHBlciB0byBjcmVhdGUgYSBkdW1iLCBtb2NrZWQsIENSVEMuIEJ5
IGRlZmF1bHQgaXQKPiB3aWxsIGNyZWF0ZSBhIENSVEMgcmVseWluZyBvbmx5IG9uIHRoZSBkZWZh
dWx0IGhlbHBlcnMsIGJ1dCBkcml2ZXJzIGFyZQo+IGZyZWUgdG8gZGV2aWF0ZSBmcm9tIHRoYXQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoK
UmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+CgpCZXN0IFJlZ2Fy
ZHMsCi0gTWHDrXJhCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9o
ZWxwZXJzLmMgfCA2MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICBpbmNsdWRl
L2RybS9kcm1fa3VuaXRfaGVscGVycy5oICAgICAgICAgICB8IDEwICsrKysrCj4gICAyIGZpbGVz
IGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJt
X2t1bml0X2hlbHBlcnMuYwo+IGluZGV4IDMyZGM4MzU0NjQxYS4uZDUzMTdkMTNkM2ZjIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMKPiBAQCAtMjQ5LDUg
KzI0OSw2NyBAQCBkcm1fa3VuaXRfaGVscGVyX2NyZWF0ZV9wcmltYXJ5X3BsYW5lKHN0cnVjdCBr
dW5pdCAqdGVzdCwKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9rdW5pdF9oZWxwZXJf
Y3JlYXRlX3ByaW1hcnlfcGxhbmUpOwo+ICAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Ny
dGNfaGVscGVyX2Z1bmNzIGRlZmF1bHRfY3J0Y19oZWxwZXJfZnVuY3MgPSB7Cj4gK307Cj4gKwo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRjX2Z1bmNzIGRlZmF1bHRfY3J0Y19mdW5jcyA9
IHsKPiArCS5hdG9taWNfZGVzdHJveV9zdGF0ZSAgID0gZHJtX2F0b21pY19oZWxwZXJfY3J0Y19k
ZXN0cm95X3N0YXRlLAo+ICsJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBkcm1fYXRvbWljX2hl
bHBlcl9jcnRjX2R1cGxpY2F0ZV9zdGF0ZSwKPiArCS5yZXNldCAgICAgICAgICAgICAgICAgID0g
ZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNldCwKPiArfTsKPiArCj4gKy8qKgo+ICsgKiBkcm1f
a3VuaXRfaGVscGVyX2NyZWF0ZV9jcnRjIC0gQ3JlYXRlcyBhIG1vY2sgQ1JUQyBmb3IgYSBLVW5p
dCB0ZXN0Cj4gKyAqIEB0ZXN0OiBUaGUgdGVzdCBjb250ZXh0IG9iamVjdAo+ICsgKiBAZHJtOiBU
aGUgZGV2aWNlIHRvIGFsbG9jIHRoZSBwbGFuZSBmb3IKPiArICogQHByaW1hcnk6IFByaW1hcnkg
cGxhbmUgZm9yIENSVEMKPiArICogQGN1cnNvcjogQ3Vyc29yIHBsYW5lIGZvciBDUlRDLiBPcHRp
b25hbC4KPiArICogQGZ1bmNzOiBDYWxsYmFja3MgZm9yIHRoZSBuZXcgcGxhbmUuIE9wdGlvbmFs
Lgo+ICsgKiBAaGVscGVyX2Z1bmNzOiBIZWxwZXJzIGNhbGxiYWNrcyBmb3IgdGhlIG5ldyBwbGFu
ZS4gT3B0aW9uYWwuCj4gKyAqCj4gKyAqIFRoaXMgYWxsb2NhdGVzIGFuZCBpbml0aWFsaXplcyBh
IG1vY2sgc3RydWN0ICZkcm1fY3J0YyBtZWFudCB0byBiZQo+ICsgKiBwYXJ0IG9mIGEgbW9jayBk
ZXZpY2UgZm9yIGEgS1VuaXQgdGVzdC4KPiArICoKPiArICogUmVzb3VyY2VzIHdpbGwgYmUgY2xl
YW5lZCB1cCBhdXRvbWF0aWNhbGx5Lgo+ICsgKgo+ICsgKiBAZnVuY3Mgd2lsbCBkZWZhdWx0IHRv
IHRoZSBkZWZhdWx0IGhlbHBlcnMgaW1wbGVtZW50YXRpb25zLgo+ICsgKiBAaGVscGVyX2Z1bmNz
IHdpbGwgZGVmYXVsdCB0byBhbiBlbXB0eSBpbXBsZW1lbnRhdGlvbi4KPiArICoKPiArICogUmV0
dXJuczoKPiArICogQSBwb2ludGVyIHRvIHRoZSBuZXcgQ1JUQywgb3IgYW4gRVJSX1BUUigpIG90
aGVyd2lzZS4KPiArICovCj4gK3N0cnVjdCBkcm1fY3J0YyAqCj4gK2RybV9rdW5pdF9oZWxwZXJf
Y3JlYXRlX2NydGMoc3RydWN0IGt1bml0ICp0ZXN0LAo+ICsJCQkgICAgIHN0cnVjdCBkcm1fZGV2
aWNlICpkcm0sCj4gKwkJCSAgICAgc3RydWN0IGRybV9wbGFuZSAqcHJpbWFyeSwKPiArCQkJICAg
ICBzdHJ1Y3QgZHJtX3BsYW5lICpjdXJzb3IsCj4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGRybV9j
cnRjX2Z1bmNzICpmdW5jcywKPiArCQkJICAgICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfaGVscGVy
X2Z1bmNzICpoZWxwZXJfZnVuY3MpCj4gK3sKPiArCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKPiAr
CWludCByZXQ7Cj4gKwo+ICsJaWYgKCFmdW5jcykKPiArCQlmdW5jcyA9ICZkZWZhdWx0X2NydGNf
ZnVuY3M7Cj4gKwo+ICsJaWYgKCFoZWxwZXJfZnVuY3MpCj4gKwkJaGVscGVyX2Z1bmNzID0gJmRl
ZmF1bHRfY3J0Y19oZWxwZXJfZnVuY3M7Cj4gKwo+ICsJY3J0YyA9IGRybW1fa3phbGxvYyhkcm0s
IHNpemVvZigqY3J0YyksIEdGUF9LRVJORUwpOwo+ICsJS1VOSVRfQVNTRVJUX05PVF9OVUxMKHRl
c3QsIGNydGMpOwo+ICsKPiArCXJldCA9IGRybW1fY3J0Y19pbml0X3dpdGhfcGxhbmVzKGRybSwg
Y3J0YywKPiArCQkJCQkgcHJpbWFyeSwKPiArCQkJCQkgY3Vyc29yLAo+ICsJCQkJCSBmdW5jcywK
PiArCQkJCQkgTlVMTCk7Cj4gKwlLVU5JVF9BU1NFUlRfRVEodGVzdCwgcmV0LCAwKTsKPiArCj4g
Kwlkcm1fY3J0Y19oZWxwZXJfYWRkKGNydGMsIGhlbHBlcl9mdW5jcyk7Cj4gKwo+ICsJcmV0dXJu
IGNydGM7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2t1bml0X2hlbHBlcl9jcmVhdGVf
Y3J0Yyk7Cj4gKwo+ICAgTU9EVUxFX0FVVEhPUigiTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5v
LnRlY2g+Iik7Cj4gICBNT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmggYi9pbmNsdWRlL2RybS9kcm1fa3VuaXRfaGVscGVy
cy5oCj4gaW5kZXggMzg2NjdkNjI0YWE4Li42ZTk5NjI3ZWRmNDUgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9rdW5p
dF9oZWxwZXJzLmgKPiBAQCAtOSw2ICs5LDggQEAKPiAgIAo+ICAgI2luY2x1ZGUgPGt1bml0L3Rl
c3QuaD4KPiAgIAo+ICtzdHJ1Y3QgZHJtX2NydGNfZnVuY3M7Cj4gK3N0cnVjdCBkcm1fY3J0Y19o
ZWxwZXJfZnVuY3M7Cj4gICBzdHJ1Y3QgZHJtX2RldmljZTsKPiAgIHN0cnVjdCBkcm1fcGxhbmVf
ZnVuY3M7Cj4gICBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jczsKPiBAQCAtMTEwLDQgKzEx
MiwxMiBAQCBkcm1fa3VuaXRfaGVscGVyX2NyZWF0ZV9wcmltYXJ5X3BsYW5lKHN0cnVjdCBrdW5p
dCAqdGVzdCwKPiAgIAkJCQkgICAgICB1bnNpZ25lZCBpbnQgbnVtX2Zvcm1hdHMsCj4gICAJCQkJ
ICAgICAgY29uc3QgdWludDY0X3QgKm1vZGlmaWVycyk7Cj4gICAKPiArc3RydWN0IGRybV9jcnRj
ICoKPiArZHJtX2t1bml0X2hlbHBlcl9jcmVhdGVfY3J0YyhzdHJ1Y3Qga3VuaXQgKnRlc3QsCj4g
KwkJCSAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRybSwKPiArCQkJICAgICBzdHJ1Y3QgZHJtX3Bs
YW5lICpwcmltYXJ5LAo+ICsJCQkgICAgIHN0cnVjdCBkcm1fcGxhbmUgKmN1cnNvciwKPiArCQkJ
ICAgICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgKmZ1bmNzLAo+ICsJCQkgICAgIGNvbnN0
IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVuY3MgKmhlbHBlcl9mdW5jcyk7Cj4gKwo+ICAgI2Vu
ZGlmIC8vIERSTV9LVU5JVF9IRUxQRVJTX0hfCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

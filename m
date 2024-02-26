Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C5FCC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 12:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33Pu5zqaAMkA1J7C1pK6Ma5vKItm9zkjNGle6ZP/fEU=; b=3tNp0JeEEEP9Q4
	M1ATyrD4eeTCPwKTUlPhNVvlaW7X+GN/LcluigxgnYQybnWhT+6QzbYuYspv0wGaucxXUXrVN/4BQ
	w5MgrdXTCxcxGSptsvZYotg3wvnH2lWHvx/nf1lWy/AA1GCcAvSd6+1z8BEAdxkQqe1LXEWaWlpn0
	GNW9wMZuRWAdb7SJA3Asmv+YnH4Y7e3qnKlGFBuDY1KM52KMS3CwGv1Xa6P3nseJOLhsMRaM7eAYF
	GsetfBIy18bP/Ijq47o7SHLAa5918/nO2bYPENskp/Uz3myXGj1wyEOEPvRhLd5NbyHx2cfxDNZOR
	W6yB5EKf1MwdEdu1XSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea8N-00000000aj5-2X66;
	Mon, 26 Feb 2024 12:31:03 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea87-00000000abp-3Quz;
	Mon, 26 Feb 2024 12:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9E9uFo1ZA4/GNHoSVHywi3ucQYA9wjLjy4y7D2QRVoQ=; b=EPkqIIez4XfxwdTWX1fAQshniD
	FJKNTXjlGpDIVV5cx73AbQbU7Azp2+otOzvEDrCbsB1QB+UOdRraNjeC+SLcngtv5x07m/8qNxxEk
	RFGK6TdhGxMHDTlogi9HFkwbumaJaAmi1/JIOxPj4WUSyekNPJzY70rmgEsMuxH/ga1KXbKOfLMGH
	M4DCO2/SXb6kiAQzcWXAQL0Q0WNp1RqilelPemAmio440xzS6+9rI4r3ps1c/E4irVejK+hTBIedD
	SFPxx2OLYHPYoYfP8T2JqQAV016Ngc6nrUsDZuyH4Nx3wzURyDeEYrR+RmUrkTBkKYVCfmB0OA9rX
	BUDcgD0w==;
Received: from [177.34.169.255] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rea7q-003YnI-Ph; Mon, 26 Feb 2024 13:30:31 +0100
Message-ID: <1c91ff55-e6c6-4543-bbf5-c7543cc03979@igalia.com>
Date: Mon, 26 Feb 2024 09:30:24 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 30/36] drm/vc4: tests: Convert to plane creation helper
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
 <20240222-kms-hdmi-connector-state-v7-30-8f4af575fce2@kernel.org>
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
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-30-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_043047_882713_0221895A 
X-CRM114-Status: GOOD (  12.86  )
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

T24gMi8yMi8yNCAxNToxNCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBOb3cgdGhhdCB3ZSBoYXZl
IGEgcGxhbmUgY3JlYXRlIGhlbHBlciBmb3Iga3VuaXQgbW9ja2VkIGRyaXZlcnMsIGxldCdzCj4g
Y29udmVydCB0byBpdCBpbiB2YzQuCgpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxA
aWdhbGlhLmNvbT4KCkJlc3QgUmVnYXJkcywKLSBNYcOtcmEKCj4gCj4gU2lnbmVkLW9mZi1ieTog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jIHwgMzQgKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9j
a19wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jCj4g
aW5kZXggOTczZjVmOTI5MDk3Li4xNDM1N2RiODIyMzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jCj4gQEAgLTEsNDMgKzEsMjUgQEAKPiAgIC8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gICAKPiAtI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljX3N0YXRlX2hlbHBlci5oPgo+IC0jaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KPiAt
I2luY2x1ZGUgPGRybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oPgo+ICsjaW5jbHVkZSA8
ZHJtL2RybV9rdW5pdF9oZWxwZXJzLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2RybV9wbGFuZS5oPgo+
ICAgCj4gICAjaW5jbHVkZSA8a3VuaXQvdGVzdC5oPgo+ICAgCj4gICAjaW5jbHVkZSAidmM0X21v
Y2suaCIKPiAgIAo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3Mg
dmM0X2R1bW15X3BsYW5lX2hlbHBlcl9mdW5jcyA9IHsKPiAtfTsKPiAtCj4gLXN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX3BsYW5lX2Z1bmNzIHZjNF9kdW1teV9wbGFuZV9mdW5jcyA9IHsKPiAtCS5h
dG9taWNfZGVzdHJveV9zdGF0ZQk9IGRybV9hdG9taWNfaGVscGVyX3BsYW5lX2Rlc3Ryb3lfc3Rh
dGUsCj4gLQkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZQk9IGRybV9hdG9taWNfaGVscGVyX3BsYW5l
X2R1cGxpY2F0ZV9zdGF0ZSwKPiAtCS5yZXNldAkJCT0gZHJtX2F0b21pY19oZWxwZXJfcGxhbmVf
cmVzZXQsCj4gLX07Cj4gLQo+IC1zdGF0aWMgY29uc3QgdWludDMyX3QgdmM0X2R1bW15X3BsYW5l
X2Zvcm1hdHNbXSA9IHsKPiAtCURSTV9GT1JNQVRfWFJHQjg4ODgsCj4gLX07Cj4gLQo+ICAgc3Ry
dWN0IGRybV9wbGFuZSAqdmM0X2R1bW15X3BsYW5lKHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0
IGRybV9kZXZpY2UgKmRybSwKPiAgIAkJCQkgIGVudW0gZHJtX3BsYW5lX3R5cGUgdHlwZSkKPiAg
IHsKPiAgIAlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZTsKPiAgIAo+IC0JcGxhbmUgPSBfX2RybW1f
dW5pdmVyc2FsX3BsYW5lX2FsbG9jKGRybSwgc2l6ZW9mKHN0cnVjdCBkcm1fcGxhbmUpLCAwLAo+
IC0JCQkJCQkgMCwKPiAtCQkJCQkJICZ2YzRfZHVtbXlfcGxhbmVfZnVuY3MsCj4gLQkJCQkJCSB2
YzRfZHVtbXlfcGxhbmVfZm9ybWF0cywKPiAtCQkJCQkJIEFSUkFZX1NJWkUodmM0X2R1bW15X3Bs
YW5lX2Zvcm1hdHMpLAo+IC0JCQkJCQkgTlVMTCwKPiAtCQkJCQkJIERSTV9QTEFORV9UWVBFX1BS
SU1BUlksCj4gLQkJCQkJCSBOVUxMKTsKPiArCUtVTklUX0FTU0VSVF9FUSh0ZXN0LCB0eXBlLCBE
Uk1fUExBTkVfVFlQRV9QUklNQVJZKTsKPiArCj4gKwlwbGFuZSA9IGRybV9rdW5pdF9oZWxwZXJf
Y3JlYXRlX3ByaW1hcnlfcGxhbmUodGVzdCwgZHJtLAo+ICsJCQkJCQkgICAgICBOVUxMLAo+ICsJ
CQkJCQkgICAgICBOVUxMLAo+ICsJCQkJCQkgICAgICBOVUxMLCAwLAo+ICsJCQkJCQkgICAgICBO
VUxMKTsKPiAgIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHBsYW5lKTsKPiAg
IAo+IC0JZHJtX3BsYW5lX2hlbHBlcl9hZGQocGxhbmUsICZ2YzRfZHVtbXlfcGxhbmVfaGVscGVy
X2Z1bmNzKTsKPiAtCj4gICAJcmV0dXJuIHBsYW5lOwo+ICAgfQo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

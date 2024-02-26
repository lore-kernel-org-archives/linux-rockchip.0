Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15974C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 12:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5v6dApqhON1w61tWvHNUaaMLXNUI4O5hVJ5hPHoqv0=; b=aJtdRYffA/j42Z
	SSqCGW+mOKsG9kNCgnhFVUFaLYhbZU4em4Y9LvclKOd652R7YD0dd/yjnQ5u093c+F3IbEe6cdx+v
	f9qG499efiRW29/2Ls3/ijx0IfQZoiHb2i5vO9XpuZLjw3BeY4jSp3voSrYbBUXyxZHj7NHuNVIMY
	NthJ/WK7Kxq2tU9gate4ilxJNMH9zedYHuKkPuOKJACtxQK0sFPaNAmp/7jyd8oUzPQUnfFqc4FMH
	xQk83rkHSfB5OVMrc6kC69wCwlA7K7/dXnKQOWUeMa4VWshRb2R3czLYNKOO+1UOhyCXV5FdpUsya
	KPMuhLBRMbdLTPOy208A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea2B-00000000YPT-1Nuw;
	Mon, 26 Feb 2024 12:24:39 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea1n-00000000YKL-4B7d;
	Mon, 26 Feb 2024 12:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zc1RjtY1ARFXv9X7AWb9xg2qefIhvIwrCXvg3e6WynE=; b=BROXfXqQXZTbIHzw0zpQsN6HXm
	A9Zq5kJDUduueLDMU05tNBf766hgTB9RrfuLsQ9vFytUWw3IR/SQqHpE1VGGujMI9eeNAs0xNP2Fv
	GPhVNEujNa+JT+5JdTn3hBcvRm352QvCDhXgFTtQMJ/i7ZGcJAIf7+gxXnqPU/LWoRzN5TuWcLAxH
	+s0CGxCQN/UTOXasfQCUp5oakmXwMsw6MpPNejJxUzqgo2CIFm9NwulM9N4qmWRpZAIO5qIKv5hjU
	WDOlq7Ygigcj5WhK+M7BKDJKKNKgY2MD7hENrwfddIEBbsGGQD2odotWzFKv120sE0tovM8j74uxu
	/NFJ0Sqg==;
Received: from [177.34.169.255] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rea19-003YfT-KA; Mon, 26 Feb 2024 13:23:35 +0100
Message-ID: <ad133922-6f11-483f-94c9-12aa8c3189df@igalia.com>
Date: Mon, 26 Feb 2024 09:23:23 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 02/36] drm/tests: helpers: Add atomic helpers
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
 <20240222-kms-hdmi-connector-state-v7-2-8f4af575fce2@kernel.org>
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
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-2-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_042416_459287_6AC64C5E 
X-CRM114-Status: GOOD (  12.57  )
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

T24gMi8yMi8yNCAxNToxMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBUaGUgbW9jayBkZXZpY2Ug
d2Ugd2VyZSBjcmVhdGluZyB3YXMgbWlzc2luZyBhbnkgb2YgdGhlIGRyaXZlci13aWRlCj4gaGVs
cGVycy4gVGhhdCB3YXMgZmluZSBiZWZvcmUgc2luY2Ugd2Ugd2VyZW4ndCB0ZXN0aW5nIHRoZSBh
dG9taWMgc3RhdGUKPiBwYXRoLCBidXQgd2UncmUgZ29pbmcgdG8gc3RhcnQsIHNvIGxldCdzIHVz
ZSB0aGUgZGVmYXVsdAo+IGltcGxlbWVudGF0aW9ucy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXhp
bWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFs
IDxtY2FuYWxAaWdhbGlhLmNvbT4KCkJlc3QgUmVnYXJkcywKLSBNYcOtcmEKCj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYyB8IDMgKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2Ry
bV9rdW5pdF9oZWxwZXJzLmMKPiBpbmRleCBjYTRmOGU0YzVkNWQuLjRmYjExYjkzOGJjMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jCj4gQEAgLTEsNiAr
MSw3IEBACj4gICAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICAgCj4gICAj
aW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KPiArI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hl
bHBlci5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2Ry
bV9rdW5pdF9oZWxwZXJzLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+Cj4gQEAg
LTE0LDYgKzE1LDggQEAKPiAgICNkZWZpbmUgS1VOSVRfREVWSUNFX05BTUUJImRybS1rdW5pdC1t
b2NrLWRldmljZSIKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9jb25maWdf
ZnVuY3MgZHJtX21vZGVfY29uZmlnX2Z1bmNzID0gewo+ICsJLmF0b21pY19jaGVjawk9IGRybV9h
dG9taWNfaGVscGVyX2NoZWNrLAo+ICsJLmF0b21pY19jb21taXQJPSBkcm1fYXRvbWljX2hlbHBl
cl9jb21taXQsCj4gICB9Owo+ICAgCj4gICAvKioKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B4F3C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 12:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os9PT4bTsUlZPU4XQn8i6IerpGWcHxZf9Zng4HCIb80=; b=LsCEs3VWdun1wW
	72pygh4IttGNXgplTPbQhifKy8KE0f27F+8FMn7zv0oAwyYrUVjA3SlDew6wuOgVONW0DMlngkppw
	qLcOUtzEfo8xUli0dv/z7LiNiMHaVLLMTtfncioO3npF3nUKikWHUzZ/Ow0kRKX6FNDhViwhJbRMR
	mBs5x66w3pB5UAAvyYoyoL6p/oym8wLIIrjOZCSs36PG7YOVJAE8VVbTVvwF9qNEChlMXyJ9ZP85y
	vWFoBleP8zQoJfRxkWPUfhuhQjbvUe/JNIgMDaBhDqgeefBGMANQgZJ+fUdHYF5W2zKr9wxv6idAC
	V/V7co79ycARr1sY/IxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea7R-00000000aJv-3AAD;
	Mon, 26 Feb 2024 12:30:05 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rea7L-00000000aFV-0asa;
	Mon, 26 Feb 2024 12:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6uiBS+Qi7asaIxy6/7a5MSyWBWL8eWW6sZvNhsKqAP4=; b=nO7o1mql1l5uhE1TZDI6i2tAQ0
	wyfpn30zdIhLWSm7LAnvxgSFa2K1lK+j8MYcjGXa3TeWtoyonvn57BTBA9m+ETkCt6ZIvqsghfzW4
	QAkfqgbBwiJk6xewHIkjbf5mFTN6T3aHAdhW3Y83KUgbhQtVNSRTgrXyQWMm9kq+mNSD53P++KVhj
	ZNMqKZl7GrmXWMRIT6+EryKM0uK4yq1WzsKmahmk+zfy22KNPxpv9a7uSSI4bexip7spal8O/YBHm
	eVHrLna8RfH0FyG5WHfJ8TqABMatDf2YBgl8JDX89I05n3kSdljjUpE3jYhLzD+JTP31KV9ZKYzqQ
	4yOKJ0pQ==;
Received: from [177.34.169.255] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rea72-003YnI-Sh; Mon, 26 Feb 2024 13:29:41 +0100
Message-ID: <244fe6b9-f295-4c85-908a-014ada0033fa@igalia.com>
Date: Mon, 26 Feb 2024 09:29:32 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 29/36] drm/vc4: tests: Remove vc4_dummy_plane structure
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
 <20240222-kms-hdmi-connector-state-v7-29-8f4af575fce2@kernel.org>
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
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-29-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_042959_271276_FB7298CF 
X-CRM114-Status: GOOD (  14.63  )
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

T24gMi8yMi8yNCAxNToxNCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBUaGUgdmM0X2R1bW15X3Bs
YW5lIHN0cnVjdHVyZSBpcyBhbiBleGFjdCBlcXVpdmFsZW50IHRvIHZjNF9wbGFuZSwgc28gd2UK
Ck1heWJlIEkgdW5kZXJzdG9vZCBpbmNvcnJlY3RseSwgYnV0IGlzbid0IHRoZSB2YzRfZHVtbXlf
cGxhbmUgc3RydWN0dXJlIAplcXVpdmFsZW50IHRvIGRybV9wbGFuZT8KCkJlc3QgUmVnYXJkcywK
LSBNYcOtcmEKCj4gZG9uJ3QgbmVlZCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vdmM0L3Rl
c3RzL3ZjNF9tb2NrLmMgICAgICAgfCAgNiArKy0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS92YzQv
dGVzdHMvdmM0X21vY2suaCAgICAgICB8ICA5ICsrLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJt
L3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jIHwgMTQgKysrKystLS0tLS0tLS0KPiAgIDMgZmls
ZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9jay5jIGIvZHJpdmVycy9ncHUv
ZHJtL3ZjNC90ZXN0cy92YzRfbW9jay5jCj4gaW5kZXggYmVjYjNkYmFhNTQ4Li4wNzMxYTdkODVk
N2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9jay5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9jay5jCj4gQEAgLTEwOSwxNiAr
MTA5LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmM0X21vY2tfZGVzYyB2YzVfbW9jayA9Cj4g
ICBzdGF0aWMgaW50IF9fYnVpbGRfb25lX3BpcGUoc3RydWN0IGt1bml0ICp0ZXN0LCBzdHJ1Y3Qg
ZHJtX2RldmljZSAqZHJtLAo+ICAgCQkJICAgIGNvbnN0IHN0cnVjdCB2YzRfbW9ja19waXBlX2Rl
c2MgKnBpcGUpCj4gICB7Cj4gLQlzdHJ1Y3QgdmM0X2R1bW15X3BsYW5lICpkdW1teV9wbGFuZTsK
PiAgIAlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZTsKPiAgIAlzdHJ1Y3QgdmM0X2R1bW15X2NydGMg
KmR1bW15X2NydGM7Cj4gICAJc3RydWN0IGRybV9jcnRjICpjcnRjOwo+ICAgCXVuc2lnbmVkIGlu
dCBpOwo+ICAgCj4gLQlkdW1teV9wbGFuZSA9IHZjNF9kdW1teV9wbGFuZSh0ZXN0LCBkcm0sIERS
TV9QTEFORV9UWVBFX1BSSU1BUlkpOwo+IC0JS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0
ZXN0LCBkdW1teV9wbGFuZSk7Cj4gKwlwbGFuZSA9IHZjNF9kdW1teV9wbGFuZSh0ZXN0LCBkcm0s
IERSTV9QTEFORV9UWVBFX1BSSU1BUlkpOwo+ICsJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVM
TCh0ZXN0LCBwbGFuZSk7Cj4gICAKPiAtCXBsYW5lID0gJmR1bW15X3BsYW5lLT5wbGFuZS5iYXNl
Owo+ICAgCWR1bW15X2NydGMgPSB2YzRfbW9ja19wdih0ZXN0LCBkcm0sIHBsYW5lLCBwaXBlLT5k
YXRhKTsKPiAgIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIGR1bW15X2NydGMp
Owo+ICAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2su
aCBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2suaAo+IGluZGV4IDJkMGIzMzli
ZDlmMy4uMDAyYjYyMTg5NjBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVz
dHMvdmM0X21vY2suaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2su
aAo+IEBAIC0yMSwxMyArMjEsOCBAQCBzdHJ1Y3QgZHJtX2NydGMgKnZjNF9maW5kX2NydGNfZm9y
X2VuY29kZXIoc3RydWN0IGt1bml0ICp0ZXN0LAo+ICAgCXJldHVybiBOVUxMOwo+ICAgfQo+ICAg
Cj4gLXN0cnVjdCB2YzRfZHVtbXlfcGxhbmUgewo+IC0Jc3RydWN0IHZjNF9wbGFuZSBwbGFuZTsK
PiAtfTsKPiAtCj4gLXN0cnVjdCB2YzRfZHVtbXlfcGxhbmUgKnZjNF9kdW1teV9wbGFuZShzdHJ1
Y3Qga3VuaXQgKnRlc3QsCj4gLQkJCQkJc3RydWN0IGRybV9kZXZpY2UgKmRybSwKPiAtCQkJCQll
bnVtIGRybV9wbGFuZV90eXBlIHR5cGUpOwo+ICtzdHJ1Y3QgZHJtX3BsYW5lICp2YzRfZHVtbXlf
cGxhbmUoc3RydWN0IGt1bml0ICp0ZXN0LCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLAo+ICsJCQkJ
ICBlbnVtIGRybV9wbGFuZV90eXBlIHR5cGUpOwo+ICAgCj4gICBzdHJ1Y3QgdmM0X2R1bW15X2Ny
dGMgewo+ICAgCXN0cnVjdCB2YzRfY3J0YyBjcnRjOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rl
c3RzL3ZjNF9tb2NrX3BsYW5lLmMKPiBpbmRleCA2MmIxOGY1ZjQxZGIuLjk3M2Y1ZjkyOTA5NyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMKPiBAQCAt
MjIsMTUgKzIyLDEyIEBAIHN0YXRpYyBjb25zdCB1aW50MzJfdCB2YzRfZHVtbXlfcGxhbmVfZm9y
bWF0c1tdID0gewo+ICAgCURSTV9GT1JNQVRfWFJHQjg4ODgsCj4gICB9Owo+ICAgCj4gLXN0cnVj
dCB2YzRfZHVtbXlfcGxhbmUgKnZjNF9kdW1teV9wbGFuZShzdHJ1Y3Qga3VuaXQgKnRlc3QsCj4g
LQkJCQkJc3RydWN0IGRybV9kZXZpY2UgKmRybSwKPiAtCQkJCQllbnVtIGRybV9wbGFuZV90eXBl
IHR5cGUpCj4gK3N0cnVjdCBkcm1fcGxhbmUgKnZjNF9kdW1teV9wbGFuZShzdHJ1Y3Qga3VuaXQg
KnRlc3QsIHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sCj4gKwkJCQkgIGVudW0gZHJtX3BsYW5lX3R5
cGUgdHlwZSkKPiAgIHsKPiAtCXN0cnVjdCB2YzRfZHVtbXlfcGxhbmUgKmR1bW15X3BsYW5lOwo+
ICAgCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwo+ICAgCj4gLQlkdW1teV9wbGFuZSA9IGRybW1f
dW5pdmVyc2FsX3BsYW5lX2FsbG9jKGRybSwKPiAtCQkJCQkJIHN0cnVjdCB2YzRfZHVtbXlfcGxh
bmUsIHBsYW5lLmJhc2UsCj4gKwlwbGFuZSA9IF9fZHJtbV91bml2ZXJzYWxfcGxhbmVfYWxsb2Mo
ZHJtLCBzaXplb2Yoc3RydWN0IGRybV9wbGFuZSksIDAsCj4gICAJCQkJCQkgMCwKPiAgIAkJCQkJ
CSAmdmM0X2R1bW15X3BsYW5lX2Z1bmNzLAo+ICAgCQkJCQkJIHZjNF9kdW1teV9wbGFuZV9mb3Jt
YXRzLAo+IEBAIC0zOCwxMCArMzUsOSBAQCBzdHJ1Y3QgdmM0X2R1bW15X3BsYW5lICp2YzRfZHVt
bXlfcGxhbmUoc3RydWN0IGt1bml0ICp0ZXN0LAo+ICAgCQkJCQkJIE5VTEwsCj4gICAJCQkJCQkg
RFJNX1BMQU5FX1RZUEVfUFJJTUFSWSwKPiAgIAkJCQkJCSBOVUxMKTsKPiAtCUtVTklUX0FTU0VS
VF9OT1RfRVJSX09SX05VTEwodGVzdCwgZHVtbXlfcGxhbmUpOwo+ICsJS1VOSVRfQVNTRVJUX05P
VF9FUlJfT1JfTlVMTCh0ZXN0LCBwbGFuZSk7Cj4gICAKPiAtCXBsYW5lID0gJmR1bW15X3BsYW5l
LT5wbGFuZS5iYXNlOwo+ICAgCWRybV9wbGFuZV9oZWxwZXJfYWRkKHBsYW5lLCAmdmM0X2R1bW15
X3BsYW5lX2hlbHBlcl9mdW5jcyk7Cj4gICAKPiAtCXJldHVybiBkdW1teV9wbGFuZTsKPiArCXJl
dHVybiBwbGFuZTsKPiAgIH0KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

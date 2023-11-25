Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90949C61D9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 10:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjZOoeFUSdpc215166B6WQDpqLToIHnzoGHTVIdudVM=; b=LvHMarvJDoRXUP
	WCdzFhj9adfbE+gppR7LRm2ki9MfQK+xVNaZkS0EMeZsGBYpRu2jH1/wssjha6l5x5VfxMoTy0mnI
	yTehYG9IV6EgjEX2rvde7/Ha0qB8O3iNpWZwrBSYpPlZJUs96VcsAmeXLos2WoglvnBLe1PNSNL54
	pvPE/AJhiRoKbR5TUSe0kN2SvrpmucsbDxqmVkt5gXufwcsTV5MqacOyXinkJ9LtrsZ/v/pTACbvw
	XMm3Yk2Ia15HZQ8uNXCU+cW+BPffCYl/J5ASDgbyH+R0MPoVSBpNjYTzvGQA19XcB09MfJbUAhpiO
	j7Czt2JgRl0Ii6GrAljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6pTM-008ysW-1Q;
	Sat, 25 Nov 2023 10:01:12 +0000
Received: from forward501b.mail.yandex.net ([178.154.239.145])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6pTG-008yqv-2u;
	Sat, 25 Nov 2023 10:01:09 +0000
Received: from mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:6e01:0:640:627f:0])
	by forward501b.mail.yandex.net (Yandex) with ESMTP id DB35C60FAE;
	Sat, 25 Nov 2023 13:00:58 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id q0Owa29FViE0-sB5ZypyC;
	Sat, 25 Nov 2023 13:00:57 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1700906457; bh=3CNf1YUwxPcXKoagyMGFPDxulGH1Yq2+32NGw4WJ5MU=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=DHHfCL7iGm5GVPbUq82yaVHggXkMmPsxE/T3itgPUjMM9Qc8MuvqC5nawCxZdSsw1
	 yRwAAYQAaPfRihZvyhcAXNT57r2XEHlYFvgsbbFmkV4/IxHE5jZUKmIppWvxnMABNz
	 94DFUYxjCcq10vL19DtPAJ6AV3anLqh4JDOEICLA=
Authentication-Results: mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <52b232e4-7ffa-1d01-efa6-a0af84729483@yandex.com>
Date: Sat, 25 Nov 2023 11:00:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH RFC v3 22/37] drm/rockchip: inno_hdmi: Remove useless
 output format
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
 <20231031-kms-hdmi-connector-state-v3-22-328b0fae43a7@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-22-328b0fae43a7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_020107_484482_D23F0725 
X-CRM114-Status: GOOD (  22.03  )
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

SGkgTWF4aW1lLAoKSW4gc3RlYWQgb2YgZnVydGhlciBjcmlwcGxpbmdSb2NrY2hpcCBIRE1JIGRy
aXZlcnMgb25lIGNvdWxkIGFsc28gbWFrZSBpdCBmdW5jdGlvbmFsIGJhc2VkwqAgb24gRURJRCBp
bmZvLgoKVG8gc3RhcnQgd2l0aCB0aGUgb3V0cHV0IGNvdWxkIHlvdSB0dXJuIFJHQjg4OCBpbnB1
dCBhbmQgc3dpdGNoIGJldHdlZW4KClJHQjQ0NCwgWUNCQ1I0NDQgYW5kIFlDQkNSNDIyIG91dHB1
dC4KCkpvaGFuCgpPbiAxMC8zMS8yMyAxNzo0OCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBTaW1p
bGFybHkgdG8gdGhlIGlucHV0IGZvcm1hdCwgdGhlIGRyaXZlciBoYXMgYSBsb3Qgb2YgY29kZSB0
byBkZWFsIHdpdGgKPiB2YXJpb3VzIG91dHB1dCBmb3JtYXQsIGJ1dCB0aGUgZHJpdmVyIGhhcmRj
b2RlcyBpdCB0byBSR0IgYWx3YXlzLgo+Cj4gTGV0J3MgZ2V0IHJpZCBvZiB0aGUgZGVhZCBjb2Rl
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgfCA1NyArKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRt
aS5jCj4gaW5kZXggZTA2OTZhYjE2ZGEzLi4wYzZjNTUwZTBjZTcgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS5jCj4gQEAgLTI4LDcgKzI4LDYgQEAKPiAgI2luY2x1ZGUgImlu
bm9faGRtaS5oIgo+ICAKPiAgc3RydWN0IGhkbWlfZGF0YV9pbmZvIHsKPiAtCXVuc2lnbmVkIGlu
dCBlbmNfb3V0X2Zvcm1hdDsKPiAgCXVuc2lnbmVkIGludCBjb2xvcmltZXRyeTsKPiAgfTsKPiAg
Cj4gQEAgLTI5NiwyNiArMjk1LDE0IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2NvbmZpZ192aWRl
b19hdmkoc3RydWN0IGlubm9faGRtaSAqaGRtaSwKPiAgCXJjID0gZHJtX2hkbWlfYXZpX2luZm9m
cmFtZV9mcm9tX2Rpc3BsYXlfbW9kZSgmZnJhbWUuYXZpLAo+ICAJCQkJCQkgICAgICAmaGRtaS0+
Y29ubmVjdG9yLAo+ICAJCQkJCQkgICAgICBtb2RlKTsKPiAtCj4gLQlpZiAoaGRtaS0+aGRtaV9k
YXRhLmVuY19vdXRfZm9ybWF0ID09IEhETUlfQ09MT1JTUEFDRV9ZVVY0NDQpCj4gLQkJZnJhbWUu
YXZpLmNvbG9yc3BhY2UgPSBIRE1JX0NPTE9SU1BBQ0VfWVVWNDQ0Owo+IC0JZWxzZSBpZiAoaGRt
aS0+aGRtaV9kYXRhLmVuY19vdXRfZm9ybWF0ID09IEhETUlfQ09MT1JTUEFDRV9ZVVY0MjIpCj4g
LQkJZnJhbWUuYXZpLmNvbG9yc3BhY2UgPSBIRE1JX0NPTE9SU1BBQ0VfWVVWNDIyOwo+IC0JZWxz
ZQo+IC0JCWZyYW1lLmF2aS5jb2xvcnNwYWNlID0gSERNSV9DT0xPUlNQQUNFX1JHQjsKPiArCWZy
YW1lLmF2aS5jb2xvcnNwYWNlID0gSERNSV9DT0xPUlNQQUNFX1JHQjsKPiAgCj4gIAlyZXR1cm4g
aW5ub19oZG1pX3VwbG9hZF9mcmFtZShoZG1pLCByYywgJmZyYW1lLCBJTkZPRlJBTUVfQVZJLCAw
LCAwLCAwKTsKPiAgfQo+ICAKPiAgc3RhdGljIGludCBpbm5vX2hkbWlfY29uZmlnX3ZpZGVvX2Nz
YyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pKQo+ICB7Cj4gLQlzdHJ1Y3QgaGRtaV9kYXRhX2luZm8g
KmRhdGEgPSAmaGRtaS0+aGRtaV9kYXRhOwo+IC0JaW50IGMwX2MyX2NoYW5nZSA9IDA7Cj4gLQlp
bnQgY3NjX2VuYWJsZSA9IDA7Cj4gLQlpbnQgY3NjX21vZGUgPSAwOwo+IC0JaW50IGF1dG9fY3Nj
ID0gMDsKPiAgCWludCB2YWx1ZTsKPiAtCWludCBpOwo+ICAKPiAgCS8qIElucHV0IHZpZGVvIG1v
ZGUgaXMgU0RSIFJHQjI0Yml0LCBkYXRhIGVuYWJsZSBzaWduYWwgZnJvbSBleHRlcm5hbCAqLwo+
ICAJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwxLCB2X0RFX0VYVEVSTkFMIHwK
PiBAQCAtMzI3LDQzICszMTQsMTMgQEAgc3RhdGljIGludCBpbm5vX2hkbWlfY29uZmlnX3ZpZGVv
X2NzYyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pKQo+ICAJCXZfVklERU9fSU5QVVRfQ1NQKDApOwo+
ICAJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwyLCB2YWx1ZSk7Cj4gIAo+IC0J
aWYgKEhETUlfQ09MT1JTUEFDRV9SR0IgPT0gZGF0YS0+ZW5jX291dF9mb3JtYXQpIHsKPiAtCQl2
YWx1ZSA9IHZfU09GX0RJU0FCTEUgfCB2X0NPTE9SX0RFUFRIX05PVF9JTkRJQ0FURUQoMSk7Cj4g
LQkJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwzLCB2YWx1ZSk7Cj4gLQo+IC0J
CWhkbWlfbW9kYihoZG1pLCBIRE1JX1ZJREVPX0NPTlRSTCwKPiAtCQkJICBtX1ZJREVPX0FVVE9f
Q1NDIHwgbV9WSURFT19DMF9DMl9TV0FQLAo+IC0JCQkgIHZfVklERU9fQVVUT19DU0MoQVVUT19D
U0NfRElTQUJMRSkgfAo+IC0JCQkgIHZfVklERU9fQzBfQzJfU1dBUChDMF9DMl9DSEFOR0VfRElT
QUJMRSkpOwo+IC0JCXJldHVybiAwOwo+IC0JfQo+IC0KPiAtCWlmIChkYXRhLT5jb2xvcmltZXRy
eSA9PSBIRE1JX0NPTE9SSU1FVFJZX0lUVV82MDEpIHsKPiAtCQlpZiAoZGF0YS0+ZW5jX291dF9m
b3JtYXQgPT0gSERNSV9DT0xPUlNQQUNFX1lVVjQ0NCkgewo+IC0JCQljc2NfbW9kZSA9IENTQ19S
R0JfMF8yNTVfVE9fSVRVNjAxXzE2XzIzNV84QklUOwo+IC0JCQlhdXRvX2NzYyA9IEFVVE9fQ1ND
X0RJU0FCTEU7Cj4gLQkJCWMwX2MyX2NoYW5nZSA9IEMwX0MyX0NIQU5HRV9ESVNBQkxFOwo+IC0J
CQljc2NfZW5hYmxlID0gdl9DU0NfRU5BQkxFOwo+IC0JCX0KPiAtCX0gZWxzZSB7Cj4gLQkJaWYg
KGRhdGEtPmVuY19vdXRfZm9ybWF0ID09IEhETUlfQ09MT1JTUEFDRV9ZVVY0NDQpIHsKPiAtCQkJ
Y3NjX21vZGUgPSBDU0NfUkdCXzBfMjU1X1RPX0lUVTcwOV8xNl8yMzVfOEJJVDsKPiAtCQkJYXV0
b19jc2MgPSBBVVRPX0NTQ19ESVNBQkxFOwo+IC0JCQljMF9jMl9jaGFuZ2UgPSBDMF9DMl9DSEFO
R0VfRElTQUJMRTsKPiAtCQkJY3NjX2VuYWJsZSA9IHZfQ1NDX0VOQUJMRTsKPiAtCQl9Cj4gLQl9
Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IDI0OyBpKyspCj4gLQkJaGRtaV93cml0ZWIoaGRtaSwg
SERNSV9WSURFT19DU0NfQ09FRiArIGksCj4gLQkJCSAgICBjb2VmZl9jc2NbY3NjX21vZGVdW2ld
KTsKPiAtCj4gLQl2YWx1ZSA9IHZfU09GX0RJU0FCTEUgfCBjc2NfZW5hYmxlIHwgdl9DT0xPUl9E
RVBUSF9OT1RfSU5ESUNBVEVEKDEpOwo+ICsJdmFsdWUgPSB2X1NPRl9ESVNBQkxFIHwgdl9DT0xP
Ul9ERVBUSF9OT1RfSU5ESUNBVEVEKDEpOwo+ICAJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURF
T19DT05UUkwzLCB2YWx1ZSk7Cj4gLQloZG1pX21vZGIoaGRtaSwgSERNSV9WSURFT19DT05UUkws
IG1fVklERU9fQVVUT19DU0MgfAo+IC0JCSAgbV9WSURFT19DMF9DMl9TV0FQLCB2X1ZJREVPX0FV
VE9fQ1NDKGF1dG9fY3NjKSB8Cj4gLQkJICB2X1ZJREVPX0MwX0MyX1NXQVAoYzBfYzJfY2hhbmdl
KSk7Cj4gIAo+ICsJaGRtaV9tb2RiKGhkbWksIEhETUlfVklERU9fQ09OVFJMLAo+ICsJCSAgbV9W
SURFT19BVVRPX0NTQyB8IG1fVklERU9fQzBfQzJfU1dBUCwKPiArCQkgIHZfVklERU9fQVVUT19D
U0MoQVVUT19DU0NfRElTQUJMRSkgfAo+ICsJCSAgdl9WSURFT19DMF9DMl9TV0FQKEMwX0MyX0NI
QU5HRV9ESVNBQkxFKSk7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiBAQCAtNDI1LDggKzM4Miw2
IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX3NldHVwKHN0cnVjdCBpbm5vX2hkbWkgKmhkbWksCj4g
IAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqZGlzcGxheSA9ICZoZG1pLT5jb25uZWN0b3IuZGlz
cGxheV9pbmZvOwo+ICAJdTggdmljID0gZHJtX21hdGNoX2NlYV9tb2RlKG1vZGUpOwo+ICAKPiAt
CWhkbWktPmhkbWlfZGF0YS5lbmNfb3V0X2Zvcm1hdCA9IEhETUlfQ09MT1JTUEFDRV9SR0I7Cj4g
LQo+ICAJaWYgKCh2aWMgPT0gNikgfHwgKHZpYyA9PSA3KSB8fAo+ICAJICAgICh2aWMgPT0gMjEp
IHx8ICh2aWMgPT0gMjIpIHx8Cj4gIAkgICAgKHZpYyA9PSAyKSB8fCAodmljID09IDMpIHx8Cj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

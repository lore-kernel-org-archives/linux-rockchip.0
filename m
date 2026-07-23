Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CE1C531CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 11:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAlZltd5X1lojX9d1k1dGyP5FMTvqMq1nCFsoBh3zOE=; b=NKOehuKJaTbHrU
	ohVoYwKU31n4USB7UmOxrz75mmjUg7cgRRVXnr0hdLIGbkPuB+QhSsHISavaqAUQzmZmWkhVAIo08
	Y6gg3z92lT8SGrClsrQpzCbeowr3RunBQpgSJ5qLOcTm21iPjbg9AC6FSMSK0t+BnpFLBVfOUAy4W
	VPP40R/xiGzI4+1lyyDlw4T3HEPnDDhC/UY1mvnAr85gESOlihSqdj9kE1NGadVxSOL3krNw98XPc
	WtzuNt+Oe2WkvGt/AJW6dEo5dWqRMUN+qxgSHC5HN1EWLNYgLGMx4AlmYilTDiAtX1m+9q0GwAoA+
	V4/7rJCguz1g0X0e9VAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmrxG-0000000EC80-0cE2;
	Thu, 23 Jul 2026 11:51:10 +0000
Received: from mail-m20521016446.xmail.ntesmail.com ([205.210.164.46])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmrxC-0000000EC5v-33ql;
	Thu, 23 Jul 2026 11:51:09 +0000
Received: from [172.16.12.77] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 475247b98;
	Thu, 23 Jul 2026 19:51:02 +0800 (GMT+08:00)
Message-ID: <40179247-12ac-4768-abd9-37f34e2c8b2b@rock-chips.com>
Date: Thu, 23 Jul 2026 19:51:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] phy: rockchip: samsung-hdptx: Drop TMDS rate setup
 workaround
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
X-HM-Tid: 0a9f8ed094f109d8kunmaf162676577b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQh9LSlYeHh1KGRhOQh
	hCTx9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gi1JZPhr0YIKkpak6dfQ7dOY46qt66IVvlBBF2aklLgugRTUdG/tsUsFB4AJz/vN3EuXen5HbdXeemJtVNUtn1J69C0InLhPj6VLmQhzR2Nr+poutG0j95JFUWt7FGohuDlA0sFPvuRxzHni6gujjTid0DoG3C2poHDy4HhZuJc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=UkPHHTBxsGnnTx5a9K0kYDoyQ/YqHcEwy0WwqNhrCm8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_045107_834961_3C2EEF26 
X-CRM114-Status: GOOD (  16.84  )
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

SGVsbG8sCgpPbiA2LzEyLzI2IDA3OjQ1LCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4gU2lu
Y2UgY29tbWl0IGJhOWMyZmUxOGMxNyAoImRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDogU3dpdGNo
IHRvCj4gcGh5X2NvbmZpZ3VyZSgpIikgdGhlIFRNRFMgcmF0ZSBzZXR1cCBkb2Vzbid0IHJlbHkg
YW55bW9yZSBvbiB0aGUKPiB1bmNvbnZlbnRpb25hbCB1c2FnZSBvZiB0aGUgYnVzIHdpZHRoLCBp
bnN0ZWFkIGl0IGlzIG1hbmFnZWQgZXhjbHVzaXZlbHkKPiB0aHJvdWdoIHRoZSBIRE1JIFBIWSBj
b25maWd1cmF0aW9uIEFQSS4KPiAKPiBEcm9wIHRoZSBub3cgb2Jzb2xldGUgd29ya2Fyb3VuZCB0
byByZXRyaWV2ZSB0aGUgVE1EUyBjaGFyYWN0ZXIgcmF0ZSB2aWEKPiBwaHlfZ2V0X2J1c193aWR0
aCgpIGR1cmluZyBwb3dlcl9vbigpLgo+IAo+IFdoaWxlIGF0IGl0LCBnZXQgcmlkIG9mIHRoZSBl
eHRyYSBjYWxsIHRvIHJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoKSBieQo+IG1vdmluZyB0aGUg
c3RhdGVtZW50IGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgo+IAo+IFRlc3RlZC1ieTogVGhv
bWFzIE5pZWRlcnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgo+IFRlc3RlZC1ieTogU2ltb24gV3Jp
Z2h0IDxzaW1vbkBzeW1wbGUubno+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVh
IDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KCiAgICBSZXZpZXdlZC1ieTogQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgoKCj4gLS0tCj4gICBkcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMjcgKysrKystLS0tLS0tLS0t
LS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
c2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1
bmctaGRwdHguYwo+IGluZGV4IDI1YmQ4MjFjZDAzOS4uMzU5OTcwODdkNjFjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiAr
KysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4g
QEAgLTE2NjAsMjIgKzE2NjAsNiBAQCBzdGF0aWMgaW50IHJrX2hkcHR4X3BoeV9wb3dlcl9vbihz
dHJ1Y3QgcGh5ICpwaHkpCj4gICAJZW51bSBwaHlfbW9kZSBtb2RlID0gcGh5X2dldF9tb2RlKHBo
eSk7Cj4gICAJaW50IHJldCwgbGFuZTsKPiAgIAo+IC0JaWYgKG1vZGUgIT0gUEhZX01PREVfRFAp
IHsKPiAtCQlpZiAoIWhkcHR4LT5oZG1pX2NmZy5yYXRlICYmIGhkcHR4LT5oZG1pX2NmZy5tb2Rl
ICE9IFBIWV9IRE1JX01PREVfRlJMKSB7Cj4gLQkJCS8qCj4gLQkJCSAqIEZJWE1FOiBUZW1wb3Jh
cnkgd29ya2Fyb3VuZCB0byBzZXR1cCBUTURTIGNoYXIgcmF0ZQo+IC0JCQkgKiBmcm9tIHRoZSBS
SyBEVyBIRE1JIFFQIGJyaWRnZSBkcml2ZXIuCj4gLQkJCSAqIFdpbGwgYmUgcmVtb3ZlZCBhcyBz
b29uIHRoZSBzd2l0Y2ggdG8gdGhlIEhETUkgUEhZCj4gLQkJCSAqIGNvbmZpZ3VyYXRpb24gQVBJ
IGhhcyBiZWVuIGNvbXBsZXRlZCBvbiBib3RoIGVuZHMuCj4gLQkJCSAqLwo+IC0JCQloZHB0eC0+
aGRtaV9jZmcucmF0ZSA9IHBoeV9nZXRfYnVzX3dpZHRoKGhkcHR4LT5waHkpICYgMHhmZmZmZmZm
Owo+IC0JCQloZHB0eC0+aGRtaV9jZmcucmF0ZSAqPSAxMDA7Cj4gLQkJfQo+IC0KPiAtCQlkZXZf
ZGJnKGhkcHR4LT5kZXYsICIlcyByYXRlPSVsbHUgYnBjPSV1XG4iLCBfX2Z1bmNfXywKPiAtCQkJ
aGRwdHgtPmhkbWlfY2ZnLnJhdGUsIGhkcHR4LT5oZG1pX2NmZy5icGMpOwo+IC0JfQo+IC0KPiAg
IAlyZXQgPSBya19oZHB0eF9waHlfY29uc3VtZXJfZ2V0KGhkcHR4KTsKPiAgIAlpZiAocmV0KQo+
ICAgCQlyZXR1cm4gcmV0Owo+IEBAIC0xNzAxLDkgKzE2ODUsMTAgQEAgc3RhdGljIGludCBya19o
ZHB0eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICAgCQlya19oZHB0eF9kcF9wbGxf
aW5pdChoZHB0eCk7Cj4gICAKPiAgIAkJcmV0ID0gcmtfaGRwdHhfZHBfYXV4X2luaXQoaGRwdHgp
Owo+IC0JCWlmIChyZXQpCj4gLQkJCXJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoaGRwdHgsIHRy
dWUpOwo+ICAgCX0gZWxzZSB7Cj4gKwkJZGV2X2RiZyhoZHB0eC0+ZGV2LCAiJXMgcmF0ZT0lbGx1
IGJwYz0ldVxuIiwgX19mdW5jX18sCj4gKwkJCWhkcHR4LT5oZG1pX2NmZy5yYXRlLCBoZHB0eC0+
aGRtaV9jZmcuYnBjKTsKPiArCj4gICAJCWlmIChoZHB0eC0+cGxsX2NvbmZpZ19kaXJ0eSkKPiAg
IAkJCXJldCA9IHJrX2hkcHR4X3BsbF9jbW5fY29uZmlnKGhkcHR4KTsKPiAgIAo+IEBAIC0xNzE2
LDExICsxNzAxLDExIEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X3Bvd2VyX29uKHN0cnVjdCBw
aHkgKnBoeSkKPiAgIAkJCWVsc2UKPiAgIAkJCQlyZXQgPSBya19oZHB0eF90bWRzX3JvcGxsX21v
ZGVfY29uZmlnKGhkcHR4KTsKPiAgIAkJfQo+IC0KPiAtCQlpZiAocmV0KQo+IC0JCQlya19oZHB0
eF9waHlfY29uc3VtZXJfcHV0KGhkcHR4LCB0cnVlKTsKPiAgIAl9Cj4gICAKPiArCWlmIChyZXQp
Cj4gKwkJcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dChoZHB0eCwgdHJ1ZSk7Cj4gKwo+ICAgCXJl
dHVybiByZXQ7Cj4gICB9Cj4gICAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

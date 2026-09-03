Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1024C624D6
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dncht3QJWSCBsU+Yd8Oji1nJGBfSsqtw1KlKhWAoQfU=; b=QuphNWDHbqlVSv
	79jqpGeJ+kpLukypnTVTi9bjGo8Lt1y3u+Ka3grWAcpT8h0rdN1a8DGWejNuieqS2ZOl0jps2nyMW
	MWgv69+q5KadgBr215PRkJ2Hznmp3hOFn6MuYotcu5E7QhVdRemIWNGNTatDpn3gF1nr0Ygo9VmMQ
	MneQ14n5hqGGGhBhxkHwFcfl5WvDVRtszjBEL8UYrg9vqDioJdmVUI74j4v3xYWlCCCyKlM6EaACX
	zJf4PIoAhHhadHWhXgah1l35ikwSSHqbpMe8sIoDnzjGV1yKGAhOLbHtB1/J9ShkbivXbQ/nMliNk
	ULxCmqih0bvXoSn7q2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x296w-0000000HaFY-1hYD;
	Thu, 03 Sep 2026 15:12:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x296t-0000000HaCd-3s6P;
	Thu, 03 Sep 2026 15:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uWKbj06GMxVM1AmFAtNOW8Qq7f96OKxmUAD1isOqei0=; b=TLDBITNR1KF/EL7KvbL44EZnS9
	TzA/Ndl1x7WVjwCVMd5kR8ifD3PzJsBsYgLZZHVYp/sr5iUMlaTZRMiX71hXoxQpEn4cPN/KtxYeG
	nOcLmRoDFMKcRk3Zw1ZwZ8M8q6ot5H6H9OQPjpgV4DADjNzRZVtcwkMIOkrsH1s4QEAKTL4hKtLtL
	wbi9+Yzrw59C88C/SJdVcMAgBY/P+RDbSd7+79n6ivpWHpFjfju0Ba2iioznX8OfzLHf7pE/Ye0As
	1aQeDLw92XgmkD40iZS8vSPrsH1PV5ZaDlM216ASOBIrxA5KXFwbgD9v7A6YPzONlQ/VpytHxsvXU
	N0U7IpgQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 jbx6244@gmail.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc()
 API
Date: Thu, 03 Sep 2026 17:12:02 +0200
Message-ID: <2814844.6tgchFWduM@diego>
In-Reply-To: <20260824-drm-v2-1-7f9273c6020b@gmail.com>
References: <20260824-drm-v2-1-7f9273c6020b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_081215_978584_846E621E 
X-CRM114-Status: GOOD (  16.08  )
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

QW0gTW9udGFnLCAyNC4gQXVndXN0IDIwMjYsIDEyOjIxOjE5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgSm9oYW4gSm9ua2VyIHZpYSBCNCBSZWxheToKPiBGcm9tOiBIw7xz
ZXlpbiBCSVlJSyA8Ym9vZ2llcG9wQGdteC5jb20+Cj4gCj4gVGhlIGZ1bmN0aW9uIGRldm1fZHJt
X2JyaWRnZV9hbGxvYygpIGlzIHRoZSBuZXcgQVBJIGZvciBhbGxvY2F0aW5nIERSTSBicmlkZ2Vz
Lgo+IFRoaXMgY29udmVyc2lvbiB3YXMgbWlzc2VkIGR1cmluZyB0aGUgaW5pdGlhbCBjb252ZXJz
aW9uIG9mIGFsbCBicmlkZ2VzIHRvCj4gdGhlIG5ldyBBUEkuCj4gCj4gU2lnbmVkLW9mZi1ieTog
SMO8c2V5aW4gQklZSUsgPGJvb2dpZXBvcEBnbXguY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvaGFu
IEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yazMwNjZfaGRtaS5jIHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMw
NjZfaGRtaS5jCj4gaW5kZXggZjI4ZDZhODgzZTA5Li4zOWM2NWVlMDdjYWEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+IEBAIC03MDMsNyArNzAzLDYgQEAgcmsz
MDY2X2hkbWlfcmVnaXN0ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc3RydWN0IHJrMzA2Nl9o
ZG1pICpoZG1pKQo+ICAJCQkgRFJNX01PREVfRU5DT0RFUl9UTURTLCBOVUxMKTsKPiAgCj4gIAlo
ZG1pLT5icmlkZ2UuZHJpdmVyX3ByaXZhdGUgPSBoZG1pOwo+IC0JaGRtaS0+YnJpZGdlLmZ1bmNz
ID0gJnJrMzA2Nl9oZG1pX2JyaWRnZV9mdW5jczsKPiAgCWhkbWktPmJyaWRnZS5vcHMgPSBEUk1f
QlJJREdFX09QX0RFVEVDVCB8Cj4gIAkJCSAgIERSTV9CUklER0VfT1BfRURJRCB8Cj4gIAkJCSAg
IERSTV9CUklER0VfT1BfSERNSSB8Cj4gQEAgLTc0Nyw5ICs3NDYsMTAgQEAgc3RhdGljIGludCBy
azMwNjZfaGRtaV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVy
LAo+ICAJaW50IGlycTsKPiAgCWludCByZXQ7Cj4gIAo+IC0JaGRtaSA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqaGRtaSksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFoZG1pKQo+IC0JCXJldHVy
biAtRU5PTUVNOwo+ICsJaGRtaSA9IGRldm1fZHJtX2JyaWRnZV9hbGxvYyhkZXYsIHN0cnVjdCBy
azMwNjZfaGRtaSwgYnJpZGdlLAo+ICsJCQkJICAgICAmcmszMDY2X2hkbWlfYnJpZGdlX2Z1bmNz
KTsKPiArCWlmIChJU19FUlIoaGRtaSkpCj4gKwkJcmV0dXJuIFBUUl9FUlIoaGRtaSk7CgpJZiBJ
J20gcmVhZGluZyB0aGluZ3MgY29ycmVjdGx5LCB0aGUgcGFydHMgaW4gcmszMDY2X2hkbWlfcmVn
aXN0ZXIgc2V0dGluZwpoZG1pLT5icmlkZ2UuZHJpdmVyX3ByaXZhdGUgKHNob3VsZCB1c2UgdGhl
IGNvbnRhaW5lciBmaWVsZCBvZiBzdHJ1Y3QKZHJtX2JyaWRnZSBpbnN0ZWFkKSBhbmQgaGRtaS0+
YnJpZGdlLmZ1bmNzIGFyZSByZWR1bmRhbnQgYnkgdGhpcyBjaGFuZ2U/CgoKSGVpa28KCgoKPiAg
Cj4gIAloZG1pLT5kZXYgPSBkZXY7Cj4gIAloZG1pLT5kcm1fZGV2ID0gZHJtOwo+IAo+IC0tLQo+
IGJhc2UtY29tbWl0OiAyNzA5ZGQ1YWUzMmYwODI4ZjM4NjMyN2M3NmJiYTlmMzlmNjNhMWM2Cj4g
Y2hhbmdlLWlkOiAyMDI2MDgyNC1kcm0tZTQ2ODlmNjVhYjhjCj4gCj4gQmVzdCByZWdhcmRzLAo+
IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

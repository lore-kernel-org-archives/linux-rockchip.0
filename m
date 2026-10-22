Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04214606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 12:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FzZh4QT5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=v1XCxXeT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h27Ra/k7K9hZSd+gMFk/QrkMc/uOIRyaAKqZSXkhi2A=; b=FzZh4QT5CGVbE1eUOmQQP/Znsh
	PT286U/zY1KYcQv+u3IWd80UmZPy8YBf90E2ma1uzWOwb8Thbi46R82zYhtuQz7Yn2lWjEdXBP24h
	W63pZXm48jiyBrl+ubCEVd+dReh0AaJQlXoRBjJgcgxIvPv8/F4BRPcySnrmMb0XwVo0lQ68OWanF
	dMSGWfF8ovZqaRM55X/AACVkyXe83qakUdVHuaZ3lgBPMEHvmsZWrIRaXSYRbPFC8Sha5upVcscfE
	+sOV2llKmKrlHtusXcPXSnur7rR7M9P8YCuJfrlGJpcPOOvR+CR8Plk8xwocXrtZ3xM0MNTNOiLwO
	/kRhTNKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsON-0000000E80U-1Kto;
	Thu, 22 Oct 2026 12:59:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsOK-0000000E800-2HMz;
	Thu, 22 Oct 2026 12:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TPXltwLQAsPQCNRcrw0xdOwjdfkToTs4/p0KQjsifUY=; b=v1XCxXeTTh88Gb5Wep8pf/75Ay
	qdxcfs/BaDOd/U2bmDRjsUjRCcDnvG3bBChvEbrdKDp+HxMZ29uIs0pNUA1AbcnUHe9JgQvASxJtR
	SUpSSGy3OmZaweb7W4RHB8dgUZrazrBL89k6ON8iD7jD8rAteLooHqSKfKoinnvEnFy7Bg3jDJ5jE
	MNdIKDaA4ZcEIqIWRCd3MoIqG1v7ndRcDbBpeaOU5sSqldS9FcJdiky4u2q0jtE36dM0zTvQVc4rn
	wwkoxRxF0wE+G5+A4BTib/UO5bDmTDJfy/Mf2fxuKPwckgm/xXSg+b9xmkRXKyTEyHauy3Qdn6XWh
	QWA4yw1Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Chaoyi Chen <kernel@airkyi.com>
Subject: Re: [PATCH 1/3] drm/rockchip: vop2: Use drm_format_info_min_pitch() for plane
 offsets
Date: Thu, 22 Oct 2026 14:59:07 +0200
Message-ID: <2024729.6tgchFWduM@diego>
In-Reply-To: <20261022071737.508-2-kernel@airkyi.com>
References: <20261022071737.508-1-kernel@airkyi.com>
 <20261022071737.508-2-kernel@airkyi.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_055932_628567_A77E4D6B 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hhb3lpLAoKQW0gRG9ubmVyc3RhZywgMjIuIE9rdG9iZXIgMjAyNiwgMDk6MTc6MzUgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBGcm9tOiBD
aGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gVXNlIHRoZSBibG9j
ayBhd2FyZSBoZWxwZXIgaW5zdGVhZCBvZiBjcHBbXSwgdGhlIGxhdHRlciBhbGlhc2VzCj4gY2hh
cl9wZXJfYmxvY2sgYW5kIGlzIHdyb25nIGZvciBwYWNrZWQgMTAtYml0IGZvcm1hdHMgbGlrZSBO
VjE1LAo+IE5WMjAgYW5kIE5WMzAuCj4gCj4gVGVzdGVkIHdpdGggbW9kZXRlc3RbMF06Cj4gCj4g
YGBgCj4gCW1vZGV0ZXN0IC1zIDg2OjM4NDB4MjE2MCAtUCBcCj4gCTU5QDgzOjM5NDB4MjE2MH45
NiwwLDM4NDAsMjE2MCswKzBATlYyMCAtYQo+IGBgYAo+IAo+IGZiIHNpemUgKDM5NDB4MjE2MCks
IHNyYyBhdCAoOTYsIDApIHdpdGggc2l6ZSAoMzg0MHgyMTYwKSwKPiBkc3QgYXQgKDAsIDApIHdp
dGggc2l6ZSAoMzg0MHgyMTYwKQo+IAo+IFswXTogaHR0cHM6Ly9naXRodWIuY29tL3dpbmRvd3Nh
aXIvbGliZHJtL3RyZWUvc3JjLXBvcy1zdXBwb3J0Cj4gCj4gQXNzaXN0ZWQtYnk6IExMTQo+IFNp
Z25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAzICsr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiBpbmRleCA0
Y2NlM2UzMzZmNWIuLjQ4MGFhOGM4YThkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gQEAgLTEyOTAsNyArMTI5MCw3IEBAIHN0YXRpYyB2
b2lkIHZvcDJfcGxhbmVfYXRvbWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAg
Cj4gIAlhZmJjX2VuID0gZHJtX2lzX2FmYmMoZmItPm1vZGlmaWVyKTsKPiAgCj4gLQlvZmZzZXQg
PSAoc3JjLT54MSA+PiAxNikgKiBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4gKwlvZmZzZXQgPSBkcm1f
Zm9ybWF0X2luZm9fbWluX3BpdGNoKGZiLT5mb3JtYXQsIDAsIHNyYy0+eDEgPj4gMTYpOwo+ICAK
PiAgCS8qCj4gIAkgKiBBRkJDIEhEUl9QVFIgbXVzdCBzZXQgdG8gdGhlIHplcm8gb2Zmc2V0IG9m
IHRoZSBmcmFtZWJ1ZmZlci4KPiBAQCAtMTMwOSw2ICsxMzA5LDcgQEAgc3RhdGljIHZvaWQgdm9w
Ml9wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ICAJCWludCBo
c3ViID0gZmItPmZvcm1hdC0+aHN1YjsKPiAgCQlpbnQgdnN1YiA9IGZiLT5mb3JtYXQtPnZzdWI7
Cj4gIAo+ICsJCW9mZnNldCA9IGRybV9mb3JtYXRfaW5mb19taW5fcGl0Y2goZmItPmZvcm1hdCwg
MSwgc3JjLT54MSA+PiAxNikgLyBoc3ViOwo+ICAJCW9mZnNldCA9IChzcmMtPngxID4+IDE2KSAq
IGZiLT5mb3JtYXQtPmNwcFsxXSAvIGhzdWI7CgptaXNzaW5nIHJlbW92YWwgb2YgdGhlIHJlcGxh
Y2VkIGxpbmU/CgoKSGVpa28KCj4gIAkJb2Zmc2V0ICs9IChzcmMtPnkxID4+IDE2KSAqIGZiLT5w
aXRjaGVzWzFdIC8gdnN1YjsKPiAgCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

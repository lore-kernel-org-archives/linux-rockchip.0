Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC8C63777
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 19:35:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D91F1247D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 19:35:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zXNl/S3x"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D91F1247D4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dKFk3H/XnImGozx6IhvA5pUF2hrJEl0tz4XX8i+9w5E=; b=zXNl/S3xn1JyRkUjhiUUSaRv5
	g8Jo5zZu4iBaYmHDVA0CY2f0wUP0mWhyRv3cJn9uexDR21xn/07tHq27tVcdBayGX9Cf9TNgZQQLD
	2xmqFfp0Nx2QwUCN76zkYitscjOeSqGXKQ7kJVfjCCRusTJ+4nOuzDHwME56N/f+aWqx/f3iVXitT
	CAkmufwixtHp2/My2C0KaUJFOmWuFJPd13IaJumv4aiVCslmnPtxld4HD9lowFsdU3iLD0l0B/hyb
	5LjyRHFvD6+ZLlRG3cXj1LFt+Ykc0vOSwVYfV/vaKTuEP0YndUSHhHviqpFoJbtpDRdqha8XTu2Jd
	lTkkMVAKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXrET-0001mx-Gm; Wed, 28 Oct 2020 19:35:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXrEI-0001hH-9p; Wed, 28 Oct 2020 19:35:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id EDFB5B910;
 Wed, 28 Oct 2020 19:35:26 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Subject: [PATCH v6 02/10] drm/cma-helper: Remove empty
 drm_gem_cma_prime_vunmap()
Date: Wed, 28 Oct 2020 20:35:13 +0100
Message-Id: <20201028193521.2489-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201028193521.2489-1-tzimmermann@suse.de>
References: <20201028193521.2489-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_153530_741888_527FA203 
X-CRM114-Status: GOOD (  14.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGZ1bmN0aW9uIGRybV9nZW1fY21hX3ByaW1lX3Z1bm1hcCgpIGlzIGVtcHR5LiBSZW1vdmUg
aXQgYmVmb3JlCmNoYW5naW5nIHRoZSBpbnRlcmZhY2UgdG8gdXNlIHN0cnVjdCBkcm1fYnVmX21h
cC4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
PgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgpUZXN0ZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMgfCAxNyAtLS0tLS0tLS0tLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL3ZjNC92YzRfYm8uYyAgICAgICAgIHwgIDEgLQogaW5jbHVkZS9kcm0vZHJt
X2dlbV9jbWFfaGVscGVyLmggICAgIHwgIDEgLQogMyBmaWxlcyBjaGFuZ2VkLCAxOSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKaW5kZXggMjE2NTYzM2M5Yjll
Li5kNTI3NDg1ZWEwYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9o
ZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKQEAgLTUz
NywyMyArNTM3LDYgQEAgdm9pZCAqZHJtX2dlbV9jbWFfcHJpbWVfdm1hcChzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iaikKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fY21hX3ByaW1lX3Zt
YXApOwogCi0vKioKLSAqIGRybV9nZW1fY21hX3ByaW1lX3Z1bm1hcCAtIHVubWFwIGEgQ01BIEdF
TSBvYmplY3QgZnJvbSB0aGUga2VybmVsJ3MgdmlydHVhbAotICogICAgIGFkZHJlc3Mgc3BhY2UK
LSAqIEBvYmo6IEdFTSBvYmplY3QKLSAqIEB2YWRkcjoga2VybmVsIHZpcnR1YWwgYWRkcmVzcyB3
aGVyZSB0aGUgQ01BIEdFTSBvYmplY3Qgd2FzIG1hcHBlZAotICoKLSAqIFRoaXMgZnVuY3Rpb24g
cmVtb3ZlcyBhIGJ1ZmZlciBleHBvcnRlZCB2aWEgRFJNIFBSSU1FIGZyb20gdGhlIGtlcm5lbCdz
Ci0gKiB2aXJ0dWFsIGFkZHJlc3Mgc3BhY2UuIFRoaXMgaXMgYSBuby1vcCBiZWNhdXNlIENNQSBi
dWZmZXJzIGNhbm5vdCBiZQotICogdW5tYXBwZWQgZnJvbSBrZXJuZWwgc3BhY2UuIERyaXZlcnMg
dXNpbmcgdGhlIENNQSBoZWxwZXJzIHNob3VsZCBzZXQgdGhpcwotICogYXMgdGhlaXIgJmRybV9n
ZW1fb2JqZWN0X2Z1bmNzLnZ1bm1hcCBjYWxsYmFjay4KLSAqLwotdm9pZCBkcm1fZ2VtX2NtYV9w
cmltZV92dW5tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHZvaWQgKnZhZGRyKQotewot
CS8qIE5vdGhpbmcgdG8gZG8gKi8KLX0KLUVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fY21hX3By
aW1lX3Z1bm1hcCk7Ci0KIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3RfZnVuY3Mg
ZHJtX2dlbV9jbWFfZGVmYXVsdF9mdW5jcyA9IHsKIAkuZnJlZSA9IGRybV9nZW1fY21hX2ZyZWVf
b2JqZWN0LAogCS5wcmludF9pbmZvID0gZHJtX2dlbV9jbWFfcHJpbnRfaW5mbywKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9iby5jCmluZGV4IGY0MzIyNzgxNzNjZC4uNTU3ZjBkMWU2NDM3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3ZjNF9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Jv
LmMKQEAgLTM4Nyw3ICszODcsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0
X2Z1bmNzIHZjNF9nZW1fb2JqZWN0X2Z1bmNzID0gewogCS5leHBvcnQgPSB2YzRfcHJpbWVfZXhw
b3J0LAogCS5nZXRfc2dfdGFibGUgPSBkcm1fZ2VtX2NtYV9wcmltZV9nZXRfc2dfdGFibGUsCiAJ
LnZtYXAgPSB2YzRfcHJpbWVfdm1hcCwKLQkudnVubWFwID0gZHJtX2dlbV9jbWFfcHJpbWVfdnVu
bWFwLAogCS52bV9vcHMgPSAmdmM0X3ZtX29wcywKIH07CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2RybV9nZW1fY21hX2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX2dlbV9jbWFfaGVscGVy
LmgKaW5kZXggMmJmYTI1MDI2MDdhLi5hMDY0YjBkMWM0ODAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9nZW1fY21hX2hlbHBlci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9nZW1fY21hX2hl
bHBlci5oCkBAIC0xMDQsNyArMTA0LDYgQEAgZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3Rh
YmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiBpbnQgZHJtX2dlbV9jbWFfcHJpbWVfbW1hcChz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAq
dm1hKTsKIHZvaWQgKmRybV9nZW1fY21hX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmopOwotdm9pZCBkcm1fZ2VtX2NtYV9wcmltZV92dW5tYXAoc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICpvYmosIHZvaWQgKnZhZGRyKTsKIAogc3RydWN0IGRybV9nZW1fb2JqZWN0ICoKIGRybV9n
ZW1fY21hX2NyZWF0ZV9vYmplY3RfZGVmYXVsdF9mdW5jcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCBzaXplX3Qgc2l6ZSk7Ci0tIAoyLjI5LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

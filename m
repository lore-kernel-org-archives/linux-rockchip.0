Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC55BC63798
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 787ED223BD
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rrm2Hg1X"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 787ED223BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4bgzCv4rN9M6rbRmXLy2By0JVItsBLlkm23mgWf/jU=; b=rrm2Hg1XiJcvosiua1bnHFH3l
	q27VoAaKm6/VxJs22CgAd+ct8x7lCXlG6XPmIHQ5a4W5dVG7fLeJZKwLLDngXWa8FK7iWTCbXhO4e
	M8gRp9/u/piZh7SMGVAZfLTGSBUuU/dDe01kccK9Yun3pFAo7YPedzTpMu/5bDFE1w6NzUdL639ov
	Jzbdpb9PYAOYWpzx/AUrWsVavfYHiEkIEXXPPkMndG8HkzpfPy5srGQpU7ZEWgqoVNFyMIJL2AgRh
	teJcHHxACwxgxBA4NwwsOqqOa4nms5H7E1D+ykKT79R8xZs0bKsRbqo+iDMcoxwRJyLVoNzOPKj3k
	ohQUjKhnA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZsec-0007G6-5W; Tue, 03 Nov 2020 09:31:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZse0-0006s6-Vz; Tue, 03 Nov 2020 09:30:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B16F0B11A;
 Tue,  3 Nov 2020 09:30:20 +0000 (UTC)
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
Subject: [PATCH v7 04/10] drm/exynos: Remove empty exynos_drm_gem_prime_{vmap,
 vunmap}()
Date: Tue,  3 Nov 2020 10:30:09 +0100
Message-Id: <20201103093015.1063-5-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201103093015.1063-1-tzimmermann@suse.de>
References: <20201103093015.1063-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_043025_561982_E8ECF1F3 
X-CRM114-Status: GOOD (  13.39  )
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

VGhlIGZ1bmN0aW9ucyBleHlub3NfZHJtX2dlbV9wcmltZV97dm1hcCx2dW5tYXB9KCkgYXJlIGVt
cHR5LiBSZW1vdmUKdGhlbSBiZWZvcmUgY2hhbmdpbmcgdGhlIGludGVyZmFjZSB0byB1c2Ugc3Ry
dWN0IGRybV9idWZfbWFwLiBBcyBhIHNpZGUKZWZmZWN0IG9mIHJlbW92aW5nIGRybV9nZW1fcHJp
bWVfdm1hcCgpLCB0aGUgZXJyb3IgY29kZSBjaGFuZ2VzIGZyb20KRU5PTUVNIHRvIEVPUE5PVFNV
UFAuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
VGVzdGVkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jIHwgMTIgLS0tLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmggfCAgMiAtLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4
eW5vc19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMK
aW5kZXggNGFmYmY1MTA5Y2JmLi40Mzk2MjI0MjI3ZDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9z
L2V4eW5vc19kcm1fZ2VtLmMKQEAgLTEzNSw4ICsxMzUsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHZtX29wZXJhdGlvbnNfc3RydWN0IGV4eW5vc19kcm1fZ2VtX3ZtX29wcyA9IHsKIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3RfZnVuY3MgZXh5bm9zX2RybV9nZW1fb2JqZWN0X2Z1
bmNzID0gewogCS5mcmVlID0gZXh5bm9zX2RybV9nZW1fZnJlZV9vYmplY3QsCiAJLmdldF9zZ190
YWJsZSA9IGV4eW5vc19kcm1fZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKLQkudm1hcCA9IGV4eW5v
c19kcm1fZ2VtX3ByaW1lX3ZtYXAsCi0JLnZ1bm1hcAk9IGV4eW5vc19kcm1fZ2VtX3ByaW1lX3Z1
bm1hcCwKIAkudm1fb3BzID0gJmV4eW5vc19kcm1fZ2VtX3ZtX29wcywKIH07CiAKQEAgLTQ2OSwx
NiArNDY3LDYgQEAgZXh5bm9zX2RybV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCiAJcmV0dXJuICZleHlub3NfZ2VtLT5iYXNlOwogfQogCi12b2lkICpl
eHlub3NfZHJtX2dlbV9wcmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQotewot
CXJldHVybiBOVUxMOwotfQotCi12b2lkIGV4eW5vc19kcm1fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgdm9pZCAqdmFkZHIpCi17Ci0JLyogTm90aGluZyB0byBk
byAqLwotfQotCiBpbnQgZXh5bm9zX2RybV9nZW1fcHJpbWVfbW1hcChzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaiwKIAkJCSAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogewpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5oIGIvZHJpdmVy
cy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5oCmluZGV4IDc0ZTkyNmFiZWZmMC4uYTIz
MjcyZmI5NmZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1f
Z2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5oCkBAIC0x
MDcsOCArMTA3LDYgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICoKIGV4eW5vc19kcm1fZ2VtX3By
aW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJCSAgICAgc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCQkJCSAgICAgc3RydWN0IHNnX3RhYmxl
ICpzZ3QpOwotdm9pZCAqZXh5bm9zX2RybV9nZW1fcHJpbWVfdm1hcChzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaik7Ci12b2lkIGV4eW5vc19kcm1fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaiwgdm9pZCAqdmFkZHIpOwogaW50IGV4eW5vc19kcm1fZ2VtX3ByaW1l
X21tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgICAgICBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSk7CiAKLS0gCjIuMjkuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

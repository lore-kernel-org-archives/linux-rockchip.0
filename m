Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C91CC56201
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7E04223BD
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YZoT2xUJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7E04223BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H7h10XVmvPe0dw8S4ho0HJOvGzILooeMq8xgoQOQ0Tc=; b=YZoT2xUJJ5FvFZrbZKqr2KwW3
	WdwMgi9IUMOxqDKg+gcPbBoJf4tcjlc1sMZmoNcYBtt4fDhCiarfIqbuYMdASvS0bmov/Pf2G7kx2
	Zt0slZ+Jw1e1Q5iKC86Y1HS2fR7PKTSZeF5dMU6eBwCluk+N4Mh7+DbSu171VGNPLUt6QKGGrluv1
	GGwJ/jDurW8SEUWV3z58MF07Cke1i8ii0jLo+gp73F/4B/FSTH2KxlZj4qx/CoYbFJqiCemcWe/zf
	3ffoAAOc6Rqw5TGb858r0JUMITKBBR7LiHxzqaZ4kSiyHQylx60s1bJQ9JDu9FZ/2ftX7FIWxVWIq
	NCCnOgkiQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZseT-0007CS-FY; Tue, 03 Nov 2020 09:30:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZse0-0006rt-Vs; Tue, 03 Nov 2020 09:30:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id AEAE2AF4F;
 Tue,  3 Nov 2020 09:30:18 +0000 (UTC)
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
Subject: [PATCH v7 01/10] drm/vram-helper: Remove invariant parameters from
 internal kmap function
Date: Tue,  3 Nov 2020 10:30:06 +0100
Message-Id: <20201103093015.1063-2-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201103093015.1063-1-tzimmermann@suse.de>
References: <20201103093015.1063-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_043025_520485_9F1F0A98 
X-CRM114-Status: GOOD (  13.97  )
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
 nouveau@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 etnaviv@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, xen-devel@lists.xenproject.org,
 spice-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHBhcmFtZXRlcnMgbWFwIGFuZCBpc19pb21lbSBhcmUgYWx3YXlzIG9mIHRoZSBzYW1lIHZh
bHVlLiBSZW1vdmVkIHRoZW0KdG8gcHJlcGFyZXMgdGhlIGZ1bmN0aW9uIGZvciBjb252ZXJzaW9u
IHRvIHN0cnVjdCBkbWFfYnVmX21hcC4KCnY0OgoJKiBkb24ndCBjaGVjayBmb3IgIWttYXAtPnZp
cnR1YWw7IHdpbGwgYWx3YXlzIGJlIGZhbHNlCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+ClRlc3RlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJv
cmcub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVyLmMgfCAxOCAr
KysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVs
cGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV92cmFtX2hlbHBlci5jCmluZGV4IDE2ZDY4
YzA0ZWE1ZC4uZTMwNWZhZGI4YmM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV92cmFtX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVy
LmMKQEAgLTM3OCwzMiArMzc4LDIyIEBAIGludCBkcm1fZ2VtX3ZyYW1fdW5waW4oc3RydWN0IGRy
bV9nZW1fdnJhbV9vYmplY3QgKmdibykKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2dlbV92cmFtX3Vu
cGluKTsKIAotc3RhdGljIHZvaWQgKmRybV9nZW1fdnJhbV9rbWFwX2xvY2tlZChzdHJ1Y3QgZHJt
X2dlbV92cmFtX29iamVjdCAqZ2JvLAotCQkJCSAgICAgIGJvb2wgbWFwLCBib29sICppc19pb21l
bSkKK3N0YXRpYyB2b2lkICpkcm1fZ2VtX3ZyYW1fa21hcF9sb2NrZWQoc3RydWN0IGRybV9nZW1f
dnJhbV9vYmplY3QgKmdibykKIHsKIAlpbnQgcmV0OwogCXN0cnVjdCB0dG1fYm9fa21hcF9vYmog
KmttYXAgPSAmZ2JvLT5rbWFwOworCWJvb2wgaXNfaW9tZW07CiAKIAlpZiAoZ2JvLT5rbWFwX3Vz
ZV9jb3VudCA+IDApCiAJCWdvdG8gb3V0OwogCi0JaWYgKGttYXAtPnZpcnR1YWwgfHwgIW1hcCkK
LQkJZ290byBvdXQ7Ci0KIAlyZXQgPSB0dG1fYm9fa21hcCgmZ2JvLT5ibywgMCwgZ2JvLT5iby5u
dW1fcGFnZXMsIGttYXApOwogCWlmIChyZXQpCiAJCXJldHVybiBFUlJfUFRSKHJldCk7CiAKIG91
dDoKLQlpZiAoIWttYXAtPnZpcnR1YWwpIHsKLQkJaWYgKGlzX2lvbWVtKQotCQkJKmlzX2lvbWVt
ID0gZmFsc2U7Ci0JCXJldHVybiBOVUxMOyAvKiBub3QgbWFwcGVkOyBkb24ndCBpbmNyZW1lbnQg
cmVmICovCi0JfQogCSsrZ2JvLT5rbWFwX3VzZV9jb3VudDsKLQlpZiAoaXNfaW9tZW0pCi0JCXJl
dHVybiB0dG1fa21hcF9vYmpfdmlydHVhbChrbWFwLCBpc19pb21lbSk7Ci0JcmV0dXJuIGttYXAt
PnZpcnR1YWw7CisJcmV0dXJuIHR0bV9rbWFwX29ial92aXJ0dWFsKGttYXAsICZpc19pb21lbSk7
CiB9CiAKIHN0YXRpYyB2b2lkIGRybV9nZW1fdnJhbV9rdW5tYXBfbG9ja2VkKHN0cnVjdCBkcm1f
Z2VtX3ZyYW1fb2JqZWN0ICpnYm8pCkBAIC00NDgsNyArNDM4LDcgQEAgdm9pZCAqZHJtX2dlbV92
cmFtX3ZtYXAoc3RydWN0IGRybV9nZW1fdnJhbV9vYmplY3QgKmdibykKIAlyZXQgPSBkcm1fZ2Vt
X3ZyYW1fcGluX2xvY2tlZChnYm8sIDApOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX3R0bV9ib191
bnJlc2VydmU7Ci0JYmFzZSA9IGRybV9nZW1fdnJhbV9rbWFwX2xvY2tlZChnYm8sIHRydWUsIE5V
TEwpOworCWJhc2UgPSBkcm1fZ2VtX3ZyYW1fa21hcF9sb2NrZWQoZ2JvKTsKIAlpZiAoSVNfRVJS
KGJhc2UpKSB7CiAJCXJldCA9IFBUUl9FUlIoYmFzZSk7CiAJCWdvdG8gZXJyX2RybV9nZW1fdnJh
bV91bnBpbl9sb2NrZWQ7Ci0tIAoyLjI5LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

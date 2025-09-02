Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B394CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 12:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZRVYHydVJKeoQzlxUF1t27AUB0aKhecNSeEfJflg9c=; b=Q08JxbyJRz0oYb
	aAo3+S74ll4kBMXQ/P7Q/EhLr8vX+AfLlQs7zDzgPpaVw0DwqEIYQrd2hYGAAFbCDk1kycIVFiXG6
	b+B+ou/AxThmbw74L6Ug50AXNf0GTRJK+SChfJmMNP5LHFtijiYQLXD4B06yIjHPq0DTB3jcoEYrc
	emamHDqNRwoH9wqve07v8bEpNssZ7MBFPTldGhs0bUKzcpDd55PmVlcwsRe1cGQ8cQHMvy32DsR3z
	r3EHpNcFB86EfyHbRx7CIWO4FZT1ox/gd3zFr3Xy8AB3Cc+iNHFxnVgo4OrMlBT2auX9h8mYkc+/x
	ztXbFJa4v0HxgveMgNoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ9D-0000000HHFK-0Qm7;
	Tue, 02 Sep 2025 12:30:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNRL-0000000GQPC-3Ctd;
	Tue, 02 Sep 2025 09:36:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 355DD6020B;
	Tue,  2 Sep 2025 09:36:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 906F1C4CEED;
	Tue,  2 Sep 2025 09:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756805794;
	bh=PvBQ83pIJH9X6bIfeKb5X2sWvdiNzva+hjf4dO1I8gA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=l0aC4Ri/EotrPZFuyMfOocn7y1DI2u+ABo2VjQfFsnB+imfxyOFeLPNLg3Zsd/xl1
	 XDolZ87IzExVDqOprgoIvUiDdEbKgB+S1zqttXyrUIUR3zF6TTP95a9i7YnUGvjHcF
	 GP4b89n0QP7vwlrqlQkdMqquGWBwmZ9yEN0rh/XzdcjbNLkH5Ev9S8qbiwl5tD2HdO
	 eAmvT2nU24VGo6XCX2ug58elj4TXdnDU8AAvpwSq/lCSIiu2Ri8vWJDM6qzkTrviqG
	 ugxBgJwZ4tu73WpWJnWOPU2MgK89Qlwe627caqs+SL4xaqT6tRPqmx4jUtuTbQEcbC
	 MtP2yuTUkg35Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 02 Sep 2025 11:35:25 +0200
Subject: [PATCH v2 26/37] drm/rockchip: Switch to
 drm_atomic_get_new_crtc_state()
MIME-Version: 1.0
Message-Id: <20250902-drm-no-more-existing-state-v2-26-de98fc5f6d66@kernel.org>
References: <20250902-drm-no-more-existing-state-v2-0-de98fc5f6d66@kernel.org>
In-Reply-To: <20250902-drm-no-more-existing-state-v2-0-de98fc5f6d66@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2751; i=mripard@kernel.org;
 h=from:subject:message-id; bh=PvBQ83pIJH9X6bIfeKb5X2sWvdiNzva+hjf4dO1I8gA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBnbdoXrN3y/fsHL+4ttWbrA2ovCrX3Br8vENd9uEzu+6
 ndw+tdFHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAiPl6MDS/nr/k0XW5BSe/X
 x4/bPA77bxfacmz6+dfafZVrc7+8z7jrsiKgXeaN/K9NXi582Wb2yxjr3QwCvSJSFhnk3F9cWWz
 B2+mmwy63o+Fjbmuube6vrymVr2W66pw81Zv2+VY9k7Zn4wcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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

VGhlIHJvY2tjaGlwIGF0b21pY19jaGVjayBpbXBsZW1lbnRhdGlvbiB1c2VzIHRoZSBkZXByZWNh
dGVkCmRybV9hdG9taWNfZ2V0X2V4aXN0aW5nX2NydGNfc3RhdGUoKSBoZWxwZXIuCgpUaGlzIGhv
b2sgaXMgY2FsbGVkIGFzIHBhcnQgb2YgdGhlIGdsb2JhbCBhdG9taWNfY2hlY2ssIHRodXMgYmVm
b3JlIHRoZQpzdGF0ZXMgYXJlIHN3YXBwZWQuIFRoZSBleGlzdGluZyBzdGF0ZSB0aHVzIHBvaW50
cyB0byB0aGUgbmV3IHN0YXRlLCBhbmQKd2UgY2FuIHVzZSBkcm1fYXRvbWljX2dldF9uZXdfY3J0
Y19zdGF0ZSgpIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+CgotLS0KVG86IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+ClRv
OiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+ClRvOiBBbmR5IFlhbiA8YW5keS55
YW5Acm9jay1jaGlwcy5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNj
OiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jICB8IDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcDIuYyB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jCmluZGV4IGJhNmIwNTI4ZDFlNWE0OTNjZGVmODVkZDFlYTI1OGU3MGMzMWNjZDUuLjUzNjli
NzdlYTQzNGM3OTRlZDdkNTA5ODAyZmEyOWMzOWQyYmZhN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtODI0LDEyICs4MjQsMTEgQEAgc3RhdGlj
IGludCB2b3BfcGxhbmVfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogCQkJ
CQlEUk1fUExBTkVfTk9fU0NBTElORzsKIAogCWlmICghY3J0YyB8fCBXQVJOX09OKCFmYikpCiAJ
CXJldHVybiAwOwogCi0JY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2V4aXN0aW5nX2NydGNf
c3RhdGUoc3RhdGUsCi0JCQkJCQkJY3J0Yyk7CisJY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0
X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAlpZiAoV0FSTl9PTighY3J0Y19zdGF0ZSkp
CiAJCXJldHVybiAtRUlOVkFMOwogCiAJcmV0ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfcGxh
bmVfc3RhdGUobmV3X3BsYW5lX3N0YXRlLCBjcnRjX3N0YXRlLAogCQkJCQkJICBtaW5fc2NhbGUs
IG1heF9zY2FsZSwKQEAgLTEwOTAsMTEgKzEwODksMTIgQEAgc3RhdGljIGludCB2b3BfcGxhbmVf
YXRvbWljX2FzeW5jX2NoZWNrKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogCQlyZXR1cm4gLUVJ
TlZBTDsKIAogCWlmICghcGxhbmUtPnN0YXRlLT5mYikKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlj
cnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfZXhpc3RpbmdfY3J0Y19zdGF0ZShzdGF0ZSwgbmV3
X3BsYW5lX3N0YXRlLT5jcnRjKTsKKwljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2Ny
dGNfc3RhdGUoc3RhdGUsCisJCQkJCQkgICBuZXdfcGxhbmVfc3RhdGUtPmNydGMpOwogCiAJLyog
U3BlY2lhbCBjYXNlIGZvciBhc3luY2hyb25vdXMgY3Vyc29yIHVwZGF0ZXMuICovCiAJaWYgKCFj
cnRjX3N0YXRlKQogCQljcnRjX3N0YXRlID0gcGxhbmUtPmNydGMtPnN0YXRlOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCmluZGV4IGI1MDkyN2E4MjRi
NDAyMGE3ZmZkNTc5NzQwNzBlZDIwMmNkOGI4MzguLjQ1NTZjZjdhMzM2NDE1MjljNjczYjhkNzg0
MjExNWRjNzM5ZGVkZTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jCkBAIC0xMDExLDExICsxMDExLDExIEBAIHN0YXRpYyBpbnQgdm9wMl9wbGFuZV9h
dG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAKIAl2cCA9IHRvX3ZvcDJfdmlk
ZW9fcG9ydChjcnRjKTsKIAl2b3AyID0gdnAtPnZvcDI7CiAJdm9wMl9kYXRhID0gdm9wMi0+ZGF0
YTsKIAotCWNzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2V4aXN0aW5nX2NydGNfc3RhdGUocHN0YXRl
LT5zdGF0ZSwgY3J0Yyk7CisJY3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUo
cHN0YXRlLT5zdGF0ZSwgY3J0Yyk7CiAJaWYgKFdBUk5fT04oIWNzdGF0ZSkpCiAJCXJldHVybiAt
RUlOVkFMOwogCiAJcmV0ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfcGxhbmVfc3RhdGUocHN0
YXRlLCBjc3RhdGUsCiAJCQkJCQkgIG1pbl9zY2FsZSwgbWF4X3NjYWxlLAoKLS0gCjIuNTAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

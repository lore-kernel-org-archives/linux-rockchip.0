Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB638C5DF93
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 14:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOdnoyQWFAI1PiuSaQkxJD9JygrGExufr6urX0z9hQA=; b=KBtqsCRgh/IRto
	GrxfPqVk/KpI9wIGr0f3FnbqUC4iED9I3izu5E69M3cA52RjQTJW3y7lUn6LAEDf1LUg4npa/ynri
	J3RrL+3AXfQtEYYhZdZIH7widUKXNTl/us0CbYrkdRUINuqFBWvmB1xtpxz67rSr3eu02zEfAPw/j
	63kFge1R39oMFhOH0xS/vxqTqLLPsemr+joS40OCr3cg1LGIkhIjiw+cpys2ZNk4NowioPo3yF0hR
	yUYmybV2U467i4yTAjL7q/KnfVNI3jHfmiGNvQKNR3YPmTOzMnxlyRi8LW5KRV0PoYeDqAU0F8CjP
	toJljhKX+tJDbWb43Vgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxQRL-0000000Da4l-2fZw;
	Fri, 21 Aug 2026 14:41:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxQRK-0000000Da4f-0mXs
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Aug 2026 14:41:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E4EC6187B;
	Fri, 21 Aug 2026 14:41:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC1AA1F00A3E;
	Fri, 21 Aug 2026 14:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787323309;
	bh=TBXd7/4Rqp6FiQW2cUZbg8tqHqkkn81QlQlR8YTCzTw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=oRAnMYL4ZLMIuGPbX8sz5CzD+LPHfx4DEe4wCg46X1xFzviJf1rdyJx0h6S/VMjqS
	 KA0nbdQ8pHO3R34darHcuOAyKtUtGsqY6QY+6GRvJ7fBOAea9fsGanGv7K2ituc2Bq
	 LYM9Z+WUxZ37+SzbfLvwOOgHcrwtNcSMdJdmb5S85oQG2rCTme6GuRZega55grgsDk
	 BdR4wAgejHMAtbhyUFqdJJxACEJzQr2SZki4f23DAOTjubYmBouRcKT+YW9jDkul/N
	 iFU3zBoH4ZkWlNJaHYOR6Hkj64RaSfdOEqyVf9+TA2FEs0y6tOst/WBJioXDNdIB4a
	 OHdfv2f65v3aw==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 21 Aug 2026 16:39:37 +0200
Subject: [PATCH 61/70] drm/rockchip: vop: Convert to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260821-drm-no-more-crtc-reset-v1-61-fb793475c05a@kernel.org>
References: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
In-Reply-To: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2600; i=mripard@kernel.org;
 h=from:subject:message-id; bh=bfFf2guEIBmZHiLt3zPAdPPtsiW6cXZqlcuZTPqYWsA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFkdycI3E9Yt3CTDaZDn8NLuhrZ081PzC9cEO+/9ZFtvV
 disGNzYMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACby5y1jw2ePhqyvMRWFG5Wb
 BV5ci5wqvcqH3TFk+ivfzScuCzHJXL4efuPGwb1W56sFrH2PMoZuZqwvqNXdyzQ/K9Jue484l5Z
 jU9f3m9mmCQ+eMxt5VS6cJazDP+mfk98n9li5+eVe2WmOVQA=
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

VGhlIHJvY2tjaGlwIHZvcCBjcnRjIGltcGxlbWVudGF0aW9uIHByb3ZpZGVzIGEgY3VzdG9tIHJl
c2V0IGhvb2suCkhvd2V2ZXIsIHRoaXMgaG9vayBvbmx5IGFsbG9jYXRlcyB0aGUgc3RhdGUsIGlu
aXRpYWxpemVzIGl0IHdpdGgKX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0KCksIGFuZCBm
cmVlcyB0aGUgcHJldmlvdXMgc3RhdGUuIEl0CmRvZXMgbm90IHBlcmZvcm0gYW55IGhhcmR3YXJl
IHJlc2V0LgoKU2luY2UgdGhpcyBpcyBleGFjdGx5IHdoYXQgdGhlIGF0b21pY19jcmVhdGVfc3Rh
dGUgaG9vayBpcyBtZWFudCB0bwpkbywgbWludXMgdGhlIG9sZCBzdGF0ZSBjbGVhbnVwIHdoaWNo
IHRoZSBjYWxsZXIgaGFuZGxlcywgY29udmVydCB0aGUKaW1wbGVtZW50YXRpb24gdG8gdXNlIGF0
b21pY19jcmVhdGVfc3RhdGUgd2l0aApfX2RybV9hdG9taWNfaGVscGVyX2NydGNfc3RhdGVfaW5p
dCgpIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5l
bC5vcmc+Ci0tLQpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2Nr
LWNoaXBzLmNvbT4KQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgMTggKysrKysrKysr
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDAw
OTBkOGZmMGM3OS4uYmQwMjU5N2RjMmQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wLmMKQEAgLTE2NTQsMjEgKzE2NTQsMjEgQEAgc3RhdGljIHZvaWQgdm9w
X2NydGNfZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAKIAlfX2RybV9hdG9t
aWNfaGVscGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmcy0+YmFzZSk7CiAJa2ZyZWUocyk7CiB9CiAK
LXN0YXRpYyB2b2lkIHZvcF9jcnRjX3Jlc2V0KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKK3N0YXRp
YyBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKnZvcF9jcnRjX2NyZWF0ZV9zdGF0ZShzdHJ1Y3QgZHJt
X2NydGMgKmNydGMpCiB7Ci0Jc3RydWN0IHJvY2tjaGlwX2NydGNfc3RhdGUgKmNydGNfc3RhdGUg
PSBremFsbG9jX29iaigqY3J0Y19zdGF0ZSk7CisJc3RydWN0IHJvY2tjaGlwX2NydGNfc3RhdGUg
KmNydGNfc3RhdGU7CiAKLQlpZiAoY3J0Yy0+c3RhdGUpCi0JCXZvcF9jcnRjX2Rlc3Ryb3lfc3Rh
dGUoY3J0YywgY3J0Yy0+c3RhdGUpOworCWNydGNfc3RhdGUgPSBremFsbG9jX29iaigqY3J0Y19z
dGF0ZSk7CisJaWYgKCFjcnRjX3N0YXRlKQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAot
CWlmIChjcnRjX3N0YXRlKQotCQlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfcmVzZXQoY3J0Yywg
JmNydGNfc3RhdGUtPmJhc2UpOwotCWVsc2UKLQkJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jl
c2V0KGNydGMsIE5VTEwpOworCV9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19zdGF0ZV9pbml0KCZj
cnRjX3N0YXRlLT5iYXNlLCBjcnRjKTsKKworCXJldHVybiAmY3J0Y19zdGF0ZS0+YmFzZTsKIH0K
IAogI2lmZGVmIENPTkZJR19EUk1fQU5BTE9HSVhfRFAKIHN0YXRpYyBzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqdm9wX2dldF9lZHBfY29ubmVjdG9yKHN0cnVjdCB2b3AgKnZvcCkKIHsKQEAgLTE3MzYs
MTEgKzE3MzYsMTEgQEAgdm9wX2NydGNfdmVyaWZ5X2NyY19zb3VyY2Uoc3RydWN0IGRybV9jcnRj
ICpjcnRjLCBjb25zdCBjaGFyICpzb3VyY2VfbmFtZSwKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1fY3J0Y19mdW5jcyB2b3BfY3J0Y19mdW5jcyA9IHsKIAkuc2V0X2NvbmZpZyA9IGRybV9hdG9t
aWNfaGVscGVyX3NldF9jb25maWcsCiAJLnBhZ2VfZmxpcCA9IGRybV9hdG9taWNfaGVscGVyX3Bh
Z2VfZmxpcCwKIAkuZGVzdHJveSA9IGRybV9jcnRjX2NsZWFudXAsCi0JLnJlc2V0ID0gdm9wX2Ny
dGNfcmVzZXQsCisJLmF0b21pY19jcmVhdGVfc3RhdGUgPSB2b3BfY3J0Y19jcmVhdGVfc3RhdGUs
CiAJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSB2b3BfY3J0Y19kdXBsaWNhdGVfc3RhdGUsCiAJ
LmF0b21pY19kZXN0cm95X3N0YXRlID0gdm9wX2NydGNfZGVzdHJveV9zdGF0ZSwKIAkuZW5hYmxl
X3ZibGFuayA9IHZvcF9jcnRjX2VuYWJsZV92YmxhbmssCiAJLmRpc2FibGVfdmJsYW5rID0gdm9w
X2NydGNfZGlzYWJsZV92YmxhbmssCiAJLnNldF9jcmNfc291cmNlID0gdm9wX2NydGNfc2V0X2Ny
Y19zb3VyY2UsCgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

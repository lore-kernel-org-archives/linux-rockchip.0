Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A799C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 15:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZrWQOtpFnFg/xaNqtEkmP5odTE+i8BJkypHE/AHo+g=; b=2573lCzEvmYy6o
	RXwQ/jyTUKnWIXIho4jLEkjR3fIutSC6HE8btWGTKiAkZLqGiGQ1kid2+mT723JkQg/shUO+O0FR8
	8PbS1novwBHW8jg4F/hbB8AvJufZr/9Wn6WiWzLt8/V55DfrFRPsgkISH5xhCm6VNfeIftCWQ+Ik/
	ZQW7qchil1QJHXAq+TiYVTdT5kxzeBws8j2smVZ3KLRLGzP3VOkwwpORDid51Oqkt0Ps2jBY9l7DJ
	CxudYW9Q+iEhszX/2TLYc++WWJY254tQm5WKUM7lXxeh+jN02KFCZh4CbQKB5uVnbtHkSgp2QGgTd
	RWMH79cWiiVrNHOuv4bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnKQh-00000003Wjy-1KcU;
	Thu, 21 Mar 2024 15:34:07 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnKNM-00000003Uch-3TEE;
	Thu, 21 Mar 2024 15:30:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E681FCE138B;
	Thu, 21 Mar 2024 15:30:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC8E0C433F1;
	Thu, 21 Mar 2024 15:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711035038;
	bh=KphIRHuqty8drrA3+chsi6Ea8a803tyozTB0Wym2y9I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PcID5Dj5COVJQg05XFi8m3+ldN3Th0zFE3lOydd8F8BtdCMKTIxQ+DQm43eX8Cn8J
	 zabgEqzr/AzCwjXguhmbWhnWKQzKc0aYxdVHQkAxJGZDlyQSlbHk1k0A77AGx8bdYT
	 weybPYsraU6udwjUczb9NdDOi/hK2rImXaJ+TRzI0APY7gh4G7x/Is5BgYoMHtAt2C
	 eEzvxuA5/f2dFz679bEfcPQIjJcVZcSR52Wmg3xS+LcfIk+XMpD+NdKqSXIqlPf0CX
	 2fVwr3J1Tu3OU1sg2N5yTRKKoPB9rJTlW+qvUdJ74KV/qYKHbNnAWPOGtu+P9PO4l0
	 zYB9Wjdty+7vw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 21 Mar 2024 16:29:21 +0100
Subject: [PATCH v10 25/27] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240321-kms-hdmi-connector-state-v10-25-e6c178361898@kernel.org>
References: <20240321-kms-hdmi-connector-state-v10-0-e6c178361898@kernel.org>
In-Reply-To: <20240321-kms-hdmi-connector-state-v10-0-e6c178361898@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2115; i=mripard@kernel.org;
 h=from:subject:message-id; bh=KphIRHuqty8drrA3+chsi6Ea8a803tyozTB0Wym2y9I=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKl/goK2VZ9t283t+DZUyjdx6iderxv+ZdqPAp6//b7di
 +eJ96NbHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZjIxmcMf2U3mWY+99ixSXJ/
 2b2Db59ErtUTmTB1oYYFw/m+Fx8eLE5i+O9i+8h4dUAs51q/158mm0q4pOgc80+dr6SfNuPtw20
 bWfkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_083041_412554_4E47A955 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

Tm93IHRoYXQgd2UgaGF2ZSBhIHBsYW5lIGNyZWF0ZSBoZWxwZXIgZm9yIGt1bml0IG1vY2tlZCBk
cml2ZXJzLCBsZXQncwpjb252ZXJ0IHRvIGl0IGluIHZjNC4KClJldmlld2VkLWJ5OiBNYcOtcmEg
Q2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9j
a19wbGFuZS5jIHwgMzQgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0v
dmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMKaW5kZXggOTczZjVmOTI5MDk3Li4xNDM1N2RiODIy
MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2tfcGxhbmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMKQEAgLTEs
NDMgKzEsMjUgQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCiAKLSNpbmNs
dWRlIDxkcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaD4KLSNpbmNsdWRlIDxkcm0vZHJtX2Zv
dXJjYy5oPgotI2luY2x1ZGUgPGRybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oPgorI2lu
Y2x1ZGUgPGRybS9kcm1fa3VuaXRfaGVscGVycy5oPgogI2luY2x1ZGUgPGRybS9kcm1fcGxhbmUu
aD4KIAogI2luY2x1ZGUgPGt1bml0L3Rlc3QuaD4KIAogI2luY2x1ZGUgInZjNF9tb2NrLmgiCiAK
LXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyB2YzRfZHVtbXlfcGxh
bmVfaGVscGVyX2Z1bmNzID0gewotfTsKLQotc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVf
ZnVuY3MgdmM0X2R1bW15X3BsYW5lX2Z1bmNzID0gewotCS5hdG9taWNfZGVzdHJveV9zdGF0ZQk9
IGRybV9hdG9taWNfaGVscGVyX3BsYW5lX2Rlc3Ryb3lfc3RhdGUsCi0JLmF0b21pY19kdXBsaWNh
dGVfc3RhdGUJPSBkcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9kdXBsaWNhdGVfc3RhdGUsCi0JLnJl
c2V0CQkJPSBkcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9yZXNldCwKLX07Ci0KLXN0YXRpYyBjb25z
dCB1aW50MzJfdCB2YzRfZHVtbXlfcGxhbmVfZm9ybWF0c1tdID0gewotCURSTV9GT1JNQVRfWFJH
Qjg4ODgsCi19OwotCiBzdHJ1Y3QgZHJtX3BsYW5lICp2YzRfZHVtbXlfcGxhbmUoc3RydWN0IGt1
bml0ICp0ZXN0LCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLAogCQkJCSAgZW51bSBkcm1fcGxhbmVf
dHlwZSB0eXBlKQogewogCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwogCi0JcGxhbmUgPSBfX2Ry
bW1fdW5pdmVyc2FsX3BsYW5lX2FsbG9jKGRybSwgc2l6ZW9mKHN0cnVjdCBkcm1fcGxhbmUpLCAw
LAotCQkJCQkJIDAsCi0JCQkJCQkgJnZjNF9kdW1teV9wbGFuZV9mdW5jcywKLQkJCQkJCSB2YzRf
ZHVtbXlfcGxhbmVfZm9ybWF0cywKLQkJCQkJCSBBUlJBWV9TSVpFKHZjNF9kdW1teV9wbGFuZV9m
b3JtYXRzKSwKLQkJCQkJCSBOVUxMLAotCQkJCQkJIERSTV9QTEFORV9UWVBFX1BSSU1BUlksCi0J
CQkJCQkgTlVMTCk7Ci0JS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwbGFuZSk7
CisJS1VOSVRfQVNTRVJUX0VRKHRlc3QsIHR5cGUsIERSTV9QTEFORV9UWVBFX1BSSU1BUlkpOwog
Ci0JZHJtX3BsYW5lX2hlbHBlcl9hZGQocGxhbmUsICZ2YzRfZHVtbXlfcGxhbmVfaGVscGVyX2Z1
bmNzKTsKKwlwbGFuZSA9IGRybV9rdW5pdF9oZWxwZXJfY3JlYXRlX3ByaW1hcnlfcGxhbmUodGVz
dCwgZHJtLAorCQkJCQkJICAgICAgTlVMTCwKKwkJCQkJCSAgICAgIE5VTEwsCisJCQkJCQkgICAg
ICBOVUxMLCAwLAorCQkJCQkJICAgICAgTlVMTCk7CisJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1Jf
TlVMTCh0ZXN0LCBwbGFuZSk7CiAKIAlyZXR1cm4gcGxhbmU7CiB9CgotLSAKMi40NC4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

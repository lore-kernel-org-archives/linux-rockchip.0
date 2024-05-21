Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B9BC25B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 10:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Wh1f14Gmwu1OI07JNm1Rk64dtTjm2JO/jamzFwLecY=; b=FMk/xbUCcqfq3O
	VUJl+SZEM/D8I4oZPGR0/oB+soF8D1SJ45FJH7gUq0TUQnJCGdE5yJYvHqnbrNlZ/MlnxwFzIKJjQ
	s7cxfmqCx9csayXHqhzFGsqaMvAqDNlWkQJr0FsSOkBnE58dha+CMKfTiEWUyNolR2/jglKi9YLvQ
	9tHrtnDRgIU20wgN12g+hzPmVg3F7vBGUyAqtbWb6opYlF2phs8u9+Ne/46z6UHugSdtDhXqWfF8N
	AENwULfLML4DtNQAB4ES6Q9pGdjEd59HodqErpjXsBVGy3qL3pUkkKpGp7jU2JC9HLV8cYbEe52q5
	z1OhV9rEDefOFj3zDmxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9MZ6-0000000H3NT-1ptf;
	Tue, 21 May 2024 10:17:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9MWP-0000000H27S-4Bi5;
	Tue, 21 May 2024 10:15:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 425C762121;
	Tue, 21 May 2024 10:15:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66847C4AF0B;
	Tue, 21 May 2024 10:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716286504;
	bh=7kp1dFVIU1GWBJN/S2jYDRC3Mp7yeADRvgV4od+K6E0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pF7n/aD1m0nX8qtx2mMskIiVvyXu0B+gCRR90mOnTFK9Ium5E0FC6xbSkqQTwIia4
	 sWfHSQTi65xkRLHf/TRBneFHEExRiwNqLOw75KbBau4TadOuos+O1d8leVP2dv14Dz
	 rMg0jdFJjtUmkEtmLvwKLg3F99EHCD3GTXkPfhaNMEnyrCaFQoaxPJQGx5y82Ydb9v
	 BtLBb+cnc6Aw0c5WmT7JHU15uLagcEgwT9X0Ouon18s3lwD1sFFX0u/dTgSRDhZpGS
	 6ViqMn82kYCFngVm1zw3odZkNT27dumsDJ87tBU+2K9LGhWwV834RMBpgAbtbKA4yz
	 7BvboGtrEve8A==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 21 May 2024 12:13:59 +0200
Subject: [PATCH v14 26/28] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240521-kms-hdmi-connector-state-v14-26-51950db4fedb@kernel.org>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2115; i=mripard@kernel.org;
 h=from:subject:message-id; bh=7kp1dFVIU1GWBJN/S2jYDRC3Mp7yeADRvgV4od+K6E0=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGk+xXeKCmw6+Ct1dobu0PqWxXB/n5RJWFWBwIOXZw05M
 q1mSC/smMrCIMzJICumyPJEJuz08vbFVQ72K3/AzGFlAhnCwMUpABO5Mpmxvsj1pY/+46/td3pn
 VXG0TOm1dP+78Fl2eYH73rrT963mneaV4pm4aP204puCf05lr3d7ydhwTFjn3NPAqtJOz+f9ZrW
 3LzEqFm2bbJX3xKj61sODUxMv/938d/6pCPYDUzzzr0m29KcAAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_031506_925372_0B72C6E7 
X-CRM114-Status: GOOD (  10.30  )
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
TlVMTCh0ZXN0LCBwbGFuZSk7CiAKIAlyZXR1cm4gcGxhbmU7CiB9CgotLSAKMi40NS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

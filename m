Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFF4C25B7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 14:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Wh1f14Gmwu1OI07JNm1Rk64dtTjm2JO/jamzFwLecY=; b=3jgU2YXp9beWdA
	KotP2lyiPBpYGPAVTkxy8YFqjX+NanHaEwgZtDCsc+OOjGI/+lPp4DUmdOUKbvul7IOJQ1a3LwI09
	LzNDqBcM/PFgcuvGSyAPX0TF45z+2GbzSa3Gpb5H5/ScsHHIXOMvaZLBtBuJVQ5PLaMRnDTtCO8iw
	lJaPzl3mNRuI8RyNwQ3qoJmyPnJnmmCoaeQf7+nArbyc4CNPXXhOg0JPY20L/0YrarbH7IocGb0+t
	G7Lc1Q5Y2kqoLLwYB9MWt4vkoatY1CnYYXkh/Irm5hIuwc43rzzzkwvQt+bl4XZQ5Y76fOnOP2Bwy
	f37jckfoxuPh8P4zod3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBawF-0000000FFDu-0kry;
	Mon, 27 May 2024 14:02:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBasn-0000000FD3d-2Pz8;
	Mon, 27 May 2024 13:59:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F07B6CE0FA4;
	Mon, 27 May 2024 13:59:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3A8C32789;
	Mon, 27 May 2024 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818363;
	bh=7kp1dFVIU1GWBJN/S2jYDRC3Mp7yeADRvgV4od+K6E0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EhmewPdyShDry8+QEL8giz8LFFo422V44Ts1wdgG6GxxCZ9UxadRXP8Px+FNvvEuq
	 rfrZ5zDs99kJ6PZlpSXh3sWHJV9SkhbqGt7XKUc/bnDSLDHd3xHXH78ORZQZIy57Ci
	 /q4o52JNeDDmXSOXFsXeMJx52AVxgfgEwy4w1r8pEuz0EVjDwYAyvwaU1mdXIpcA0K
	 boHdnbMfsr7+Vglt67YwgltNZL7D/BXDj1XcXsIlFbNyXWlweQaoc7v/z7GDutFl/U
	 UlyZzZ6cvHKGC3ewogfWHqVB1RKZOGuFHnRVixZ+jEwoT0lEmza8u0a2GxvotmbsrH
	 pyMvrpDzn55Dg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 May 2024 15:58:16 +0200
Subject: [PATCH v15 27/29] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240527-kms-hdmi-connector-state-v15-27-c5af16c3aae2@kernel.org>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
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
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGkhE3MY4g6vX7Xlsd7DDZv1LCcmXefV37flhPijYHb54
 jDOQJ4FHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTGBDuDgFYCLdaYwNXXkbjke4ybufnBOQ
 O+nj06ZDvs+0xGf8vfD3z6PFqR719+9VHnER1n8k3v582trCjS8dGatZJ/PxPpymu7JN7eDViSk
 m+y/Ib1YVvJ3G3sEc167czhGzUMznffGMuebty5b1r9bjjgQA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_065926_990600_07061B16 
X-CRM114-Status: UNSURE (   9.89  )
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
TlVMTCh0ZXN0LCBwbGFuZSk7CiAKIAlyZXR1cm4gcGxhbmU7CiB9CgotLSAKMi40NS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

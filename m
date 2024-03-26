Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10234C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZrWQOtpFnFg/xaNqtEkmP5odTE+i8BJkypHE/AHo+g=; b=O0X8aCEIFj9T1x
	HrTQvw6HHLMceKv7ztcjSTem41cgpCAVMyp/Me5SCw3Eq+Y67w1vSt9M41q902nnqdN5ekw113xRf
	SXJEUK6z7gyxuizv0xPN/4wvPvAresH+kxErknhIcz4hUuUdlp3NXrKIwTeeJ1CGU8m7IyNGWhx2E
	igDMStu2SL1x9t1hOWmG/FQtCf4ujAMMVwNLPyJmcN77WvGGLtf2U2qs3X4MmkKlhtG7IqMsyHTu8
	R8Uam5596KDcRAEm0B1iMAo/N9+qyaOo+HO1P577kMJPAwXs5HebG4DkFj/R7QOsO6NPOnVCeo9VU
	Xxk3nqXoWgg3C/bReSpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp9zG-00000005YvJ-3NAv;
	Tue, 26 Mar 2024 16:49:22 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8vr-00000005G5f-1tqA;
	Tue, 26 Mar 2024 15:41:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AB37DCE1F82;
	Tue, 26 Mar 2024 15:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91EDCC433F1;
	Tue, 26 Mar 2024 15:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711467704;
	bh=KphIRHuqty8drrA3+chsi6Ea8a803tyozTB0Wym2y9I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ULruZmpa1hFZqTkn1uLbmaHuwhG7uoJOhR9k0+AEUO/W4bNsmneQvzCHACYZY7A2B
	 n3efmikYG5ICeSLVVaHMXRRgJQQxw65il2/ykGYNzydCXBUOANLRtXcbKb9hk9wzbl
	 09JXdpme290b5Ela8lLlWgLnOTZjWa12f5BSBAPTTKE3sW4qd7OA9Mg6oL5a+wLAU0
	 STGH4SYj/7V26D5jFZJE7pgcZJJ2jC0Z8cTtCzYzuuCjREcsRqKVlsjYlviIuiAmko
	 SFOI5SMAKvpc7anmksP2G8p767oXFEuyIG3JgpuKTKj+Uo8ThGyp/MY8cQcilWBeBY
	 Rrj5rW+An4bOA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 Mar 2024 16:40:30 +0100
Subject: [PATCH v11 26/28] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240326-kms-hdmi-connector-state-v11-26-c5680ffcf261@kernel.org>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
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
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlMb7KeCx8W/a/umv9+DffExl8prC/+7F53ov3bjmhxn
 bBaC0OTjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjCRPXyM9R43nn04KJFeMttP
 5vSGC5cblmrfDVtqkjTFpmy96guBuOKnG5jEvJesXLhjusoErVurhBirWa5/ZvrT1fOxMLp20df
 kcsa/ym9VOhVdj1jMcFp3qXZB+BE7kf/eS4w6supW6l2PkjMHAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_084148_024297_52D35F4C 
X-CRM114-Status: UNSURE (   9.71  )
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

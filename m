Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF14C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxlIewo3NWEwSmAO9nOgMOKEmi/R/REysia9PFerryA=; b=NKtjBLHVOWdQZX
	Z5NEBy41k2bDlubZCGa/is0uKqCsJcqohDfpjr2RnTLmZYTvVEGw2LWNrBFHaS4jNamB8QHcIjsHo
	JqvvwAvtvxy4Kep06mLhmcpdwyRuwXVcgrpcXKjUnjmBr+hvxRvUGxUeeWqJKaoqMmrXYVIBTFfZh
	ZHIV4gRaKnf3EqFDNV1QESI6bZXmfrxNHvk7HdhX400O8Bz2OAAEhGdp+c8a0Dk+wtXsnIDmfM2Eh
	+3QXb3euvzOsOHnEbeh1KWnouoNM913fDQECy1NLlw+2mU6xOZj2pU6U8h193UwSv6MyxUvOjQHUg
	h0dTIXPrd4ynSUMtno+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Kky-0000000BBpF-28AL;
	Tue, 07 May 2024 13:21:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Kid-0000000B9le-0gyZ;
	Tue, 07 May 2024 13:19:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D7BCB61773;
	Tue,  7 May 2024 13:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C5FBC2BBFC;
	Tue,  7 May 2024 13:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087934;
	bh=mxuD7pT2tlDQ0zzNZkqWfj36MC0sF3/2cyZNsO+d0UQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=C7Skz4oWmm7q6tad0dSn62GOGTbg4unvNaJjxDdz2rBEV0wH/V9C3VBGle8OxXlPc
	 YT3dFbDZD5V7apomiZ6JcF5leIFhtV9mBvsA0NsAxcudAMLiZTECdquX4KN08vnTlP
	 oXJTWOpBnHYqozJ9Zy7xDdS0oJWZntx61iMZE2FnzGmghE53K3DSBGSHgtZnrYbZGk
	 LSDL1Cddos0jHHTEoiI8LhwdZhS9TmdfPW0fR64mXxgKQHzQsKo5JWFo5fifdEx1Jp
	 fGoOfAC8JKaYulPoDHt496GVfhbnosb++zyo4yulmV+6Fuj5hdSGTukjna8svQUdxb
	 RdIGJW6PFTJlA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 07 May 2024 15:17:43 +0200
Subject: [PATCH v13 25/28] drm/vc4: tests: Remove vc4_dummy_plane structure
MIME-Version: 1.0
Message-Id: <20240507-kms-hdmi-connector-state-v13-25-8fafc5efe8be@kernel.org>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
In-Reply-To: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3744; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mxuD7pT2tlDQ0zzNZkqWfj36MC0sF3/2cyZNsO+d0UQ=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlWmp+8lCerRpqt2XrQgSm2xTAv+R1zrm7Q9rA/i199N
 99a4zCpYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAEwkcCZjnT3Xx03q7yPWG9+w
 KbrE9nzF/jkpiZpNj8T2H3zItPjE39oo0zM8ksUvdt5891vjQveh94wNc2YJJfnJnUu7tfNJsqd
 oLOudumW5F7SD1WYwyLPPM3JXqtrb37IzUqic/cH6rsU1mpwA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_061855_697817_6026935C 
X-CRM114-Status: GOOD (  13.46  )
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

VGhlIHZjNF9kdW1teV9wbGFuZSBzdHJ1Y3R1cmUgd2FzIGludHJvZHVjZWQgYXMgYSBtZWFuIHRv
IGFkZAptb2NrLXNwZWNpZmljIGZpZWxkcy4KCkhvd2V2ZXIsIHdlIG5ldmVyIHJlYWxseSB1c2Vk
IGl0IGFuZCBpdCdzIHN0aWxsIHN0cmljdGx5IGVxdWl2YWxlbnQgdG8KdmM0X3BsYW5lICh3aGlj
aCBpcyBpbiB0aGUgc2FtZSBzaXR1YXRpb24gdnMgZHJtX3BsYW5lKSwgc28gd2UgY2FuCnNpbXBs
eSByZW1vdmUgdGhlIHZjNF9kdW1teV9wbGFuZSBzdHJ1Y3R1cmUgYW5kIG1ha2UgdGhlIG1vY2sg
Y29kZQpjbGVhbmVyLgoKUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5j
b20+ClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrLmMgICAgICAgfCAgNiArKy0tLS0K
IGRyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2suaCAgICAgICB8ICA5ICsrLS0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jIHwgMTQgKysrKyst
LS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrLmMKaW5kZXggYmVjYjNkYmFhNTQ4Li4w
NzMxYTdkODVkN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21v
Y2suYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrLmMKQEAgLTEwNywy
MCArMTA3LDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmM0X21vY2tfZGVzYyB2YzVfbW9jayA9
CiApOwogCiBzdGF0aWMgaW50IF9fYnVpbGRfb25lX3BpcGUoc3RydWN0IGt1bml0ICp0ZXN0LCBz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtLAogCQkJICAgIGNvbnN0IHN0cnVjdCB2YzRfbW9ja19waXBl
X2Rlc2MgKnBpcGUpCiB7Ci0Jc3RydWN0IHZjNF9kdW1teV9wbGFuZSAqZHVtbXlfcGxhbmU7CiAJ
c3RydWN0IGRybV9wbGFuZSAqcGxhbmU7CiAJc3RydWN0IHZjNF9kdW1teV9jcnRjICpkdW1teV9j
cnRjOwogCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKIAl1bnNpZ25lZCBpbnQgaTsKIAotCWR1bW15
X3BsYW5lID0gdmM0X2R1bW15X3BsYW5lKHRlc3QsIGRybSwgRFJNX1BMQU5FX1RZUEVfUFJJTUFS
WSk7Ci0JS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBkdW1teV9wbGFuZSk7CisJ
cGxhbmUgPSB2YzRfZHVtbXlfcGxhbmUodGVzdCwgZHJtLCBEUk1fUExBTkVfVFlQRV9QUklNQVJZ
KTsKKwlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHBsYW5lKTsKIAotCXBsYW5l
ID0gJmR1bW15X3BsYW5lLT5wbGFuZS5iYXNlOwogCWR1bW15X2NydGMgPSB2YzRfbW9ja19wdih0
ZXN0LCBkcm0sIHBsYW5lLCBwaXBlLT5kYXRhKTsKIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9O
VUxMKHRlc3QsIGR1bW15X2NydGMpOwogCiAJY3J0YyA9ICZkdW1teV9jcnRjLT5jcnRjLmJhc2U7
CiAJZm9yIChpID0gMDsgaSA8IHBpcGUtPm5vdXRwdXRzOyBpKyspIHsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2suaCBiL2RyaXZlcnMvZ3B1L2RybS92YzQv
dGVzdHMvdmM0X21vY2suaAppbmRleCAyZDBiMzM5YmQ5ZjMuLjAwMmI2MjE4OTYwYyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9jay5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS92YzQvdGVzdHMvdmM0X21vY2suaApAQCAtMTksMTcgKzE5LDEyIEBAIHN0cnVjdCBk
cm1fY3J0YyAqdmM0X2ZpbmRfY3J0Y19mb3JfZW5jb2RlcihzdHJ1Y3Qga3VuaXQgKnRlc3QsCiAJ
CQlyZXR1cm4gY3J0YzsKIAogCXJldHVybiBOVUxMOwogfQogCi1zdHJ1Y3QgdmM0X2R1bW15X3Bs
YW5lIHsKLQlzdHJ1Y3QgdmM0X3BsYW5lIHBsYW5lOwotfTsKLQotc3RydWN0IHZjNF9kdW1teV9w
bGFuZSAqdmM0X2R1bW15X3BsYW5lKHN0cnVjdCBrdW5pdCAqdGVzdCwKLQkJCQkJc3RydWN0IGRy
bV9kZXZpY2UgKmRybSwKLQkJCQkJZW51bSBkcm1fcGxhbmVfdHlwZSB0eXBlKTsKK3N0cnVjdCBk
cm1fcGxhbmUgKnZjNF9kdW1teV9wbGFuZShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCBkcm1f
ZGV2aWNlICpkcm0sCisJCQkJICBlbnVtIGRybV9wbGFuZV90eXBlIHR5cGUpOwogCiBzdHJ1Y3Qg
dmM0X2R1bW15X2NydGMgewogCXN0cnVjdCB2YzRfY3J0YyBjcnRjOwogfTsKIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jIGIvZHJpdmVycy9n
cHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5jCmluZGV4IDYyYjE4ZjVmNDFkYi4uOTcz
ZjVmOTI5MDk3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2Nr
X3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy92YzRfbW9ja19wbGFuZS5j
CkBAIC0yMCwyOCArMjAsMjQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfZnVuY3Mg
dmM0X2R1bW15X3BsYW5lX2Z1bmNzID0gewogCiBzdGF0aWMgY29uc3QgdWludDMyX3QgdmM0X2R1
bW15X3BsYW5lX2Zvcm1hdHNbXSA9IHsKIAlEUk1fRk9STUFUX1hSR0I4ODg4LAogfTsKIAotc3Ry
dWN0IHZjNF9kdW1teV9wbGFuZSAqdmM0X2R1bW15X3BsYW5lKHN0cnVjdCBrdW5pdCAqdGVzdCwK
LQkJCQkJc3RydWN0IGRybV9kZXZpY2UgKmRybSwKLQkJCQkJZW51bSBkcm1fcGxhbmVfdHlwZSB0
eXBlKQorc3RydWN0IGRybV9wbGFuZSAqdmM0X2R1bW15X3BsYW5lKHN0cnVjdCBrdW5pdCAqdGVz
dCwgc3RydWN0IGRybV9kZXZpY2UgKmRybSwKKwkJCQkgIGVudW0gZHJtX3BsYW5lX3R5cGUgdHlw
ZSkKIHsKLQlzdHJ1Y3QgdmM0X2R1bW15X3BsYW5lICpkdW1teV9wbGFuZTsKIAlzdHJ1Y3QgZHJt
X3BsYW5lICpwbGFuZTsKIAotCWR1bW15X3BsYW5lID0gZHJtbV91bml2ZXJzYWxfcGxhbmVfYWxs
b2MoZHJtLAotCQkJCQkJIHN0cnVjdCB2YzRfZHVtbXlfcGxhbmUsIHBsYW5lLmJhc2UsCisJcGxh
bmUgPSBfX2RybW1fdW5pdmVyc2FsX3BsYW5lX2FsbG9jKGRybSwgc2l6ZW9mKHN0cnVjdCBkcm1f
cGxhbmUpLCAwLAogCQkJCQkJIDAsCiAJCQkJCQkgJnZjNF9kdW1teV9wbGFuZV9mdW5jcywKIAkJ
CQkJCSB2YzRfZHVtbXlfcGxhbmVfZm9ybWF0cywKIAkJCQkJCSBBUlJBWV9TSVpFKHZjNF9kdW1t
eV9wbGFuZV9mb3JtYXRzKSwKIAkJCQkJCSBOVUxMLAogCQkJCQkJIERSTV9QTEFORV9UWVBFX1BS
SU1BUlksCiAJCQkJCQkgTlVMTCk7Ci0JS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0
LCBkdW1teV9wbGFuZSk7CisJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwbGFu
ZSk7CiAKLQlwbGFuZSA9ICZkdW1teV9wbGFuZS0+cGxhbmUuYmFzZTsKIAlkcm1fcGxhbmVfaGVs
cGVyX2FkZChwbGFuZSwgJnZjNF9kdW1teV9wbGFuZV9oZWxwZXJfZnVuY3MpOwogCi0JcmV0dXJu
IGR1bW15X3BsYW5lOworCXJldHVybiBwbGFuZTsKIH0KCi0tIAoyLjQ1LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

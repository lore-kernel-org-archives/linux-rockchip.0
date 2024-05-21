Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B29B6C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxlIewo3NWEwSmAO9nOgMOKEmi/R/REysia9PFerryA=; b=G0YEAbBh+MgAWh
	gWKYX6lgw/1yCMOrg4Rc65M2tZTjt2WtumJ0+YJ7JVwbPktD50CPdUzHTdyDWxpWxTz2S3IcrTpp0
	KN8DOwji9KFrChOuCcUtMYf7sLaE+0gwjWTekeQHiSJO2uyoEc4QLYL5yQLjvAyX0oxI0izHeCqn8
	16gS8/BOE3PCHWIDWJJSOPV1lBX7ibcGcQQhQl4yIg+kuJn3SUDLudvsStKrv8Aj3EvT67rijP/2g
	9RXU5WBYNHNblye/wJXgKw4gtil5MOPE8nh9yGQ5V0aiU+OKZq3f6Fnyf2PVrxyl8DXcZVLW4HVAB
	u5LiMjxfznKbJn9DQyzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9MZ2-0000000H3KJ-0ztb;
	Tue, 21 May 2024 10:17:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9MWN-0000000H24B-0lWX;
	Tue, 21 May 2024 10:15:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3F12362101;
	Tue, 21 May 2024 10:15:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED4BC32782;
	Tue, 21 May 2024 10:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716286501;
	bh=mxuD7pT2tlDQ0zzNZkqWfj36MC0sF3/2cyZNsO+d0UQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=sSxHTiRBj2YO4HQyHB3XYyTth7bNk3Ihk854oFX9r83sg/mlVPXmCtE99JOtTnLcz
	 N0GB7MnStXa+AzPvasoat4gXZ6E8l5/wxHq50l4VOwfyEYgVSDK1MNJgkHixoW850h
	 zN124zuqdZLpcfnishpzCBX+Rwz8n4UNlZ8avdjT/NWuoeEDwb6C1o0WUnVrxkv6IM
	 5zAlepBsi6phkU8TYtCmRlU/vHopLQLJHd4/0Sjzy5vcspUbOJRL9mgHVedAfGyk0O
	 JbpZn8CoblM/7UEgXQe0emvVgFHM86wSJeSjzkHNkpl/CknH268Zr6/Ke1Vt/ZtNHU
	 xE5TV2ESXgRFg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 21 May 2024 12:13:58 +0200
Subject: [PATCH v14 25/28] drm/vc4: tests: Remove vc4_dummy_plane structure
MIME-Version: 1.0
Message-Id: <20240521-kms-hdmi-connector-state-v14-25-51950db4fedb@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3744; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mxuD7pT2tlDQ0zzNZkqWfj36MC0sF3/2cyZNsO+d0UQ=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGk+xbfTf4Tev/TKoXZe7by8MImYnTOdvfh7e67+Vt4W/
 lYk62JCx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZjIaRfGhtcn5t4ITDzPyWuo
 /KLgwf4F6w4UsBq/Odn0vMlg67x3ksde6cfd/8rx9XvYN3nPZTFBOoz12YZat/pF/vfqsBb2b/7
 bezGl4FJsn55lt8qR/0fTOy8oTL50bHXmpceTDy7YlTXdLfoNAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_031503_787635_0A1C985C 
X-CRM114-Status: GOOD (  13.74  )
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

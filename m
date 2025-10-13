Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80B43CCD185
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 06:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KXN5+FhDO7rbNUrHVl8A6REqvc3pJqcZKEeoBaM694k=; b=tXf5imkAVt/wtl
	Nv6bwzIrw1P1Q074QiS8Sneoso1YsLQbO2RmKlVT3NVNhr01jTY6cIbZ9QWL9bl9Q1a/3seARSfD2
	fXgQy663TSF3W3i0OQ3MkDNsG0mDdY0nRMWBo7nvvU/GNetuC6nHPjXKycVRWuG8VTry4+Giqv3Uf
	9lkSEXvJQ0OUHc2JidO+LNM53psAcminGrWh9Snn46gZ5dESzfFDjlbPcwi5MR5h4Q+AjDwmtaH0W
	b/fOtQpcxGeGqTAJ8EB5zb7eKg9Sye59qhNn1QG4fgUBYqr/U/PDh8y634zHDL/gDcM2UIoAfk8vk
	NNWQCpGpZqSIPgVIWaow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Bdv-0000000CKSp-0Etk;
	Mon, 13 Oct 2025 06:02:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Bds-0000000CKRk-0WWn;
	Mon, 13 Oct 2025 06:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760335360;
	bh=gCTdPchWuc1xiR4tpvlqqw30LOOS9lTJyDFe5on17HM=;
	h=From:To:Cc:Subject:Date:From;
	b=TAFlBh2aNv23DXPQ8OmreZbzQmFTLIEjl9J0KbxvbjC5MtwEDNbXW5ujofaTRW+XL
	 KO2ISTQK6VLqg6gIt8eK01iUC61DOl72IhIbVAd8Uh2RUP0MV+1sbBup1PxcUL3Udr
	 rNFUwfDC3qq0kgUl0qUdx5t3dkfn+cHIOCN7SIWrLYmNfGvL7Dar5Jx6QYWjcHmEpA
	 ZmH/LzM1ZfJ5fjq8ANRpuElYt405PKG/Rru0AscGlyxSihbzvzzmy/vF0/u9uZL1Io
	 7KVmdMeZ3vp1bYNvsFVYPV/gZX1Wn7B/AL6tw4uOItj3wuAmFt97FfOZiW9LFpAlDN
	 ltp9kK/V6HuoA==
Received: from debian (unknown [171.76.80.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BC90217E0CA3;
	Mon, 13 Oct 2025 08:02:36 +0200 (CEST)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	robdclark@gmail.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	lumag@kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] drm/ci: disable broken MR check in sanity job
Date: Mon, 13 Oct 2025 11:32:10 +0530
Message-ID: <20251013060212.14583-1-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_230244_330944_6BDA8168 
X-CRM114-Status: UNSURE (   9.11  )
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

R2l0TGFiIHJlY2VudGx5IGNoYW5nZWQgdGhlIHJlcXVpcmVkIHBlcm1pc3Npb25zIGZvciB0aGUK
YXJlLWRldmVsb3BlcnMtYWxsb3dlZC10by1wdXNoLXRvLW15LU1SIGNoZWNrOgpodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZnJlZWRlc2t0b3AvY2ktdGVtcGxhdGVzLy0vaXNzdWVzLzgx
CgpVbnRpbCB0aGF04oCZcyByZXNvbHZlZCwgZGlzYWJsZSB0aGUgY2hlY2sgLSBpdOKAmXMgbW9z
dGx5IG9ic29sZXRlIGFueXdheS4KCkJhc2VkIG9uIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9tZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0cy8zNzc4MgoKU2lnbmVkLW9mZi1ieTogVmln
bmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9jaS9naXRsYWItY2kueW1sIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxh
Yi1jaS55bWwgYi9kcml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbAppbmRleCBkNTAyZDE0
NmIxNzcuLjU2NjM4ODE0YmIyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxh
Yi1jaS55bWwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwKQEAgLTI4MCw3
ICsyODAsNyBAQCBzYW5pdHk6CiAgICAgR0lUX1NUUkFURUdZOiBub25lCiAgIHNjcmlwdDoKICAg
ICAjIGNpLWZhaXJ5IGNoZWNrLWNvbW1pdHMgLS1qdW5pdC14bWw9Y2hlY2stY29tbWl0cy54bWwK
LSAgICAtIGNpLWZhaXJ5IGNoZWNrLW1lcmdlLXJlcXVlc3QgLS1yZXF1aXJlLWFsbG93LWNvbGxh
Ym9yYXRpb24gLS1qdW5pdC14bWw9Y2hlY2stbWVyZ2UtcmVxdWVzdC54bWwKKyAgICAjIC0gY2kt
ZmFpcnkgY2hlY2stbWVyZ2UtcmVxdWVzdCAtLXJlcXVpcmUtYWxsb3ctY29sbGFib3JhdGlvbiAt
LWp1bml0LXhtbD1jaGVjay1tZXJnZS1yZXF1ZXN0LnhtbAogICAgIC0gfAogICAgICAgc2V0IC1l
dQogICAgICAgaW1hZ2VfdGFncz0oCi0tIAoyLjUxLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

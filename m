Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1C68CAC583
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 15:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRwIZ4fEx4CR3+C9kGf/WEbZBY2l756ov0qkGiDn3L0=; b=U1W07FjqZtgr2b
	Ov7R6XmvTFz0LJKIEDaaklTv6oUIK1Bpa09MW7AoO1DLNsUrslG05k0Mo+/fOyV4jSDirSWrUlm3x
	W0S1+gpXVQ5rRSybj75XOTyJEZR8Fa1+9jFEpbK1kOR3QNwyx1XY02bCLGJfnDgwL3+3S82wyFWY1
	oy0gm+/A1E2LBke7o6REXCSSEOVwhrYwyLSXQKH6/04GQOSi24lPpbqWrMnG0QgXwiYyi7CqkNqud
	JumH4l+lSY6T8isVijXLMkN6peROOD74Wvu9BNZF/I08tTPAEWhyd8zzK/TpNfKRLsX9A/VLs4OK3
	mZ4GZ6mmFw2LBUaKONWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0Wi-00000008FC8-3Fca;
	Tue, 09 Sep 2025 15:45:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwX4-00000006k1x-06HJ;
	Tue, 09 Sep 2025 11:29:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BEA64432C8;
	Tue,  9 Sep 2025 11:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 498C2C4CEF4;
	Tue,  9 Sep 2025 11:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757417345;
	bh=2PquY0VhsfYnlQnlGduztvw5rjnR1JXo4CdA9iXwMLk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=E18HfTQskW/ockFU5jX6rmw+p24YQzMrEmxb8MLsPojgHQdgvnG9nYsQ0g5AXqonL
	 OLxEvCZPn+6U+VNOfU+QQiPyuo6expFl043B6AEwVJgcuG3DW4K6Q+iKFoWpTu5F5G
	 wlkNXUjwtR8UkcEnSJG/tcn0qsS3pdbTDcphoDVV6qJzSlrTqjPUY8hubHzOEi/cWw
	 D9zOEAwxvQsXFKIOpE1kmcMn/ZJGCLDBs2ZXrZcZK2xVlpSWzlDquG/hDzkwxInkGo
	 08gFsvLcoPMO525fa+9YHkshZD8GcO3RgK/X1iU5G4j2rDH67QmoPqcpXRFuZ4SSAc
	 IWsDrT6t43Uyg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 09 Sep 2025 13:27:46 +0200
Subject: [PATCH v3 27/39] drm/rockchip: Switch to
 drm_atomic_get_new_crtc_state()
MIME-Version: 1.0
Message-Id: <20250909-drm-no-more-existing-state-v3-27-1c7a7d960c33@kernel.org>
References: <20250909-drm-no-more-existing-state-v3-0-1c7a7d960c33@kernel.org>
In-Reply-To: <20250909-drm-no-more-existing-state-v3-0-1c7a7d960c33@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2811; i=mripard@kernel.org;
 h=from:subject:message-id; bh=2PquY0VhsfYnlQnlGduztvw5rjnR1JXo4CdA9iXwMLk=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBkH+PVScpn9ZB7smfFqqYZL/DXFpcXSU7v+be298idqQ
 3F9mrVmx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZhIPydjw9yXv8VStrOwFv1Y
 +fIRq+mvi8kfj2u8n/Nvy+v1T59w7ePdJVKyZV25h9MJ28WbRDrNUhjrS++osIhXmkoe32JRoLh
 h4QENxWP5bTvv75zT8HRx/KQVm72Znp3iWrVu3vWZMqtOlWhuAAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_042906_100668_58384EB7 
X-CRM114-Status: GOOD (  12.50  )
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
Y19zdGF0ZSgpIGluc3RlYWQuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJp
cGFyZEBrZXJuZWwub3JnPgotLS0KVG86IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
ClRvOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+ClRvOiBBbmR5IFlhbiA8YW5k
eS55YW5Acm9jay1jaGlwcy5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5jICB8IDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcDIuYyB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5jCmluZGV4IGJhNmIwNTI4ZDFlNWE0OTNjZGVmODVkZDFlYTI1OGU3MGMzMWNjZDUuLjUz
NjliNzdlYTQzNGM3OTRlZDdkNTA5ODAyZmEyOWMzOWQyYmZhN2EgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtODI0LDEyICs4MjQsMTEgQEAgc3Rh
dGljIGludCB2b3BfcGxhbmVfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAog
CQkJCQlEUk1fUExBTkVfTk9fU0NBTElORzsKIAogCWlmICghY3J0YyB8fCBXQVJOX09OKCFmYikp
CiAJCXJldHVybiAwOwogCi0JY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2V4aXN0aW5nX2Ny
dGNfc3RhdGUoc3RhdGUsCi0JCQkJCQkJY3J0Yyk7CisJY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAlpZiAoV0FSTl9PTighY3J0Y19zdGF0
ZSkpCiAJCXJldHVybiAtRUlOVkFMOwogCiAJcmV0ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tf
cGxhbmVfc3RhdGUobmV3X3BsYW5lX3N0YXRlLCBjcnRjX3N0YXRlLAogCQkJCQkJICBtaW5fc2Nh
bGUsIG1heF9zY2FsZSwKQEAgLTEwOTAsMTEgKzEwODksMTIgQEAgc3RhdGljIGludCB2b3BfcGxh
bmVfYXRvbWljX2FzeW5jX2NoZWNrKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogCQlyZXR1cm4g
LUVJTlZBTDsKIAogCWlmICghcGxhbmUtPnN0YXRlLT5mYikKIAkJcmV0dXJuIC1FSU5WQUw7CiAK
LQljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfZXhpc3RpbmdfY3J0Y19zdGF0ZShzdGF0ZSwg
bmV3X3BsYW5lX3N0YXRlLT5jcnRjKTsKKwljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoc3RhdGUsCisJCQkJCQkgICBuZXdfcGxhbmVfc3RhdGUtPmNydGMpOwogCiAJ
LyogU3BlY2lhbCBjYXNlIGZvciBhc3luY2hyb25vdXMgY3Vyc29yIHVwZGF0ZXMuICovCiAJaWYg
KCFjcnRjX3N0YXRlKQogCQljcnRjX3N0YXRlID0gcGxhbmUtPmNydGMtPnN0YXRlOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCmluZGV4IDE4NmY2NDUy
YTdkMzU5ZjA3OTY2MmJjNTgwODUwOTI5NjMyZWE4ZmUuLmQ4MzExMTgxNTE5MWQxNjk0NDU1ZWQz
MTAwZTYyNGZhMGE4MTg2NmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wMi5jCkBAIC0xMDExLDExICsxMDExLDExIEBAIHN0YXRpYyBpbnQgdm9wMl9wbGFu
ZV9hdG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAKIAl2cCA9IHRvX3ZvcDJf
dmlkZW9fcG9ydChjcnRjKTsKIAl2b3AyID0gdnAtPnZvcDI7CiAJdm9wMl9kYXRhID0gdm9wMi0+
ZGF0YTsKIAotCWNzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2V4aXN0aW5nX2NydGNfc3RhdGUocHN0
YXRlLT5zdGF0ZSwgY3J0Yyk7CisJY3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3Rh
dGUocHN0YXRlLT5zdGF0ZSwgY3J0Yyk7CiAJaWYgKFdBUk5fT04oIWNzdGF0ZSkpCiAJCXJldHVy
biAtRUlOVkFMOwogCiAJcmV0ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfcGxhbmVfc3RhdGUo
cHN0YXRlLCBjc3RhdGUsCiAJCQkJCQkgIG1pbl9zY2FsZSwgbWF4X3NjYWxlLAoKLS0gCjIuNTAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E73A5C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 17:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ack3KPtn6b+enjP63eBaKE7H1E2QtXPq9ie9UEObZTc=; b=KslEwrLjZYrDwA
	BnxRks3Z0QAf+E/2+1b/UihAFjoDbn2ZDLPbRFrUp6mlfDVBuq4GU+MMbRxs3bjpheL+M9NQDjF/R
	7nQ1JEmQi0K0F5+H2Dw8SpaDRz37jrVbsKub+ZX05o/QDZTSO8yALr4D0zPGiQJ6Hzu6HliUYcP3P
	DRf+iaIv0BgeER4E8tzqXJZp8nGqn11ynCD+5M2chV/bPIisoHGUpeEvK2oy9EDkNsNrBxrQKa+45
	3S6EvqIFqTtjNJ9l38/6hJv981UZf6exkl/b9A2IDclGrvYw+WMPYwI0KlkS4DUgMBPwVN74mwyrh
	l7dhner2svgzCCDOZaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoBA-00HRey-1a;
	Fri, 05 Jan 2024 17:40:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoB4-00HRbd-2E;
	Fri, 05 Jan 2024 17:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704476409;
	bh=hWk1W4Y/uqGBsgP+2O2pUAprqjBWjIZHflJNW21OcLE=;
	h=From:To:Cc:Subject:Date:From;
	b=KsUqs6qpuGBnBzSYHOMDounBY2qPlZe2mMPtFXri5Qaj74t1aVz/xAk1OxVnfr/ox
	 2eRiHt/5maTLd+yk2TaNG/DmoT2F0JJODIcP0q7y7aryeHseCLkIZ1lib7igGoD/ij
	 ypnshdEqI9ATVP75qRqfJlhuN9ebn9ZDq14wUVTZgdSfvt5yn6SmxQy8l2dIuPG/Nn
	 wyke6lv7it/qELjg6nOnZ/L4cSiyKNfmLIhh+9B8n6FBrFetMRsQvZ0vFIO7RTc1oX
	 Ct/jT2jVoPS1ko3JdY4Z4io6XwulTg9DMn0fcZK9c+ccDXJlYRTC0Ia6qVKts4PkRi
	 2P2/z5SBYIyjQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 89A3D378003D;
	Fri,  5 Jan 2024 17:40:09 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Date: Fri,  5 Jan 2024 19:40:06 +0200
Message-ID: <20240105174007.98054-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_094014_921580_66E5C92C 
X-CRM114-Status: GOOD (  12.74  )
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

Q29tbWl0IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9y
IHJrMzU4OCIpCmludHJvZHVjZWQgYSB2YXJpYWJsZSB3aGljaCBlbmRlZCB1cCBiZWluZyB1bnVz
ZWQ6Cgpyb2NrY2hpcF9kcm1fdm9wMi5jOjE2ODg6MjM6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGlm
X2RjbGtfcmF0ZeKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxl
XQoKVGhpcyBoYXMgYmVlbiBpbml0aWFsbHkgdXNlZCBhcyBwYXJ0IG9mIGEgZm9ybXVsYSB0byBj
b21wdXRlIHRoZSBjbG9jawpkaXZpZGVycywgYnV0IGV2ZW50dWFsbHkgaXQgaGFzIGJlZW4gcmVw
bGFjZWQgYnkgc3RhdGljIHZhbHVlcy4KCkRyb3AgdGhlIHZhcmlhYmxlIGRlY2xhcmF0aW9uIGFu
ZCBtb3ZlIGl0cyBhc3NpZ25tZW50IHRvIHRoZSBjb21tZW50CmJsb2NrLCB0byBzZXJ2ZSBhcyBk
b2N1bWVudGF0aW9uIG9mIGhvdyB0aGUgY29uc3RhbnRzIGhhdmUgYmVlbgpnZW5lcmF0ZWQuCgpT
aWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgotLS0KQ2hhbmdlcyBpbiB2MjoKIC0gTW92ZSB2YXJpYWJsZSBhc3NpZ25tZW50
IHRvIGNvbW1lbnQgYmxvY2ssIHBlciBIZWlrbydzIHJldmlldwogLSBVcGRhdGUgY29tbWl0IG1l
c3NhZ2UKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDMg
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwppbmRleCA4OWFmZWFk
ZDBiYWQuLmI3YjQ0YjY5Y2M4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AyLmMKQEAgLTE2ODQsNyArMTY4NCw2IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25n
IHJrMzU4OF9jYWxjX2NydV9jZmcoc3RydWN0IHZvcDJfdmlkZW9fcG9ydCAqdnAsIGludCBpZCwK
IAl1bnNpZ25lZCBsb25nIGRjbGtfY29yZV9yYXRlID0gdl9waXhjbGsgPj4gMjsKIAl1bnNpZ25l
ZCBsb25nIGRjbGtfcmF0ZSA9IHZfcGl4Y2xrOwogCXVuc2lnbmVkIGxvbmcgZGNsa19vdXRfcmF0
ZTsKLQl1bnNpZ25lZCBsb25nIGlmX2RjbGtfcmF0ZTsKIAl1bnNpZ25lZCBsb25nIGlmX3BpeGNs
a19yYXRlOwogCWludCBLID0gMTsKIApAQCAtMTY5OSw4ICsxNjk4LDggQEAgc3RhdGljIHVuc2ln
bmVkIGxvbmcgcmszNTg4X2NhbGNfY3J1X2NmZyhzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCwg
aW50IGlkLAogCQl9CiAKIAkJaWZfcGl4Y2xrX3JhdGUgPSAoZGNsa19jb3JlX3JhdGUgPDwgMSkg
LyBLOwotCQlpZl9kY2xrX3JhdGUgPSBkY2xrX2NvcmVfcmF0ZSAvIEs7CiAJCS8qCisJCSAqIGlm
X2RjbGtfcmF0ZSA9IGRjbGtfY29yZV9yYXRlIC8gSzsKIAkJICogKmlmX3BpeGNsa19kaXYgPSBk
Y2xrX3JhdGUgLyBpZl9waXhjbGtfcmF0ZTsKIAkJICogKmlmX2RjbGtfZGl2ID0gZGNsa19yYXRl
IC8gaWZfZGNsa19yYXRlOwogCQkgKi8KLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

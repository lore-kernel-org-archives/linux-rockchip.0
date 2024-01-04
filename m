Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FB1C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QP7fIHxvF0CdgpRzhd0OUax9OPU8F6oioDuDncvUaHY=; b=YNmXEWvLTYxGtm
	DuJgWRu7xBHxsFgGl4xSNf+cz/QvPoxMMQ+gJ+lI7y0fcOGxkp1QyM034dMTtj9vLrlSTNu/8a7dj
	HDkLc2twzYB/BD5+/n8zmzu6B1es9AIc5hHaXG8LcY9SIL7t6bK4JX+Gg4mki+YNTAz+r7YhDb5Ja
	JSVEGxi2IE9TkkE3N2AY1DPzY3wlJDX46gkc4RUoBoy/u7INaSPdZxQ5lrM2mxgnwYblHV6nTB/39
	EWNY/+QkgK/beLYU1dXdOOrvxkgLHcEPkJJW0sehEUu7UcgPUM3AGg11Y8MBJ1C6yqnl0KokG+jeK
	Ro363ilstbUbpj8sRRDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOt8-00ENW1-27;
	Thu, 04 Jan 2024 14:40:02 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOt3-00ENTi-2I;
	Thu, 04 Jan 2024 14:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704379195;
	bh=LwJiWNixgLxt6lWwrlS02C+4POupia0P98Da0BOUfU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OwgrRQ0rIDcc/jUhiQv/PCwYmkZNCxYNoy5da/8UTYUGsfAetij6ESu41hWpT1oDb
	 LmiUYP4ljJJkyONMuLwqiM7bFOYZHW7/MXHqZh6r9jlgh4FQv9/8F376VIVCrxM5gE
	 QE8n9xStFBpK1KS2EOfXqRBR7Eut5dmc37QM5stdlhqHX7hPMN/XrgUbA648f9MP8x
	 DiOZEXiQge4FSZMPm+vfoWNSKRDWvL9JHkjW5ZXqmZqV0sctX9e2uiuSRffCH/gFeu
	 Ipaqr2E/Ezy5HiF3wko5tNF2J6dhQkFwSEbbOR3GgGue6Jnfr8DOibb3r6WrvoxMmz
	 6GY0PHjmz1Z0Q==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B9BB4378201D;
	Thu,  4 Jan 2024 14:39:54 +0000 (UTC)
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
Subject: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Date: Thu,  4 Jan 2024 16:39:50 +0200
Message-ID: <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_063957_876506_37E89FCA 
X-CRM114-Status: GOOD (  10.46  )
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
ZWQuICBSZW1vdmUgaXQuCgpyb2NrY2hpcF9kcm1fdm9wMi5jOjE2ODg6MjM6IHdhcm5pbmc6IHZh
cmlhYmxlIOKAmGlmX2RjbGtfcmF0ZeKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQt
c2V0LXZhcmlhYmxlXQoKU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlh
bi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
Mi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKaW5kZXgg
NDQ1MDhjMmRkNjE0Li45MjM5ODVkNDE2MWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wMi5jCkBAIC0xNjg1LDcgKzE2ODUsNiBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyByazM1ODhfY2FsY19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZwLCBp
bnQgaWQsCiAJdW5zaWduZWQgbG9uZyBkY2xrX2NvcmVfcmF0ZSA9IHZfcGl4Y2xrID4+IDI7CiAJ
dW5zaWduZWQgbG9uZyBkY2xrX3JhdGUgPSB2X3BpeGNsazsKIAl1bnNpZ25lZCBsb25nIGRjbGtf
b3V0X3JhdGU7Ci0JdW5zaWduZWQgbG9uZyBpZl9kY2xrX3JhdGU7CiAJdW5zaWduZWQgbG9uZyBp
Zl9waXhjbGtfcmF0ZTsKIAlpbnQgSyA9IDE7CiAKQEAgLTE3MDAsNyArMTY5OSw2IEBAIHN0YXRp
YyB1bnNpZ25lZCBsb25nIHJrMzU4OF9jYWxjX2NydV9jZmcoc3RydWN0IHZvcDJfdmlkZW9fcG9y
dCAqdnAsIGludCBpZCwKIAkJfQogCiAJCWlmX3BpeGNsa19yYXRlID0gKGRjbGtfY29yZV9yYXRl
IDw8IDEpIC8gSzsKLQkJaWZfZGNsa19yYXRlID0gZGNsa19jb3JlX3JhdGUgLyBLOwogCQkvKgog
CQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX3BpeGNsa19yYXRlOwogCQkgKiAq
aWZfZGNsa19kaXYgPSBkY2xrX3JhdGUgLyBpZl9kY2xrX3JhdGU7Ci0tIAoyLjQzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5B5FEFB47
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 13:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OfS5HwXnlrX250RXMipRjw4jWqImdPIO1eYGZH80wik=; b=nLD9BK7LCwFjQh
	KeHGpiKdPvh4B0rrIabmgfGQN1ZVJpzh/EUPttvKJoIRCuAK+KgWfT2/ab9/wpB6cdQJN8U6Pgr79
	Qmv/aSNnXl75wxL285WKTzW7kLgY2lj8AUeLcUSyFMhvEo7WVkH9bWbWoetlCtS0IjzlFZtPUSNw3
	6uNj/PFiAhs/lbj1V0UgALs9JaywCYzg/8RViTRkzWUvNTVcEWbZsCX6jMYWoDGvWI9h7h0VFB8R3
	HR5Qr8c97qVC5sDxVuyUdyH4zcBkRgcwXXiW/PS1E+66aPNjhRUjNIg1fL/GuAh7UGAB/aDtLAaI+
	c5ty+yjRz3EOYYs7rqbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvxwJ-00000008NP8-326R;
	Fri, 27 Feb 2026 13:31:31 +0000
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvxwH-00000008NOi-0iGO
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 13:31:31 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id E90D15C24A;
	Fri, 27 Feb 2026 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1772199086; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dZ42jXRLQoGr0bQXxLZbZDPzdDS8Kr9UNQ4zHk5UPmg=;
	b=cZS8C3ZV0XXulJXOGgiqbCLXiO7TUjHYK1Izvxra0PP0S4/atc93B6r0JsceyhqSrC/cdD
	6bwulZktaK1GnTvtc+KePWK6TS5ECuEPUHbZdk2b6ynu7tO8DP0MFpvWSpvx5OozbTZCt5
	xPq6p5SmPY7B3GAVyy+BJUDG7DID3Dg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1772199086;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dZ42jXRLQoGr0bQXxLZbZDPzdDS8Kr9UNQ4zHk5UPmg=;
	b=eb4ZtBOsRGZCwXBZbeApXdZIyN3K48PGxrcGS+48nU4woj970HcAvKp4sYLVwShZOakDfm
	ITBdgnyN+SzSwzCQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1772199085; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dZ42jXRLQoGr0bQXxLZbZDPzdDS8Kr9UNQ4zHk5UPmg=;
	b=hP/ujDqMF8ui/b9vzKnjU083zfHbmcWd/bmHZUBsciHj3ItPSl6rdMNINbALuUBONJTQB9
	1/KPt/1nqwzyEOgScWRZ7aHSAkE3cWiGsxYdT1kH9Jvb/mkCB0eSUldjnzBKa5MEnbZ6lk
	cQa2vdujQS9XcIgzh4KI9nzxu+78TBc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1772199085;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dZ42jXRLQoGr0bQXxLZbZDPzdDS8Kr9UNQ4zHk5UPmg=;
	b=/tjTnt6lDEqXFw7FPtywyoWUlhmqnbZXJ5Va1HUKMcQuANN8N9hB3+FcLbyxptQF5VYllZ
	Cqe4uNyT/LQjGVCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A4AC73EA6A;
	Fri, 27 Feb 2026 13:31:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 8KMDJ62coWkrLQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Fri, 27 Feb 2026 13:31:25 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: Test for imported buffers with drm_gem_is_imported()
Date: Fri, 27 Feb 2026 14:31:10 +0100
Message-ID: <20260227133113.235940-11-tzimmermann@suse.de>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spamd-Result: default: False [-3.30 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.997];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_RATELIMIT(0.00)[to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,suse.de:mid,suse.de:email]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_053129_356987_FCD42BC4 
X-CRM114-Status: GOOD (  11.71  )
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

SW5zdGVhZCBvZiB0ZXN0aW5nIGltcG9ydF9hdHRhY2ggZm9yIGltcG9ydGVkIEdFTSBidWZmZXJz
LCBpbnZva2UKZHJtX2dlbV9pc19pbXBvcnRlZCgpIHRvIGRvIHRoZSB0ZXN0LiBUaGUgdGVzdCBp
dHNlbGYgZG9lcyBub3QgY2hhbmdlLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4g
PHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29t
PgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogQW5keSBZYW4gPGFu
ZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwppbmRleCAwOWQxNGEwNzJk
MjcuLmIxODg1MzlkY2EwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2dlbS5jCkBAIC0zMzQsNyArMzM0LDcgQEAgdm9pZCByb2NrY2hpcF9nZW1fZnJlZV9vYmpl
Y3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJc3RydWN0IHJvY2tjaGlwX2RybV9wcml2
YXRlICpwcml2YXRlID0gZHJtLT5kZXZfcHJpdmF0ZTsKIAlzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29i
amVjdCAqcmtfb2JqID0gdG9fcm9ja2NoaXBfb2JqKG9iaik7CiAKLQlpZiAob2JqLT5pbXBvcnRf
YXR0YWNoKSB7CisJaWYgKGRybV9nZW1faXNfaW1wb3J0ZWQob2JqKSkgewogCQlpZiAocHJpdmF0
ZS0+ZG9tYWluKSB7CiAJCQlyb2NrY2hpcF9nZW1faW9tbXVfdW5tYXAocmtfb2JqKTsKIAkJfSBl
bHNlIHsKLS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

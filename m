Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9CD6CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 10:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnBppNWWuHhh08EjRqUYKGoPtLM3Qx3e1/d+YTCbUm4=; b=vclQL+CWohL2N+
	y5KGcaDlVvYs2aKcuKERi4BNX9ZkOJp+4yj0ACuAXL6PIqBc/XzZxXfhR/eekY6jr8JefbaaL77hm
	zDKDzxFFoDr7Oo9renbx29Q+imLnwPEP1/UixiY6s/qZW/2qVwdBRAgMPhuldHpdlhm//T154G0xe
	N1c+ZFbUtkp8Xpx2vvLBXmVt9zPmgL2y2IRr/qX1fta6SyqinnfOcV2Zi09w8WIzv1Oh2i/P32YYl
	xQUWVYiGTH+RdqnVqNPszMfSysdEm0ofacLrZsRcEaFUJZFxc+zEsnaNpDyY4moR4UMoqU8nezw1o
	3SM0hh2DmpSiXNRvJ/tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up2Uq-0000000GbD4-1Msq;
	Thu, 21 Aug 2025 10:26:16 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up0Zp-0000000GEaL-1N4O
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 08:23:18 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 692BC1FB65;
	Thu, 21 Aug 2025 08:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755764543; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u5+AEmH+qzHnQx6Du9Jd2lQI8ZPqXlMkW0HaOuXapYU=;
	b=jyWmRdyVS6SWIrgsOYhRs9LlvIGSYRJ/MOwdpH6BZS7r9f7AqKAApHfCwAY4utEk/i8fQi
	ja6lr2g7kouZOLWLuDszH45AXU4LQLi7cKqEKBepKmyjJYRNHm3Ke5xDDpGkHFxjSHm0s0
	7mtVly7i6uVHDLFiFnaH11L37NGtQBA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755764543;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u5+AEmH+qzHnQx6Du9Jd2lQI8ZPqXlMkW0HaOuXapYU=;
	b=HxtrMZ0xISBvzUDDf4B6HiNqPLgsrOM0J+iImirqOuQ7LXjeigfkChT69xMe3GhKAuYd5F
	jWIKRM/gGMqKTpCA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755764543; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u5+AEmH+qzHnQx6Du9Jd2lQI8ZPqXlMkW0HaOuXapYU=;
	b=jyWmRdyVS6SWIrgsOYhRs9LlvIGSYRJ/MOwdpH6BZS7r9f7AqKAApHfCwAY4utEk/i8fQi
	ja6lr2g7kouZOLWLuDszH45AXU4LQLi7cKqEKBepKmyjJYRNHm3Ke5xDDpGkHFxjSHm0s0
	7mtVly7i6uVHDLFiFnaH11L37NGtQBA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755764543;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u5+AEmH+qzHnQx6Du9Jd2lQI8ZPqXlMkW0HaOuXapYU=;
	b=HxtrMZ0xISBvzUDDf4B6HiNqPLgsrOM0J+iImirqOuQ7LXjeigfkChT69xMe3GhKAuYd5F
	jWIKRM/gGMqKTpCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CD3E8139A8;
	Thu, 21 Aug 2025 08:22:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 0PesMD7XpmhzEwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 21 Aug 2025 08:22:22 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	geert@linux-m68k.org,
	tomi.valkeinen@ideasonboard.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	freedreno@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	spice-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	intel-xe@lists.freedesktop.org,
	xen-devel@lists.xenproject.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v6 19/25] drm/rockchip: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Thu, 21 Aug 2025 10:17:26 +0200
Message-ID: <20250821081918.79786-20-tzimmermann@suse.de>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821081918.79786-1-tzimmermann@suse.de>
References: <20250821081918.79786-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	R_RATELIMIT(0.00)[to(RLbwen1niosrcqbxsafh1),to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,kernel.org,linux.intel.com,linux-m68k.org,ideasonboard.com];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_012317_513568_943DA8FA 
X-CRM114-Status: GOOD (  11.91  )
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

Q2FsbCBkcm1fbW9kZV9zaXplX2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5l
IHBpdGNoIGFuZApidWZmZXIgc2l6ZS4gQWxpZ24gdGhlIHBpdGNoIHRvIGEgbXVsdGlwbGUgb2Yg
NjQuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBTYW5keSBI
dWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250
ZWNoLmRlPgpDYzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAxMiArKysrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggNjMzMGI4ODNlZmMz
Li4zYmQwNjIwMmUyMzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9nZW0uYwpAQCAtOSw2ICs5LDcgQEAKICNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+CiAKICNp
bmNsdWRlIDxkcm0vZHJtLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9kdW1iX2J1ZmZlcnMuaD4KICNp
bmNsdWRlIDxkcm0vZHJtX2ZiX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+CiAj
aW5jbHVkZSA8ZHJtL2RybV9nZW1fZG1hX2hlbHBlci5oPgpAQCAtNDAzLDEzICs0MDQsMTIgQEAg
aW50IHJvY2tjaGlwX2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwK
IAkJCSAgICAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKQogewogCXN0cnVjdCBy
b2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmo7Ci0JaW50IG1pbl9waXRjaCA9IERJVl9ST1VORF9V
UChhcmdzLT53aWR0aCAqIGFyZ3MtPmJwcCwgOCk7CisJaW50IHJldDsKIAotCS8qCi0JICogYWxp
Z24gdG8gNjQgYnl0ZXMgc2luY2UgTWFsaSByZXF1aXJlcyBpdC4KLQkgKi8KLQlhcmdzLT5waXRj
aCA9IEFMSUdOKG1pbl9waXRjaCwgNjQpOwotCWFyZ3MtPnNpemUgPSBhcmdzLT5waXRjaCAqIGFy
Z3MtPmhlaWdodDsKKwkvKiA2NC1ieXRlIGFsaWdubWVudCByZXF1aXJlZCBieSBNYWxpICovCisJ
cmV0ID0gZHJtX21vZGVfc2l6ZV9kdW1iKGRldiwgYXJncywgU1pfNjQsIDApOworCWlmIChyZXQp
CisJCXJldHVybiByZXQ7CiAKIAlya19vYmogPSByb2NrY2hpcF9nZW1fY3JlYXRlX3dpdGhfaGFu
ZGxlKGZpbGVfcHJpdiwgZGV2LCBhcmdzLT5zaXplLAogCQkJCQkJICZhcmdzLT5oYW5kbGUpOwot
LSAKMi41MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

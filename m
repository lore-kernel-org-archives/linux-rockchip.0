Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD548C02183
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 15:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp8z2MRZ6uYLqiHDvkhbVO1zdKrCsjpXG/cSLqD69lo=; b=GlHBzM4J3IzHiR
	Y6llnKWRfE8UvmgcDcZmm9RP2VQYCicvbQZtNDBgI2/oPTp+dYRs980euVlEbmzZDw6YPA0x926Xx
	6fEBlRwYIbXoM/7wry3kbv3NkFTxBYPOXiwqEUwyMH0Z/fwann0eR9YVDCK65l3rSDaEEZ6p6fCPW
	fsgR0/dTSZnbONborIivF7V7iFecga1Wq06MNfQ0eF5PrAnmU3nbS7g4NB+kY9cecxRRfc5VjJ9jb
	zdBBi5j8CorqwK99FqYUxdswsADiumaki6i7nVSy64Ik/bmE614wYoGw7s3e7DH52xUFdMKuKO/e/
	9IgzPEkf17Ntsepey2dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4f-0000000CNB3-2SZP;
	Thu, 09 Jan 2025 15:03:53 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4F-0000000CMQP-15Oo;
	Thu, 09 Jan 2025 15:03:29 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id AD45321179;
	Thu,  9 Jan 2025 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736435005; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QsAkbiCNZPJa7lykZ0W2Im8Rz/K3j/qzEnWutqrkaP4=;
	b=E4mF2b88i1q4slUZ4/qBReEFeEySjrRCGbf46VXhRkeuBDsS3oRAr7S1dwAWoN+RNHdUrR
	QGfX1hOzEe3shzqAh6YiiEvhuZoq2HaHzYlkEma9t0LUUZJJLb817iwjAzjY1m9QElwTPo
	48QFcdXjRRihKWB0/DwbMvs8G8jvh8E=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736435005;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QsAkbiCNZPJa7lykZ0W2Im8Rz/K3j/qzEnWutqrkaP4=;
	b=9u9EqMnmcjuHU/fMQsou9BFxU5rQWtneJVUfCwbMCcurwzt4zWtUqTuxEeOlq8Hp/79+cI
	/ZQ0Mcq4UXLjbKCA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736435005; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QsAkbiCNZPJa7lykZ0W2Im8Rz/K3j/qzEnWutqrkaP4=;
	b=E4mF2b88i1q4slUZ4/qBReEFeEySjrRCGbf46VXhRkeuBDsS3oRAr7S1dwAWoN+RNHdUrR
	QGfX1hOzEe3shzqAh6YiiEvhuZoq2HaHzYlkEma9t0LUUZJJLb817iwjAzjY1m9QElwTPo
	48QFcdXjRRihKWB0/DwbMvs8G8jvh8E=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736435005;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QsAkbiCNZPJa7lykZ0W2Im8Rz/K3j/qzEnWutqrkaP4=;
	b=9u9EqMnmcjuHU/fMQsou9BFxU5rQWtneJVUfCwbMCcurwzt4zWtUqTuxEeOlq8Hp/79+cI
	/ZQ0Mcq4UXLjbKCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 26A0C13A8B;
	Thu,  9 Jan 2025 15:03:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id GFw9CD3lf2c1awAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 09 Jan 2025 15:03:25 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
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
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 19/25] drm/rockchip: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Thu,  9 Jan 2025 15:57:13 +0100
Message-ID: <20250109150310.219442-20-tzimmermann@suse.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250109150310.219442-1-tzimmermann@suse.de>
References: <20250109150310.219442-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_RATELIMIT(0.00)[to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6),to(RLbwen1niosrcqbxsafh1)];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.de:email,suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_070327_724906_F2261A76 
X-CRM114-Status: GOOD (  11.64  )
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
ZT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJu
ZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8IDEy
ICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwppbmRl
eCA2MzMwYjg4M2VmYzMuLjNiZDA2MjAyZTIzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jCkBAIC05LDYgKzksNyBAQAogI2luY2x1ZGUgPGxpbnV4L3Zt
YWxsb2MuaD4KIAogI2luY2x1ZGUgPGRybS9kcm0uaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2R1bWJf
YnVmZmVycy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmJfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJt
L2RybV9nZW0uaD4KICNpbmNsdWRlIDxkcm0vZHJtX2dlbV9kbWFfaGVscGVyLmg+CkBAIC00MDMs
MTMgKzQwNCwxMiBAQCBpbnQgcm9ja2NoaXBfZ2VtX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZV9wcml2LAogCQkJICAgICBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3Mp
CiB7CiAJc3RydWN0IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iajsKLQlpbnQgbWluX3BpdGNo
ID0gRElWX1JPVU5EX1VQKGFyZ3MtPndpZHRoICogYXJncy0+YnBwLCA4KTsKKwlpbnQgcmV0Owog
Ci0JLyoKLQkgKiBhbGlnbiB0byA2NCBieXRlcyBzaW5jZSBNYWxpIHJlcXVpcmVzIGl0LgotCSAq
LwotCWFyZ3MtPnBpdGNoID0gQUxJR04obWluX3BpdGNoLCA2NCk7Ci0JYXJncy0+c2l6ZSA9IGFy
Z3MtPnBpdGNoICogYXJncy0+aGVpZ2h0OworCS8qIDY0LWJ5dGUgYWxpZ25tZW50IHJlcXVpcmVk
IGJ5IE1hbGkgKi8KKwlyZXQgPSBkcm1fbW9kZV9zaXplX2R1bWIoZGV2LCBhcmdzLCBTWl82NCwg
MCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKIAogCXJrX29iaiA9IHJvY2tjaGlwX2dlbV9j
cmVhdGVfd2l0aF9oYW5kbGUoZmlsZV9wcml2LCBkZXYsIGFyZ3MtPnNpemUsCiAJCQkJCQkgJmFy
Z3MtPmhhbmRsZSk7Ci0tIAoyLjQ3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

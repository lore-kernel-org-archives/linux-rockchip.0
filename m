Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CB03D2C115
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 14:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s2otfUxs792frrJaQksdn30slqoRt64RBXKHQYQFcWY=; b=aWtwTwQclC3n0H
	c4ldNhQ6dsWACdlJdsNUJCooVEcXfrX0cH/rCw37yUhjLkfTIL0sAjueq4i8wqQcqRr7U6KXPNx2b
	d6XRu9KhHUj9CxcxP8Kro3NCUKzM2pXpdcldqiVjRK2uDFm52JWyr4AWoYV2oEEHbv4UVroF0Xo60
	Wx/6Kq+NHUnBmUkk3/vKF6JCMwCvWDtFHGJc+sJPnPt0K/ZDKnY5HDw4Eru+xmrSuJUiPUW3IePg8
	bIPPCGgkQPYqiUp6iw99hUl+1t5UXETtw/Mw2P7MHRs+/1U8YVUr2eM3Uu7YFoZBn0zpdzf6YfgWy
	tbOzdmrswOU1/nx5SoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8Kp1-0000000HKGA-2WEo;
	Tue, 05 Nov 2024 14:46:19 +0000
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8Jlp-0000000H9Sq-0zKP;
	Tue, 05 Nov 2024 13:39:00 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 1D3621FBB7;
	Tue,  5 Nov 2024 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1730813933; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jDTbP3fOcL51JRwWKzuxSqaxfANeDb0GcrNEPDR3wvk=;
	b=nOuwBvL5K/lCDQnI/N1/mRbLRzzhXWQgb5qAwOeEznFiYqssnz3sJYjP8pB/2ZJbzI0Mw8
	ub1PS+e2pktR/zrDZKDC1CUJ7M3i3ACQEhtTedIS0UP9MW+s1gaaZYc4KAgi7L9nPQGdVG
	yA7zgD9MXR21iPh+6ntx7SA/OFAXFwQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1730813933;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jDTbP3fOcL51JRwWKzuxSqaxfANeDb0GcrNEPDR3wvk=;
	b=8cUUe5jSnqRzmRedg+YtmtB63W+fe91HG+PCahBKHkNSXve8vY3mP4rIVS+LmRPR1Fleu2
	M0vnLYsCggVYFLAA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1730813933; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jDTbP3fOcL51JRwWKzuxSqaxfANeDb0GcrNEPDR3wvk=;
	b=nOuwBvL5K/lCDQnI/N1/mRbLRzzhXWQgb5qAwOeEznFiYqssnz3sJYjP8pB/2ZJbzI0Mw8
	ub1PS+e2pktR/zrDZKDC1CUJ7M3i3ACQEhtTedIS0UP9MW+s1gaaZYc4KAgi7L9nPQGdVG
	yA7zgD9MXR21iPh+6ntx7SA/OFAXFwQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1730813933;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jDTbP3fOcL51JRwWKzuxSqaxfANeDb0GcrNEPDR3wvk=;
	b=8cUUe5jSnqRzmRedg+YtmtB63W+fe91HG+PCahBKHkNSXve8vY3mP4rIVS+LmRPR1Fleu2
	M0vnLYsCggVYFLAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AC5BF1394A;
	Tue,  5 Nov 2024 13:38:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id C/ubKOwfKmcuEQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 05 Nov 2024 13:38:52 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch,
	groeck@chromium.org,
	zyw@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	stable@vger.kernel.org
Subject: [PATCH] drm/rockchip: cdn-dp: Use drm_connector_helper_hpd_irq_event()
Date: Tue,  5 Nov 2024 14:38:16 +0100
Message-ID: <20241105133848.480407-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Spamd-Result: default: False [-3.30 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,gmail.com,ffwll.ch,chromium.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.de:mid,suse.de:email]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_053857_450615_CB095BAB 
X-CRM114-Status: GOOD (  14.58  )
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

VGhlIGNvZGUgZm9yIGRldGVjdGluZyBhbmQgdXBkYXRpbmcgdGhlIGNvbm5lY3RvciBzdGF0dXMg
aW4KY2RuX2RwX3BkX2V2ZW50X3dvcmsoKSBoYXMgYSBudW1iZXIgb2YgcHJvYmxlbXMuCgotIEl0
IGRvZXMgbm90IGFxdWlyZSB0aGUgbG9ja3MgdG8gY2FsbCB0aGUgZGV0ZWN0IGhlbHBlciBhbmQg
dXBkYXRlCnRoZSBjb25uZWN0b3Igc3RhdHVzLiBUaGVzZSBhcmUgc3RydWN0IGRybV9tb2RlX2Nv
bmZpZy5jb25uZWN0aW9uX211dGV4CmFuZCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnLm11dGV4LgoK
LSBJdCBkb2VzIG5vdCB1c2UgZHJtX2hlbHBlcl9wcm9iZV9kZXRlY3QoKSwgd2hpY2ggaGVscHMg
d2l0aCB0aGUKZGV0YWlscyBvZiBsb2NraW5nIGFuZCBkZXRlY3Rpb24uCgotIEl0IHVzZXMgdGhl
IGNvbm5lY3RvcidzIHN0YXR1cyBmaWVsZCB0byBkZXRlcm1pbmUgYSBjaGFuZ2UgdG8KdGhlIGNv
bm5lY3RvciBzdGF0dXMuIFRoZSBlcG9jaF9jb3VudGVyIGZpZWxkIGlzIHRoZSBjb3JyZWN0IG9u
ZS4gVGhlCmZpZWxkIHNpZ25hbHMgYSBjaGFuZ2UgZXZlbiBpZiB0aGUgY29ubmVjdG9yIHN0YXR1
cycgdmFsdWUgZGlkIG5vdApjaGFuZ2UuCgpSZXBsYWNlIHRoZSBjb2RlIHdpdGggYSBjYWxsIHRv
IGRybV9jb25uZWN0b3JfaGVscGVyX2hwZF9pcnFfZXZlbnQoKSwKd2hpY2ggZml4ZXMgYWxsIHRo
ZXNlIHByb2JsZW1zLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJt
YW5uQHN1c2UuZGU+CkZpeGVzOiA4MTYzMmRmNjk3NzIgKCJkcm0vcm9ja2NoaXA6IGNkbi1kcDog
ZG8gbm90IHVzZSBkcm1faGVscGVyX2hwZF9pcnFfZXZlbnQiKQpDYzogQ2hyaXMgWmhvbmcgPHp5
d0Byb2NrLWNoaXBzLmNvbT4KQ2M6IEd1ZW50ZXIgUm9lY2sgPGdyb2Vja0BjaHJvbWl1bS5vcmc+
CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVy
IiA8aGVpa29Ac250ZWNoLmRlPgpDYzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29t
PgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NC4xMSsKLS0tCiBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8IDkgKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
Y2RuLWRwLWNvcmUuYwppbmRleCBiMDQ1Mzg5MDdmOTUuLmY1NzZiMWFhODZkMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKQEAgLTk0Nyw5ICs5NDcsNiBAQCBzdGF0aWMg
dm9pZCBjZG5fZHBfcGRfZXZlbnRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJ
c3RydWN0IGNkbl9kcF9kZXZpY2UgKmRwID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBjZG5f
ZHBfZGV2aWNlLAogCQkJCQkJZXZlbnRfd29yayk7Ci0Jc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciA9ICZkcC0+Y29ubmVjdG9yOwotCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xk
X3N0YXR1czsKLQogCWludCByZXQ7CiAKIAltdXRleF9sb2NrKCZkcC0+bG9jayk7CkBAIC0xMDA5
LDExICsxMDA2LDcgQEAgc3RhdGljIHZvaWQgY2RuX2RwX3BkX2V2ZW50X3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQogCiBvdXQ6CiAJbXV0ZXhfdW5sb2NrKCZkcC0+bG9jayk7Ci0KLQlv
bGRfc3RhdHVzID0gY29ubmVjdG9yLT5zdGF0dXM7Ci0JY29ubmVjdG9yLT5zdGF0dXMgPSBjb25u
ZWN0b3ItPmZ1bmNzLT5kZXRlY3QoY29ubmVjdG9yLCBmYWxzZSk7Ci0JaWYgKG9sZF9zdGF0dXMg
IT0gY29ubmVjdG9yLT5zdGF0dXMpCi0JCWRybV9rbXNfaGVscGVyX2hvdHBsdWdfZXZlbnQoZHAt
PmRybV9kZXYpOworCWRybV9jb25uZWN0b3JfaGVscGVyX2hwZF9pcnFfZXZlbnQoJmRwLT5jb25u
ZWN0b3IpOwogfQogCiBzdGF0aWMgaW50IGNkbl9kcF9wZF9ldmVudChzdHJ1Y3Qgbm90aWZpZXJf
YmxvY2sgKm5iLAotLSAKMi40Ny4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D96C35FF2
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 15:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vS5ta4YzZQpuNdC5B+VpeofXgNwC2JsGRSRw+LL5Ls=; b=397LqQ4Y01DG2u
	vdh80Iyi8CCdvb9pIEY5JQUcl/wuIKlu2xJcRASxC+MHZxp3DVxJ4nfPlDQ5UnuMRgkoqp86fEIWG
	aOaECL8Paii6fTJhxc22rO+GdpX4kcPLRSjaQBPZPXZ4KDSgC/pfYM+l6MbWV1B36MxItV8SLg6/N
	gBlkKovA0w0icVYFxbZPm+1fF7/6YgSWsZ3vMIpOcwNvmQ9dXo5Vwrecf+1HKEZjM3fW6mX3AZz6f
	fcWastepKXwaAIFTfarWGJ2rqxSiJ5HGkQ9ud7NUpM0Do6jIS8QUHWpJRehgCWsq24Wat5ZMiYcnp
	XA0m0SzxEwAcyjCj/Nzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts1ye-00000006FOy-1ECp;
	Tue, 11 Mar 2025 15:57:08 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts1xP-00000006EP0-29rV
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Mar 2025 15:55:52 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id E67E921189;
	Tue, 11 Mar 2025 15:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1741708502; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=znEgaoJc3whB81NdWhqaU1/ZxFvs0nB2ZHw9VGWt3TU=;
	b=i9V6keK5D5tMScIaefKnYXicbaEOiJkshMPyAmGvfk54kblhgKd4OvK2l/ZehT7HwdSnOY
	d6sm7p/zlAh9omq+8Y1imB8hwWtfR3hsm/zd0c5NjIulQOHUgm2droZzNIaKTRjuX8i1o+
	fbHTTGV1AJ7aaVhDzboR6DOQ/f2HVsM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1741708502;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=znEgaoJc3whB81NdWhqaU1/ZxFvs0nB2ZHw9VGWt3TU=;
	b=qO/uAFhZOEoU7BC4ef46xNIuw7jVu2+6Df4h7YC9Ycjq/Ya10Uo6esq/wIa0AArjaHmxVS
	o+2C3WZRehFa9jBw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1741708501; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=znEgaoJc3whB81NdWhqaU1/ZxFvs0nB2ZHw9VGWt3TU=;
	b=gywqAFQyVYU2gwZaCARNoMvbqkvQzDE8gV2tlBRp11CQPNV/X3HbJjtIHMKcYyAk3T0l0H
	dZy4yiAnpPj4u/PxULqjG0LiVgGksWsOnNpxlMv2zP8kpS9fQjTi1ZdWf5T4hWFmHdtrgo
	JstOTl7/OtOMu8o/tnOr/vjTBXex/aY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1741708501;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=znEgaoJc3whB81NdWhqaU1/ZxFvs0nB2ZHw9VGWt3TU=;
	b=+VeUcLxQ5ZNyVU2yhubik1aDZPNLl0HmRfl07UIHjdTa7tZYG2ptLEVeA4a7Y+SmJ+fD0R
	vOcGEGhN6WESg5BA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4DB9413AB8;
	Tue, 11 Mar 2025 15:55:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id WAKtEdVc0GdUdQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 11 Mar 2025 15:55:01 +0000
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
	Matthew Auld <matthew.auld@intel.com>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v4 23/25] drm/xe: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Tue, 11 Mar 2025 16:47:27 +0100
Message-ID: <20250311155120.442633-24-tzimmermann@suse.de>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250311155120.442633-1-tzimmermann@suse.de>
References: <20250311155120.442633-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,kernel.org,linux.intel.com,linux-m68k.org,ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_RATELIMIT(0.00)[to(RLbwen1niosrcqbxsafh1),to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid,intel.com:email,imap1.dmz-prg2.suse.org:helo]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_085551_721024_DA7AD1C5 
X-CRM114-Status: GOOD (  10.75  )
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
IHBpdGNoCmFuZCBidWZmZXIgc2l6ZS4gQWxpZ24gdGhlIHBpdGNoIHRvIGEgbXVsdGlwbGUgb2Yg
OC4gQWxpZ24gdGhlCmJ1ZmZlciBzaXplIGFjY29yZGluZyB0byBoYXJkd2FyZSByZXF1aXJlbWVu
dHMuCgpYZSdzIGludGVybmFsIGNhbGN1bGF0aW9uIGFsbG93ZWQgZm9yIDY0LWJpdCB3aWRlIGJ1
ZmZlciBzaXplcywgYnV0CnRoZSBpb2N0bCdzIGludGVybmFsIGNoZWNrcyBhbHdheXMgdmVyaWZp
ZWQgYWdhaW5zdCAzMi1iaXQgd2lkZSBsaW1pdHMuCkhhbmNlLCBpdCBpcyBzYWZlIHRvIGxpbWl0
IHRoZSBkcml2ZXIgY29kZSB0byAzMi1iaXQgY2FsY3VsYXRpb25zIGFzCndlbGwuCgp2MzoKLSBt
ZW50aW9uIDMyLWJpdCBjYWxjdWxhdGlvbiBpbiBjb21taXQgZGVzY3JpcHRpb24gKE1hdHRoZXcp
CgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4K
UmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogIlRob21hcyBIZWxs
c3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2Jv
LmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jIGIvZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX2JvLmMKaW5kZXggNjRmOWM5MzZlZWEwLi40NzFhYWI2MTE3NmUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS94ZS94ZV9iby5jCkBAIC05LDYgKzksNyBAQAogI2luY2x1ZGUgPGxpbnV4L25vc3BlYy5oPgog
CiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2R1bWJfYnVmZmVy
cy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtX3R0bV9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0v
ZHJtX21hbmFnZWQuaD4KICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9iYWNrdXAuaD4KQEAgLTI5MTAs
MTQgKzI5MTEsMTMgQEAgaW50IHhlX2JvX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmls
ZV9wcml2LAogCXN0cnVjdCB4ZV9kZXZpY2UgKnhlID0gdG9feGVfZGV2aWNlKGRldik7CiAJc3Ry
dWN0IHhlX2JvICpibzsKIAl1aW50MzJfdCBoYW5kbGU7Ci0JaW50IGNwcCA9IERJVl9ST1VORF9V
UChhcmdzLT5icHAsIDgpOwogCWludCBlcnI7CiAJdTMyIHBhZ2Vfc2l6ZSA9IG1heF90KHUzMiwg
UEFHRV9TSVpFLAogCQl4ZS0+aW5mby52cmFtX2ZsYWdzICYgWEVfVlJBTV9GTEFHU19ORUVENjRL
ID8gU1pfNjRLIDogU1pfNEspOwogCi0JYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT53aWR0aCAq
IGNwcCwgNjQpOwotCWFyZ3MtPnNpemUgPSBBTElHTihtdWxfdTMyX3UzMihhcmdzLT5waXRjaCwg
YXJncy0+aGVpZ2h0KSwKLQkJCSAgIHBhZ2Vfc2l6ZSk7CisJZXJyID0gZHJtX21vZGVfc2l6ZV9k
dW1iKGRldiwgYXJncywgU1pfNjQsIHBhZ2Vfc2l6ZSk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVy
cjsKIAogCWJvID0geGVfYm9fY3JlYXRlX3VzZXIoeGUsIE5VTEwsIE5VTEwsIGFyZ3MtPnNpemUs
CiAJCQkgICAgICAgRFJNX1hFX0dFTV9DUFVfQ0FDSElOR19XQywKLS0gCjIuNDguMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

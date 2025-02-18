Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F328DC02198
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 14:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ8heRnrAn3O9AnHHM8npRk4aKtSv5H7/vmvGYA/gbE=; b=EHIGfzp/SV7Xck
	zmCDs0n+jk1b2fx50rMs7yj+H5ilar7F8JuggffB++M3TrPsynKn9wN68y8KmG37AEMXIDbeQP5pp
	fG2sg3EZKXoi5d+c6OcKrCMg54ap03EeY8kDOjDD4n8GTSWUuvygRGQ11rD1JK2ood7Ludn76ffCm
	7yICYxq6DEFpL1Qpq7bJxM544NkfNmS3BNFaMbbTEdzXwPB/Wql8gq3NSYU3QkG/7bJNvwGlgK9mw
	lUhzL6CIw484Wgv4dTH78MT64LERqPNBtWZL+J4O8QivfjlzPE8HSrBoG6t3w5xveVDs+tLhUQD9v
	8neWSG4+wqUzuX72Gu4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOZD-00000008Wr4-3hdN;
	Tue, 18 Feb 2025 14:27:19 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOYk-00000008Vwo-3kZk
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 14:26:54 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 658EB1F460;
	Tue, 18 Feb 2025 14:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1739888760; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bwygu7OW2nYZSxrnhLvVTuKP6gfPJ4hKNl5leS6/5bM=;
	b=J1SDq8ilSoBM3Kc8e9IFGnI53gxG0YCJMn0IU5NdiJ1xZsZufpAJ0VNDZR5dVqjMB33Ae2
	5RWhqnnKqfae2oFMbBpegQMhWmnRVECjKpiNldRUM/c8jS7t+xZw7ViSySsIKOhOqslLd/
	H1EnuuhklW8z8uv92mo+ZLpdEVfC4wI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1739888760;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bwygu7OW2nYZSxrnhLvVTuKP6gfPJ4hKNl5leS6/5bM=;
	b=NdvsVw0q5LoN12zBkXXlpMhKqN2vWroDy/WUajxn5xSDvvBg/gkh1takUqbMONpdvmpRJW
	Z5+EAaLTkewFppBA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1739888760; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bwygu7OW2nYZSxrnhLvVTuKP6gfPJ4hKNl5leS6/5bM=;
	b=J1SDq8ilSoBM3Kc8e9IFGnI53gxG0YCJMn0IU5NdiJ1xZsZufpAJ0VNDZR5dVqjMB33Ae2
	5RWhqnnKqfae2oFMbBpegQMhWmnRVECjKpiNldRUM/c8jS7t+xZw7ViSySsIKOhOqslLd/
	H1EnuuhklW8z8uv92mo+ZLpdEVfC4wI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1739888760;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bwygu7OW2nYZSxrnhLvVTuKP6gfPJ4hKNl5leS6/5bM=;
	b=NdvsVw0q5LoN12zBkXXlpMhKqN2vWroDy/WUajxn5xSDvvBg/gkh1takUqbMONpdvmpRJW
	Z5+EAaLTkewFppBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CEA5A13A82;
	Tue, 18 Feb 2025 14:25:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id wOImMXeYtGdXYQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 18 Feb 2025 14:25:59 +0000
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
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v3 23/25] drm/xe: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Tue, 18 Feb 2025 15:23:46 +0100
Message-ID: <20250218142542.438557-24-tzimmermann@suse.de>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218142542.438557-1-tzimmermann@suse.de>
References: <20250218142542.438557-1-tzimmermann@suse.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email,imap1.dmz-prg2.suse.org:helo]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_062651_261174_33B46B35 
X-CRM114-Status: GOOD (  10.85  )
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
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogIlRob21h
cyBIZWxsc3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3hl
L3hlX2JvLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMKaW5kZXggNzhkMDljNWVkMjZkLi5iMzRmNDQ2YWQ1
N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9iby5jCkBAIC05LDYgKzksNyBAQAogI2luY2x1ZGUgPGxpbnV4L25vc3Bl
Yy5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2R1bWJf
YnVmZmVycy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtX3R0bV9oZWxwZXIuaD4KICNpbmNsdWRl
IDxkcm0vZHJtX21hbmFnZWQuaD4KICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9kZXZpY2UuaD4KQEAg
LTI2NzIsMTQgKzI2NzMsMTMgQEAgaW50IHhlX2JvX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZV9wcml2LAogCXN0cnVjdCB4ZV9kZXZpY2UgKnhlID0gdG9feGVfZGV2aWNlKGRldik7
CiAJc3RydWN0IHhlX2JvICpibzsKIAl1aW50MzJfdCBoYW5kbGU7Ci0JaW50IGNwcCA9IERJVl9S
T1VORF9VUChhcmdzLT5icHAsIDgpOwogCWludCBlcnI7CiAJdTMyIHBhZ2Vfc2l6ZSA9IG1heF90
KHUzMiwgUEFHRV9TSVpFLAogCQl4ZS0+aW5mby52cmFtX2ZsYWdzICYgWEVfVlJBTV9GTEFHU19O
RUVENjRLID8gU1pfNjRLIDogU1pfNEspOwogCi0JYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT53
aWR0aCAqIGNwcCwgNjQpOwotCWFyZ3MtPnNpemUgPSBBTElHTihtdWxfdTMyX3UzMihhcmdzLT5w
aXRjaCwgYXJncy0+aGVpZ2h0KSwKLQkJCSAgIHBhZ2Vfc2l6ZSk7CisJZXJyID0gZHJtX21vZGVf
c2l6ZV9kdW1iKGRldiwgYXJncywgU1pfNjQsIHBhZ2Vfc2l6ZSk7CisJaWYgKGVycikKKwkJcmV0
dXJuIGVycjsKIAogCWJvID0geGVfYm9fY3JlYXRlX3VzZXIoeGUsIE5VTEwsIE5VTEwsIGFyZ3Mt
PnNpemUsCiAJCQkgICAgICAgRFJNX1hFX0dFTV9DUFVfQ0FDSElOR19XQywKLS0gCjIuNDguMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

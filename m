Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BFF0E7719F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 15:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDQx6qhaLocoGyaEh77JBRSQbKSw2uc8RyCz/q+NV2c=; b=UVxgF/O6xdbzxQ
	aRe0K+ww6RNKqrpklPDiiu+mUSJqN1Ri16mKXfa6yq7MFrnlhPWs83YR3Ld99giQ3rmsQDJpeFtaJ
	6Ol9Lnyxhx/i8e1zkO+vNklbUy3656sN4bEBv98Rrx8W3rW20NB4jx0c8civWWzVKPfESZZr97xpF
	5mzlGL2CiXupGb40KkIWCSt5zSMiwQfCwpfgRAwookctEU8VFbGI6qCNihh79ZAOvuaxe3+iPnut3
	ap8p5KyNd66sj8Qt/Eh/onI0hv4KP8NJ4q/XGgMob0dz3uAMkbLATW+cQBoWYQ5DYWH1iuvUiCq6u
	klyHN8hTiHcGYooYsxRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4r-0000000CNYB-2d4r;
	Thu, 09 Jan 2025 15:04:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4U-0000000CMpM-1xP4;
	Thu, 09 Jan 2025 15:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=J2NadFBjAqbFi1H7uwOqYOAiOGb2bLNOdbeXieSDGEU=; b=B00dA/myC+NIraBIpQDhF9ZTKR
	KSGwsscQY417LtJYA07WNZLn2/vtP2rddBlTFY0gNxOknRqmvV5DCijtOXllLLdunWpb8WccyxlBt
	+p9eGbncSYYN+XGz1wKCvAubYc11GvJNrm/1J/++6bTVUAdIFDgxRH/6NlGW2C9cOrqOA+rikm5I9
	Q2JbSprb07Eotx3Gm9a4I/WVa0oVl1Sv1+JBBK8k4BZj6ZiLFzwjjpFYjKUjyAVKsmlsUQMRmhwif
	gVbVzP2AT7L8bSU9wCkgn4B2ZoDs34d75jBqTmWT8FBvAFbOBZJsasFR9D0ZNEDB/cj4Ny/Luygrr
	VoWSU3vw==;
Received: from smtp-out1.suse.de ([195.135.223.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4I-00000009a77-0oIT;
	Thu, 09 Jan 2025 15:03:37 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id F120121180;
	Thu,  9 Jan 2025 15:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736435009; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2NadFBjAqbFi1H7uwOqYOAiOGb2bLNOdbeXieSDGEU=;
	b=gCnHtmuJLcGiLH56RCHAbjbOL3StuwLdJifwaYcYlFGigNiBAhUYt9+NKdzAZ3LOfOPZal
	Ku3M/jRtzQSIG5Zony/M75iwWLbw/QQgPDAdD/9jktN/4Ha6nFg8Xq/6lrmCjZRymqkHcd
	Xf+H717xR/19W5SgsiXifzoP00xlhZQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736435009;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2NadFBjAqbFi1H7uwOqYOAiOGb2bLNOdbeXieSDGEU=;
	b=M6VuwU0fRhuZdkNXEzUngV7rcGi2TE2FlAkeTxPo+XdqwO90rQ+HJMWWPDblcbuCDai8ou
	AKfNe1/0AuhdMOBQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736435007; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2NadFBjAqbFi1H7uwOqYOAiOGb2bLNOdbeXieSDGEU=;
	b=wAnJYW7YRZ5FxzftY+koF4X9N3VxtQJ92gUVtMOA20XnFrjGiCvIXaa9hwf1VIPhbIAyzr
	rco3UlFDShDSd516zHbrHb+pXo2WAC87Q7BfHWZjdbis0z5rzE43o7zOo74wVU3Gu34WTd
	gxEDMekzlyR6IkyN2x9/hbg2sOHRpG4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736435007;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2NadFBjAqbFi1H7uwOqYOAiOGb2bLNOdbeXieSDGEU=;
	b=HunHuKf1409Au2X6hEHF/VCiFPGh7nGOLKYVdPoxHGASqlemNUfl1KQn+7PVLth2jjo3SI
	ie9sr0+QYHCqSwCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 6ADBC13A8B;
	Thu,  9 Jan 2025 15:03:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id cDzMGD/lf2c1awAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 09 Jan 2025 15:03:27 +0000
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
Subject: [PATCH v2 23/25] drm/xe: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Thu,  9 Jan 2025 15:57:17 +0100
Message-ID: <20250109150310.219442-24-tzimmermann@suse.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,imap1.dmz-prg2.suse.org:helo,suse.de:mid,suse.de:email]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_150332_587475_C3C3C678 
X-CRM114-Status: GOOD (  10.96  )
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
dHMuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogIlRo
b21hcyBIZWxsc3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBS
b2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L3hlL3hlX2JvLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5j
IGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMKaW5kZXggZTZjODk2YWQ1NjAyLi5kNzVlM2Mz
OWFiMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS94ZS94ZV9iby5jCkBAIC04LDYgKzgsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2Rt
YS1idWYuaD4KIAogI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+CisjaW5jbHVkZSA8ZHJtL2RybV9k
dW1iX2J1ZmZlcnMuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2dlbV90dG1faGVscGVyLmg+CiAjaW5j
bHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+CiAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fZGV2aWNlLmg+
CkBAIC0yNTM1LDE0ICsyNTM2LDEzIEBAIGludCB4ZV9ib19kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJt
X2ZpbGUgKmZpbGVfcHJpdiwKIAlzdHJ1Y3QgeGVfZGV2aWNlICp4ZSA9IHRvX3hlX2RldmljZShk
ZXYpOwogCXN0cnVjdCB4ZV9ibyAqYm87CiAJdWludDMyX3QgaGFuZGxlOwotCWludCBjcHAgPSBE
SVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KTsKIAlpbnQgZXJyOwogCXUzMiBwYWdlX3NpemUgPSBt
YXhfdCh1MzIsIFBBR0VfU0laRSwKIAkJeGUtPmluZm8udnJhbV9mbGFncyAmIFhFX1ZSQU1fRkxB
R1NfTkVFRDY0SyA/IFNaXzY0SyA6IFNaXzRLKTsKIAotCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJn
cy0+d2lkdGggKiBjcHAsIDY0KTsKLQlhcmdzLT5zaXplID0gQUxJR04obXVsX3UzMl91MzIoYXJn
cy0+cGl0Y2gsIGFyZ3MtPmhlaWdodCksCi0JCQkgICBwYWdlX3NpemUpOworCWVyciA9IGRybV9t
b2RlX3NpemVfZHVtYihkZXYsIGFyZ3MsIFNaXzY0LCBwYWdlX3NpemUpOworCWlmIChlcnIpCisJ
CXJldHVybiBlcnI7CiAKIAlibyA9IHhlX2JvX2NyZWF0ZV91c2VyKHhlLCBOVUxMLCBOVUxMLCBh
cmdzLT5zaXplLAogCQkJICAgICAgIERSTV9YRV9HRU1fQ1BVX0NBQ0hJTkdfV0MsCi0tIAoyLjQ3
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

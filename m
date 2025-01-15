Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11774C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 12:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKmeujYj9MquYhHTCR1mLU5hhsmNDJlgqymOFQRBrFY=; b=HtkoDgAIN+976t
	Mz7Xm/F/QR8XimCmya2VAsnq0rkSRmHlNEuFd6tzfd65QCE2PA3J42ebQxPv1xzy5uDslUWeOWW1x
	HHiblpoOBEM8vUAcfSXw1sf0Dy2/QVWi+DQBvpiqkil0271ymf8WNWgAJpgOZfSZJm8dl+SxJ7UGx
	eIx2Zqvx+NNt20UKFScagbEldOyYHYKGe2gHSGmXd+bmSnqwZwJEutWtN1KcezfAbiKrOsT2xuz8S
	5qdFNcNHJ+E/93WF9sxyBziQ5iyfLrK5z8Yp7hO6I+HH7VPnckZNtgBbnn2stogFRopQsU7xXS0Oy
	bNgwjt4kOwIMnqJWUKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY2cI-0000000BqoN-3udb;
	Wed, 15 Jan 2025 12:35:26 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY2b8-0000000BqdW-2EBE;
	Wed, 15 Jan 2025 12:34:15 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 0911921268;
	Wed, 15 Jan 2025 12:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736944453; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6rF2/Nds9jaSABjY+tPpNsWja3s7il8oCoGTgAQg7zI=;
	b=fgWXXkrFkmGejWhD5fjTSv1Ssa3J0/Rq3i+ng8TxEKD1eRYuiFNmbUfuajMGofr3s/t2eZ
	KUgh6Bm/awPn8TV8uJkhGaXDHQR6CWgT/hcaXY1q2efHMbV/wmhjhMEy29fROVqCvSDkdz
	6tQTVjC5fOWCKOgJQRgT1JzzUj6MBJw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736944453;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6rF2/Nds9jaSABjY+tPpNsWja3s7il8oCoGTgAQg7zI=;
	b=y94aRJ3hTl+xAqZyjbuOx6P3Fm9fL5u2Qm278Eu98uKnVjQZVMuFhA5M1heZuojCir6spI
	Y/ZF6lkgng5FbRAA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736944453; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6rF2/Nds9jaSABjY+tPpNsWja3s7il8oCoGTgAQg7zI=;
	b=fgWXXkrFkmGejWhD5fjTSv1Ssa3J0/Rq3i+ng8TxEKD1eRYuiFNmbUfuajMGofr3s/t2eZ
	KUgh6Bm/awPn8TV8uJkhGaXDHQR6CWgT/hcaXY1q2efHMbV/wmhjhMEy29fROVqCvSDkdz
	6tQTVjC5fOWCKOgJQRgT1JzzUj6MBJw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736944453;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6rF2/Nds9jaSABjY+tPpNsWja3s7il8oCoGTgAQg7zI=;
	b=y94aRJ3hTl+xAqZyjbuOx6P3Fm9fL5u2Qm278Eu98uKnVjQZVMuFhA5M1heZuojCir6spI
	Y/ZF6lkgng5FbRAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 767F4139CB;
	Wed, 15 Jan 2025 12:34:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id E28IG0Srh2cCTwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 15 Jan 2025 12:34:12 +0000
Message-ID: <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
Date: Wed, 15 Jan 2025 13:34:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andy Yan <andyshrk@163.com>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com>
 <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
 <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[163.com,gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,lists.xenproject.org,ideasonboard.com,163.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_043414_726511_10546BE2 
X-CRM114-Status: GOOD (  29.72  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkKCgpBbSAxNS4wMS4yNSB1bSAxMzowNiBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgo+IEhpLAo+
Cj4gT24gMTUvMDEvMjAyNSAxMzozNywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+IEhpCj4+
Cj4+Cj4+IEFtIDE1LjAxLjI1IHVtIDExOjU4IHNjaHJpZWIgVG9taSBWYWxrZWluZW46Cj4+IFsu
Li5dCj4+Pj4gVGhlc2UgYXJlIGFsbCBnb29kIHBvaW50cy4gRGlkIHlvdSByZWFkIG15IGRpc2N1
c3Npb24gd2l0aCBBbmR5IG9uIAo+Pj4+IHBhdGNoIDI/IEkgdGhpbmsgaXQgcmVzb2x2ZXMgYWxs
IHRoZSBwb2ludHMgeW91IGhhdmUuIFRoZSBjdXJyZW50IAo+Pj4+IENSRUFURV9EVU1CIAo+Pj4K
Pj4+IEkgaGFkIG1pc3NlZCB0aGUgZGlzY3Vzc2lvbiwgYW5kLCBpbmRlZWQsIHRoZSBwYXRjaCB5
b3UgYXR0YWNoZWQgCj4+PiBmaXhlcyB0aGUgcHJvYmxlbSBvbiBYaWxpbnguCj4+Cj4+IEdyZWF0
LiBUaGFua3MgZm9yIHRlc3RpbmcuCj4+Cj4+Pgo+Pj4+IGlvY3RsIGlzIHVuc3VpdGVkIGZvciBh
bnl0aGluZyBidXQgdGhlIHNpbXBsZSBSR0IgZm9ybWF0cy4gVGhlIGJwcCAKPj4+Cj4+PiBJdCdz
IGEgYml0IGRpZmZpY3VsdCB0byB1c2UsIGJ1dCBpcyBpdCByZWFsbHkgdW5zdWl0ZWQ/IAo+Pj4g
Yml0c3BlcnBpeGVsLCB3aWR0aCBhbmQgaGVpZ2h0IGRvIGdpdmUgYW4gZXhhY3QgcGl0Y2ggYW5k
IHNpemUsIGRvIAo+Pj4gdGhleSBub3Q/IEl0IGRvZXMgcmVxdWlyZSB0aGUgdXNlcnNwYWNlIHRv
IGhhbmRsZSB0aGUgc3Vic2FtcGxpbmcgCj4+PiBhbmQgcGxhbmVzLCB0aG91Z2gsIHNvIGZhciBm
cm9tIHBlcmZlY3QuCj4+Cj4+IFRoZSBicHAgdmFsdWUgc2V0cyB0aGUgbnVtYmVyIG9mIGJpdHMg
cGVyIHBpeGVsOyBleGNlcHQgZm9yIGJwcD09MTUgCj4+IChYUkdCMTU1NSksIHdoZXJlIGl0IHNl
dHMgdGhlIGNvbG9yIGRlcHRoLiBPUiBicHAgaXMgdGhlIGNvbG9yIGRlcHRoOyAKPj4gZXhjZXB0
IGZvciBicHA9PTMyIChYUkdCODg4OCksIHdoZXJlIGl0IGlzIHRoZSBudW1iZXIgb2YgYml0cyBw
ZXIgCj4+IHBpeGVsLiBJdCdzIHRoZXJlZm9yZSBiZXN0IHRvIGludGVycHJldCBpdCBsaWtlIGEg
Y29sb3ItbW9kZSBlbnVtLgo+Cj4gQWgsIHJpZ2h0Li4uIFRoYXQncyBob3JyaWJsZSA9KS4KPgo+
IEFuZCBJIGFzc3VtZSBpdCdzIG5vdCByZWFsbHkgcG9zc2libGUgdG8gZGVmaW5lIHRoZSBicHAg
dG8gbWVhbiBiaXRzIAo+IHBlciBwaXhlbCwgZXhjZXB0IGZvciBhIGZldyBzcGVjaWFsIGNhc2Vz
IGxpa2UgMTU/Cj4KPiBXaHkgZG8gd2UgZXZlbiByZWFsbHkgY2FyZSBhYm91dCBjb2xvciBkZXB0
aCBoZXJlPyBXZSdyZSBqdXN0IAo+IGFsbG9jYXRpbmcgbWVtb3J5LiBEb2Vzbid0IERJVl9ST1VO
RF9VUChhcmdzLT5icHAsIFNaXzgpIHdvcmsgZmluZSBmb3IgCj4gWFJHQjE1NTUgdG9vPwoKRHJp
dmVycyBhbHdheXMgZGlkIHRoYXQsIGJ1dCBpdCBkb2VzIG5vdCB3b3JrIGNvcnJlY3RseSBmb3Ig
KGJwcCA8IDgpLiAKQXMgd2UgYWxyZWFkeSBoYXZlIGhlbHBlcnMgdG8gZGVhbCB3aXRoIGJwcCwg
aXQgbWFrZXMgc2Vuc2UgdG8gdXNlIAp0aGVtLsKgIFRoaXMgYWxzbyBhbGlnbnMgZHVtYiBidWZm
ZXJzIHdpdGggdGhlIGtlcm5lbCdzIHZpZGVvPSBwYXJhbWV0ZXIsIAp3aGljaCBhcyB0aGUgc2Ft
ZSBvZGQgc2VtYW50aWNzLiBUaGUgZmFsbGJhY2sgdGhhdCB1c2VzIGJwcCBkaXJlY3RseSAKd2ls
bCBob3BlZnVsbHkgYmUgdGhlIGV4Y2VwdGlvbi4KCj4KPj4+IFNvLCBJJ20gYWxsIGZvciBhIG5l
dyBpb2N0bCwgYnV0IEkgZG9uJ3QgcmlnaHQgYXdheSBzZWUgd2h5IHRoZSAKPj4+IGN1cnJlbnQg
aW9jdGwgY291bGRuJ3QgYmUgdXNlZC4gV2hpY2ggbWFrZXMgbWUgd29uZGVyIGFib3V0IHRoZSAK
Pj4+IGRybV93YXJuKCkgaW4geW91ciBwYXRjaCwgYW5kIHRoZSAidXNlcnNwYWNlIHRocm93cyBp
biBhcmJpdHJhcnkgCj4+PiB2YWx1ZXMgZm9yIGJwcCBhbmQgcmVsaWVzIG9uIHRoZSBrZXJuZWwg
dG8gZmlndXJlIGl0IG91dCIuIE1heWJlIEknbSAKPj4+IG1pc3Npbmcgc29tZXRoaW5nIGhlcmUu
Cj4+Cj4+IEkgd2FzIHVuc3VyZSBhYm91dCB0aGUgZHJtX3dhcm4oKSBhcyB3ZWxsLiBJdCdzIG5v
dCByZWFsbHkgd3JvbmcgdG8gCj4+IGhhdmUgb2RkIGJwcCB2YWx1ZXMsIGJ1dCBoYW5kaW5nIGlu
IGFuIHVua25vd24gYnBwIHZhbHVlIG1pZ2h0IHBvaW50IAo+PiB0byBhIHVzZXItc3BhY2UgZXJy
b3IuIEF0IGxlYXN0IHRoZXJlIHNob3VsZCBiZSBhIGRybV9kYmcoKS4KPj4KPj4+Cj4+Pj4gcGFy
YW1ldGVyIGlzIG5vdCB2ZXJ5IHByZWNpc2UuIFRoZSBzb2x1dGlvbiB3b3VsZCBiZSBhIG5ldyBp
b2N0bCAKPj4+PiBjYWxsIHRoYXQgcmVjZWl2ZXMgdGhlIERSTSBmb3JtYXQgYW5kIHJldHVybnMg
YSBidWZmZXIgZm9yIGVhY2ggCj4+Pj4gaW5kaXZpZHVhbCBwbGFuZS4KPj4+Cj4+PiBZZXMsIEkg
dGhpbmsgdGhhdCBtYWtlcyBzZW5zZS4gVGhhdCdzIGEgbG9uZyByb2FkLCB0aG91Z2ggPSkuIFNv
IG15IAo+Pj4gcXVlc3Rpb24gaXMsIGlzIENSRUFURV9EVU1CIHJlYWxseSB1bnN1aXRhYmxlIGZv
ciBvdGhlciB0aGFuIHNpbXBsZSAKPj4+IFJHQiBmb3JtYXRzLCBvciBjYW4gaXQgYmUgc3VpdGFi
bGUgaWYgd2UganVzdCBkZWZpbmUgaG93IHRoZSAKPj4+IHVzZXJzcGFjZSBzaG91bGQgdXNlIGl0
IGZvciBtdWx0aXBsYW5hciwgc3Vic2FtcGxlZCBmb3JtYXRzPwo+Pgo+PiBUaGF0IHdvdWxkIGR1
cGxpY2F0ZSBmb3JtYXQgYW5kIGhhcmR3YXJlIGluZm9ybWF0aW9uIGluIHVzZXItc3BhY2UuIFNv
bWUgCj4KPiBCdXQgd2UgYWxyZWFkeSBoYXZlIHRoYXQsIGRvbid0IHdlPyBXZSBoYXZlIGRyaXZl
cnMgYW5kIHVzZXJzcGFjZSB0aGF0IAo+IHN1cHBvcnQsIHNheSwgTlYxMiB2aWEgZHVtYiBidWZm
ZXJzLiBCdXQgKGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nKSB3ZSAKPiBkb24ndCBkb2N1bWVudCBo
b3cgQ1JFQVRFX0RVTUIgaGFzIHRvIGJlIHVzZWQgdG8gYWxsb2NhdGUgbXVsdGlwbGFuYXIgCj4g
c3Vic2FtcGxlZCBidWZmZXJzLCBzbyB0aGUgdXNlcnNwYWNlIGRldnMgaGF2ZSB0byAiZ3Vlc3Mi
LgoKWWVhaCwgdGhlcmUgYXJlIGNvbnN0cmFpbnMgaW4gdGhlIHNjYW5saW5lIGFuZCBidWZmZXIg
YWxpZ25tZW50cyBhbmQgCm9yaWVudGF0aW9uLiBBbmQgaWYgd2Ugc2F5IHRoYXQgYnBwPT0xMiBt
ZWFucyBOVjEyLCBpdCB3aWxsIGJlIGEgcHJvYmxlbSAKZm9yIGFsbCBvdGhlciBjYXNlcyB3aGVy
ZSBicHA9PTEyIG1ha2VzIHNlbnNlLgoKQmVzdCByZWdhcmRzClRob21hcwoKPgo+PiBoYXJkd2Fy
ZSBtaWdodCBoYXZlIG9kZCBwZXItcGxhbmUgbGltaXRhdGlvbnMgdGhhdCBvbmx5IHRoZSBkcml2
ZXIgCj4+IGtub3dzIGFib3V0LiBGb3IgZXhhbXBsZSwgdGhlcmUncyBhbm90aGVyIGRpc2N1c3Np
b24gb24gZHJpLWRldmVsIAo+PiBhYm91dCBwaXRjaC0gYWxpZ25tZW50IHJlcXVpcmVtZW50cyBv
ZiBEUk1fRk9STUFUX01PRF9MSU5FQVIgb24gCj4+IHZhcmlvdXMgaGFyZHdhcmUuIFRoYXQgYWZm
ZWN0cyBkdW1iIGJ1ZmZlcnMgYXMgd2VsbC4gSSBkb24ndCB0aGluayAKPj4gdGhhdCB0aGVyZSdz
IGFuIGltbWVkaWF0ZSBuZWVkIGZvciBhIENSRUFURV9EVU1CMiwgYnV0IGl0IHNlZW1zIHdvcnRo
IAo+PiB0byBrZWVwIGluIG1pbmQuCj4KPiBZZXMsIHRoZSBjdXJyZW50IENSRUFURV9EVU1CIGNh
bid0IGNvdmVyIGFsbCB0aGUgaGFyZHdhcmUuIFdlIGRvIG5lZWQgCj4gQ1JFQVRFX0RVTUIyLCBz
b29uZXIgb3IgbGF0ZXIuIEkganVzdCBob3BlIHdlIGNhbiBkZWZpbmUgYW5kIGRvY3VtZW50IAo+
IGEgc2V0IG9mIHJ1bGVzIHRoYXQgYWxsb3dzIHVzaW5nIENSRUFURV9EVU1CIGZvciB0aGUgY2Fz
ZXMgd2hlcmUgaXQgCj4gc2Vuc2libHkgd29ya3MgKGFuZCBpcyBhbHJlYWR5IGJlaW5nIHVzZWQp
Lgo+Cj4gwqBUb21pCj4KCi0tIAotLQpUaG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIg
RGV2ZWxvcGVyClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApGcmFua2Vuc3Ry
YXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQpHRjogSXZvIFRvdGV2LCBBbmRyZXcg
TXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuCkhSQiAzNjgwOSAoQUcgTnVl
cm5iZXJnKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

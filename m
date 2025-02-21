Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEA60C021AA
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 09:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oieqS57XnfMMbmLSQy7FNZ8OC4+C+V2aH2r8f7doQI=; b=2mcbvJAJe1tc/Q
	pMU6BM4mjT9oSXw/nvJ+aSAHVZVCPQgiG++6XQkf/Tdl0IwxjMCwRltkwQ5ebvvjFeKQrhRtz4g7K
	yUgQrn1XROCaplI4xvivBp20lqSbVVURKHXkDZ48i0uZggjrX22OZuSmbnD04A8lZn7349NL+8gPr
	+5HXIbKqg9LgSOoTzVyZCfxu3RFTBXL66d8I48Sz9bh7dXtxoVp0L/o/3IZK1OC040oEnyCBMi/Jy
	DtcoHqNwK2fqRlAzr9iYO1+XpyrTndjhn9VdV9BYf/+vzMWkPvLbiSsMRXX27TA7C2YRTR9fOora/
	ojtQkCBSm8ObLRXOPArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlPCC-00000004tfx-0PWu;
	Fri, 21 Feb 2025 09:19:44 +0000
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlPC9-00000004tel-0Qhi
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Feb 2025 09:19:42 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 016201F38C;
	Fri, 21 Feb 2025 09:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740129579; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XEszpDYKL3MVEwZqleFHNbIiqH/hiHMJcxYVx498oDU=;
	b=Y5OD0ODW05Ir6K44W9oHAHrgQsGFXLTe2qXLi/jaIBFZ8ei3bph+xdvoGyv2xycuuIUEmU
	lfhDd0FD0MKqUsASX/kbFrYVayo06HxIfkIBglJZ5y6xJsUEh1UQO7cOjfhKiWv2u8LZKu
	ovMgo9SssgX3HXtwBDBEB/mDQQQS6Mk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740129579;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XEszpDYKL3MVEwZqleFHNbIiqH/hiHMJcxYVx498oDU=;
	b=apiGdSL53jreK8uUb7XtKwQfvrR9lvbOm4fC4bhVEsCnP7K54jIhH0RLvsx+aZh30OOeHO
	abABtQE13t+7TJAg==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Ix9uY6zy;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=GXuVcphr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740129578; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XEszpDYKL3MVEwZqleFHNbIiqH/hiHMJcxYVx498oDU=;
	b=Ix9uY6zyz6ad3maDw2OFPsPm2XBJ85n9s/O4q80iEfN1M4Sjj0LK+j1n5z0I0DOmlcCTU0
	QX+/2L+jPArpkRRDyHTlwd8SaIdpzIX1XprnwUzKPIITRhTlNeFlUdbbne1BuTtAlKMruC
	phhskGETcHdVTLH59sXknrkluxvm0jQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740129578;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XEszpDYKL3MVEwZqleFHNbIiqH/hiHMJcxYVx498oDU=;
	b=GXuVcphrlbiIlthAB83vu/yp4aJDLPDw8m4egDsZDmriwuukeFiXh2qEeTFvm8HWr1Utjp
	69K/s2r3yTN1o+Bg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7780C13806;
	Fri, 21 Feb 2025 09:19:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id hlHRGylFuGdGIwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Fri, 21 Feb 2025 09:19:37 +0000
Message-ID: <87ca2b81-a67a-468b-ae2b-30d02a3a64bc@suse.de>
Date: Fri, 21 Feb 2025 10:19:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/25] drm/dumb-buffers: Provide helper to set pitch
 and size
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20250218142542.438557-1-tzimmermann@suse.de>
 <20250218142542.438557-3-tzimmermann@suse.de>
 <dcd59a75-7945-4a2e-99f9-3abbb3e9de14@ideasonboard.com>
 <355ed315-61fa-4a9d-b72b-8d5bc7b5a16c@suse.de>
 <596b960e-71f8-4c2c-9abe-058206df1dfb@ideasonboard.com>
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
In-Reply-To: <596b960e-71f8-4c2c-9abe-058206df1dfb@ideasonboard.com>
X-Rspamd-Queue-Id: 016201F38C
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-0.998];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.de:dkim,suse.de:mid,bootlin.com:url]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_011941_433927_4116D371 
X-CRM114-Status: GOOD (  37.41  )
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

SGkKCkFtIDIwLjAyLjI1IHVtIDExOjUzIHNjaHJpZWIgVG9taSBWYWxrZWluZW46Cj4gSGksCj4K
PiBPbiAyMC8wMi8yMDI1IDEyOjA1LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPj4gSGkKPj4K
Pj4gQW0gMjAuMDIuMjUgdW0gMTA6MTggc2NocmllYiBUb21pIFZhbGtlaW5lbjoKPj4gWy4uLl0K
Pj4+PiArICogQ29sb3IgbW9kZXMgb2YgMTAsIDEyLCAxNSwgMzAgYW5kIDY0IGFyZSBvbmx5IHN1
cHBvcnRlZCBmb3IgdXNlIGJ5Cj4+Pj4gKyAqIGxlZ2FjeSB1c2VyIHNwYWNlLiBQbGVhc2UgZG9u
J3QgdXNlIHRoZW0gaW4gbmV3IGNvZGUuIE90aGVyIG1vZGVzCj4+Pj4gKyAqIGFyZSBub3Qgc3Vw
cG9ydC4KPj4+PiArICoKPj4+PiArICogRG8gbm90IGF0dGVtcHQgdG8gYWxsb2NhdGUgYW55dGhp
bmcgYnV0IGxpbmVhciBmcmFtZWJ1ZmZlciBtZW1vcnkKPj4+PiArICogd2l0aCBzaW5nbGUtcGxh
bmUgUkdCIGRhdGEuIEFsbG9jYXRpb24gb2Ygb3RoZXIgZnJhbWVidWZmZXIKPj4+PiArICogbGF5
b3V0cyByZXF1aXJlcyBkZWRpY2F0ZWQgaW9jdGxzIGluIHRoZSByZXNwZWN0aXZlIERSTSBkcml2
ZXIuCj4+Pgo+Pj4gQWNjb3JkaW5nIHRvIHRoaXMsIGV2ZXJ5IGRyaXZlciB0aGF0IHN1cHBvcnRz
LCBzYXksIE5WMTIsIHNob3VsZCAKPj4+IGltcGxlbWVudCB0aGVpciBvd24gY3VzdG9tIGlvY3Rs
IHRvIGRvIHRoZSBleGFjdCBzYW1lIHRoaW5nPyBBbmQsIG9mIAo+Pj4gY291cnNlLCBldmVyeSB1
c2Vyc3BhY2UgYXBwIHRoYXQgdXNlcywgc2F5LCBOVjEyLCBzaG91bGQgdGhlbiBhZGQgCj4+PiBj
b2RlIGZvciBhbGwgdGhlc2UgcGxhdGZvcm1zIHRvIGNhbGwgdGhlIGN1c3RvbSBpb2N0bHM/Cj4+
Cj4+IFllcywgdGhhdCdzIGV4YWN0bHkgdGhlIGN1cnJlbnQgc3RhdHVzLgo+Pgo+PiBUaGVyZSBo
YXMgYmVlbiBkaXNjdXNzaW9uIGFib3V0IGEgbmV3IGR1bWItY3JlYXRlIGlvY3RsIHRoYXQgdGFr
ZXMgYSAKPj4gRFJNIGZvcm1hdCBhcyBwYXJhbWV0ZXIuIEknbSBhbGwgZm9yIGl0LCBidXQgaXQn
cyBvdXQgb2YgdGhlIHNjb3BlIAo+PiBmb3IgdGhpcyBzZXJpZXMuCj4+Cj4+Pgo+Pj4gQXMgbGli
ZHJtJ3MgbW9kZXRlc3QgY3VycmVudGx5IHN1cHBvcnRzIFlVViBmb3JtYXRzIHdpdGggZHVtYiAK
Pj4+IGJ1ZmZlcnMsIHNob3VsZCB3ZSByZW1vdmUgdGhhdCBjb2RlLCBhcyBpdCdzIG5vdCBjb3Jy
ZWN0IGFuZCBJJ20gCj4+PiBzdXJlIHBlb3BsZSB1c2UgbGliZHJtIGNvZGUgYXMgYSByZWZlcmVu
Y2U/Cj4+Cj4+IE9mIGNvdXJzZSBub3QuCj4+Cj4+Pgo+Pj4gV2VsbCwgSSdtIG5vdCBzZXJpb3Vz
IGFib3ZlLCBidXQgSSB0aGluayBhbGwgbXkgcG9pbnRzIGZyb20gdGhlIAo+Pj4gZWFybGllciB2
ZXJzaW9uIGFyZSBzdGlsbCB2YWxpZC4gSSBkb24ndCBsaWtlIHRoaXMuIEl0IGNoYW5nZXMgdGhl
IAo+Pj4gcGFyYW1ldGVycyBvZiB0aGUgaW9jdGwgKGJwcCB1c2VkIHRvIGJlIGJpdHMtcGVyLXBp
eGVsLCBub3QgaXQncyAKPj4+ICJjb2xvciBtb2RlIiksIGFuZCB0aGUgYmVoYXZpb3Igb2YgdGhl
IGlvY3RsLCBiZWhhdmlvciB0aGF0IHdlJ3ZlIAo+Pj4gaGFkIGZvciBhIHZlcnkgbG9uZyB0aW1l
LCBhbmQgd2UgaGF2ZSBubyBpZGVhIGhvdyBtYW55IHVzZXJzIHRoZXJlIAo+Pj4gYXJlIHRoYXQg
d2lsbCBicmVhayAoY291bGQgYmUgbm9uZSwgb2YgY291cnNlKS4gQW5kIHRoZSAKPj4+IGRvY3Vt
ZW50YXRpb24gY2hhbmdlcyBtYWtlIHRoZSBjdXJyZW50IGJlaGF2aW9yIGFuZCB1c2VzIHdyb25n
IG9yIAo+Pj4gbGVnYWN5Lgo+Pgo+PiBCZWZvcmUgSSBnbyBpbnRvIGRldGFpbHMgYWJvdXQgdGhp
cyBzdGF0ZW1lbnQsIHdoYXQgdXNlIGNhc2UgZXhhY3RseSAKPj4gYXJlIHlvdSByZWZlcnJpbmcg
dG8gd2hlbiB5b3Ugc2F5IHRoYXQgYmVoYXZpb3IgY2hhbmdlcz8KPgo+IEZvciBldmVyeSBkdW1i
X2J1ZmZlciBhbGxvY2F0aW9uIHdpdGggYnBwIHRoYXQgaXMgbm90IGRpdmlzaWJsZSBieSA4LCAK
PiB0aGUgcmVzdWx0IGlzIGRpZmZlcmVudCwgaS5lLiBpbnN0ZWFkIG9mIERJVl9ST1VORF9VUCh3
aWR0aCAqIGJwcCwgOCksIAo+IHdlIG5vdyBoYXZlIHdpZHRoICogRElWX1JPVU5EX1VQKGJwcCwg
OCkuIFRoaXMsIG9mIGNvdXJzZSwgZGVwZW5kcyBvbiAKPiB0aGUgZHJpdmVyIGltcGxlbWVudGF0
aW9uLiBTb21lIGFscmVhZHkgZG8gdGhlIGxhdHRlci4KClRoZSBjdXJyZW50IGR1bWItYnVmZmVy
IGNvZGUgZG9lcyBhIHN0cmlkZSBjb21wdXRhdGlvbiBhdCBbMV0sIHdoaWNoIGlzIApjb3JyZWN0
IGZvciBhbGwgY2FzZXM7IGFsdGhvdWdoIG92ZXItYWxsb2NhdGVzIHNvbWV0aW1lcy4gSXQncyB0
aGUgb25lIAp5b3UgZGVzY3JpYmUgYXMgIndpZHRoICogRElWX1JPVU5EX1VQKGJwcCwgOCkiLiBJ
dCdzIGluIHRoZSBpb2N0bCBlbnRyeSAKcG9pbnQsIHNvIGl0J3Mgc29tZXdoYXQgYXV0aG9yaXRh
dGl2ZSBmb3IgYWxsIGRyaXZlcidzIGltcGxlbWVudGF0aW9ucy4gCkl0J3MgYWxzbyB1c2VkIGJ5
IHNldmVyYWwgZHJpdmVycy4KClRoZSBvdGhlciB2YXJpYW50LCAiRElWX1JPVU5EX1VQKHdpZHRo
ICogYnBwLCA4KSIsIGlzIHVzZWQgYnkgZ2VtLWRtYSwgCmdlbS1zaG1lbSBhbmQgb3RoZXJzLiBJ
dCBjYW4gZ2l2ZSBpbmNvcnJlY3QgcmVzdWx0cyBhbmQgcG9zc2libHkgT09Ccy4gClRvIGdpdmUg
YSBzaW1wbGUgZXhhbXBsZSwgbGV0J3MgYWxsb2NhdGUgMTUtYml0IFhSR0IxNTU1LiBCcHAgaXMg
MTUuIApXaXRoIGEgd2lkdGggb2YgMTAyNCwgdGhhdCB3b3VsZCByZXN1bHQgaW4gMTkyMCBieXRl
cyBwZXIgc2NhbmxpbmUuIEJ1dCAKYmVjYXVzZSBYUkdCMTU1NSBoYXMgYSBmaWxsZXIgYml0LCBz
byB0aGUgcGl4ZWwgaXMgYWN0dWFsbHkgMTYgYml0IGFuZCBhIApzY2FubGluZSBuZWVkcyB0byBi
ZSAyMDQ4IGJ5dGVzLiBUaGUgbmV3IGNvZGUgZml4ZXMgdGhhdC4gVGhpcyBpcyBub3QgCmp1c3Qg
YSBoeXBvdGhldGljYWwgc2NlbmFyaW86IHdlIGRvIGhhdmUgZHJpdmVycyB0aGF0IHN1cHBvcnQg
WFJHQjE1NTUgCmFuZCBzb21lIG9mIHRoZW0gYWxzbyBleHBvcnQgYSBwcmVmZXJyZWRfZGVwdGgg
b2YgMTUgdG8gdXNlcnNwYWNlLiBbMl3CoCAKSW4gdGhlIG5lYXJieSBjb21tZW50LCB5b3UnbGwg
c2VlIHRoYXQgdGhpcyB2YWx1ZSBpcyBtZWFudCBmb3IgZHVtYiBidWZmZXJzLgoKUm91bmRpbmcg
dXAgdGhlIGRlcHRoIHZhbHVlIGluIHVzZXIgc3BhY2UgaXMgcG9zc2libGUgZm9yIFJHQiwgYnV0
IG5vdCAKZm9yIFlVVi4gSGVyZSBkaWZmZXJlbnQgcGl4ZWwgcGxhbmVzIGhhdmUgYSBkaWZmZXJl
bnQgbnVtYmVyIG9mIGJpdHMuIApTb21ldGltZXMgcGl4ZWxzIGFyZSBzaGFyaW5nIGJpdHMuIFRo
ZSB2YWx1ZSBvZiBiaXRzLXBlci1waXhlbCBiZWNvbWVzIAptZWFuaW5nbGVzcy4gVGhhdCdzIHdo
eSBpdCdzIGFsc28gZGVwcmVjYXRlZCBpbiBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvLiAKVGhlIHN0
cnVjdCBpbnN0ZWFkIHVzZXMgYSBtb3JlIGNvbXBsaWNhdGVkIHBlci1wbGFuZSBjYWxjdWxhdGlv
biB0byAKY29tcHV0ZSB0aGUgbnVtYmVyIG9mIGJpdHMgcGVyIHBsYW5lLiBbM10gVGhlIHVzZXIt
c3BhY2UgY29kZSBjdXJyZW50bHkgCmRvaW5nIFlVViBvbiBkdW1iIGJ1ZmZlcnMgc2ltcGx5IGdv
dCBsdWNreS4KClsxXSAKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTMuMy9z
b3VyY2UvZHJpdmVycy9ncHUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuYyNMNzcKWzJdIApodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMy4zL3NvdXJjZS9pbmNsdWRlL2RybS9kcm1f
bW9kZV9jb25maWcuaCNMODg1ClszXSAKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
djYuMTMuMy9zb3VyY2UvaW5jbHVkZS9kcm0vZHJtX2ZvdXJjYy5oI0w4MwoKPgo+IFRoaXMgY2hh
bmdlIGFsc28gZmlyc3QgY2FsbHMgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKSwg
d2hpY2ggCj4gY291bGQgY2hhbmdlIHRoZSBiZWhhdmlvciBldmVuIG1vcmUsIGJ1dCBhZmFpY3Mg
YXQgdGhlIG1vbWVudCBkb2VzIG5vdC4gCgpCZWNhdXNlIGN1cnJlbnRseSBlYWNoIGRyaXZlciBk
b2VzIGl0cyBvd24gdGhpbmcsIGl0IGNhbiBiZSBoYXJkIHRvIAp3cml0ZSB1c2VyIHNwYWNlIHRo
YXQgcmVsaWFibHkgYWxsb2NhdGVzIG9uIGFsbCBkcml2ZXJzLiBUaGF0J3Mgd2h5IGl0J3MgCmlt
cG9ydGFudCB0aGF0IHBhcmFtZXRlcnMgYXJlIG5vdCBqdXN0IHJhdyBudW1iZXJzLCBidXQgaGF2
ZSAKd2VsbC1kZWZpbmVkIHNlbWFudGljcy4gVGhlIHJhdyBicHAgaXMgbWVhbmluZ2xlc3M7IGl0
J3MgYWxzbyBpbXBvcnRhbnQgCnRvIGtub3cgd2hpY2ggZm9ybWF0cyBhcmUgYXNzb2NpYXRlZCB3
aXRoIGVhY2ggdmFsdWUuIE90aGVyd2lzZSwgeW91IAptaWdodCBnZXQgYSBkdW1iIGJ1ZmZlciB3
aXRoIGEgYnBwIG9mIDE1LCBidXQgaXQgd2lsbCBiZSBkaXNwbGF5ZWQgCmluY29ycmVjdGx5LiBU
aGlzIHBhdGNoIHNlcmllcyBmaW5hbGx5IGltcGxlbWVudHMgdGhpcyBhbmQgY2xlYXJseSAKZG9j
dW1lbnRzIHRoZSBhc3N1bXB0aW9ucyBiZWhpbmQgdGhlIGludGVyZmFjZXMuIFRoZSBhc3N1bXB0
aW9ucyAKdGhlbXNlbHZlcyBoYXZlIGFsd2F5cyBleGlzdGVkLgoKVGhlIGNvbG9yIG1vZGVzIGlu
wqBkcm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCkgYXJlIHNldCBpbiBzdG9uZSBhbmQgCndp
bGwgbm90IGNoYW5nZSBpbmNvbXBhdGlibHkuIEl0J3MgYWxyZWFkeSBhIHVzZXIgaW50ZXJmYWNl
LiBJJ3ZlIHRha2VuIApjYXJlIHRoYXQgdGhlIHJlc3VsdHMgZG8gbm90IGNoYW5nZSBpbmNvbXBh
dGlibHkgY29tcGFyZWQgdG8gd2hhdCB0aGUgCmR1bWItYnVmZmVyIGlvY3RsIGN1cnJlbnRseSBh
c3N1bWVzLiAoQzEtQzQgYXJlIHNwZWNpYWwsIHNlZSBiZWxvdy4pCgo+IEFsdGhvdWdoLCBtYXli
ZSBzb21lIHBsYXRmb3JtIGRvZXMgd2lkdGggKiBESVZfUk9VTkRfVVAoYnBwLCA4KSBldmVuIAo+
IGZvciBicHAgPCA4LCBhbmQgdGhlbiB0aGlzIHNlcmllcyBjaGFuZ2VzIGl0IGZvciAxLCAyIGFu
ZCA0IGJwcHMgKGJ1dCAKPiBub3QgZm9yIDMsIDUsIDYsIDcsIGlmIEknbSBub3QgbWlzdGFrZW4p
LgoKVHJ1ZS4gMSwgMiBhbmQgNCB3b3VsZCBjdXJyZW50bHkgb3Zlci1hbGxvY2F0ZSBzaWduaWZp
Y2FudGx5IG9uIHNvbWUgCmRyaXZlcnMgYW5kIHRoZSBzZXJpZXMgd2lsbCByZWR1Y2UgdGhpcyB0
byBhY3R1YWwgcmVxdWlyZW1lbnRzLiBZZXQgb3VyIAptb3N0IGNvbW1vbiBtZW1vcnkgbWFuYWdl
cnMsIGdlbS1kbWEgYW5kIGdlbS1zaG1lbSwgY29tcHV0ZSB0aGUgc2l6ZXMgCmNvcnJlY3RseS4K
CkJ1dCB0aGVyZSBhcmUgY3VycmVudGx5IG5vIGRyaXZlcnMgdGhhdCBzdXBwb3J0IEM0LCBDMiBv
ciBDMSBmb3JtYXRzOyAKaGVuY2UgdGhlcmUncyBsaWtlbHkgbm8gdXNlciBzcGFjZSBlaXRoZXIu
IEkga25vdyB0aGF0IEdlZXJ0IGlzIAppbnRlcmVzdGVkIGluIG1ha2luZyBhIGRyaXZlciB0aGF0
IHVzZXMgdGhlc2UgZm9ybWF0cyBvbiB2ZXJ5IGxvdy1lbmQgCmhhcmR3YXJlIChzb21ldGhpbmcg
QXRhcmkgb3IgQW1pZ2EgSUlSQykuIE92ZXItYWxsb2NhdGluZyBvbiBzdWNoIApoYXJkd2FyZSBp
cyBsaWtlbHkgbm90IGFuIG9wdGlvbi4KClRoZSBvdGhlciB2YWx1ZXMgKDMsIDUsIDYsIDcpIGhh
dmUgbm8gbWVhbmluZyBJIGtub3cgb2YuIDYgY291bGQgYmUgClhSR0IyMjIyLCBidXQgSSBub3Qg
YXdhcmUgb2YgYW55dGhpbmcgdXNpbmcgdGhhdC4gV2UgZG9uJ3QgZXZlbiBoYXZlIGEgCmZvcm1h
dCBjb25zdGFudCBmb3IgdGhpcy4KCj4KPiBIb3dldmVyLCBhcyB0aGUgYnBwIGlzIGdldHRpbmcg
cm91bmRlZCB1cCwgdGhpcyBwcm9iYWJseSB3b24ndCBicmVhayAKPiBhbnkgdXNlci4gQnV0IGl0
IF9pc18gYSBjaGFuZ2UgaW4gdGhlIGJlaGF2aW9yIG9mIGEgdWFwaSwgYW5kIGV2ZXJ5IAo+IHRp
bWUgd2UgY2hhbmdlIGEgdWFwaSB0aGF0J3MgYmVlbiBvdXQgdGhlcmUgZm9yIGEgbG9uZyB0aW1l
LCBJJ20gCj4gZ2V0dGluZyBzbGlnaHRseSB1bmNvbWZvcnRhYmxlLgoKQXMgSSB0cmllZCB0byBl
eHBsYWluLCB3ZSBjdXJyZW50bHkgaGF2ZSBib3RoIHZlcnNpb25zIGluIGRyaXZlcnM6IApyb3Vu
ZGluZyB1cCBicHAgYW5kIHJvdW5kaW5nIHVwIChicHAqd2lkdGgpLiBVc2VyLXNwYWNlIGNvZGUg
YWxyZWFkeSBoYXMgCnRvIGRlYWwgd2l0aCBib3RoIGNhc2VzLgoKQmVzdCByZWdhcmRzClRob21h
cwoKPgo+IFNvLCBhcyBhIHN1bW1hcnksIEkgaGF2ZSBhIGZlZWxpbmcgdGhhdCBub3RoaW5nIHdp
bGwgYnJlYWssIGJ1dCBJIAo+IGNhbid0IHNheSBmb3Igc3VyZS4gQW5kIGFzIEknbSBoYXZpbmcg
dHJvdWJsZSBzZWVpbmcgdGhlIGJlbmVmaXQgb2YgCj4gdGhpcyBjaGFuZ2UgZm9yIHRoZSB1c2Vy
LCBJIGdldCBldmVuIG1vcmUgdW5jb21mb3J0YWJsZS4KPgo+IMKgVG9taQo+CgotLSAKLS0KVGhv
bWFzIFppbW1lcm1hbm4KR3JhcGhpY3MgRHJpdmVyIERldmVsb3BlcgpTVVNFIFNvZnR3YXJlIFNv
bHV0aW9ucyBHZXJtYW55IEdtYkgKRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcs
IEdlcm1hbnkKR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJv
dWRpZW4gTW9lcm1hbgpIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

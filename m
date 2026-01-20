Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55761D2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKFQB/kBIbVPNKbgAGPhAy9qVq6qh/Cx8rhs7RqFZLQ=; b=B32SPToCo9vpcS
	ICSX9M1fJGg01/KDeSKsZHZv2MJRQtTxA6UqgI0wW0gFPeflTeyRMvJfYFx2wzcFP2EiytuRZgs9P
	AfbjB3eAxDw9HlxbwTMalYOfUqGdOeSZb7VSRsZ4yVRtMdl2pFzR7mybakmHuDLwM/4RvrX9vMPm9
	lvGhUPF8T9x+Ddpi9dcFQvBdy0gpSlJuWG9aVKrQshgenK1M2arQQiMlnPHLeQMvg3OsaHW8+gqN7
	moGDoi0xJbdYsUC30PGopFogiXAMCO7zeTKldTvmaMxuD6k+Ey2w21vrzzvubI1mcjgmiYb1cWE73
	oSY9rm/RZg23qnIYXUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBJJ-00000003sT8-0ooW;
	Tue, 20 Jan 2026 12:58:17 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBJG-00000003sSN-22at
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 12:58:15 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 83C475BCC9;
	Tue, 20 Jan 2026 12:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1768913892; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+qJs6bVpqnwm8lHKbWUBls2B4XnqyQPllX7JX0zzKkk=;
	b=CQ3rS7A0N9VaHm5fdzHOEPgTEq7VaAO/H5qGTsISnDsLxcK9WCHwdIcBlIxNTPW/qJyKW+
	jg0xeS7Lu3+mA38JqGEx88yulj8wff6TiSFXG/9P9L4qcyzzhgw50Nex5N0S516jju2Vp1
	gUtskmpEMlHiFCRQa2kT+erO94Ndu5A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1768913892;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+qJs6bVpqnwm8lHKbWUBls2B4XnqyQPllX7JX0zzKkk=;
	b=EMcGt/wXdx8NtqF8WvNqGe/hrmtQ5aN2Mr8g0+KpIK0tAMHhohPx2GbMmEW51Pb0SiU+zT
	71BLGROPXJxC8mAQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=CQ3rS7A0;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="EMcGt/wX"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1768913892; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+qJs6bVpqnwm8lHKbWUBls2B4XnqyQPllX7JX0zzKkk=;
	b=CQ3rS7A0N9VaHm5fdzHOEPgTEq7VaAO/H5qGTsISnDsLxcK9WCHwdIcBlIxNTPW/qJyKW+
	jg0xeS7Lu3+mA38JqGEx88yulj8wff6TiSFXG/9P9L4qcyzzhgw50Nex5N0S516jju2Vp1
	gUtskmpEMlHiFCRQa2kT+erO94Ndu5A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1768913892;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+qJs6bVpqnwm8lHKbWUBls2B4XnqyQPllX7JX0zzKkk=;
	b=EMcGt/wXdx8NtqF8WvNqGe/hrmtQ5aN2Mr8g0+KpIK0tAMHhohPx2GbMmEW51Pb0SiU+zT
	71BLGROPXJxC8mAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 25EAC3EA63;
	Tue, 20 Jan 2026 12:58:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id fBgMCOR7b2nwBAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 20 Jan 2026 12:58:12 +0000
Message-ID: <686d24ee-c37d-4983-9984-2bbb4543395f@suse.de>
Date: Tue, 20 Jan 2026 13:58:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] drm/rockchip: vop2: Fix Esmart test condition
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>
References: <20251206-vop2-atomic-fixups-v2-0-7fb45bbfbebd@collabora.com>
 <20251206-vop2-atomic-fixups-v2-3-7fb45bbfbebd@collabora.com>
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
In-Reply-To: <20251206-vop2-atomic-fixups-v2-3-7fb45bbfbebd@collabora.com>
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,collabora.com:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Queue-Id: 83C475BCC9
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_045814_692959_F7EEF2DA 
X-CRM114-Status: GOOD (  16.26  )
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

SGkKCkFtIDA2LjEyLjI1IHVtIDIxOjQ1IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IEZy
b206IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgo+Cj4gSWYgd2Ugd2FudCB0
byBmaW5kIG91dCBpZiBhIHdpbmRvdyBpcyBFc21hcnQgb3Igbm90LCB0ZXN0IGZvciBub3QgYmVp
bmcKPiBhIGNsdXN0ZXIgd2luZG93LCByYXRoZXIgdGhhbiBBRkJEQyBwcmVzZW5jZS4KPgo+IE5v
IGZ1bmN0aW9uYWwgZWZmZWN0IGFzIG9ubHkgY2x1c3RlciB3aW5kb3dzIHN1cHBvcnQgQUZCQyBk
ZWNvZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3Jh
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRh
cm9saUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMgfCAxMCArKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiBpbmRleCA4MWIzZWJhMDcwOTUuLjlkNzE1ZDc2NTlh
ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cDIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gQEAgLTEyMzAsMTIgKzEyMzAsMTAgQEAgc3RhdGljIHZvaWQgdm9wMl9wbGFuZV9hdG9taWNf
dXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ICAgCSAqIFRoaXMgaXMgd29ya2Fyb3Vu
ZCBzb2x1dGlvbiBmb3IgSUMgZGVzaWduOgo+ICAgCSAqIGVzbWFydCBjYW4ndCBzdXBwb3J0IHNj
YWxlIGRvd24gd2hlbiBzcmNfdyAlIDE2ID09IDEuCj4gICAJICovCj4gLQlpZiAoISh3aW4tPmRh
dGEtPmZlYXR1cmUgJiBXSU5fRkVBVFVSRV9BRkJEQykpIHsKPiAtCQlpZiAoc3JjX3cgPiBkc3Bf
dyAmJiAoc3JjX3cgJiAweGYpID09IDEpIHsKPiAtCQkJZHJtX2RiZ19rbXModm9wMi0+ZHJtLCAi
dnAlZCAlcyBhY3Rfd1slZF0gTU9ERSAxNiA9PSAxXG4iLAo+IC0JCQkJICAgIHZwLT5pZCwgd2lu
LT5kYXRhLT5uYW1lLCBzcmNfdyk7Cj4gLQkJCXNyY193IC09IDE7Cj4gLQkJfQo+ICsJaWYgKCF2
b3AyX2NsdXN0ZXJfd2luZG93KHdpbikgJiYgc3JjX3cgPiBkc3BfdyAmJiAoc3JjX3cgJiAxKSkg
ewo+ICsJCWRybV9kYmdfa21zKHZvcDItPmRybSwgInZwJWQgJXMgYWN0X3dbJWRdIE1PREUgMTYg
PT0gMVxuIiwKPiArCQkJICAgIHZwLT5pZCwgd2luLT5kYXRhLT5uYW1lLCBzcmNfdyk7CgpEcml2
ZXJzIHNob3VsZCB1c3VhbGx5IGJlIHVzaW5nIGRybV9kYmcoKSwgZHJtX2VycigpLCBkcm1fd2Fy
bigpIGV0Yy4gClByaW50IGZ1bmN0aW9ucyB3aXRoIF9rbXMgcG9zdGZpeCBhcmUgZm9yIHRoZSBE
Uk0gaGVscGVycy4gSGVyZSBhbmQgaW4gCmFsbCBvdGhlciBwYXRjaGVzLgoKQmVzdCByZWdhcmRz
ClRob21hcwoKCj4gKwkJc3JjX3cgLT0gMTsKPiAgIAl9Cj4gICAKPiAgIAlpZiAoYWZiY19lbiAm
JiBzcmNfdyAlIDQpIHsKPgoKLS0gCi0tClRob21hcyBaaW1tZXJtYW5uCkdyYXBoaWNzIERyaXZl
ciBEZXZlbG9wZXIKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICkZyYW5rZW5z
dHIuIDE0NiwgOTA0NjEgTsO8cm5iZXJnLCBHZXJtYW55LCB3d3cuc3VzZS5jb20KR0Y6IEpvY2hl
biBKYXNlciwgQW5kcmV3IE1jRG9uYWxkLCBXZXJuZXIgS25vYmxpY2gsIChIUkIgMzY4MDksIEFH
IE7DvHJuYmVyZykKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

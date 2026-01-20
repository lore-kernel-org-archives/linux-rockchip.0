Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4999D2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6ngrCSno61RggPcu7AXUU6x2t3Y/cUFJ6EQfYmYy9g=; b=1xgzFh3Ygk8kY5
	LZav7XLt4qw0YriE2KGjC+7XlEJQIb0pBvh8CPvGcVkxmKreZfDeFjFAQehgwZcUsiUwHN5FP18z2
	ndrS7robQeiwTKKB+nwnMsjJbgDDb27OXcvZfbwGOQIlv3LIR4A0dQnWp11gTLWm+ZkeTiGWwSdu5
	MDzu9qlUo7HASyhXIcEBKR6Y33h24Ui0x1KtVjr4gB+gSNEb0D4qpoTSqTbQ8EQG+7dtVKTVnLIIW
	91bpeK5JCM18YxbeyTnYGuDzQYrHtDqJhE0jVX8IpowurJCU825kDM5g5HGQw/287s+vXAtebeNfV
	aaBQ/TuQXktDr+z29Qbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBAd-00000003rf0-2B9p;
	Tue, 20 Jan 2026 12:49:20 +0000
Received: from smtp-out1.suse.de ([2a07:de40:b251:101:10:150:64:1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBAa-00000003rdu-1NPv
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 12:49:17 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 1715E3381A;
	Tue, 20 Jan 2026 12:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1768913353; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=1QWls4n+KvxnQsgf/c21zu2dhCmuGkFLR7NMwGeeDxs=;
	b=mRQvOPQErtYCTIsIf4LLyF8AZ5R6dqNw0FkFApU800xk3lbfPk482vK5EZkMVh4zZnAe5e
	chneELz9hr/mZixBVBbQpPqGhdZPRNUezj8grgKoeaqBe8MWVSjWfZK4Amsoxx5JpmVfHw
	W1m9nb2t+FZhZGyEtKx+KYde5rpSF1U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1768913353;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=1QWls4n+KvxnQsgf/c21zu2dhCmuGkFLR7NMwGeeDxs=;
	b=xJvh4m0HiLDh8dMeKlIhPoBUN4BzroOZjXdYSWP2afZy6zp7TxJKi6STVmG/vfiroX+UzX
	gpFNQflOamfF7ECg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1768913353; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=1QWls4n+KvxnQsgf/c21zu2dhCmuGkFLR7NMwGeeDxs=;
	b=mRQvOPQErtYCTIsIf4LLyF8AZ5R6dqNw0FkFApU800xk3lbfPk482vK5EZkMVh4zZnAe5e
	chneELz9hr/mZixBVBbQpPqGhdZPRNUezj8grgKoeaqBe8MWVSjWfZK4Amsoxx5JpmVfHw
	W1m9nb2t+FZhZGyEtKx+KYde5rpSF1U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1768913353;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=1QWls4n+KvxnQsgf/c21zu2dhCmuGkFLR7NMwGeeDxs=;
	b=xJvh4m0HiLDh8dMeKlIhPoBUN4BzroOZjXdYSWP2afZy6zp7TxJKi6STVmG/vfiroX+UzX
	gpFNQflOamfF7ECg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A38BC3EA63;
	Tue, 20 Jan 2026 12:49:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 7a54Jsh5b2n7egAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 20 Jan 2026 12:49:12 +0000
Message-ID: <c11ef222-c661-4937-8f35-25f450ab71bc@suse.de>
Date: Tue, 20 Jan 2026 13:49:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] drm/rockchip: vop2: Switch impossible format
 conditional to WARN_ON
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
 <20251206-vop2-atomic-fixups-v2-1-7fb45bbfbebd@collabora.com>
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
In-Reply-To: <20251206-vop2-atomic-fixups-v2-1-7fb45bbfbebd@collabora.com>
X-Spamd-Result: default: False [-4.30 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,suse.de:mid,suse.com:url]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_044916_655623_130711A1 
X-CRM114-Status: GOOD (  17.71  )
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
b206IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgo+Cj4gV2Ugc2hvdWxkIG5l
dmVyIGJlIGFibGUgdG8gY3JlYXRlIGEgZnJhbWVidWZmZXIgd2l0aCBhbiB1bnN1cHBvcnRlZAo+
IGZvcm1hdCwgc28gdGhyb3cgYSB3YXJuaW5nIGlmIHRoaXMgZXZlciBoYXBwZW5zLCBpbnN0ZWFk
IG9mIGF0dGVtcHRpbmcKPiB0byBzdGFnZ2VyIG9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBG
cmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgMyArKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gaW5kZXggNDk4ZGYwY2U0
NjgwLi4yMGI0OTIwOWRkY2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcDIuYwo+IEBAIC0xMDMwLDcgKzEwMzAsOCBAQCBzdGF0aWMgaW50IHZvcDJf
cGxhbmVfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ICAgCQlyZXR1cm4g
MDsKPiAgIAo+ICAgCWZvcm1hdCA9IHZvcDJfY29udmVydF9mb3JtYXQoZmItPmZvcm1hdC0+Zm9y
bWF0KTsKPiAtCWlmIChmb3JtYXQgPCAwKQo+ICsJLyogV2Ugc2hvdWxkbid0IGJlIGFibGUgdG8g
Y3JlYXRlIGEgZmIgZm9yIGFuIHVuc3VwcG9ydGVkIGZvcm1hdCAqLwo+ICsJaWYgKFdBUk5fT04o
Zm9ybWF0IDwgMCkpCgpQbGVhc2UgdXNlIGRybV9XQVJOX09OKCkgaGVyZS4KCkJlc3QgcmVnYXJk
cwpUaG9tYXMKCj4gICAJCXJldHVybiBmb3JtYXQ7Cj4gICAKPiAgIAkvKiBDby1vcmRpbmF0ZXMg
aGF2ZSBub3cgYmVlbiBjbGlwcGVkICovCj4KCi0tIAotLQpUaG9tYXMgWmltbWVybWFubgpHcmFw
aGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21i
SApGcmFua2Vuc3RyLiAxNDYsIDkwNDYxIE7DvHJuYmVyZywgR2VybWFueSwgd3d3LnN1c2UuY29t
CkdGOiBKb2NoZW4gSmFzZXIsIEFuZHJldyBNY0RvbmFsZCwgV2VybmVyIEtub2JsaWNoLCAoSFJC
IDM2ODA5LCBBRyBOw7xybmJlcmcpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

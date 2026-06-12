Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC53CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 14:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpmcHV9Jgy4kPKx+WKXfKax3DKynCoXbwc+65081ILU=; b=iRy4lngQsGOJxO
	d1QxZmdzCdkdJa4xesSamgdYcVYTOr7J43QgQklRZk1aNW2lC6+50KaFTuJLkY/MS5sI3CRBf94Cv
	AMJh8g0K/65afN8U8nMXgbYJUO1rhy4YmayDLNjmSQw6SVJ4YVPTC+Wco2u1hkzuKlosENMyvQ6ZQ
	30TsAm+zEWTFFedUQI7YjOseGgLFj4E6L3+th6464wH/Bc78k4UR+wdj0gZ8c/QOfRjrP2i2qlgvk
	CltRRYgqpPhVi9tTcra0djWrAAq8pvdfLGys32mazTsIuGs/9lBi1u5tQXY2YH2g4uA/S32aBPvYb
	sMkH/pXufP7A2SQkoCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2cK-0000000B2J2-0obr;
	Fri, 12 Jun 2026 14:12:16 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2cH-0000000B2Hr-0Dyt
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 14:12:14 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 08EC76E137;
	Fri, 12 Jun 2026 13:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1781271983; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=c/FmAs6vbDcwp7q5Sv1XH6dsatQVIdKLtjBr9BuZXg0=;
	b=mf9mLtBCR7JOIRxwuBb+hbK4//s6FoScuSYdg1aShETwjHr1zwyuKAd+nCg/8RSvxAuq78
	urUv8o0A+mfQmE5wl1nluyqaCsW0d7t1TNNYpofdGHmFugQzdDDDTwutFJ8skTgI3TL20C
	rgTwBDOBvr4mA8d1NE5eunEUj8PYZI4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1781271983;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=c/FmAs6vbDcwp7q5Sv1XH6dsatQVIdKLtjBr9BuZXg0=;
	b=Q/MmAbnQN88XvRYp5pnye3I7l8v98aYnkhuYBf9RheyH5aImYKndL933PFHbA1Oaoyl6r2
	V304vENaYJW7klDA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1781271983; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=c/FmAs6vbDcwp7q5Sv1XH6dsatQVIdKLtjBr9BuZXg0=;
	b=mf9mLtBCR7JOIRxwuBb+hbK4//s6FoScuSYdg1aShETwjHr1zwyuKAd+nCg/8RSvxAuq78
	urUv8o0A+mfQmE5wl1nluyqaCsW0d7t1TNNYpofdGHmFugQzdDDDTwutFJ8skTgI3TL20C
	rgTwBDOBvr4mA8d1NE5eunEUj8PYZI4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1781271983;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=c/FmAs6vbDcwp7q5Sv1XH6dsatQVIdKLtjBr9BuZXg0=;
	b=Q/MmAbnQN88XvRYp5pnye3I7l8v98aYnkhuYBf9RheyH5aImYKndL933PFHbA1Oaoyl6r2
	V304vENaYJW7klDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 63E66779A7;
	Fri, 12 Jun 2026 13:46:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id G+T6Fq4NLGqzeAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Fri, 12 Jun 2026 13:46:22 +0000
Message-ID: <c7866bc4-bf37-4f8c-ae64-2d1d3a23f1ef@suse.de>
Date: Fri, 12 Jun 2026 15:46:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/30] drm/fb-helper: Remove unused local variable in
 hotplug_event()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
 <20260602-dw-hdmi-qp-scramb-v7-1-445eb54ee1ed@collabora.com>
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
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-1-445eb54ee1ed@collabora.com>
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,rock-chips.com,sntech.de,raspberrypi.com,igalia.com];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid,suse.com:url,imap1.dmz-prg2.suse.org:helo]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_071213_405189_F9A6C3A7 
X-CRM114-Status: GOOD (  16.81  )
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

CgpBbSAwMi4wNi4yNiB1bSAwMDo0NCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBSZW1v
dmUgdGhlICdlcnInIGxvY2FsIHZhcmlhYmxlIGluIGRybV9mYl9oZWxwZXJfaG90cGx1Z19ldmVu
dCgpIHdoaWNoCj4gb25seSBzdG9yZXMgYSByZXR1cm4gdmFsdWUgdGhhdCBpcyBuZXZlciB1c2Vk
IGJleW9uZCB0aGUgaW1tZWRpYXRlCj4gcmV0dXJuIHN0YXRlbWVudC4gIFRoaXMgc2ltcGxpZmll
cyB0aGUgY29kZSB3aXRob3V0IGJlaGF2aW9yIGNoYW5nZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
cmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKUmV2
aWV3ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgoKQnV0IHdo
eSBpcyB0aGlzIHBhdGNoIGhpZGRlbiBpbiB0aGlzIHNlcmllcz8gSXQgaGFzIG5vdGhpbmcgdG8g
ZG8gd2l0aCAKSERNSSBzdXBwb3J0LgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJf
aGVscGVyLmMgfCAxMSArKystLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2ZiX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYwo+IGluZGV4IDdi
MTFhNTgyZjhlYy4uMzMxNmJiMDBhNjYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZmJfaGVscGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4g
QEAgLTE3NDQsMjEgKzE3NDQsMTcgQEAgRVhQT1JUX1NZTUJPTChkcm1fZmJfaGVscGVyX2luaXRp
YWxfY29uZmlnKTsKPiAgICAqLwo+ICAgaW50IGRybV9mYl9oZWxwZXJfaG90cGx1Z19ldmVudChz
dHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyKQo+ICAgewo+IC0JaW50IGVyciA9IDA7Cj4g
LQo+ICAgCWlmICghZHJtX2ZiZGV2X2VtdWxhdGlvbiB8fCAhZmJfaGVscGVyKQo+ICAgCQlyZXR1
cm4gMDsKPiAgIAo+ICAgCW11dGV4X2xvY2soJmZiX2hlbHBlci0+bG9jayk7Cj4gLQlpZiAoZmJf
aGVscGVyLT5kZWZlcnJlZF9zZXR1cCkgewo+IC0JCWVyciA9IF9fZHJtX2ZiX2hlbHBlcl9pbml0
aWFsX2NvbmZpZ19hbmRfdW5sb2NrKGZiX2hlbHBlcik7Cj4gLQkJcmV0dXJuIGVycjsKPiAtCX0K
PiArCWlmIChmYl9oZWxwZXItPmRlZmVycmVkX3NldHVwKQo+ICsJCXJldHVybiBfX2RybV9mYl9o
ZWxwZXJfaW5pdGlhbF9jb25maWdfYW5kX3VubG9jayhmYl9oZWxwZXIpOwo+ICAgCj4gICAJaWYg
KCFmYl9oZWxwZXItPmZiIHx8ICFkcm1fbWFzdGVyX2ludGVybmFsX2FjcXVpcmUoZmJfaGVscGVy
LT5kZXYpKSB7Cj4gICAJCWZiX2hlbHBlci0+ZGVsYXllZF9ob3RwbHVnID0gdHJ1ZTsKPiAgIAkJ
bXV0ZXhfdW5sb2NrKCZmYl9oZWxwZXItPmxvY2spOwo+IC0JCXJldHVybiBlcnI7Cj4gKwkJcmV0
dXJuIDA7Cj4gICAJfQo+ICAgCj4gICAJZHJtX21hc3Rlcl9pbnRlcm5hbF9yZWxlYXNlKGZiX2hl
bHBlci0+ZGV2KTsKPiBAQCAtMTgwMiw0ICsxNzk4LDMgQEAgYm9vbCBkcm1fZmJfaGVscGVyX2dl
bV9pc19mYihjb25zdCBzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyLAo+ICAgCXJldHVy
biBnZW0gPT0gb2JqOwo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2ZiX2hlbHBlcl9n
ZW1faXNfZmIpOwo+IC0KPgoKLS0gCi0tClRob21hcyBaaW1tZXJtYW5uCkdyYXBoaWNzIERyaXZl
ciBEZXZlbG9wZXIKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICkZyYW5rZW5z
dHIuIDE0NiwgOTA0NjEgTsO8cm5iZXJnLCBHZXJtYW55LCB3d3cuc3VzZS5jb20KR0Y6IEpvY2hl
biBKYXNlciwgQW5kcmV3IE1jRG9uYWxkLCBXZXJuZXIgS25vYmxpY2gsIChIUkIgMzY4MDksIEFH
IE7DvHJuYmVyZykKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

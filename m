Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1777C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 13:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orN9Pv+JiGP5wkwcEpeIWNdviUlAzCM94c0dQeQvheo=; b=tzY8NozfDjYxIq
	mFMbYQ6pJcDu1OD3dykwZG4y/te3d4CiQc7nNX5ET2GhyJfQ0M9L0xoN2irNOj0pImWDXkSzv60UA
	tvbfQXn1Jl+jr42NhgWpGr23mqPAncnLQl20fhc/Gb9duD+weUuVP2AnOceakRJdnTqvgTHTyf/S/
	t+0vjyNCORD85L39HWsoEceyF7a+eaCb6lQolr1Aj9T6q4ZZvXGt6E9TGlctddzBw2l7uzQwXoHF1
	hjNAT+2KtXkAGiunZpZY3c6gKdyhkT4cKc6S1qaHRziGTV0MtA5k6nGku1L6qfidZPs3V8fNkVxeM
	iwGwQ+pr48oANfmbxscg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3nF-0000000C3Cd-3goE;
	Wed, 15 Jan 2025 13:50:49 +0000
Received: from smtp-out1.suse.de ([2a07:de40:b251:101:10:150:64:1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3iU-0000000C268-42fT;
	Wed, 15 Jan 2025 13:45:56 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 49A6821249;
	Wed, 15 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736948753; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=RYyfSaVw6g5xMH+JMHghdrGYmdnvDx9Zhz3pv4DK3Xw=;
	b=TFLFJF3XySI2ZDMNWqLtnYi9I2CkKelN5grA2a/4kQ0P1TqzT7tSXr4h7/8Ne+Qn4kV+7e
	tAGkQWxCqwepai1cL8InSYizan9Cfu381FxyhQuTclpqleEGeeZqfcFFnvdBZ7J8flDV0C
	llifefl5Ww7OTjsLlhec4er0F+GluGU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736948753;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=RYyfSaVw6g5xMH+JMHghdrGYmdnvDx9Zhz3pv4DK3Xw=;
	b=qSe023yuize08pZVM2Q7kCwRc6uXGuV4ZJmU+N6SFdTO1SX53lQO+DbJQKBt7UwMutw4m7
	wijvbfZ3D9R6vCBA==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=TFLFJF3X;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=qSe023yu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736948753; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=RYyfSaVw6g5xMH+JMHghdrGYmdnvDx9Zhz3pv4DK3Xw=;
	b=TFLFJF3XySI2ZDMNWqLtnYi9I2CkKelN5grA2a/4kQ0P1TqzT7tSXr4h7/8Ne+Qn4kV+7e
	tAGkQWxCqwepai1cL8InSYizan9Cfu381FxyhQuTclpqleEGeeZqfcFFnvdBZ7J8flDV0C
	llifefl5Ww7OTjsLlhec4er0F+GluGU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736948753;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=RYyfSaVw6g5xMH+JMHghdrGYmdnvDx9Zhz3pv4DK3Xw=;
	b=qSe023yuize08pZVM2Q7kCwRc6uXGuV4ZJmU+N6SFdTO1SX53lQO+DbJQKBt7UwMutw4m7
	wijvbfZ3D9R6vCBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C332E139CB;
	Wed, 15 Jan 2025 13:45:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ctv9LRC8h2cUZgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 15 Jan 2025 13:45:52 +0000
Message-ID: <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
Date: Wed, 15 Jan 2025 14:45:51 +0100
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
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
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
In-Reply-To: <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
X-Rspamd-Queue-Id: 49A6821249
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	URIBL_BLOCKED(0.00)[suse.de:dkim,suse.de:mid];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FREEMAIL_ENVRCPT(0.00)[163.com,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	DKIM_TRACE(0.00)[suse.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,lists.xenproject.org,ideasonboard.com,163.com];
	RCVD_TLS_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:mid,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_054555_294735_DC8831E9 
X-CRM114-Status: GOOD (  14.39  )
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

SGkKCgpBbSAxNS4wMS4yNSB1bSAxNDozMyBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgpbLi4uXQo+
PiBZZWFoLCB0aGVyZSBhcmUgY29uc3RyYWlucyBpbiB0aGUgc2NhbmxpbmUgYW5kIGJ1ZmZlciBh
bGlnbm1lbnRzIGFuZCAKPj4gb3JpZW50YXRpb24uIEFuZCBpZiB3ZSBzYXkgdGhhdCBicHA9PTEy
IG1lYW5zIE5WMTIsIGl0IHdpbGwgYmUgYSAKPj4gcHJvYmxlbSBmb3IgYWxsIG90aGVyIGNhc2Vz
IHdoZXJlIGJwcD09MTIgbWFrZXMgc2Vuc2UuCj4KPiBJIGZlZWwgSSBzdGlsbCBkb24ndCBxdWl0
ZSB1bmRlcnN0YW5kLiBDYW4ndCB3ZSBkZWZpbmUgYW5kIGRvY3VtZW50IAo+IENSRUFURV9EVU1C
IGxpa2UgdGhpczoKPgo+IElmIChicHAgPCA4IHx8IGlzX3Bvd2VyX29mX3R3byhicHApKQo+IMKg
wqDCoMKgYnBwIG1lYW5zIGJpdHNwZXJwaXhlbAo+IMKgwqDCoMKgcGl0Y2ggaXMgYXJncy0+d2lk
dGggKiBhcmdzLT5icHAgLyA4LCBhbGlnbmVkIHVwIHRvIAo+IGRyaXZlci1zcGVjaWZpYy1hbGln
bgo+IGVsc2UKPiDCoMKgwqDCoGJwcCBpcyBhIGxlZ2FjeSBwYXJhbWV0ZXIsIGFuZCB3ZSBkZWFs
IHdpdGggaXQgY2FzZSBieSBjYXNlLgo+IMKgwqDCoMKgbGlzdCB0aGUgY2FzZXMgYW5kIHdoYXQg
dGhleSBtZWFuCj4KPiBBbmQgZGVzY3JpYmUgdGhhdCB3aGVuIGFsbG9jYXRpbmcgc3Vic2FtcGxl
ZCBidWZmZXJzLCB0aGUgY2FsbGVyIG11c3QgCj4gYWRqdXN0IHRoZSB3aWR0aCBhbmQgaGVpZ2h0
IGFjY29yZGluZ2x5LiBBbmQgdGhhdCB0aGUgYnBwIGFuZCB3aWR0aCAKPiBjYW4gYWxzbyByZWZl
ciB0byBwaXhlbCBncm91cHMuCj4KPiBPciBpZiB0aGUgY3VycmVudGx5IGV4aXN0aW5nIGNvZGUg
cHJldmVudHMgdGhlIGFib3ZlIGZvciAxNiBhbmQgMzIgCj4gYnBwcywgaG93IGFib3V0IGRlZmlu
aW5nIHRoYXQgYW55IG5vbi1SR0Igb3Igbm90LXNpbXBsZSBidWZmZXIgaGFzIHRvIAo+IGJlIGFs
bG9jYXRlZCB3aXRoIGJwcD04LCBhbmQgdGhlIHVzZXJzcGFjZSBoYXMgdG8gYWxpZ24gdGhlIHBp
dGNoIAo+IGNvcnJlY3RseSBhY2NvcmRpbmcgdG8gdGhlIGZvcm1hdCBhbmQgcGxhdGZvcm0ncyBo
dyByZXN0cmljdGlvbnM/CgpXaGF0IGlmIGEgaGFyZHdhcmUgcmVxdWlyZXMgY2VydGFpbiBwZXIt
Zm9ybWF0IGFsaWdubWVudHM/IE9yIHJlcXVpcmVzIApjZXJ0YWluIGFsaWdubWVudHMgZm9yIGVh
Y2ggcGxhbmU/IE9yIG9ubHkgc3VwcG9ydHMgdGlsZSBtb2Rlcz8gT3IgaGFzIApzdHJpY3QgbGlt
aXRzIG9uIHRoZSBtYXhpbXVtIGJ1ZmZlciBzaXplPwoKSXQgaXMgbm90IHBvc3NpYmxlIHRvIGVu
Y29kZSBhbGwgdGhpcyBpbiBhIHNpbXBsZSAzMi1iaXQgdmFsdWUuIFNvIAp1c2VyLXNwYWNlIGNv
ZGUgaGFzIHRvIGJlIGF3YXJlIG9mIGFsbCB0aGlzIGFuZCB0d2VhayBicHAtYmFzZWQgCmFsbG9j
YXRpb24gdG8gbWFrZSBpdCB3b3JrLiBPYnZpb3VzbHkgeW91IGNhbiB1c2UgdGhlIGN1cnJlbnQg
VUFQSSBmb3IgCnlvdXIgdXNlIGNhc2UuIEl0J3MganVzdCBub3Qgb3B0aW1hbCBvciBmdXR1cmUg
cHJvb2YuCgpCZXN0IHJlZ2FyZHMKVGhvbWFzCgo+Cj4KPiDCoFRvbWkKPgoKLS0gCi0tClRob21h
cyBaaW1tZXJtYW5uCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKU1VTRSBTb2Z0d2FyZSBTb2x1
dGlvbnMgR2VybWFueSBHbWJICkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBH
ZXJtYW55CkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3Vk
aWVuIE1vZXJtYW4KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcpCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

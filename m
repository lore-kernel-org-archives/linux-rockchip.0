Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330E3D10389
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 07:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5ygAe1lQbuXy5Q99IwQTBkhdueRCVcOxRzG2+ycJZQ=; b=fJrdoiE0JdgSzB
	wHeh2XtXuq7g8+p/R3K8db+jFHkdkLfszX6TwnBB8yIWgUzeySVvHbBnvuLqv+6nv1siBAbA+vhZM
	B8MpA4zMaSL2RaTvJhaBGxPF3dVpUZu7qvVquzEbN14E5dbk7+eNZJLunfi3/MunY5CMN4ml/bNZ7
	dZD3ra0HeLFN+wKR2b3iu1mxjSyQJFSZZrB1gn1lPISNHsNIbp4JXRMn1GjpLVQc9ecYmFpA/zBVd
	+3kU+149x87JsP2N6Adzx4JRvZNY3SiNw3UJ0zNJLe9INIGu8oKwDhmkLCHQN1PJlO2TTAAy81GwW
	hwVtxUsmqrtuMMlwSZ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOA8O-0000000EXIy-3v9s;
	Wed, 26 Nov 2025 07:40:16 +0000
Received: from smtp-out1.suse.de ([2a07:de40:b251:101:10:150:64:1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOA8M-0000000EXGp-0CsQ
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Nov 2025 07:40:15 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 5C6CA22C7B;
	Wed, 26 Nov 2025 07:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1764142810; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=N/IKV4NTtJDFriBCvdPujoI7Ss0dmnp2XYDv3sBK7Do=;
	b=nxsdbyPwMPWjnG5L8rQDkkJKR+yuEw2QDk1AxcRidFERWys4o+v8VAgfQvHrM26PCj9Wyv
	Wnt1aYIPzuKMZ0jTkgOT4WQxIQkuGEz/laT1YlcwTWqRpIvuMC8IFT/HOkyuE2Fw4hheDM
	J2zRAnG9B9cfHlTTelwwpCOfrUZQQW0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1764142810;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=N/IKV4NTtJDFriBCvdPujoI7Ss0dmnp2XYDv3sBK7Do=;
	b=+VLEA8R0mOGMJCFmnuWFparRdoUKNmXgpZ7YnSUkRUbCju5PQ8EpYFuuIW0TdhGD0Ajpz1
	EExCAwui7CyMDZCg==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=nxsdbyPw;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=+VLEA8R0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1764142810; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=N/IKV4NTtJDFriBCvdPujoI7Ss0dmnp2XYDv3sBK7Do=;
	b=nxsdbyPwMPWjnG5L8rQDkkJKR+yuEw2QDk1AxcRidFERWys4o+v8VAgfQvHrM26PCj9Wyv
	Wnt1aYIPzuKMZ0jTkgOT4WQxIQkuGEz/laT1YlcwTWqRpIvuMC8IFT/HOkyuE2Fw4hheDM
	J2zRAnG9B9cfHlTTelwwpCOfrUZQQW0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1764142810;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=N/IKV4NTtJDFriBCvdPujoI7Ss0dmnp2XYDv3sBK7Do=;
	b=+VLEA8R0mOGMJCFmnuWFparRdoUKNmXgpZ7YnSUkRUbCju5PQ8EpYFuuIW0TdhGD0Ajpz1
	EExCAwui7CyMDZCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C9E573EA63;
	Wed, 26 Nov 2025 07:40:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id pmTZL9muJmmfKgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 26 Nov 2025 07:40:09 +0000
Message-ID: <58b768ad-00fb-4fe5-924c-9cf6ec12f75c@suse.de>
Date: Wed, 26 Nov 2025 08:40:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 03/25] drm/gem-dma: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Ludovic.Desroches@microchip.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, geert@linux-m68k.org,
 tomi.valkeinen@ideasonboard.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org
References: <20250821081918.79786-1-tzimmermann@suse.de>
 <20250821081918.79786-4-tzimmermann@suse.de>
 <52600bf4-2c1c-49a6-82c5-b31818141a43@microchip.com>
 <a11c195d-197c-45a4-962a-e2336c7360c2@suse.de>
 <2fbe0d43-67c5-4816-aff0-c23ac1507ec5@microchip.com>
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
In-Reply-To: <2fbe0d43-67c5-4816-aff0-c23ac1507ec5@microchip.com>
X-Rspamd-Queue-Id: 5C6CA22C7B
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,ffwll.ch,gmail.com,kernel.org,linux.intel.com,linux-m68k.org,ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,suse.com:url];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_234014_238271_564A484A 
X-CRM114-Status: GOOD (  28.20  )
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

SGkKCkFtIDI2LjExLjI1IHVtIDA3OjI0IHNjaHJpZWIgTHVkb3ZpYy5EZXNyb2NoZXNAbWljcm9j
aGlwLmNvbToKPiBPbiAxMS8yNS8yNSAxNjowMywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+
IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1
bmxlc3MgeW91IGtub3cKPj4gdGhlIGNvbnRlbnQgaXMgc2FmZQo+Pgo+PiBIaQo+Pgo+PiBBbSAy
NS4xMS4yNSB1bSAxNTozOSBzY2hyaWViIEx1ZG92aWMuRGVzcm9jaGVzQG1pY3JvY2hpcC5jb206
Cj4+PiBPbiA4LzIxLzI1IDEwOjE3LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPj4+PiBDYWxs
IGRybV9tb2RlX3NpemVfZHVtYigpIHRvIGNvbXB1dGUgZHVtYi1idWZmZXIgc2NhbmxpbmUgcGl0
Y2ggYW5kCj4+Pj4gYnVmZmVyIHNpemUuIEFsaWduIHRoZSBwaXRjaCB0byBhIG11bHRpcGxlIG9m
IDguCj4+IEkgbWlzc2VkIGEgY2hhbmNlIHRvIGV4cGxhaW4gaXQgaGVyZS4gOi8KPiBJIHdhcyB3
b25kZXJpbmcgaWYgaXQgd2FzIDgtYml0cyBvciA4LWJ5dGVzLgo+Cj4+Pj4gUHVzaCB0aGUgY3Vy
cmVudCBjYWxjdWxhdGlvbiBpbnRvIHRoZSBvbmx5IGRpcmVjdCBjYWxsZXIgaW14LiBJbXgncwo+
Pj4+IGhhcmR3YXJlIHJlcXVpcmVzIHRoZSBmcmFtZWJ1ZmZlciB3aWR0aCB0byBiZSBhbGlnbmVk
IHRvIDguIFRoZQo+Pj4+IGRyaXZlcidzIGN1cnJlbnQgYXBwcm9hY2ggaXMgYWN0dWFsbHkgaW5j
b3JyZWN0LCBhcyBpdCBvbmx5IGd1YXJhbnRlZXMKPj4+PiB0aGlzIGltcGxpY2l0bHkgYW5kIHJl
cXVpcmVzIGJwcCB0byBiZSBhIG11bHRpcGxlIG9mIDggYWxyZWFkeS4gQQo+Pj4+IGxhdGVyIGNv
bW1pdCB3aWxsIGZpeCB0aGlzIHByb2JsZW0gYnkgYWxpZ25pbmcgdGhlIHNjYW5saW5lIHBpdGNo
Cj4+Pj4gc3VjaCB0aGF0IGFuIGFsaWduZWQgd2lkdGggc3RpbGwgZml0cyBpbnRvIGVhY2ggc2Nh
bmxpbmUncyBtZW1vcnkuCj4+Pj4KPj4+PiBBIG51bWJlciBvZiBvdGhlciBkcml2ZXJzIGFyZSBi
dWlsZCBvbiB0b3Agb2YgZ2VtLWRtYSBoZWxwZXJzIGFuZAo+Pj4+IGltcGxlbWVudCB0aGVpciBv
d24gZHVtYi1idWZmZXIgYWxsb2NhdGlvbi4gVGhlc2UgZHJpdmVycyBpbnZva2UKPj4+PiBkcm1f
Z2VtX2RtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbCgpLCB3aGljaCBpcyBub3QgYWZmZWN0ZWQgYnkg
dGhpcwo+Pj4+IGNvbW1pdC4KPj4+Pgo+Pj4+IHY1Ogo+Pj4+IC0gYXZvaWQgcmVzZXQgb2YgYXJn
dW1lbnRzIChUb21pKQo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4g
PHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4+Pj4gUmV2aWV3ZWQtYnk6IFRvbWkgVmFsa2VpbmVuIDx0
b21pLnZhbGtlaW5lbkBpZGVhc29uYm9hcmQuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoMKgIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxwZXIuY8KgwqDCoMKgIHwgNyArKysrKy0tCj4+Pj4g
IMKgwqAgZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2My9pbXgtZHJtLWNvcmUuYyB8IDQgKysrLQo+
Pj4+ICDCoMKgIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxw
ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS8KPj4+PiBkcm1fZ2VtX2RtYV9oZWxwZXIuYwo+Pj4+IGlu
ZGV4IDRmMDMyMGRmODU4Zi4uYWIxYTcwYjFkNmYxIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxwZXIuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2RtYV9oZWxwZXIuYwo+Pj4+IEBAIC0yMCw2ICsyMCw3IEBACj4+Pj4gIMKgwqAgI2lu
Y2x1ZGUgPGRybS9kcm0uaD4KPj4+PiAgwqDCoCAjaW5jbHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4K
Pj4+PiAgwqDCoCAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPj4+PiArI2luY2x1ZGUgPGRybS9k
cm1fZHVtYl9idWZmZXJzLmg+Cj4+Pj4gIMKgwqAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtX2RtYV9o
ZWxwZXIuaD4KPj4+PiAgwqDCoCAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFuYWdlci5oPgo+Pj4+
Cj4+Pj4gQEAgLTMwNCw5ICszMDUsMTEgQEAgaW50IGRybV9nZW1fZG1hX2R1bWJfY3JlYXRlKHN0
cnVjdCBkcm1fZmlsZQo+Pj4+ICpmaWxlX3ByaXYsCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIg
KmFyZ3MpCj4+Pj4gIMKgwqAgewo+Pj4+ICDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9kbWFfb2Jq
ZWN0ICpkbWFfb2JqOwo+Pj4+ICvCoMKgwqAgaW50IHJldDsKPj4+Pgo+Pj4+IC3CoMKgwqAgYXJn
cy0+cGl0Y2ggPSBESVZfUk9VTkRfVVAoYXJncy0+d2lkdGggKiBhcmdzLT5icHAsIDgpOwo+Pj4+
IC3CoMKgwqAgYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0Owo+Pj4+ICvC
oMKgwqAgcmV0ID0gZHJtX21vZGVfc2l6ZV9kdW1iKGRybSwgYXJncywgU1pfOCwgMCk7Cj4+Pj4g
K8KgwqDCoCBpZiAocmV0KQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7
Cj4+PiBIaSwKPj4+Cj4+PiBXYXMgaXQgaW50ZW50aW9uYWwgZm9yIHRoaXMgY2hhbmdlIHRvIGFs
dGVyIHRoZSBwaXRjaD8KPj4gTW9zdCBoYXJkd2FyZSBkb2VzIG5vdCBuZWVkIHRoZSBwaXRjaCB0
byBiZSBvZiBhIGNlcnRhaW4gYWxpZ25tZW50LiBCdXQKPj4gdGhlc2UgYnVmZmVycyBhcmUgcG9z
c2libHkgc2hhcmVkIHdpdGggb3RoZXIgaGFyZHdhcmUsIHdoaWNoIHNvbWV0aW1lcwo+PiBuZWVk
cyBhbGlnbm1lbnQgdG8gY2VydGFpbiB2YWx1ZXMuIFVzaW5nIFNaXzggaW1wcm92ZXMgY29tcGF0
aWJsZSB3aXRoCj4+IHRoYXQgaGFyZHdhcmUuCj4+Cj4+PiBUaGUgYWxpZ25tZW50IHJlcXVpcmVt
ZW50IGhhcyBiZWVuIHVwZGF0ZWTigJRmcm9tIDgtYml0IGFsaWdubWVudCB0bwo+Pj4gNjQtYml0
IGFsaWdubWVudC4gU2luY2UgdGhlIHBpdGNoIGlzIGV4cHJlc3NlZCBpbiBieXRlcywgd2Ugc2hv
dWxkIHBhc3MKPj4+IFNaXzEgaW5zdGVhZCBvZiBTWl84IGZvciBod19wYXRjaF9hbGlnbi4KPj4+
Cj4+PiBGb3IgZXhhbXBsZSwgZm9yIGFuIDg1MMOXNDgwIGZyYW1lYnVmZmVyIGF0IDE2IGJwcCwg
dGhlIHBpdGNoIHNob3VsZCBiZQo+Pj4gMTcwMCBieXRlcy4gV2l0aCB0aGUgbmV3IGFsaWdubWVu
dCwgdGhlIHBpdGNoIGJlY29tZXMgMTcwNCBieXRlcy4KPj4gTWFueSBkaXNwbGF5IG1vZGVzIGhh
dmUgYW4gOC1ieXRlIGFsaWdubWVudCBpbiB0aGVpciB3aWR0aC4gODUwIHBpeGVscwo+PiBpcyBz
b21ld2hhdCBvZiBhbiBleGNlcHRpb24uCj4gSW5kZWVkLCBidXQgb3ZlcmxheS10eXBlIHBsYW5l
cyBhcmUgb2Z0ZW4gdXNlZCB0byBkaXNwbGF5IHdpbmRvd3MgdGhhdAo+IGFyZSBub3QgdGhlIHNh
bWUgc2l6ZSBhcyB0aGUgc2NyZWVuLCBhbmQgdGhlcmVmb3JlIHBvdGVudGlhbGx5IG5vdCBvbgo+
IDgtYnl0ZXMgYWxpZ25lZC4KPgo+Pj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdeKAmWQgbGlr
ZSBtZSB0byBzdWJtaXQgYSBmaXguCj4+IERvIHlvdSBzZWUgYSBidWcgd2l0aCB5b3VyIGhhcmR3
YXJlPyBVbmxlc3MgdGhpcyBjcmVhdGVzIGEgcmVhbCBwcm9ibGVtLAo+PiBJJ2QgbGlrZSB0byBr
ZWVwIGl0IGFzIGl0IGlzIG5vdy4KPiBZZXMsIHRoYXTigJlzIGhvdyBJIG5vdGljZWQgdGhpcyBj
aGFuZ2UuIEkgaGF2ZSBhbiBhcHBsaWNhdGlvbiB0aGF0Cj4gcmVxdWVzdHMgYSBmcmFtZWJ1ZmZl
ciBsYXJnZXIgdGhhbiBteSBzY3JlZW4sIGluIHRoaXMgY2FzZSA4NTB4NDgwIGluCj4gUkdCNTY1
IGZvciBhbiA4MDB4NDgwIGRpc3BsYXkuIFNvIEkgaGF2ZSBhIHBpdGNoIG9mIDE3MDAgYnl0ZXMu
IE5vdyBpdOKAmXMKPiB1c2luZyBhIHBpdGNoIG9mIDE3MDQsIHdoaWNoIHNoaWZ0cyBteSBsaW5l
cy4KCkhvbmVzdGx5LCB5b3VyIGFwcGxpY2F0aW9uIGlzIGJyb2tlbi4gVGhlIGlvY3RsIHJldHVy
bnMgdGhlIHBpdGNoIHZhbHVlIAp0byB1c2VyIHNwYWNlIGFuZCB0aGF0J3Mgd2hhdCB0aGUgcHJv
Z3JhbSBzaG91bGQgdXNlLiBTb21lIGhhcmR3YXJlIGhhcyAKaGFyZCBjb25zdHJhaW50cyBvbiB0
aGUgcGl0Y2gsIHNvIHlvdSB3aWxsIHNvb25lciBvciBsYXRlciBydW4gaW50byB0aGUgCnNhbWUg
cHJvYmxlbSBhZ2Fpbi4KCkFueXdheSwgZmVlbCBmcmVlIHRvIHN1Ym1pdCBhIHBhdGNoIHRvIGNh
bGwgZHJtX21vZGVfc2l6ZV9kdW1iKCkgd2l0aG91dCAKU1pfOC4gVGhlIGJlc3QgdmFsdWUgd291
bGQgYmUgMCwgc28gdGhhdCB0aGUgZnVuY3Rpb24gcGlja3MgYSBkZWZhdWx0IGJ5IAppdHNlbGYu
IFNpbmNlIHlvdSdyZSBhdCBpdCwgbWF5YmUgYWxzbyBsb29rIGF0IHBhdGNoZXMgNCBhbmQgNSBv
ZiB0aGlzIApzZXJpZXMuIFRoZXkgaGF2ZSBzaW1pbGFyIGNvZGUgZm9yIG90aGVyIG1lbW9yeSBt
YW5hZ2Vycy4KCkJlc3QgcmVnYXJkcwpUaG9tYXMKCj4KPiBSZWdhcmRzLAo+IEx1ZG92aWMKPgo+
PiBCZXN0IHJlZ2FyZHMKPj4gVGhvbWFzCj4+Cj4+PiBSZWdhcmRzLAo+Pj4gTHVkb3ZpYwo+Pj4K
Pj4+Cj4+Pj4gIMKgwqDCoMKgIGRtYV9vYmogPSBkcm1fZ2VtX2RtYV9jcmVhdGVfd2l0aF9oYW5k
bGUoZmlsZV9wcml2LCBkcm0sIGFyZ3MtCj4+Pj4+IHNpemUsCj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAmYXJncy0+aGFuZGxlKTsKPj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2lteC9pcHV2My9pbXgtZHJtLWNvcmUuYyBiL2RyaXZlcnMvZ3B1Lwo+Pj4+
IGRybS9pbXgvaXB1djMvaW14LWRybS1jb3JlLmMKPj4+PiBpbmRleCBlYzVmZDlhMDFmMWUuLmFm
NGEzMDMxMWUxOCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaW14L2lwdXYzL2lt
eC1kcm0tY29yZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2My9pbXgtZHJt
LWNvcmUuYwo+Pj4+IEBAIC0xNDUsOCArMTQ1LDEwIEBAIHN0YXRpYyBpbnQgaW14X2RybV9kdW1i
X2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUKPj4+PiAqZmlsZV9wcml2LAo+Pj4+ICDCoMKgwqDCoCBp
bnQgcmV0Owo+Pj4+Cj4+Pj4gIMKgwqDCoMKgIGFyZ3MtPndpZHRoID0gQUxJR04od2lkdGgsIDgp
Owo+Pj4+ICvCoMKgwqAgYXJncy0+cGl0Y2ggPSBESVZfUk9VTkRfVVAoYXJncy0+d2lkdGggKiBh
cmdzLT5icHAsIDgpOwo+Pj4+ICvCoMKgwqAgYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJn
cy0+aGVpZ2h0Owo+Pj4+Cj4+Pj4gLcKgwqDCoCByZXQgPSBkcm1fZ2VtX2RtYV9kdW1iX2NyZWF0
ZShmaWxlX3ByaXYsIGRybSwgYXJncyk7Cj4+Pj4gK8KgwqDCoCByZXQgPSBkcm1fZ2VtX2RtYV9k
dW1iX2NyZWF0ZV9pbnRlcm5hbChmaWxlX3ByaXYsIGRybSwgYXJncyk7Cj4+Pj4gIMKgwqDCoMKg
IGlmIChyZXQpCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4+
Cj4+IC0tIAo+PiAtLSAKPj4gVGhvbWFzIFppbW1lcm1hbm4KPj4gR3JhcGhpY3MgRHJpdmVyIERl
dmVsb3Blcgo+PiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPj4gRnJhbmtl
bnN0ci4gMTQ2LCA5MDQ2MSBOw7xybmJlcmcsIEdlcm1hbnksIHd3dy5zdXNlLmNvbQo+PiBHRjog
Sm9jaGVuIEphc2VyLCBBbmRyZXcgTWNEb25hbGQsIFdlcm5lciBLbm9ibGljaCwgKEhSQiAzNjgw
OSwgQUcKPj4gTsO8cm5iZXJnKQo+Pgo+Pgo+CgotLSAKLS0KVGhvbWFzIFppbW1lcm1hbm4KR3Jh
cGhpY3MgRHJpdmVyIERldmVsb3BlcgpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdt
YkgKRnJhbmtlbnN0ci4gMTQ2LCA5MDQ2MSBOw7xybmJlcmcsIEdlcm1hbnksIHd3dy5zdXNlLmNv
bQpHRjogSm9jaGVuIEphc2VyLCBBbmRyZXcgTWNEb25hbGQsIFdlcm5lciBLbm9ibGljaCwgKEhS
QiAzNjgwOSwgQUcgTsO8cm5iZXJnKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

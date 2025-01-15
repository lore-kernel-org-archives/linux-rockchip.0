Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99FA5C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 11:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek2XuPPYMRM6PBWqhVuyAtUJzftCKiqi++apsCV2Y2Q=; b=AV4Kc/5XQLcacD
	l+Fqi0cCsRoASenRnQkCiIT52mVehmvqV6ZrY0AbwQjfpJIWxCriKYwmEYzaxfuDUtGcUDWLJeBeT
	rKooC8WNSSGdSa1OS97eYmXGNOdaDdKwSFUszVPmsNUGmzgp1DadXak85cAXuxnMmo6NKBGivalCy
	FwEn2BtuVbVOFra5FaXJjwI096wjJBpu9gdo3rflc0kxsNFARhOlvIFjEOSSceY7IARDR3WH419XM
	2WndeoBCeCuCPE9hb4gEL70n5CyrX382eIBlZMht54C9J++p4RDdKPRPStTIfUMVmJZdYxBoituad
	DsSo+qTq15Bbu3X1Erxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1nE-0000000Bj7J-0F5t;
	Wed, 15 Jan 2025 11:42:40 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1hs-0000000Bi3e-13Sr;
	Wed, 15 Jan 2025 11:37:09 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 5F4BA2128E;
	Wed, 15 Jan 2025 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736941026; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=41xWq7JaLoV6WimVJ2B8CLfq711kNJtLM2yFKO4NnDE=;
	b=gue6OANAY5sQA5om7qd2aiBlXV4Er7BqteagVRDSWhaTKaDzwiKecLQ5J6ruJo1P1BUJte
	C6ziHtnVsFja8iX2g6jfIuTmYxNKhidEfMRQnEO+DQx5PPSyNWjtFfEgbufND/2GjuAngC
	xzbpdVr3u1o3wOw7USgSD8ebeUbf0Y8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736941026;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=41xWq7JaLoV6WimVJ2B8CLfq711kNJtLM2yFKO4NnDE=;
	b=pBIzUrsOdWDvVqFMQ4+GGfQIAfVqufpdFuB8NrwD1Dec489JuoXPDm0qkn0XUzaFOp5Olp
	5dUOE9gHR+gf/OCw==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=gue6OANA;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=pBIzUrsO
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736941026; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=41xWq7JaLoV6WimVJ2B8CLfq711kNJtLM2yFKO4NnDE=;
	b=gue6OANAY5sQA5om7qd2aiBlXV4Er7BqteagVRDSWhaTKaDzwiKecLQ5J6ruJo1P1BUJte
	C6ziHtnVsFja8iX2g6jfIuTmYxNKhidEfMRQnEO+DQx5PPSyNWjtFfEgbufND/2GjuAngC
	xzbpdVr3u1o3wOw7USgSD8ebeUbf0Y8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736941026;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=41xWq7JaLoV6WimVJ2B8CLfq711kNJtLM2yFKO4NnDE=;
	b=pBIzUrsOdWDvVqFMQ4+GGfQIAfVqufpdFuB8NrwD1Dec489JuoXPDm0qkn0XUzaFOp5Olp
	5dUOE9gHR+gf/OCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 224B613A6F;
	Wed, 15 Jan 2025 11:37:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ZKHjBuGdh2fsPAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 15 Jan 2025 11:37:05 +0000
Message-ID: <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
Date: Wed, 15 Jan 2025 12:37:04 +0100
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
In-Reply-To: <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
X-Rspamd-Queue-Id: 5F4BA2128E
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[163.com,gmail.com];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,lists.xenproject.org,ideasonboard.com,163.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.de:dkim,suse.de:mid]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_033708_434104_04023AD5 
X-CRM114-Status: GOOD (  22.86  )
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

SGkKCgpBbSAxNS4wMS4yNSB1bSAxMTo1OCBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgpbLi4uXQo+
PiBUaGVzZSBhcmUgYWxsIGdvb2QgcG9pbnRzLiBEaWQgeW91IHJlYWQgbXkgZGlzY3Vzc2lvbiB3
aXRoIEFuZHkgb24gCj4+IHBhdGNoIDI/IEkgdGhpbmsgaXQgcmVzb2x2ZXMgYWxsIHRoZSBwb2lu
dHMgeW91IGhhdmUuIFRoZSBjdXJyZW50IAo+PiBDUkVBVEVfRFVNQiAKPgo+IEkgaGFkIG1pc3Nl
ZCB0aGUgZGlzY3Vzc2lvbiwgYW5kLCBpbmRlZWQsIHRoZSBwYXRjaCB5b3UgYXR0YWNoZWQgZml4
ZXMgCj4gdGhlIHByb2JsZW0gb24gWGlsaW54LgoKR3JlYXQuIFRoYW5rcyBmb3IgdGVzdGluZy4K
Cj4KPj4gaW9jdGwgaXMgdW5zdWl0ZWQgZm9yIGFueXRoaW5nIGJ1dCB0aGUgc2ltcGxlIFJHQiBm
b3JtYXRzLiBUaGUgYnBwIAo+Cj4gSXQncyBhIGJpdCBkaWZmaWN1bHQgdG8gdXNlLCBidXQgaXMg
aXQgcmVhbGx5IHVuc3VpdGVkPyBiaXRzcGVycGl4ZWwsIAo+IHdpZHRoIGFuZCBoZWlnaHQgZG8g
Z2l2ZSBhbiBleGFjdCBwaXRjaCBhbmQgc2l6ZSwgZG8gdGhleSBub3Q/IEl0IGRvZXMgCj4gcmVx
dWlyZSB0aGUgdXNlcnNwYWNlIHRvIGhhbmRsZSB0aGUgc3Vic2FtcGxpbmcgYW5kIHBsYW5lcywg
dGhvdWdoLCBzbyAKPiBmYXIgZnJvbSBwZXJmZWN0LgoKVGhlIGJwcCB2YWx1ZSBzZXRzIHRoZSBu
dW1iZXIgb2YgYml0cyBwZXIgcGl4ZWw7IGV4Y2VwdCBmb3IgYnBwPT0xNSAKKFhSR0IxNTU1KSwg
d2hlcmUgaXQgc2V0cyB0aGUgY29sb3IgZGVwdGguIE9SIGJwcCBpcyB0aGUgY29sb3IgZGVwdGg7
IApleGNlcHQgZm9yIGJwcD09MzIgKFhSR0I4ODg4KSwgd2hlcmUgaXQgaXMgdGhlIG51bWJlciBv
ZiBiaXRzIHBlciBwaXhlbC4gCkl0J3MgdGhlcmVmb3JlIGJlc3QgdG8gaW50ZXJwcmV0IGl0IGxp
a2UgYSBjb2xvci1tb2RlIGVudW0uCgo+Cj4gU28sIEknbSBhbGwgZm9yIGEgbmV3IGlvY3RsLCBi
dXQgSSBkb24ndCByaWdodCBhd2F5IHNlZSB3aHkgdGhlIAo+IGN1cnJlbnQgaW9jdGwgY291bGRu
J3QgYmUgdXNlZC4gV2hpY2ggbWFrZXMgbWUgd29uZGVyIGFib3V0IHRoZSAKPiBkcm1fd2Fybigp
IGluIHlvdXIgcGF0Y2gsIGFuZCB0aGUgInVzZXJzcGFjZSB0aHJvd3MgaW4gYXJiaXRyYXJ5IAo+
IHZhbHVlcyBmb3IgYnBwIGFuZCByZWxpZXMgb24gdGhlIGtlcm5lbCB0byBmaWd1cmUgaXQgb3V0
Ii4gTWF5YmUgSSdtIAo+IG1pc3Npbmcgc29tZXRoaW5nIGhlcmUuCgpJIHdhcyB1bnN1cmUgYWJv
dXQgdGhlIGRybV93YXJuKCkgYXMgd2VsbC4gSXQncyBub3QgcmVhbGx5IHdyb25nIHRvIGhhdmUg
Cm9kZCBicHAgdmFsdWVzLCBidXQgaGFuZGluZyBpbiBhbiB1bmtub3duIGJwcCB2YWx1ZSBtaWdo
dCBwb2ludCB0byBhIAp1c2VyLXNwYWNlIGVycm9yLiBBdCBsZWFzdCB0aGVyZSBzaG91bGQgYmUg
YSBkcm1fZGJnKCkuCgo+Cj4+IHBhcmFtZXRlciBpcyBub3QgdmVyeSBwcmVjaXNlLiBUaGUgc29s
dXRpb24gd291bGQgYmUgYSBuZXcgaW9jdGwgY2FsbCAKPj4gdGhhdCByZWNlaXZlcyB0aGUgRFJN
IGZvcm1hdCBhbmQgcmV0dXJucyBhIGJ1ZmZlciBmb3IgZWFjaCBpbmRpdmlkdWFsIAo+PiBwbGFu
ZS4KPgo+IFllcywgSSB0aGluayB0aGF0IG1ha2VzIHNlbnNlLiBUaGF0J3MgYSBsb25nIHJvYWQs
IHRob3VnaCA9KS4gU28gbXkgCj4gcXVlc3Rpb24gaXMsIGlzIENSRUFURV9EVU1CIHJlYWxseSB1
bnN1aXRhYmxlIGZvciBvdGhlciB0aGFuIHNpbXBsZSAKPiBSR0IgZm9ybWF0cywgb3IgY2FuIGl0
IGJlIHN1aXRhYmxlIGlmIHdlIGp1c3QgZGVmaW5lIGhvdyB0aGUgdXNlcnNwYWNlIAo+IHNob3Vs
ZCB1c2UgaXQgZm9yIG11bHRpcGxhbmFyLCBzdWJzYW1wbGVkIGZvcm1hdHM/CgpUaGF0IHdvdWxk
IGR1cGxpY2F0ZSBmb3JtYXQgYW5kIGhhcmR3YXJlIGluZm9ybWF0aW9uIGluIHVzZXItc3BhY2Uu
IFNvbWUgCmhhcmR3YXJlIG1pZ2h0IGhhdmUgb2RkIHBlci1wbGFuZSBsaW1pdGF0aW9ucyB0aGF0
IG9ubHkgdGhlIGRyaXZlciBrbm93cyAKYWJvdXQuIEZvciBleGFtcGxlLCB0aGVyZSdzIGFub3Ro
ZXIgZGlzY3Vzc2lvbiBvbiBkcmktZGV2ZWwgYWJvdXQgCnBpdGNoLWFsaWdubWVudCByZXF1aXJl
bWVudHMgb2YgRFJNX0ZPUk1BVF9NT0RfTElORUFSIG9uIHZhcmlvdXMgCmhhcmR3YXJlLiBUaGF0
IGFmZmVjdHMgZHVtYiBidWZmZXJzIGFzIHdlbGwuIEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGVyZSdz
IAphbiBpbW1lZGlhdGUgbmVlZCBmb3IgYSBDUkVBVEVfRFVNQjIsIGJ1dCBpdCBzZWVtcyB3b3J0
aCB0byBrZWVwIGluIG1pbmQuCgpCZXN0IHJlZ2FyZHMKVGhvbWFzCgo+Cj4gwqBUb21pCj4KCi0t
IAotLQpUaG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29m
dHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51
ZXJuYmVyZywgR2VybWFueQpHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0Rv
bmFsZCwgQm91ZGllbiBNb2VybWFuCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

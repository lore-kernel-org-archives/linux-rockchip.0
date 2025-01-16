Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D62CC02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 08:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFgsjZsAF4QB0wOTQxezg2jixZEbTc4H1SEEArBW/YQ=; b=RQ+UGqtYyKlEKk
	yQv8srWTjzh+2GePtHjpxrwS3IUdO9n45cR7AI2eSvtceRMSA+Jr7dbLXPf1H2Thv+9eIEjCiYXM0
	Ta+eADw9eM3mJCQ6SUsvneus7ZKHvrv/4gvQL7D6c9ZykBlbvlc8gNPHSBIqrT0im03nDVNn3jz7g
	k9ZnkWQd9zZ6xEuHhfJ5lLUJGcyd7ObHUpFmhqR/DvSDqr3tjpgWb4VSSHWqgVfXjTm+ZFzpuPbcf
	P8zfc7ksWX/R8D8jH6moARK8orD3Tz1Z4D1EJEMw+nvhPDocxqyZEwmqCeh7KoidX145NLkAVjTeA
	pbLskZ9j4B8Uw9BtRTew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYKwR-0000000E9co-2OzU;
	Thu, 16 Jan 2025 08:09:27 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYKwN-0000000E9aA-2SRE;
	Thu, 16 Jan 2025 08:09:25 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id AF679211D2;
	Thu, 16 Jan 2025 08:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737014961; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xcxRML23Nx7RFNokQB2O02aJnU9nWJlVXpAUoW6/DUc=;
	b=guL7z/7g3EcabgvnEePbbCuZQv7xD8Nwr9UitmLW0HdQwyFjV2SSCQgHXiJw8V8gnCT1K2
	PWtPwlEQencxyOkZzRFYa02U7TT7cyGEKiFsdqSu4Fbz6rTKbBaplstwxqYo2gR84TVDZg
	EoU34+EHEiZW91gRDl+FfWH9McSLkvo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737014961;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xcxRML23Nx7RFNokQB2O02aJnU9nWJlVXpAUoW6/DUc=;
	b=QhcTxwz2tTYoCTzfudp0U1RC65EHxbTx4mcJuk8sOgRjhjNV0lXRty1p1dQWnKcwWKutz2
	DR+iY8oRFsTbZEBQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737014961; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xcxRML23Nx7RFNokQB2O02aJnU9nWJlVXpAUoW6/DUc=;
	b=guL7z/7g3EcabgvnEePbbCuZQv7xD8Nwr9UitmLW0HdQwyFjV2SSCQgHXiJw8V8gnCT1K2
	PWtPwlEQencxyOkZzRFYa02U7TT7cyGEKiFsdqSu4Fbz6rTKbBaplstwxqYo2gR84TVDZg
	EoU34+EHEiZW91gRDl+FfWH9McSLkvo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737014961;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xcxRML23Nx7RFNokQB2O02aJnU9nWJlVXpAUoW6/DUc=;
	b=QhcTxwz2tTYoCTzfudp0U1RC65EHxbTx4mcJuk8sOgRjhjNV0lXRty1p1dQWnKcwWKutz2
	DR+iY8oRFsTbZEBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3205713A57;
	Thu, 16 Jan 2025 08:09:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 3VTFCrG+iGf+BAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 16 Jan 2025 08:09:21 +0000
Message-ID: <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
Date: Thu, 16 Jan 2025 09:09:20 +0100
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
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
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
In-Reply-To: <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_000923_766768_CEF8ABAD 
X-CRM114-Status: GOOD (  20.66  )
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

SGkKCgpBbSAxNS4wMS4yNSB1bSAxNToyMCBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgpbLi4uXQo+
Cj4gTXkgcG9pbnQgaXMgdGhhdCB3ZSBoYXZlIHRoZSBjdXJyZW50IFVBUEksIGFuZCB3ZSBoYXZl
IHVzZXJzcGFjZSB1c2luZyAKPiBpdCwgYnV0IHdlIGRvbid0IGhhdmUgY2xlYXIgcnVsZXMgd2hh
dCB0aGUgaW9jdGwgZG9lcyB3aXRoIHNwZWNpZmljIAo+IHBhcmFtZXRlcnMsIGFuZCB3ZSBkb24n
dCBkb2N1bWVudCBob3cgaXQgaGFzIHRvIGJlIHVzZWQuCj4KPiBQZXJoYXBzIHRoZSBzaXR1YXRp
b24gaXMgYmFkLCBhbmQgYWxsIHdlIGNhbiByZWFsbHkgc2F5IGlzIHRoYXQgCj4gQ1JFQVRFX0RV
TUIgb25seSB3b3JrcyBmb3IgdXNlIHdpdGggc2ltcGxlIFJHQiBmb3JtYXRzLCBhbmQgdGhlIAo+
IGJlaGF2aW9yIGZvciBhbGwgb3RoZXIgZm9ybWF0cyBpcyBwbGF0Zm9ybSBzcGVjaWZpYy4gQnV0
IEkgdGhpbmsgZXZlbiAKPiB0aGF0IHdvdWxkIGJlIHZhbHVhYmxlIGluIHRoZSBVQVBJIGRvY3Mu
CgpUbyBiZSBob25lc3QsIEkgd291bGQgbm90IHdhbnQgdG8gc3BlY2lmeSBiZWhhdmlvciBmb3Ig
YW55dGhpbmcgYnV0IHRoZSAKbGluZWFyIFJHQiBmb3JtYXRzLiBJZiBhbnl0aGluZywgSSdkIHRh
a2UgRGFuaWVsJ3MgcmVwbHkgbWFpbCBmb3IgCmRvY3VtZW50YXRpb24gYXMtaXMuIEFueW9uZSBz
dHJldGNoaW5nIHRoZSBVQVBJIGJleW9uZCBSR0IgaXMgb24gdGhlaXIgb3duLgoKPgo+IFRoaW5r
aW5nIGFib3V0IHRoaXMsIEkgd29uZGVyIGlmIHRoaXMgY2hhbmdlIGlzIGdvb2QgZm9yIG9tYXBk
cm0gb3IgCj4geGlsaW54IChwcm9iYWJseSBvdGhlciBwbGF0Zm9ybXMgdG9vIHRoYXQgc3VwcG9y
dCBub24tc2ltcGxlIG5vbi1SR0IgCj4gZm9ybWF0cyB2aWEgZHVtYiBidWZmZXJzKTogd2l0aG91
dCB0aGlzIHBhdGNoLCBpbiBib3RoIGRyaXZlcnMsIHRoZSAKPiBwaXRjaCBjYWxjdWxhdGlvbnMg
anVzdCB0YWtlIHRoZSBicHAgYXMgYml0LXBlci1waXhlbHMsIGFsaWduIGl0IHVwLCAKPiBhbmQg
dGhhdCdzIGl0Lgo+Cj4gV2l0aCB0aGlzIHBhdGNoIHdlIGVuZCB1cCB1c2luZyBkcm1fZHJpdmVy
X2NvbG9yX21vZGVfZm9ybWF0KCksIGFuZCAKPiBhbGlnbmluZyBidWZmZXJzIGFjY29yZGluZyB0
byBSR0IgZm9ybWF0cyBmaWd1cmVkIG91dCB2aWEgaGV1cmlzdGljcy4gCj4gSXQgZG9lcyBoYXBw
ZW4gdG8gd29yaywgZm9yIHRoZSBmb3JtYXRzIEkgdGVzdGVkLCBidXQgaXQgc291bmRzIGxpa2Ug
Cj4gc29tZXRoaW5nIHRoYXQgbWlnaHQgZWFzaWx5IG5vdCB3b3JrLCBhcyBpdCdzIGRvaW5nIGFk
anVzdG1lbnRzIGJhc2VkIAo+IG9uIHdyb25nIGZvcm1hdC4KPgo+IFNob3VsZCB3ZSBoYXZlIGFu
b3RoZXIgdmVyc2lvbiBvZiBkcm1fbW9kZV9zaXplX2R1bWIoKSB3aGljaCBqdXN0IAo+IGNhbGN1
bGF0ZXMgdXNpbmcgdGhlIGJwcCwgd2l0aG91dCB0aGUgZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zv
cm1hdCgpIAo+IHBhdGg/IE9yIGRvZXMgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQo
KSBwYXRoIHByb3ZpZGUgc29tZSAKPiB2YWx1ZSBmb3IgdGhlIGRyaXZlcnMgdGhhdCBkbyBub3Qg
Y3VycmVudGx5IGRvIGFueXRoaW5nIHNpbWlsYXI/CgpXaXRoIHRoZSBSR0Itb25seSBydWxlLCB1
c2luZyBkcm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCkgbWFrZXMgCnNlbnNlLiBJdCBhbGln
bnMgZHVtYiBidWZmZXJzIGFuZCB2aWRlbz0sIHByb3ZpZGVzIGVycm9yIGNoZWNraW5nLCBhbmQg
Cm92ZXJhbGwgaGFybW9uaXplcyBjb2RlLiBUaGUgZmFsbGJhY2sgaXMgb25seSByZXF1aXJlZCBi
ZWNhdXNlIG9mIHRoZSAKZXhpc3Rpbmcgb2RkIGNhc2VzIHRoYXQgYWxyZWFkeSBiZW5kIHRoZSBV
QVBJJ3MgcnVsZXMuCgpCZXN0IHJlZ2FyZHMKVGhvbWFzCgo+Cj4gwqBUb21pCj4KCi0tIAotLQpU
aG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSApGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVy
ZywgR2VybWFueQpHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwg
Qm91ZGllbiBNb2VybWFuCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

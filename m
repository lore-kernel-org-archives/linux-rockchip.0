Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF077C021B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 10:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p40KGEoItHdoQgtFxnSAqnrNOd7gB7ct61BBsuClIBU=; b=Z9ykOsKhMdM5cl
	NgQWnAjiTbJK1hhvmxjtued12+ZJdUxqWvetzFK0KD3rdXADASaFyWICXSWecfxc2IcMmChWVuPZZ
	8L1r9gwISE3wMf73Nw3xRgJq7jkAytXbeSdrn/+NeLkJ+EDNpUFAGX6IV3FiznJjrf6S02lTjUv6+
	SpLjFuOOchDMcezykx7hXHxa1fSXyHpoFvdd7BEPobAjCffyra22ssH9fZZZ/TRKv6p5xV3qz6Cgv
	oDlH8eVsnrg6C1rwSo9y1poIw/48vrf2RaMF1SGScnY+kwamdcOPxpBlMniFcpAVvp9Ht5teN3oop
	00fXp6A9CsbwoqsvkN1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3Qi-00000000CYp-02fY;
	Thu, 20 Feb 2025 10:05:16 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3Qe-00000000CVk-2KO1
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 10:05:14 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 6C61F1F387;
	Thu, 20 Feb 2025 10:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740045909; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=65zE77FFO0s0D2ildlq3h1u4o6X5a++vxcNcTRVNHEs=;
	b=e5eq5uP0lSiK917nOXNtjo5B2Il1opJ5S/TBMSPN4GHpYevG6+GNEH5dc8U5aFcpfpK5Cw
	9dyUqjpExeG/vOFUhwpAb2s+6fZYEFh8FlGNz8QvfTSNrsWn8qj0c2mzG9WiFdt5gULRCW
	TGicx3LEipQvDm3ioB7HkQ9PlaM5NCU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740045909;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=65zE77FFO0s0D2ildlq3h1u4o6X5a++vxcNcTRVNHEs=;
	b=ajjYyaE/xQ9d1+3WLRm22ouGPNw8XS1zONxWMbXADKRkZi7IsWu7kBhUGdbRBvbDAACQLH
	ia8HYBlw60OiJ8Cg==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=U56jNFDp;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Y6Z3Xnwq
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740045908; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=65zE77FFO0s0D2ildlq3h1u4o6X5a++vxcNcTRVNHEs=;
	b=U56jNFDpLXJPaOrLQJfvYY3y3udSaNl+sAmV78MflSnzJ2pXFkRW0fkt6nNPommYWeJs5b
	EObtbJwATSyG1yNBNUY8Q7ziNK7zMoXp/lIACti91Fo4GF8dJ6/bW/cfl+z2xiSc6Q8kLz
	E3iDjmZLFv7MoYUNUKKnoGOm4d4Ko3Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740045908;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=65zE77FFO0s0D2ildlq3h1u4o6X5a++vxcNcTRVNHEs=;
	b=Y6Z3XnwqK8EgqLKD0rh0pt2PA9+fiVOipGfoO3odSV+zAHeoAfRNIAoiwb4DyQ4mJsF/Cn
	VtFt6JqsYZumY3Bw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E2B7A13301;
	Thu, 20 Feb 2025 10:05:07 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id jF2hNVP+tmf1AQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 20 Feb 2025 10:05:07 +0000
Message-ID: <355ed315-61fa-4a9d-b72b-8d5bc7b5a16c@suse.de>
Date: Thu, 20 Feb 2025 11:05:07 +0100
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
In-Reply-To: <dcd59a75-7945-4a2e-99f9-3abbb3e9de14@ideasonboard.com>
X-Rspamd-Queue-Id: 6C61F1F387
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:dkim,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_020512_903974_CDD9F96E 
X-CRM114-Status: GOOD (  22.62  )
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

SGkKCkFtIDIwLjAyLjI1IHVtIDEwOjE4IHNjaHJpZWIgVG9taSBWYWxrZWluZW46ClsuLi5dCj4+
ICsgKiBDb2xvciBtb2RlcyBvZiAxMCwgMTIsIDE1LCAzMCBhbmQgNjQgYXJlIG9ubHkgc3VwcG9y
dGVkIGZvciB1c2UgYnkKPj4gKyAqIGxlZ2FjeSB1c2VyIHNwYWNlLiBQbGVhc2UgZG9uJ3QgdXNl
IHRoZW0gaW4gbmV3IGNvZGUuIE90aGVyIG1vZGVzCj4+ICsgKiBhcmUgbm90IHN1cHBvcnQuCj4+
ICsgKgo+PiArICogRG8gbm90IGF0dGVtcHQgdG8gYWxsb2NhdGUgYW55dGhpbmcgYnV0IGxpbmVh
ciBmcmFtZWJ1ZmZlciBtZW1vcnkKPj4gKyAqIHdpdGggc2luZ2xlLXBsYW5lIFJHQiBkYXRhLiBB
bGxvY2F0aW9uIG9mIG90aGVyIGZyYW1lYnVmZmVyCj4+ICsgKiBsYXlvdXRzIHJlcXVpcmVzIGRl
ZGljYXRlZCBpb2N0bHMgaW4gdGhlIHJlc3BlY3RpdmUgRFJNIGRyaXZlci4KPgo+IEFjY29yZGlu
ZyB0byB0aGlzLCBldmVyeSBkcml2ZXIgdGhhdCBzdXBwb3J0cywgc2F5LCBOVjEyLCBzaG91bGQg
Cj4gaW1wbGVtZW50IHRoZWlyIG93biBjdXN0b20gaW9jdGwgdG8gZG8gdGhlIGV4YWN0IHNhbWUg
dGhpbmc/IEFuZCwgb2YgCj4gY291cnNlLCBldmVyeSB1c2Vyc3BhY2UgYXBwIHRoYXQgdXNlcywg
c2F5LCBOVjEyLCBzaG91bGQgdGhlbiBhZGQgY29kZSAKPiBmb3IgYWxsIHRoZXNlIHBsYXRmb3Jt
cyB0byBjYWxsIHRoZSBjdXN0b20gaW9jdGxzPwoKWWVzLCB0aGF0J3MgZXhhY3RseSB0aGUgY3Vy
cmVudCBzdGF0dXMuCgpUaGVyZSBoYXMgYmVlbiBkaXNjdXNzaW9uIGFib3V0IGEgbmV3IGR1bWIt
Y3JlYXRlIGlvY3RsIHRoYXQgdGFrZXMgYSBEUk0gCmZvcm1hdCBhcyBwYXJhbWV0ZXIuIEknbSBh
bGwgZm9yIGl0LCBidXQgaXQncyBvdXQgb2YgdGhlIHNjb3BlIGZvciB0aGlzIApzZXJpZXMuCgo+
Cj4gQXMgbGliZHJtJ3MgbW9kZXRlc3QgY3VycmVudGx5IHN1cHBvcnRzIFlVViBmb3JtYXRzIHdp
dGggZHVtYiBidWZmZXJzLCAKPiBzaG91bGQgd2UgcmVtb3ZlIHRoYXQgY29kZSwgYXMgaXQncyBu
b3QgY29ycmVjdCBhbmQgSSdtIHN1cmUgcGVvcGxlIAo+IHVzZSBsaWJkcm0gY29kZSBhcyBhIHJl
ZmVyZW5jZT8KCk9mIGNvdXJzZSBub3QuCgo+Cj4gV2VsbCwgSSdtIG5vdCBzZXJpb3VzIGFib3Zl
LCBidXQgSSB0aGluayBhbGwgbXkgcG9pbnRzIGZyb20gdGhlIAo+IGVhcmxpZXIgdmVyc2lvbiBh
cmUgc3RpbGwgdmFsaWQuIEkgZG9uJ3QgbGlrZSB0aGlzLiBJdCBjaGFuZ2VzIHRoZSAKPiBwYXJh
bWV0ZXJzIG9mIHRoZSBpb2N0bCAoYnBwIHVzZWQgdG8gYmUgYml0cy1wZXItcGl4ZWwsIG5vdCBp
dCdzIAo+ICJjb2xvciBtb2RlIiksIGFuZCB0aGUgYmVoYXZpb3Igb2YgdGhlIGlvY3RsLCBiZWhh
dmlvciB0aGF0IHdlJ3ZlIGhhZCAKPiBmb3IgYSB2ZXJ5IGxvbmcgdGltZSwgYW5kIHdlIGhhdmUg
bm8gaWRlYSBob3cgbWFueSB1c2VycyB0aGVyZSBhcmUgCj4gdGhhdCB3aWxsIGJyZWFrIChjb3Vs
ZCBiZSBub25lLCBvZiBjb3Vyc2UpLiBBbmQgdGhlIGRvY3VtZW50YXRpb24gCj4gY2hhbmdlcyBt
YWtlIHRoZSBjdXJyZW50IGJlaGF2aW9yIGFuZCB1c2VzIHdyb25nIG9yIGxlZ2FjeS4KCkJlZm9y
ZSBJIGdvIGludG8gZGV0YWlscyBhYm91dCB0aGlzIHN0YXRlbWVudCwgd2hhdCB1c2UgY2FzZSBl
eGFjdGx5IGFyZSAKeW91IHJlZmVycmluZyB0byB3aGVuIHlvdSBzYXkgdGhhdCBiZWhhdmlvciBj
aGFuZ2VzPwoKQmVzdCByZWdhcmRzClRob21hcwoKPgo+IENsZWFybHkgd2UgbmVlZCBzb21ldGhp
bmcgbmV3IGFuZCBiZXR0ZXIgZm9yIHRoZSBidWZmZXIgYWxsb2NhdGlvbiwgCj4gYnV0IGZvciB0
aGUgdGltZSBiZWluZywgSSdkIGJlIG1vcmUgY29tZm9ydGFibGUganVzdCBrZWVwIHRoZSBjdXJy
ZW50IAo+IGJlaGF2aW9yLCBhdCBsZWFzdCBmb3IgYWxsIHRoZSBkcml2ZXJzIEkgdXNlIG9yIG1h
aW50YWluOiBvbWFwZHJtLCAKPiB0aWRzcywgcmVuZXNhcywgeGxueCwgdGlsY2RjLgo+Cj4gwqBU
b21pCj4KCi0tIAotLQpUaG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVy
ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApGcmFua2Vuc3RyYXNzZSAxNDYs
IDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQpHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFu
ZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

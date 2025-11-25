Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB849D0E6F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 15:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2Dr1STKpot3d1jQUYNhFo+JcSgq531ELRozrg6utyY=; b=k6la70Iy2YM8kz
	Q9DmNxEWEz2of8AAq+OCRR+Xw7OpClHxfiHdh+SYXbVvtnfmomgiGqKdCLU6t5nU+3HRNAnXxHEHj
	4hy3+su6j6dHLWSwpLH7kk6BkmxiA2EZCOXvN/KgsMiOEqkHiBuHzkLKJy2nmWT1jQJHD74YB7US8
	q7OPYPw3hjmBgvUt3Hnv38hethE/E8qQKcWq3Ji5Sd1GNJ+GI2lCZPXD6GL7ZSEED3+bcHGXOZV8n
	46CoVXiK9rB+zPzVdBpxt8l/DapBN1rwjvh4IwGVV6vbHdj60rYYtQQtYq7M3js7mrSVMkiguwoGG
	gxiBrdXTPgdrLWtdnwZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNuaC-0000000DTgL-36Nn;
	Tue, 25 Nov 2025 15:03:56 +0000
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNua8-0000000DTfN-1Y7W
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 15:03:55 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id CB6CC5BD95;
	Tue, 25 Nov 2025 15:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1764083030; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=t6c0JIr3JV24agNEYsU6GeNEwCMn9HHhKrcfhB/PVC4=;
	b=MeMLYvOIQm0PQWfD3UBO9QnmQNH6vWaQ7hqx/Wt7eIge3bCkBq3fyTNKB1FMEYmW5/G9/J
	UU730ytQ756s0UWVHqMa3vCOYcvtp5B2dhbquMtNcnpLg80cNx5E91Pf9TqjCgsr0epa2G
	+BOGQnMJ8Q4g59SQ+WmHgzml1L6p5Nw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1764083030;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=t6c0JIr3JV24agNEYsU6GeNEwCMn9HHhKrcfhB/PVC4=;
	b=HZ9HoaGrQMuKtj6drZ7EoukRoNuUO4l2erKX3BLnChSz0rBzze1RXd5Yuom8T0bdDCieMn
	cqhpDfNxHL/8CaAg==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=CZCopwUT;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=cJtVhDSR
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1764083027; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=t6c0JIr3JV24agNEYsU6GeNEwCMn9HHhKrcfhB/PVC4=;
	b=CZCopwUTcY+A/L7rZ7hx6PUAoVzxsQaz6VKywNSdqiIVG+9Hmen0N5mgb+Xpt16ZWJLBwL
	d6sRWjuJdHj5/RJkAarOMFPW7/CsqlWHeJEZvX1zk6W/2dOrRRvrgj2EqC1Vq08eBWPtdh
	kuimNUmnISiMDhyrmmTZWp1VsUu/ONE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1764083027;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=t6c0JIr3JV24agNEYsU6GeNEwCMn9HHhKrcfhB/PVC4=;
	b=cJtVhDSRR+o9VWz6Yazw2qpbBdRDJ0H8iUig4wpW+NdNmNvUjP02PtwdGzrWA6t7d419+a
	uJb59PIuV23OjwAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 2E19F3EA63;
	Tue, 25 Nov 2025 15:03:47 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id STfTCVPFJWmMCQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 25 Nov 2025 15:03:47 +0000
Message-ID: <a11c195d-197c-45a4-962a-e2336c7360c2@suse.de>
Date: Tue, 25 Nov 2025 16:03:46 +0100
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
In-Reply-To: <52600bf4-2c1c-49a6-82c5-b31818141a43@microchip.com>
X-Rspamd-Queue-Id: CB6CC5BD95
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FREEMAIL_TO(0.00)[microchip.com,ffwll.ch,gmail.com,kernel.org,linux.intel.com,linux-m68k.org,ideasonboard.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_NONE(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.com:url,suse.de:email,suse.de:mid,suse.de:dkim]
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_070354_046662_89CCB349 
X-CRM114-Status: GOOD (  23.03  )
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

SGkKCkFtIDI1LjExLjI1IHVtIDE1OjM5IHNjaHJpZWIgTHVkb3ZpYy5EZXNyb2NoZXNAbWljcm9j
aGlwLmNvbToKPiBPbiA4LzIxLzI1IDEwOjE3LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPj4g
Q2FsbCBkcm1fbW9kZV9zaXplX2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5l
IHBpdGNoIGFuZAo+PiBidWZmZXIgc2l6ZS4gQWxpZ24gdGhlIHBpdGNoIHRvIGEgbXVsdGlwbGUg
b2YgOC4KCkkgbWlzc2VkIGEgY2hhbmNlIHRvIGV4cGxhaW4gaXQgaGVyZS4gOi8KCj4+Cj4+IFB1
c2ggdGhlIGN1cnJlbnQgY2FsY3VsYXRpb24gaW50byB0aGUgb25seSBkaXJlY3QgY2FsbGVyIGlt
eC4gSW14J3MKPj4gaGFyZHdhcmUgcmVxdWlyZXMgdGhlIGZyYW1lYnVmZmVyIHdpZHRoIHRvIGJl
IGFsaWduZWQgdG8gOC4gVGhlCj4+IGRyaXZlcidzIGN1cnJlbnQgYXBwcm9hY2ggaXMgYWN0dWFs
bHkgaW5jb3JyZWN0LCBhcyBpdCBvbmx5IGd1YXJhbnRlZXMKPj4gdGhpcyBpbXBsaWNpdGx5IGFu
ZCByZXF1aXJlcyBicHAgdG8gYmUgYSBtdWx0aXBsZSBvZiA4IGFscmVhZHkuIEEKPj4gbGF0ZXIg
Y29tbWl0IHdpbGwgZml4IHRoaXMgcHJvYmxlbSBieSBhbGlnbmluZyB0aGUgc2NhbmxpbmUgcGl0
Y2gKPj4gc3VjaCB0aGF0IGFuIGFsaWduZWQgd2lkdGggc3RpbGwgZml0cyBpbnRvIGVhY2ggc2Nh
bmxpbmUncyBtZW1vcnkuCj4+Cj4+IEEgbnVtYmVyIG9mIG90aGVyIGRyaXZlcnMgYXJlIGJ1aWxk
IG9uIHRvcCBvZiBnZW0tZG1hIGhlbHBlcnMgYW5kCj4+IGltcGxlbWVudCB0aGVpciBvd24gZHVt
Yi1idWZmZXIgYWxsb2NhdGlvbi4gVGhlc2UgZHJpdmVycyBpbnZva2UKPj4gZHJtX2dlbV9kbWFf
ZHVtYl9jcmVhdGVfaW50ZXJuYWwoKSwgd2hpY2ggaXMgbm90IGFmZmVjdGVkIGJ5IHRoaXMKPj4g
Y29tbWl0Lgo+Pgo+PiB2NToKPj4gLSBhdm9pZCByZXNldCBvZiBhcmd1bWVudHMgKFRvbWkpCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pgo+PiBSZXZpZXdlZC1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25i
b2FyZC5jb20+Cj4+IC0tLQo+PiAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9kbWFfaGVscGVy
LmMgICAgIHwgNyArKysrKy0tCj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pbXgvaXB1djMvaW14LWRy
bS1jb3JlLmMgfCA0ICsrKy0KPj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9kbWFfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9kbWFfaGVscGVyLmMKPj4g
aW5kZXggNGYwMzIwZGY4NThmLi5hYjFhNzBiMWQ2ZjEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxwZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbV9kbWFfaGVscGVyLmMKPj4gQEAgLTIwLDYgKzIwLDcgQEAKPj4gICAgI2luY2x1ZGUgPGRy
bS9kcm0uaD4KPj4gICAgI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+Cj4+ICAgICNpbmNsdWRl
IDxkcm0vZHJtX2Rydi5oPgo+PiArI2luY2x1ZGUgPGRybS9kcm1fZHVtYl9idWZmZXJzLmg+Cj4+
ICAgICNpbmNsdWRlIDxkcm0vZHJtX2dlbV9kbWFfaGVscGVyLmg+Cj4+ICAgICNpbmNsdWRlIDxk
cm0vZHJtX3ZtYV9tYW5hZ2VyLmg+Cj4+ICAgIAo+PiBAQCAtMzA0LDkgKzMwNSwxMSBAQCBpbnQg
ZHJtX2dlbV9kbWFfZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsCj4+ICAg
IAkJCSAgICBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MpCj4+ICAgIHsKPj4gICAg
CXN0cnVjdCBkcm1fZ2VtX2RtYV9vYmplY3QgKmRtYV9vYmo7Cj4+ICsJaW50IHJldDsKPj4gICAg
Cj4+IC0JYXJncy0+cGl0Y2ggPSBESVZfUk9VTkRfVVAoYXJncy0+d2lkdGggKiBhcmdzLT5icHAs
IDgpOwo+PiAtCWFyZ3MtPnNpemUgPSBhcmdzLT5waXRjaCAqIGFyZ3MtPmhlaWdodDsKPj4gKwly
ZXQgPSBkcm1fbW9kZV9zaXplX2R1bWIoZHJtLCBhcmdzLCBTWl84LCAwKTsKPj4gKwlpZiAocmV0
KQo+PiArCQlyZXR1cm4gcmV0Owo+IEhpLAo+Cj4gV2FzIGl0IGludGVudGlvbmFsIGZvciB0aGlz
IGNoYW5nZSB0byBhbHRlciB0aGUgcGl0Y2g/CgpNb3N0IGhhcmR3YXJlIGRvZXMgbm90IG5lZWQg
dGhlIHBpdGNoIHRvIGJlIG9mIGEgY2VydGFpbiBhbGlnbm1lbnQuIEJ1dCAKdGhlc2UgYnVmZmVy
cyBhcmUgcG9zc2libHkgc2hhcmVkIHdpdGggb3RoZXIgaGFyZHdhcmUsIHdoaWNoIHNvbWV0aW1l
cyAKbmVlZHMgYWxpZ25tZW50IHRvIGNlcnRhaW4gdmFsdWVzLiBVc2luZyBTWl84IGltcHJvdmVz
IGNvbXBhdGlibGUgd2l0aCAKdGhhdCBoYXJkd2FyZS4KCj4KPiBUaGUgYWxpZ25tZW50IHJlcXVp
cmVtZW50IGhhcyBiZWVuIHVwZGF0ZWTigJRmcm9tIDgtYml0IGFsaWdubWVudCB0bwo+IDY0LWJp
dCBhbGlnbm1lbnQuIFNpbmNlIHRoZSBwaXRjaCBpcyBleHByZXNzZWQgaW4gYnl0ZXMsIHdlIHNo
b3VsZCBwYXNzCj4gU1pfMSBpbnN0ZWFkIG9mIFNaXzggZm9yIGh3X3BhdGNoX2FsaWduLgo+Cj4g
Rm9yIGV4YW1wbGUsIGZvciBhbiA4NTDDlzQ4MCBmcmFtZWJ1ZmZlciBhdCAxNiBicHAsIHRoZSBw
aXRjaCBzaG91bGQgYmUKPiAxNzAwIGJ5dGVzLiBXaXRoIHRoZSBuZXcgYWxpZ25tZW50LCB0aGUg
cGl0Y2ggYmVjb21lcyAxNzA0IGJ5dGVzLgoKTWFueSBkaXNwbGF5IG1vZGVzIGhhdmUgYW4gOC1i
eXRlIGFsaWdubWVudCBpbiB0aGVpciB3aWR0aC4gODUwIHBpeGVscyAKaXMgc29tZXdoYXQgb2Yg
YW4gZXhjZXB0aW9uLgoKPgo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3XigJlkIGxpa2UgbWUg
dG8gc3VibWl0IGEgZml4LgoKRG8geW91IHNlZSBhIGJ1ZyB3aXRoIHlvdXIgaGFyZHdhcmU/IFVu
bGVzcyB0aGlzIGNyZWF0ZXMgYSByZWFsIHByb2JsZW0sIApJJ2QgbGlrZSB0byBrZWVwIGl0IGFz
IGl0IGlzIG5vdy4KCkJlc3QgcmVnYXJkcwpUaG9tYXMKCj4KPiBSZWdhcmRzLAo+IEx1ZG92aWMK
Pgo+Cj4+ICAgIAo+PiAgICAJZG1hX29iaiA9IGRybV9nZW1fZG1hX2NyZWF0ZV93aXRoX2hhbmRs
ZShmaWxlX3ByaXYsIGRybSwgYXJncy0+c2l6ZSwKPj4gICAgCQkJCQkJICZhcmdzLT5oYW5kbGUp
Owo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2My9pbXgtZHJtLWNvcmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvaXB1djMvaW14LWRybS1jb3JlLmMKPj4gaW5kZXggZWM1
ZmQ5YTAxZjFlLi5hZjRhMzAzMTFlMTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
bXgvaXB1djMvaW14LWRybS1jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2
My9pbXgtZHJtLWNvcmUuYwo+PiBAQCAtMTQ1LDggKzE0NSwxMCBAQCBzdGF0aWMgaW50IGlteF9k
cm1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsCj4+ICAgIAlpbnQgcmV0
Owo+PiAgICAKPj4gICAgCWFyZ3MtPndpZHRoID0gQUxJR04od2lkdGgsIDgpOwo+PiArCWFyZ3Mt
PnBpdGNoID0gRElWX1JPVU5EX1VQKGFyZ3MtPndpZHRoICogYXJncy0+YnBwLCA4KTsKPj4gKwlh
cmdzLT5zaXplID0gYXJncy0+cGl0Y2ggKiBhcmdzLT5oZWlnaHQ7Cj4+ICAgIAo+PiAtCXJldCA9
IGRybV9nZW1fZG1hX2R1bWJfY3JlYXRlKGZpbGVfcHJpdiwgZHJtLCBhcmdzKTsKPj4gKwlyZXQg
PSBkcm1fZ2VtX2RtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbChmaWxlX3ByaXYsIGRybSwgYXJncyk7
Cj4+ICAgIAlpZiAocmV0KQo+PiAgICAJCXJldHVybiByZXQ7Cj4+ICAgIAoKLS0gCi0tClRob21h
cyBaaW1tZXJtYW5uCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKU1VTRSBTb2Z0d2FyZSBTb2x1
dGlvbnMgR2VybWFueSBHbWJICkZyYW5rZW5zdHIuIDE0NiwgOTA0NjEgTsO8cm5iZXJnLCBHZXJt
YW55LCB3d3cuc3VzZS5jb20KR0Y6IEpvY2hlbiBKYXNlciwgQW5kcmV3IE1jRG9uYWxkLCBXZXJu
ZXIgS25vYmxpY2gsIChIUkIgMzY4MDksIEFHIE7DvHJuYmVyZykKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

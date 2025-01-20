Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 962C5C02185
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 08:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVr/aPtou+5rbf4RFzK7ah5Uq9wZRv2Zdqq1I5rC8sE=; b=VIDlIR4GygKvXj
	VMsoApaIU1vkrYJZGaJHbp8krsrYozULTKVXNrZMfO2BFx+COxwdeTmO8lxmp9kgiubeBeY3BNGwl
	BPKPwD85rMnuu414pefV9RqZK/1wPEfvO73hWMmG8xIm2dEfsQElVZ/d55oVix/7JQWxEX+oEdJ+5
	4op5kKhF9KocVezhXsTgwFjJ4SXVPAFnVbEg2vsLWzfITPHKtgBzx4BO1YXwoEkj62ydzfab0J6HD
	Js9kqgiC2q7ElVJrGbWp+m2/Eh01cGsX4sJqDpXDqmZR1tQLeLM3qev9xuiTJf/SK4v+UAz8j2/Hf
	tnvI27uuQdSr97ZhcwqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZnbL-000000054Ve-0gez;
	Mon, 20 Jan 2025 08:57:43 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZnbH-000000054V2-3hVm;
	Mon, 20 Jan 2025 08:57:41 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 45D501F7A5;
	Mon, 20 Jan 2025 08:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737363458; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UxuzgDcZRRA2/FviISYwEq2AIPpj8Irf9o88aWv1Nug=;
	b=kW3Pr8f901Z7ow0UHFahd4SLynjHr1wROdXiToHoUzdZtS0UDlBfei6zyIhlrIvzjk3tTp
	1yl9BBLd/wW4AIbYNxR4/K1qnpxSQzwOXdAtcjJfXqEvwzk6HOTU7pxJDjvQKvk3vSEC+G
	+gkt4/bJ2a6edrgg2+jIR/ApD6tqgY4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737363458;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UxuzgDcZRRA2/FviISYwEq2AIPpj8Irf9o88aWv1Nug=;
	b=VlO1OePapx4jPwQ9JJ2gQmbCi/5qM66D0h4jEtVFfdhS3PQIpAi47mvrbt89crlhSXbRc0
	E8Wy/g/yidV+kRBQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=kW3Pr8f9;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=VlO1OePa
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737363458; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UxuzgDcZRRA2/FviISYwEq2AIPpj8Irf9o88aWv1Nug=;
	b=kW3Pr8f901Z7ow0UHFahd4SLynjHr1wROdXiToHoUzdZtS0UDlBfei6zyIhlrIvzjk3tTp
	1yl9BBLd/wW4AIbYNxR4/K1qnpxSQzwOXdAtcjJfXqEvwzk6HOTU7pxJDjvQKvk3vSEC+G
	+gkt4/bJ2a6edrgg2+jIR/ApD6tqgY4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737363458;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UxuzgDcZRRA2/FviISYwEq2AIPpj8Irf9o88aWv1Nug=;
	b=VlO1OePapx4jPwQ9JJ2gQmbCi/5qM66D0h4jEtVFfdhS3PQIpAi47mvrbt89crlhSXbRc0
	E8Wy/g/yidV+kRBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B6E2E139CB;
	Mon, 20 Jan 2025 08:57:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id GIpkKwEQjmc1bAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 20 Jan 2025 08:57:37 +0000
Message-ID: <dce0191b-8df0-4239-bdee-08a34c4b28d2@suse.de>
Date: Mon, 20 Jan 2025 09:57:37 +0100
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
 Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>
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
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <156804a9-3095-4c93-888f-d9041f523da6@suse.de>
 <469daa7f-123b-41cb-a99c-4441436d82dc@ideasonboard.com>
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
In-Reply-To: <469daa7f-123b-41cb-a99c-4441436d82dc@ideasonboard.com>
X-Rspamd-Queue-Id: 45D501F7A5
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FREEMAIL_ENVRCPT(0.00)[163.com,gmail.com];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,lists.xenproject.org,ideasonboard.com,163.com,fooishbar.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:mid,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_005740_088950_2174165E 
X-CRM114-Status: GOOD (  14.25  )
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

SGkKCgpBbSAyMC4wMS4yNSB1bSAwOTo1MSBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgo+IEhpLAo+
Cj4gT24gMjAvMDEvMjAyNSAwOTo0OSwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+IEhpCj4+
Cj4+Cj4+IEFtIDE2LjAxLjI1IHVtIDExOjAzIHNjaHJpZWIgVG9taSBWYWxrZWluZW46Cj4+IFsu
Li5dCj4+PiBBbGlnbmluZyB2aWRlbz0gYW5kIGR1bWIgYnVmZmVycyBhbG1vc3Qgc291bmRzIGxp
a2UgZ29pbmcgYmFja3dhcmRzLiAKPj4+IHZpZGVvPSBwYXJhbWV0ZXIgaXMgYmFkLAo+Pgo+PiBX
aG8gdG9sZCB5b3UgdGhhdD8gVmlkZW89IGlzIHN0aWxsIHRoZSB3YXkgdG8gc3BlY2lmeSBhbiBp
bml0aWFsIAo+PiBkaXNwbGF5IG1vZGUgdG8gdGhlIGtlcm5lbCBhbmQgaXQgd2lsbCByZW1haW4g
c28uCj4KPiBZb3UgZGlkID0pLiAiSXQgYWxpZ25zIGR1bWIgYnVmZmVycyBhbmQgdmlkZW89Ii4g
CgpJIGRpZCBub3QgdGVsbCB5b3UgInZpZGVvPSBwYXJhbWV0ZXIgaXMgYmFkIi4KCkJlc3QgcmVn
YXJkcwpUaG9tYXMKCj4gSSB1bmRlcnN0YW5kIHRoZSBuZWVkIGZvciBkcm1fZHJpdmVyX2NvbG9y
X21vZGVfZm9ybWF0KCkgZm9yIHZpZGVvPS4gCj4gQnV0IEkgdGhpbmsgaXQncyBiYWQgZm9yIENS
RUFURV9EVU1CLCBhdCBsZWFzdCBmb3IgdGhlIHBsYXRmb3JtcyB3aGljaCAKPiBoYXZlIG5ldmVy
IGFpbWVkIGZvciAiUkdCLW9ubHkiLgo+Cj4gU28geW91J3JlIG5vdCBpbiBmYXZvciBvZiBhIGRy
bV9tb2RlX3NpemVfZHVtYigpIHZlcnNpb24gdGhhdCBkb2VzIG5vdCAKPiB1c2UgZHJtX2RyaXZl
cl9jb2xvcl9tb2RlX2Zvcm1hdCgpLCBmb3IgdGhlc2UgcGxhdGZvcm1zPyBJJ20gc3RpbGwgYXQg
Cj4gbG9zcyBhcyB0byB3aHkgd2Ugd291bGQgd2FudCB0byBjaGFuZ2UgdGhlIGJlaGF2aW9yIG9m
IENSRUFURV9EVU1CLiBJIAo+IHNlZSBubyB1cHNpZGUsIGJ1dCBJIHNlZSB0aGUgY2hhbmNlIG9m
IHJlZ3Jlc3Npb25zLgo+Cj4gwqBUb21pCj4KCi0tIAotLQpUaG9tYXMgWmltbWVybWFubgpHcmFw
aGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21i
SApGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQpHRjogSXZvIFRv
dGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuCkhSQiAz
NjgwOSAoQUcgTnVlcm5iZXJnKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

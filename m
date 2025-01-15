Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18555C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 10:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ur/A/pKO9qW/wuS081ZzY684bK0KlM8+BXRuJAwjS2c=; b=1P8PUxnzunUbKq
	UVr11tffXMz7P+1VxH4sf73P77Cd0uaVz7G3UtKCLNgAFVt1n8rj3g2dd2kURC8ifR9nGIGfxhWcO
	BhzjbCp9aiZ1i0p/aZ/xpyq+6fcbG00gVf/kI8L4usXBYB6cr6QbNhm7Tf8h6zWRidzrzxNuShVu2
	3xbBmVo/pMkHLxmIrj/NToC3cEmGKP0lrxehyb+M5/6MY+ezZgSDPIbDlZ47Ur+T20OI/8MQrmWtM
	72CYoV2qzN1kBw51kBNKzn2pwm2DQ9VwMkCNPC+d5sOLcMj5G/EGJvY3OTbSklHuPyBaZ9s/kcnZP
	mL28APIsFDR+NBMbyi/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY0e6-0000000BUTC-2Cpj;
	Wed, 15 Jan 2025 10:29:10 +0000
Received: from smtp-out1.suse.de ([2a07:de40:b251:101:10:150:64:1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY0b8-0000000BTmq-1Na8;
	Wed, 15 Jan 2025 10:26:08 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 3A60921285;
	Wed, 15 Jan 2025 10:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736936763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=o5OaTSBvndaqL7pmKVkJ0tKcrkXR4wXg7zZA1xwdifc=;
	b=Mljgl0DvQXsyKMdMzmz5ZwZ3V789zCdVdhgaCjuMtwHrT61J2CLPcsqyigpgNfMgt5s9ED
	NQBLa2bFnxQBC6Lh8kmGl4ElL6IbxkHaMKnpSDKgAWvZ5RgKmpAEVOTkk2jS/7Dqz07SiL
	vCLaFHZP1mmjRXmvQ/ScFe4UhJimBB4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736936763;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=o5OaTSBvndaqL7pmKVkJ0tKcrkXR4wXg7zZA1xwdifc=;
	b=qI2Y6oN0l9JxGfh+RN+mqlivvJYcBaYsV/e1PTdXmK0ZMZeCqm75AAiZVcbCx5W/dssHYm
	9npljUHucuH2iADw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736936763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=o5OaTSBvndaqL7pmKVkJ0tKcrkXR4wXg7zZA1xwdifc=;
	b=Mljgl0DvQXsyKMdMzmz5ZwZ3V789zCdVdhgaCjuMtwHrT61J2CLPcsqyigpgNfMgt5s9ED
	NQBLa2bFnxQBC6Lh8kmGl4ElL6IbxkHaMKnpSDKgAWvZ5RgKmpAEVOTkk2jS/7Dqz07SiL
	vCLaFHZP1mmjRXmvQ/ScFe4UhJimBB4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736936763;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=o5OaTSBvndaqL7pmKVkJ0tKcrkXR4wXg7zZA1xwdifc=;
	b=qI2Y6oN0l9JxGfh+RN+mqlivvJYcBaYsV/e1PTdXmK0ZMZeCqm75AAiZVcbCx5W/dssHYm
	9npljUHucuH2iADw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B2519139CB;
	Wed, 15 Jan 2025 10:26:02 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id yds5KjqNh2dqKAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 15 Jan 2025 10:26:02 +0000
Message-ID: <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
Date: Wed, 15 Jan 2025 11:26:02 +0100
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com>
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
In-Reply-To: <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com>
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[ideasonboard.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_022606_516699_82E63E40 
X-CRM114-Status: GOOD (  37.94  )
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

SGkKCgpBbSAxNS4wMS4yNSB1bSAxMToxMyBzY2hyaWViIFRvbWkgVmFsa2VpbmVuOgo+IEhpIQo+
Cj4gT24gMDkvMDEvMjAyNSAxNjo1NywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+IENhbGwg
ZHJtX21vZGVfc2l6ZV9kdW1iKCkgdG8gY29tcHV0ZSBkdW1iLWJ1ZmZlciBzY2FubGluZSBwaXRj
aCBhbmQKPj4gYnVmZmVyIHNpemUuIEFsaWduIHRoZSBwaXRjaCBhY2NvcmRpbmcgdG8gaGFyZHdh
cmUgcmVxdWlyZW1lbnRzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4KPj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGlu
Y2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPj4gQ2M6IFRvbWkgVmFsa2VpbmVuIDx0b21pLnZhbGtl
aW5lbkBpZGVhc29uYm9hcmQuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3hsbngv
enlucW1wX2ttcy5jIHwgNyArKysrKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
eGxueC96eW5xbXBfa21zLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1wX2ttcy5j
Cj4+IGluZGV4IGI0NzQ2MzQ3MzQ3Mi4uN2VhMGNkNGY3MWQzIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0veGxueC96eW5xbXBfa21zLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hs
bngvenlucW1wX2ttcy5jCj4+IEBAIC0xOSw2ICsxOSw3IEBACj4+IMKgICNpbmNsdWRlIDxkcm0v
ZHJtX2NydGMuaD4KPj4gwqAgI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+Cj4+IMKgICNpbmNs
dWRlIDxkcm0vZHJtX2Rydi5oPgo+PiArI2luY2x1ZGUgPGRybS9kcm1fZHVtYl9idWZmZXJzLmg+
Cj4+IMKgICNpbmNsdWRlIDxkcm0vZHJtX2VuY29kZXIuaD4KPj4gwqAgI2luY2x1ZGUgPGRybS9k
cm1fZmJkZXZfZG1hLmg+Cj4+IMKgICNpbmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5oPgo+PiBAQCAt
MzYzLDEwICszNjQsMTIgQEAgc3RhdGljIGludCB6eW5xbXBfZHBzdWJfZHVtYl9jcmVhdGUoc3Ry
dWN0IAo+PiBkcm1fZmlsZSAqZmlsZV9wcml2LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKQo+PiDC
oCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHp5bnFtcF9kcHN1YiAqZHBzdWIgPSB0b196eW5xbXBf
ZHBzdWIoZHJtKTsKPj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgcGl0Y2ggPSBESVZfUk9VTkRfVVAo
YXJncy0+d2lkdGggKiBhcmdzLT5icHAsIDgpOwo+PiArwqDCoMKgIGludCByZXQ7Cj4+IMKgIMKg
wqDCoMKgwqAgLyogRW5mb3JjZSB0aGUgYWxpZ25tZW50IGNvbnN0cmFpbnRzIG9mIHRoZSBETUEg
ZW5naW5lLiAqLwo+PiAtwqDCoMKgIGFyZ3MtPnBpdGNoID0gQUxJR04ocGl0Y2gsIGRwc3ViLT5k
bWFfYWxpZ24pOwo+PiArwqDCoMKgIHJldCA9IGRybV9tb2RlX3NpemVfZHVtYihkcm0sIGFyZ3Ms
IGRwc3ViLT5kbWFfYWxpZ24sIDApOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiBkcm1fZ2VtX2RtYV9kdW1i
X2NyZWF0ZV9pbnRlcm5hbChmaWxlX3ByaXYsIGRybSwgYXJncyk7Cj4+IMKgIH0KPgo+IEkgaGF2
ZSBzb21lIHRyb3VibGUgd2l0aCB0aGlzIG9uZS4KPgo+IEkgaGF2ZSBzZW50IGEgc2VyaWVzIHRv
IGFkZCBzb21lIHBpeGVsIGZvcm1hdHM6Cj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNTAxMTUteGlsaW54LWZvcm1hdHMtdjItMC0xNjAzMjdjYTY1MmFAaWRlYXNvbmJvYXJkLmNv
bS8gCj4KPgo+IExldCdzIGxvb2sgYXQgWFYxNS4gSXQncyBzaW1pbGFyIHRvIE5WMTIsIGJ1dCAx
MCBiaXRzIHBlciBjb21wb25lbnQsIAo+IGFuZCBzb21lIHBhY2tpbmcgYW5kIHBhZGRpbmcuCj4K
PiBGaXJzdCBwbGFuZTogMyBwaXhlbHMgaW4gYSAzMiBiaXQgZ3JvdXAKPiBTZWNvbmQgcGxhbmU6
IDMgcGl4ZWxzIGluIGEgNjQgYml0IGdyb3VwLCAyeDIgc3Vic2FtcGxlZAo+Cj4gU28sIG9uIGF2
ZXJhZ2UsIGEgcGl4ZWwgb24gdGhlIGZpcnN0IHBsYW5lIHRha2VzIDMyIC8gMyA9IDEwLjY2Ni4u
LiAKPiBiaXRzIG9uIGEgbGluZS4gVGhhdCdzIG5vdCBhIHVzYWJsZSBudW1iZXIgZm9yIHRoZSAK
PiBEUk1fSU9DVExfTU9ERV9DUkVBVEVfRFVNQiBpb2N0bC4KPgo+IFdoYXQgSSBkaWQgd2FzIHRv
IHVzZSB0aGUgcGl4ZWwgZ3JvdXAgc2l6ZSBhcyAiYnBwIiBmb3IgCj4gRFJNX0lPQ1RMX01PREVf
Q1JFQVRFX0RVTUIuIFNvLCBlLmcuLCBmb3IgNzIwIHggNTc2Ogo+Cj4gU3RyaWRlIGZvciBmaXJz
dCBwbGFuZTogNzIwICogKDMyIC8gMykgLyA4ID0gOTYwIGJ5dGVzCj4gU3RyaWRlIGZvciBzZWNv
bmQgcGxhbmU6IDcyMCAvIDIgKiAoNjQgLyAzKSAvIDggPSA5NjAgYnl0ZXMKPgo+IEZpcnN0IHBs
YW5lOiA3MjAgLyAzID0gMjQwIHBpeGVsIGdyb3Vwcwo+IFNlY29uZCBwbGFuZTogNzIwIC8gMiAv
IDMgPSAxMjAgcGl4ZWwgZ3JvdXBzCj4KPiBTbyBJIGFsbG9jYXRlZCB0aGUgdHdvIHBsYW5lcyB3
aXRoOgo+IDI0MCB4IDU3NiB3aXRoIDMyIGJpdHNwcAo+IDEyMCB4IDI4OCB3aXRoIDY0IGJpdHNw
cAo+Cj4gVGhpcyB3b3JrZWQsIGFuZCBpZiBJIGxvb2sgYXQgdGhlIERSTV9JT0NUTF9NT0RFX0NS
RUFURV9EVU1CIGluIHRoZSAKPiBkb2NzLCBJIGNhbid0IHJpZ2h0IGF3YXkgc2VlIGFueXRoaW5n
IHRoZXJlIHRoYXQgc2F5cyBteSB0YWN0aWMgd2FzIAo+IG5vdCBhbGxvd2VkLgo+Cj4gVGhlIGFi
b3ZlIGRvZXNuJ3Qgd29yayBhbnltb3JlIHdpdGggdGhpcyBwYXRjaCwgYXMgdGhlIGNvZGUgY2Fs
bHMgCj4gZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zvcm1hdCgpLCB3aGljaCBmYWlscyBmb3IgNjQg
Yml0c3BwLiBJdCBmZWVscyBhIAo+IGJpdCBvZGQgdGhhdCBEUk1fSU9DVExfTU9ERV9DUkVBVEVf
RFVNQiB3aWxsIHRyeSB0byBndWVzcyB0aGUgUkdCIAo+IGZvdXJjYyBmb3IgYSBkdW1iIGJ1ZmZl
ciBhbGxvY2F0aW9uLgo+Cj4gU28sIHdoYXQgdG8gZG8gaGVyZT8gQW0gSSBkb2luZyBzb21ldGhp
bmcgc2lsbHk/IFdoYXQncyB0aGUgY29ycmVjdCAKPiB3YXkgdG8gYWxsb2NhdGUgdGhlIGJ1ZmZl
cnMgZm9yIFhWMTU/IFNob3VsZCBJIGp1c3QgdXNlIDMyIGJpdHNwcCBmb3IgCj4gdGhlIHBsYW5l
IDIgdG9vLCBhbmQgZG91YmxlIHRoZSB3aWR0aCAodGhpcyB3b3Jrcyk/Cj4KPiBJcyBEUk1fSU9D
VExfTU9ERV9DUkVBVEVfRFVNQiBvbmx5IG1lYW50IGZvciBzaW1wbGUgUkdCIGZvcm1hdHM/IFRo
ZSAKPiB4aWxpbnggZHJpdmVyIGNhbiwgb2YgY291cnNlLCBqdXN0IG5vdCB1c2UgZHJtX21vZGVf
c2l6ZV9kdW1iKCkuIEJ1dCAKPiBpZiBzbywgSSBndWVzcyB0aGUgbGltaXRhdGlvbnMgb2YgZHJt
X21vZGVfc2l6ZV9kdW1iKCkgc2hvdWxkIGJlIAo+IGRvY3VtZW50ZWQuCj4KPiBEbyB3ZSBuZWVk
IGEgbmV3IGR1bWItYWxsb2MgaW9jdGwgdGhhdCB0YWtlcyB0aGUgZm9ybWF0IGFuZCBwbGFuZSAK
PiBudW1iZXIgYXMgcGFyYW1ldGVycz8gT3IgYWx0ZXJuYXRpdmVseSBhIHNpbXBsZXIgZHVtYi1h
bGxvYyB0aGF0IAo+IGRvZXNuJ3QgaGF2ZSB3aWR0aCBhbmQgYnBwLCBidXQgaW5zdGVhZCB0YWtl
cyBhIHN0cmlkZSBhbmQgaGVpZ2h0IGFzIAo+IHBhcmFtZXRlcnM/IEkgdGhpbmsgdGhvc2Ugd291
bGQgYmUgZWFzaWVyIGZvciB0aGUgdXNlcnNwYWNlIHRvIHVzZSwgCj4gaW5zdGVhZCBvZiB0cnlp
bmcgdG8gYWRqdXN0IHRoZSBwYXJhbWV0ZXJzIHRvIGJlIHN1aXRhYmxlIGZvciB0aGUga2VybmVs
LgoKVGhlc2UgYXJlIGFsbCBnb29kIHBvaW50cy4gRGlkIHlvdSByZWFkIG15IGRpc2N1c3Npb24g
d2l0aCBBbmR5IG9uIHBhdGNoIAoyPyBJIHRoaW5rIGl0IHJlc29sdmVzIGFsbCB0aGUgcG9pbnRz
IHlvdSBoYXZlLiBUaGUgY3VycmVudCBDUkVBVEVfRFVNQiAKaW9jdGwgaXMgdW5zdWl0ZWQgZm9y
IGFueXRoaW5nIGJ1dCB0aGUgc2ltcGxlIFJHQiBmb3JtYXRzLiBUaGUgYnBwIApwYXJhbWV0ZXIg
aXMgbm90IHZlcnkgcHJlY2lzZS4gVGhlIHNvbHV0aW9uIHdvdWxkIGJlIGEgbmV3IGlvY3RsIGNh
bGwgCnRoYXQgcmVjZWl2ZXMgdGhlIERSTSBmb3JtYXQgYW5kIHJldHVybnMgYSBidWZmZXIgZm9y
IGVhY2ggaW5kaXZpZHVhbCBwbGFuZS4KCkkgcHJvdmlkZWQgYSB3b3JrYXJvdW5kIHBhdGNoIHRo
YXQgdXNlcyB0aGUgYnBwIHZhbHVlIGRpcmVjdGx5IGlmIApkcm1fZHJpdmVyX2NvbG9yX21vZGVf
Zm9ybWF0KCkgZG9lcyBub3Qgc3VwcG9ydCB0aGUgYnBwIHZhbHVlLiAKVXNlci1zcGFjZSBjb2Rl
IGhhcyB0byBhbGxvY2F0ZSBhIGxhcmdlIGVub3VnaCBidWZmZXIgdmlhIHRoZSBjdXJyZW50IApD
UkVBVEVfRFVNQiBhbmQgY29tcHV0ZSB0aGUgaW5kaXZpZHVhbCBwbGFuZXMgaXRzZWxmLiBTZWUg
WzFdIGZvciBhbiAKZXhhbXBsZS4gWzFdIApodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
bWVzYS9kcm0vLS9ibG9iL21haW4vdGVzdHMvbW9kZXRlc3QvYnVmZmVycy5jP3JlZl90eXBlPWhl
YWRzI0wzMDIgCkRvZXMgdGhpcyB3b3JrIGZvciB5b3U/IE90aGVyd2lzZSwgSSBndWVzcyB3ZSBz
aG91bGQgYmUgdGFsa2luZyBhYm91dCBhIApwb3NzaWJsZSBDUkVBVEVfRFVNQjIgdGhhdCBmaXhl
cyB0aGVzZSBzaG9ydGNvbWluZ3MuIEJlc3QgcmVnYXJkcyBUaG9tYXMKPgo+IMKgVG9taQo+Cgot
LSAKLS0KVGhvbWFzIFppbW1lcm1hbm4KR3JhcGhpY3MgRHJpdmVyIERldmVsb3BlcgpTVVNFIFNv
ZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBO
dWVybmJlcmcsIEdlcm1hbnkKR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNE
b25hbGQsIEJvdWRpZW4gTW9lcm1hbgpIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A9CE77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 17:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djJ3tt9xZwRuv0lsmBMpVKS+pOf8KZmed5j62QiB4Ug=; b=imWKim2fJ9j7SS
	AIAT7qdEYqxxidWp01vsPV7C/u3WhIK2YAIFTE9qpcJjRRzyCg1DqFYwrElbckxNhz3iht6hBHTDe
	D8mBdb0kVj90Vw4OiHccjO57k5ZUHqZBqhy13GEAcKeAQuTvpENDezzeTbnRQqVNC0h1a2SHFjZ6y
	JLxG3zLnlEzMxVlBn/Wf8BNCG7maFSwVq6Mswv5iy4XZuOGgWgyF50nTVytBO/73vcWrI4KFbNgNG
	L6vkI0DQMynxV4TRN5jPCvFL16dsBH644wGmmmDeNZ4T930mFLmM84B2Uyb9WxskVOsVPPV+vuaov
	RXrAqcKEXyRLl5g4P+7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVwTF-0000000Cr6I-2Mrp;
	Thu, 09 Jan 2025 17:37:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvMc-0000000Cg1G-2Kri;
	Thu, 09 Jan 2025 16:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NRmPm0ZNk/C3mZstvTuhKj0QjfwNtjAVVxCaUxWitUE=; b=RHVajYWMBY1Ha6bWDI/CUSRtXj
	YcPbfko1ezBSZPYdywkE5dptgr22KPCl48FG2ANRX64tZFOed3G3CwUZdt3UrejGAC52p5OAyFX3g
	ZaE9l9jFTzXuknvTsKd6LfHS6rCxwNd+ky1t0eccf2pRuP+SyyHgCIQuat8u24RiK7KLnvketXoss
	LttLizwVupfhINoP0HRH8v0hsIc+Us17vnky6rDYnStgL86E6pxQJdR7zAFqHeKQ/zvQUxHIB3LQ0
	HLUZX+f3rKgB1bdXO4d26IID7sxEl2spxG95v5qe9w/ZpSduguYyAZdE7ivJsjjQYTj+q1HXqpAnX
	KOkmDwDA==;
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvMZ-00000009bDR-0sQO;
	Thu, 09 Jan 2025 16:26:29 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 8BEF71F394;
	Thu,  9 Jan 2025 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736439985; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NRmPm0ZNk/C3mZstvTuhKj0QjfwNtjAVVxCaUxWitUE=;
	b=sbSREeiq9iYjhEjeQW4qdyaKgpxCCvgX4XR/fBFVbBO4pMWr9sS4BXsXIGQmQ85imThdW3
	YEr9PS4vxUj00SkQvkhd+WdDG7ceEvYLGtYIwa15RLNL2aCvQCzad51udAuGukV2DSk9ep
	xC+VFiwxwgPTMZtQGbOekt/679hQbN0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736439985;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NRmPm0ZNk/C3mZstvTuhKj0QjfwNtjAVVxCaUxWitUE=;
	b=Lfl2D7OwYEWe79nVY++MQKtG++F9vBKMfMM+7FkArBH4/ckhXi+TbuY3f0MHOm2XwF8VUk
	tzwhYX4d2YyHyaDw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736439985; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NRmPm0ZNk/C3mZstvTuhKj0QjfwNtjAVVxCaUxWitUE=;
	b=sbSREeiq9iYjhEjeQW4qdyaKgpxCCvgX4XR/fBFVbBO4pMWr9sS4BXsXIGQmQ85imThdW3
	YEr9PS4vxUj00SkQvkhd+WdDG7ceEvYLGtYIwa15RLNL2aCvQCzad51udAuGukV2DSk9ep
	xC+VFiwxwgPTMZtQGbOekt/679hQbN0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736439985;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NRmPm0ZNk/C3mZstvTuhKj0QjfwNtjAVVxCaUxWitUE=;
	b=Lfl2D7OwYEWe79nVY++MQKtG++F9vBKMfMM+7FkArBH4/ckhXi+TbuY3f0MHOm2XwF8VUk
	tzwhYX4d2YyHyaDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 00C48139AB;
	Thu,  9 Jan 2025 16:26:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 9qu0ObD4f2fqBgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 09 Jan 2025 16:26:24 +0000
Message-ID: <6666af19-a98d-41d7-8329-7b50807c04a9@suse.de>
Date: Thu, 9 Jan 2025 17:26:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/25] drm/xe: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Matthew Auld <matthew.auld@intel.com>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-24-tzimmermann@suse.de>
 <91c904f8-ba47-4595-be65-6fb57dcc9c64@intel.com>
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
In-Reply-To: <91c904f8-ba47-4595-be65-6fb57dcc9c64@intel.com>
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[intel.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,suse.de:email,suse.de:mid]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_162627_691861_B813AAFF 
X-CRM114-Status: GOOD (  16.91  )
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

SGkKCgpBbSAwOS4wMS4yNSB1bSAxNzowNSBzY2hyaWViIE1hdHRoZXcgQXVsZDoKPiBPbiAwOS8w
MS8yMDI1IDE0OjU3LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPj4gQ2FsbCBkcm1fbW9kZV9z
aXplX2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5lIHBpdGNoCj4+IGFuZCBi
dWZmZXIgc2l6ZS4gQWxpZ24gdGhlIHBpdGNoIHRvIGEgbXVsdGlwbGUgb2YgOC4gQWxpZ24gdGhl
Cj4+IGJ1ZmZlciBzaXplIGFjY29yZGluZyB0byBoYXJkd2FyZSByZXF1aXJlbWVudHMuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+
PiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+IENjOiAi
VGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jIHwgOCArKysrLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYwo+PiBp
bmRleCBlNmM4OTZhZDU2MDIuLmQ3NWUzYzM5YWIxNCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3hlL3hlX2JvLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMKPj4g
QEAgLTgsNiArOCw3IEBACj4+IMKgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+Cj4+IMKgIMKg
ICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgo+PiArI2luY2x1ZGUgPGRybS9kcm1fZHVtYl9idWZm
ZXJzLmg+Cj4+IMKgICNpbmNsdWRlIDxkcm0vZHJtX2dlbV90dG1faGVscGVyLmg+Cj4+IMKgICNp
bmNsdWRlIDxkcm0vZHJtX21hbmFnZWQuaD4KPj4gwqAgI2luY2x1ZGUgPGRybS90dG0vdHRtX2Rl
dmljZS5oPgo+PiBAQCAtMjUzNSwxNCArMjUzNiwxMyBAQCBpbnQgeGVfYm9fZHVtYl9jcmVhdGUo
c3RydWN0IGRybV9maWxlIAo+PiAqZmlsZV9wcml2LAo+PiDCoMKgwqDCoMKgIHN0cnVjdCB4ZV9k
ZXZpY2UgKnhlID0gdG9feGVfZGV2aWNlKGRldik7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHhlX2Jv
ICpibzsKPj4gwqDCoMKgwqDCoCB1aW50MzJfdCBoYW5kbGU7Cj4+IC3CoMKgwqAgaW50IGNwcCA9
IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwo+PiDCoMKgwqDCoMKgIGludCBlcnI7Cj4+IMKg
wqDCoMKgwqAgdTMyIHBhZ2Vfc2l6ZSA9IG1heF90KHUzMiwgUEFHRV9TSVpFLAo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgeGUtPmluZm8udnJhbV9mbGFncyAmIFhFX1ZSQU1fRkxBR1NfTkVFRDY0SyA/
IFNaXzY0SyA6IFNaXzRLKTsKPj4gwqAgLcKgwqDCoCBhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3Mt
PndpZHRoICogY3BwLCA2NCk7Cj4+IC3CoMKgwqAgYXJncy0+c2l6ZSA9IEFMSUdOKG11bF91MzJf
dTMyKGFyZ3MtPnBpdGNoLCBhcmdzLT5oZWlnaHQpLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwYWdlX3NpemUpOwo+PiArwqDCoMKgIGVyciA9IGRybV9tb2RlX3NpemVfZHVtYihk
ZXYsIGFyZ3MsIFNaXzY0LCBwYWdlX3NpemUpOwo+Cj4gQUZBSUNUIHRoaXMgbG9va3MgdG8gY2hh
bmdlIHRoZSBiZWhhdmlvdXIsIHdoZXJlIHU2NCBzaXplIHdhcyAKPiB0ZWNobmljYWxseSBwb3Nz
aWJsZSBhbmQgd2FzIGFsbG93ZWQgZ2l2ZW4gdGhhdCBhcmdzLT5zaXplIGlzIHU2NCwgYnV0IAo+
IHRoaXMgaGVscGVyIGlzIGxpbWl0aW5nIHRoZSBzaXplIHRvIHUzMi4gSXMgdGhhdCBpbnRlbnRp
b25hbD8gSWYgc28sIAo+IHdlIHNob3VsZCBwcm9iYWJseSBtYWtlIHRoYXQgY2xlYXIgaW4gdGhl
IGNvbW1pdCBtZXNzYWdlLgoKVGhhdCdzIGFuIGludGVyZXN0aW5nIG9ic2VydmF0aW9uOyB0aGFu
a3MuIFRoZSBpb2N0bCdzIGludGVybmFsIGNoZWNrcyAKaGF2ZSBhbHdheXMgbGltaXRlZCB0aGUg
c2l6ZSB0byAzMiBiaXQuIFsxXSBJIHRoaW5rIGl0IGlzIG5vdCBzdXBwb3NlZCAKdG8gYmUgbGFy
Z2VyIHRoYW4gdGhhdC4gV2UgY2FuIGNoYW5nZSB0aGUgaGVscGVyIHRvIHN1cHBvcnQgNjQtYml0
IHNpemVzIAphcyB3ZWxsLgoKSGF2aW5nIHNhaWQgdGhhdCwgaXMgdGhlcmUgYW55IHVzZSBjYXNl
PyBEdW1iIGJ1ZmZlcnMgYXJlIGZvciBzb2Z0d2FyZSAKcmVuZGVyaW5nIG9ubHkuIEFsbG9jYXRp
bmcgbW9yZSB0aGFuIGEgZmV3IGRvemVuIE1pQiBzZWVtcyBsaWtlIGEgCm1pc3Rha2UuIE1heWJl
IHdlIHNob3VsZCByYXRoZXIgbGltaXQgdGhlIGFsbG93ZWQgYWxsb2NhdGlvbiBzaXplIGluc3Rl
YWQ/CgpCZXN0IHJlZ2FyZHMKVGhvbWFzCgpbMV0gCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L3Y2LjEyLjYvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHVtYl9idWZmZXJzLmMj
TDgyCgo+Cj4+ICvCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7
Cj4+IMKgIMKgwqDCoMKgwqAgYm8gPSB4ZV9ib19jcmVhdGVfdXNlcih4ZSwgTlVMTCwgTlVMTCwg
YXJncy0+c2l6ZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBE
Uk1fWEVfR0VNX0NQVV9DQUNISU5HX1dDLAo+CgotLSAKLS0KVGhvbWFzIFppbW1lcm1hbm4KR3Jh
cGhpY3MgRHJpdmVyIERldmVsb3BlcgpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdt
YkgKRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkKR0Y6IEl2byBU
b3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbgpIUkIg
MzY4MDkgKEFHIE51ZXJuYmVyZykKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC332CA5FC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 07:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvEmGYmAWLQOSfvLhmFy4GBDRgCeq5o/VILFE8uFVTs=; b=d2RDWeIkJcgpn0
	v9Fk/FkGvYMuyH1sSh4LL/jgCPLaaj6fkni9BOKPJA+tcdu6XmJBSOZlPup961vHxNQ8AQgQjIMPV
	znsp2SLMsEJImgdUrueRB+1RorSMML+GlegQ+GUDRcC9fMI9b7W9D5/HvOpFtZeLwsyTVcA6EM5N5
	ipDqA2VfLFX0FM4GUBCigls/YiMic9EfpiYYvEzjucKA4dckh7nfYfAJEmtisVizkXNWbcNzjyE/7
	BKrVxhc6gP4OmKPjLLvgy9GuWoNGZtUnyAdIG15gipCS6w6vb8NudTPHzwqo+zdlIitiecbyz2iXa
	WFU3M2qhM96He9PwPMDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBp5W-00000005L1c-2CMQ;
	Wed, 30 Sep 2026 07:50:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBp5R-00000005Kz1-3XPJ;
	Wed, 30 Sep 2026 07:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Rb4nWwlxaPy2o69lqksbAluMfoEqrzWeYPEQbVBWoFQ=; b=IYZTcjsvU5e1yyohw32v9ZfrGH
	AQswUyEeDYajT+Zuel+9ttg3euqRySph+OAj++EKj4Om5OJz6rBfbuZE7SqDGtZz7EwQKvcv1+j2q
	hvD+X0pCzZHUlppfOo7zXXvP8zGk6lioI7unXqKv9KitgcuA604IWabr5NLGZIWh737Ifdl/ZkWMj
	/yEGJ6+6IUWduxJ3ZIm3mD4is1p7XNYSlnuv6e4nwXB30V9Xv7rWOr4I8Fld48h30tAu1u6zjT/LW
	2vKkW33g8u1fdKMj7J9mdgacVxwOmbqgnXeNI5iYIl5iWeXFR/crzk5sIr5v109566iL8SWdtYg0S
	xfXWXjJA==;
Received: from mout-p-103.mailbox.org ([80.241.56.161])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBp5O-00000003Ugz-2O63;
	Wed, 30 Sep 2026 07:50:44 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4hvnK72P1czKnd1;
	Wed, 30 Sep 2026 09:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1790754635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Rb4nWwlxaPy2o69lqksbAluMfoEqrzWeYPEQbVBWoFQ=;
	b=G/99nNpVvjN+Q4t0ht6oc9WzRJSmnV1DgJ/PvIQS3FkjTeoiT4PpJrrETsDyYBulpx3DFh
	1MygqaTB5J0gxRy2nzvPif1T0eoIR0rRfMMokq8CM2UVlIzJ2C1wxerxl9FaZcfrR6MfB9
	0QJxx9lP5f1nSfL223tsigokddcdZY5e0Fuq7cIpm+QR80SNfkhxIK2i70luRqutJT1IGy
	fG9W6cJ7lc4NclOYhTCv55AY4IGFUzyujT/zM8is1SxeQY41bygWNZM9geTXJAiCeeIXmk
	VCbYbkFpkaaYZfE6euWAPK3k2cjFPKVQk0qpEvjzMoq0aYCFyhMQHcvn+nd+zg==
Message-ID: <d1280ea9-ef96-42c5-a613-a4db8de0e9f2@mailbox.org>
Date: Wed, 30 Sep 2026 09:50:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 06/25] drm/connector: hdmi: Add VTEM EMP generation
To: Vidith Madhu <vmadhu@nvidia.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Leo Li <sunpeng.li@amd.com>, Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-6-2fcd7d011646@collabora.com>
 <a5bc012a-9b9e-eb2b-d67e-a91f2d93d6bf@nvidia.com>
 <FJ8OpdCORV2b1oivG9-G9Q@collabora.com>
 <9dccf035-2806-7b92-ce17-00f95bcf773a@nvidia.com>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <9dccf035-2806-7b92-ce17-00f95bcf773a@nvidia.com>
X-MBO-RS-META: g68zfnwjayxji9kxshey3fmwfqszuo7m
X-MBO-RS-ID: e699964b73b7c292c05
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_085042_866757_F94D0021 
X-CRM114-Status: GOOD (  26.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gOS8yOS8yNiAyMDo1NSwgVmlkaXRoIE1hZGh1IHdyb3RlOgo+IE9uIFNhdCwgMjYgU2VwIDIw
MjYsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPj4gT24gRnJpZGF5LCAyNSBTZXB0ZW1iZXIg
MjAyNiAwNTo0ODo1NCBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIFZpZGl0aCBNYWRodSB3
cm90ZToKPj4KPj4+IE1heWJlIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gZXh0ZW5kIHRoZSBxbXNf
ZW5hYmxlZCBjb25uZWN0b3IgcHJvcGVydHkgCj4+PiBpbnRyb2R1Y2VkIGluIHRoaXMgcGF0Y2hz
ZXQgdG8gYW4gZW51bSBvZiB7T2ZmLCBHYW1pbmcsIFFNU30/IFRoaXMgd291bGQgYWxsb3cKPj4+
IGEgc3RhbmRhcmQgcGF0aCB0byBjb250cm9sIHRoZSBWUlIgc3RhdGUgb24gdGhlIHNpbmssIHNl
cGFyYXRlbHkgZnJvbQo+Pj4gdnJyX2VuYWJsZWQuCj4+Cj4+IEFuIGVhcmxpZXIgdmVyc2lvbiBv
ZiB0aGUgcGF0Y2ggc2VyaWVzIEkgd2FzIHdvcmtpbmcgb24gaW50ZXJuYWxseSBoYWQgYQo+PiBW
UlIgbGltaXRlciBwcm9wZXJ0eSB0aGF0IHdvdWxkIGVpdGhlciBiZSBPZmYgKGkuZS4gR2FtZSks
IEdhbWUtTGltaXRlZCwKPj4gUU1TLUxpbWl0ZWQsIGFuZCBpdCBzZWxmLWluZmxpY3RlZCBzb21l
IGFtb3VudCBvZiBjb25mdXNpb24gYmVjYXVzZSBvZgo+PiB0aGUgd2F5IHRoaW5ncyB3ZXJlIG5h
bWVkLCBzbyBJIHJlZmFjdG9yZWQgaXQgdG8gdGhlIGxpbWl0ZXIgdmFsdWVzIGJlaW5nCj4+IHdo
YXQgZGV0ZXJtaW5lcyB3aGV0aGVyIGEgbGltaXRlciBpcyB1c2VkLCBhbmQgdGhlIFFNUyBlbmFi
bGUgdG8gZGV0ZXJtaW5lCj4+IHdoZXRoZXIgUU1TIGlzIHVzZWQgdG8gYXBwbHkgc2FpZCBsaW1p
dC4gU28gbXkgaW5pdGlhbCByZWFjdGlvbiBpcyB0byBiZQo+PiBoZXNpdGFudCBhYm91dCBleHBh
bmRpbmcgdGhlIGNvbGxlY3Rpb24gb2YgcG9zc2libGUgc3RhdGVzIGV4cG9zZWQgdGhyb3VnaAo+
PiB0aGUgdUFQSS4KPj4KPj4gVG8gaGVscCBteSB1bmRlcnN0YW5kaW5nOiB3aGF0IGRvZXMKPj4K
Pj4gIHZycl9lbmFibGVkPXRydWUKPj4gICRuZXdfcHJvcGVydHk9T2ZmCj4+Cj4+IG1lYW4gZm9y
IHByZXNlbnRhdGlvbj8KPiBJbiB0aGlzIGNhc2UsIGl0IHNob3VsZCBiZSBhY2NlcHRhYmxlIHRv
IGRpc2FibGUgVlJSIG9uIGJvdGggdGhlIHNvdXJjZSAKPiBhbmQgc2luayBhbmQgZWZmZWN0aXZl
bHkgaWdub3JlIHZycl9lbmFibGVkPXRydWUuIEZyb20gcmVhZGluZwo+IGh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L3Y3LjIuOC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2RybV9jb25u
ZWN0b3IuYyNMMjM3MAo+IHZycl9lbmFibGVkIGlzIGVzc2VudGlhbGx5IGEgaGludCBhbmQgdGhl
cmUgaXMgbm8gbmVlZCB0byByZWplY3QgY29tbWl0cyAKPiBiZWNhdXNlIG9mIGl0cyB2YWx1ZSAo
YXQgbGVhc3QsIHRoYXQgaXMgaG93IHdlIGhhbmRsZSBpdCBpbiB0aGUgTlZJRElBIAo+IGRyaXZl
cikuCgpJIHByZXN1bWUgeW91J3JlIHJlZmVycmluZyB0byB0aGlzOgoKICoJVGhlIGRyaXZlciB3
aWxsIHRha2UgdGhpcyBwcm9wZXJ0eSBhcyBhIGhpbnQgdG8gZW5hYmxlIHZhcmlhYmxlCiAqCXJl
ZnJlc2ggcmF0ZSBzdXBwb3J0IGlmIHRoZSByZWNlaXZlciBzdXBwb3J0cyBpdCwgaWUuIGlmIHRo
ZQogKgkidnJyX2NhcGFibGUiIHByb3BlcnR5IGlzIHRydWUgb24gdGhlICZkcm1fY29ubmVjdG9y
IG9iamVjdC4KCk15IHJlYWRpbmcgb2YgdGhhdCBpcyBzaW1wbHk6ICJJZiB2cnJfY2FwYWJsZT0w
LCBWUlJfRU5BQkxFRD0xIGhhcyBubyBlZmZlY3QiIChpLmUuIGtpbmQgb2Ygc3RhdGluZyB0aGUg
b2J2aW91cyA6KS4gTm90IHN1cmUgSSBzZWUgdGhlIGp1c3RpZmljYXRpb24gZm9yIFZSUl9FTkFC
TEVEIGJlaW5nICJqdXN0IGEgaGludCIgYmV5b25kIHRoYXQuCgoKPj4gQW5vdGhlciBzdGF0ZSBJ
J20gY3VyaW91cyBhYm91dCBpcwo+Pgo+PiAgdnJyX2VuYWJsZWQ9ZmFsc2UKPj4gICRuZXdfcHJv
cGVydHk9R2FtZQo+Pgo+PiB3aGljaCBJIGFzc3VtZSBpcyB0aGUgY2FzZSB5b3UncmUgaW50ZXJl
c3RlZCBpbiwgd2hlcmUgdGhlIGNvbXBvc2l0b3IgZG9lcwo+PiBub3Qgd2FudCBWUlIgcHJlc2Vu
dGF0aW9uIGJ1dCB3ZSdyZSBrZWVwaW5nIHRoZSBzaW5rIGluIEdhbWUgbW9kZSB0byBhdm9pZAo+
PiBoYXZpbmcgdGhlIGRpc3BsYXkgZ28gYmxhbmsuCj4gVGhhdCdzIHJpZ2h0LCBpbiB0aGlzIGNh
c2UgVlJSIGlzIGVuYWJsZWQgb24gdGhlIHNpbmsgYnV0IGRlYWN0aXZhdGVkIAo+IHNvdXJjZS1z
aWRlLiBGb3IgTlZJRElBLCB0aGVyZSBpcyBhIGRpc3RpbmN0IEhXICJkZWFjdGl2YXRlZCIgc3Rh
dGUgb2YgCj4gVlJSLCBidXQgd2UgY291bGQgYWNoaWV2ZSB0aGUgc2FtZSByZXN1bHQgYnkgc2V0
dGluZyB0aGUgZnJhbWUgcmFuZ2UgCj4gbGltaXRzIHRvIGEgZml4ZWQgdmFsdWUgYXMgeW91IHN1
Z2dlc3RlZC4KPj4KPj4gaXMgdGhhdCBjb3JyZWN0LCBhbmQgc29tZXRoaW5nIHRoYXQgZG9lcyBu
ZWVkIGFuIGV4cGFuZGVkIHByb3BlcnR5PyBJIGZlZWwKPj4gbGlrZSB1c2Vyc3BhY2UgY291bGQg
YmUgc21hcnQgZW5vdWdoIHRvIGRvIHRoYXQgYnkga2VlcGluZyB2cnJfZW5hYmxlZD10cnVlCj4+
IGFuZCB0aGVuIHNldHRpbmcgYSBmaXhlZCB0YXJnZXQsIGlmIHRoZSBnb2FsIGlzIHRvIGhhdmUg
bm9uLVZSUiBidXQgd2l0aCB0aGUKPj4gZGlzcGxheSBzdGlsbCBpbiBWUlIgbW9kZS4KPiBJIGFn
cmVlLCBJIGFtIGEgbGl0dGxlIGNvbmNlcm5lZCB0aG91Z2ggYWJvdXQgdGhlIHRyYW5zaXRpb24g
cGVyaW9kIGZvciAKPiBjb21wb3NpdG9ycyB0byBhZG9wdCB0aGlzIG5ldyBtb2RlbC4gSSBrbm93
IGZvciBleGFtcGxlIEtERSBpcyB1c2luZyB0aGUgCj4gdnJyX2VuYWJsZWQgcHJvcGVydHkgZm9y
IHRoZWlyICJBZGFwdGl2ZVN5bmMiIG9wdGlvbiwgYW5kIGl0IHNlZW1zIGxpa2UgaXQgCj4gd291
bGQgYmUgYSByZWdyZXNzaW9uIGlmIGFsbCBvZiBhIHN1ZGRlbiB0b2dnbGluZyBpdCBjYXVzZWQg
ZGlzcGxheSAKPiBibGFua2luZyBvbiBuZXdlciBrZXJuZWxzLgoKWWVzIGl0IHdvdWxkIGJlLCBh
bHNvIGZvciBtdXR0ZXIsIHdoaWNoIGN1cnJlbnRseSBzZXRzIFZSUl9FTkFCTEVEIHRvIDEgb25s
eSB3aGlsZSB0aGVyZSdzIGEgc3VyZmFjZSBmdWxseSBjb3ZlcmluZyB0aGUgc2NyZWVuLgoKCi0t
IApFYXJ0aGxpbmcgTWljaGVsIETDpG56ZXIgICAgICAgXCAgICAgICAgR05PTUUgLyBYd2F5bGFu
ZCAvIE1lc2EgZGV2ZWxvcGVyCmh0dHBzOi8vcmVkaGF0LmNvbSAgICAgICAgICAgICBcICAgICAg
ICAgICAgICAgTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

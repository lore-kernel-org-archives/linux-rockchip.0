Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E06FED9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 17:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Subject:
	Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBUPeJ0Wp/5V1kTA9Vwq58kI3FUgZ8LufGXY68J2FgU=; b=Taqm2kfYxdg2U/
	yJtpsy8rHBQgt4nLbAuA2Dl2MHYiYJEKJVxamK9L2t5O57aOSby6nDXGhzC2NgPrD78RWBtAKgOzo
	aslUEEfH9PjGopQlLJzyilYJ78/BYjtGd1U74PznfdpL4xoZliEp775J52E35exKDUeDLuw7yLdXx
	Zy7yWnJJ432dUCEOT7CYGrLCzTZu9IXOatHQAlLi+xcewoPfCrtSCnz2AuUe7CBAh8z0i+zDHIKAV
	z4kd7g+PdEzfKKlsFUIwP+V2khJ5KR3OH467ym1+qktBEkQc7Ae1Pzc6d8Vpf6/6K1AZ0PCt4wFS0
	fj53AOxG5lsNNGY35t8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YKz-00000006wyV-3lRO;
	Tue, 17 Mar 2026 17:36:13 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YKw-00000006wxg-1MOd
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 17:36:12 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 392F1C55059;
	Tue, 17 Mar 2026 17:36:31 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0AF965FC9A;
	Tue, 17 Mar 2026 17:36:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A92BD1045065D;
	Tue, 17 Mar 2026 18:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773768965; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jpsLJn4w7neAQsnq1JuiayRZw0qDoeOk/wH87a8LDpY=;
	b=0FrSobcSxum9vt1AIfUY5FnLi/zPcxY6DTWX7PMLG25gqnT6Ea+Pdp7Jb/VY5KvywAAcgm
	4/JkHrHrU9v8jw1+h2OWqusK5R1j0hCRseQJlKMG3E4E6y//QN9Od8WSOdVK1lmMrt2hIn
	ABsGxuCGGDBSGmFrMhXZ5bCbgeLtJrqJeijIEQ+LT3QMeHZXEnJjoFYgBdQkkxwoAXxonS
	lE87RrmAvA+pIBxCp1bku2ZmOUl8TtgwiA8u4n2p8Gjm43NGDq7kKPyabbszqJiYvpbVnj
	lCwurXWGVNwJN4XKEnMt9Oy7FxXSTn6+piM3Z38PUfdpjpQf+F6L7s8NWgGLDQ==
Mime-Version: 1.0
Date: Tue, 17 Mar 2026 18:35:58 +0100
Message-Id: <DH58MAETGDMM.2QS6VJDQ7UXIV@bootlin.com>
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio
 output
To: "Christian Hewitt" <christianshewitt@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
 <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
 <00EE3E21-F614-429B-ACB6-19AF64CF74B3@gmail.com>
In-Reply-To: <00EE3E21-F614-429B-ACB6-19AF64CF74B3@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_103610_526436_1A738C0C 
X-CRM114-Status: GOOD (  15.85  )
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
Cc: Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Simona Vetter <simona@ffwll.ch>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Detlev Casanova <detlev.casanova@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Douglas Anderson <dianders@chromium.org>, Sugar
 Zhang <sugar.zhang@rock-chips.com>, Dmitry
 Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Andy Yan <andy.yan@rock-chips.com>, David
 Airlie <airlied@gmail.com>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gQ2hyaXN0aWFuLCBDcmlzdGlhbiwgSm9uYXMsCgpPbiBUdWUgTWFyIDE3LCAyMDI2IGF0
IDU6NDkgUE0gQ0VULCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+PiBPbiAxNyBNYXIgMjAyNiwg
YXQgODoxNuKAr3BtLCBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPiB3
cm90ZToKPj4KPj4gSGVsbG8gQ2hyaXN0aWFuLAo+Pgo+PiBPbiBTYXQgRmViIDI4LCAyMDI2IGF0
IDEyOjI4IFBNIENFVCwgQ2hyaXN0aWFuIEhld2l0dCB3cm90ZToKPj4+IEZyb206IEpvbmFzIEth
cmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4+Cj4+PiBDaGFubmVsIEFsbG9jYXRpb24gKFBCNCkg
YW5kIExldmVsIFNoaWZ0IEluZm9ybWF0aW9uIChQQjUpIGFyZQo+Pj4gY29uZmlndXJlZCB3aXRo
IHZhbHVlcyBmcm9tIFBCMSBhbmQgUEIyIGR1ZSB0byB0aGUgd3Jvbmcgb2Zmc2V0Cj4+PiBiZWlu
ZyB1c2VkLiBUaGlzIHJlc3VsdHMgaW4gbWlzc2luZyBhdWRpbyBjaGFubmVscyBvciBpbmNvcnJl
Y3QKPj4+IHNwZWFrZXIgcGxhY2VtZW50IHdoZW4gcGxheWluZyBtdWx0aS1jaGFubmVsIGF1ZGlv
Lgo+Pj4KPj4+IFVzZSB0aGUgY29ycmVjdCBvZmZzZXQgdG8gZml4IG11bHRpLWNoYW5uZWwgYXVk
aW8gb3V0cHV0Lgo+Pj4KPj4+IEZpeGVzOiBmZDAxNDFkMWE4YTIgKCJkcm0vYnJpZGdlOiBzeW5v
cHN5czogQWRkIGF1ZGlvIHN1cHBvcnQgZm9yIGR3LWhkbWktcXAiKQo+Pj4gUmVwb3J0ZWQtYnk6
IENocmlzdGlhbiBIZXdpdHQgPGNocmlzdGlhbnNoZXdpdHRAZ21haWwuY29tPgo+Pj4gU2lnbmVk
LW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+Pj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+PiBSZXZp
ZXdlZC1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbT4KPj4KPj4gV2hpbGUgYXBwbHlpbmcgdGhpcyBwYXRjaCB0byBkcm0tbWljcy1maXhlcywg
Y2hlY2twYXRjaCBjb21wbGFpbnM6Cj4+Cj4+ICAtOjE0OiBXQVJOSU5HOkJBRF9SRVBPUlRFRF9C
WV9MSU5LOiBSZXBvcnRlZC1ieTogc2hvdWxkIGJlIGltbWVkaWF0ZWx5IGZvbGxvd2VkIGJ5IENs
b3Nlczogd2l0aCBhIFVSTCB0byB0aGUgcmVwb3J0Cj4+Cj4+IFlvdSBjYW4gc2VuZCB2MyB3aXRo
IHRoZSBsaW5rLCBvciBqdXN0IHJlcGx5IHdpdGggdGhlIGxpbmsgYW5kIEknbGwgdGFrZQo+PiBj
YXJlIG9mIGFkZGluZyBpdCB0byB0aGUgY29tbWl0IG1lc3NhZ2UuCj4KPiBBcG9sb2dpZXMsIGl0
IGxvb2tzIGxpa2UgdXNlIG9mIFJlcG9ydGVkLWJ5IHdhcyB0aWdodGVuZWQgc2luY2UgSSBsYXN0
Cj4gdXNlZCBpdCwgYW5kIHRoZXJl4oCZcyBubyBvZmZpY2lhbCByZXBvcnQgYW55d2hlcmUgSSBj
YW4gbGluayB0byAoaXQgd2FzCj4gYWxsIGRvbmUgaW4gcHJpdmF0ZSBjaGFubmVscykgc28gYmV0
dGVyIHRvIGp1c3QgZHJvcCBpdCBmcm9tIHRoZSB2MiBwYXRjaAo+IGlmIHRoYXTigJlzIHBvc3Np
YmxlPyAtIGlmIG5vdCBJIGNhbiBzZW5kIGEgdjMgd2l0aG91dCBpdC4KClRoYW5rcyBmb3IgdGhl
IHF1aWNrIGZlZWRiYWNrLgoKSSBhcHBsaWVkIGtlZXBpbmcgdGhlIGNvbW1pdCBtZXNzYWdlIGFz
IGlzLiBJbiBsYWNrIG9mIGEgcHVibGljIGRpc2N1c3Npb24KSSBndWVzcyB0aGUgJ1JlcG9ydGVk
LWJ5JyBpcyBzb21ld2hhdCBpbmZvcm1hdGl2ZSBhbnl3YXkuIEkgcmVhZCB0aGUKY2hlY2twYXRj
aCBhcyBhIGdlbmVyYWwgc3VnZ2VzdGlvbiwgbm90IGEgaGFyZCBydWxlLgoKU28gbm93IHRoaXMg
cGF0Y2ggaXMgb24gZHJtLW1pc2MtZml4ZXMsIGJ1dCBkcm0tbWlzYy1maXhlcyBhbmQKZHJtLW1p
c2MtbmV4dCBhcmUgbm93IGNvbmZsaWN0aW5nIGJlY2F1c2Ugb2Ygb3RoZXIgY2hhbmdlcyBieSBD
cmlzdGlhbgpDaW9jYWx0ZWEgYXBwbGllZCBpbiB0aGUgbWVhbndoaWxlIHRvIGRybS1taXNjLW5l
eHQsIGFuZCBwYXJ0aWN1bGFybHkKY29tbWl0IDNlYTY5OWI1NmQzMSAoImRybS9icmlkZ2U6IGR3
LWhkbWktcXA6IFJld29yayBBdWRpbyBJbmZvRnJhbWUKaGFuZGxlciIpLgoKQ3Jpc3RpYW4sIENo
cmlzdGlhbiAoaGVoKSwgSm9uYXMsIGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgd2hldGhlciB0aGUg
Y29kZQpvbiBkcm0tbWlzYy1uZXh0IGhhcyBvciBub3QgdGhlIGJ1ZyB0aGF0IGlzIGZpeGVkIGhl
cmU/IEFuZCBpZiBpdCBzdGlsbApoYXMsIHNlbmQgYSBmaXggYmFzZWQgb24gY3VycmVudCBkcm0t
bWlzYy1uZXh0PwoKVGhhbmtzIQoKQmVzdCByZWdhcmRzLApMdWNhCgotLQpMdWNhIENlcmVzb2xp
LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9i
b290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

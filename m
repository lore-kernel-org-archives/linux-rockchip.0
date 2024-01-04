Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41886C47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 15:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofKbTNS2kta2TvdDhUVKvh2F8l6AqGuX57RvEIL4c10=; b=Qw0PG5KKec9esK
	RxFANjLNKZhi/CM02vcrbMzFYx59uM6lPgIISXfVnKGR7UG4135SdKNNu30gwcMMvVpkyFJSZOQul
	K4G+hkQ5YTN7jRPVvTHS1d0wZwkK2kdvQbZVghgf0IeUhI7O8racakuuZrdeF4KcADWdL5W5Ltt8M
	a6WOlH6+/9V9XSt53tg5Ze/jbuSaZCtqdkhLAR+iCqTL8dYgg0dabsJQo9XDMjm1nLghXCsmcKR8k
	OwKHH7vNEtiQds2o9tL+3Z87DVHXySbNrbjsySA6Q0AfoE3fhDULe5c+Ln7X5BQdRDCkMurvnENx3
	NOR94HOg0EHVUGdmnDMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQ7q-00EadX-0D;
	Thu, 04 Jan 2024 15:59:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQ7m-00EaaV-0Q;
	Thu, 04 Jan 2024 15:59:15 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLQ7T-00072M-QC; Thu, 04 Jan 2024 16:58:55 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Date: Thu, 04 Jan 2024 16:58:54 +0100
Message-ID: <5867171.29KlJPOoH8@diego>
In-Reply-To: <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_075914_181935_4BE5BFD0 
X-CRM114-Status: GOOD (  17.70  )
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

SGkgQ2hyaXN0aWFuLCBBbmR5LAoKQW0gRG9ubmVyc3RhZywgNC4gSmFudWFyIDIwMjQsIDE1OjM5
OjUwIENFVCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBDb21taXQgNWEwMjhlOGYwNjJm
ICgiZHJtL3JvY2tjaGlwOiB2b3AyOiBBZGQgc3VwcG9ydCBmb3IgcmszNTg4IikKPiBpbnRyb2R1
Y2VkIGEgdmFyaWFibGUgd2hpY2ggZW5kZWQgdXAgYmVpbmcgdW51c2VkLiAgUmVtb3ZlIGl0Lgo+
IAo+IHJvY2tjaGlwX2RybV92b3AyLmM6MTY4ODoyMzogd2FybmluZzogdmFyaWFibGUg4oCYaWZf
ZGNsa19yYXRl4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVd
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0
ZWFAY29sbGFib3JhLmNvbT4KCmluIGdlbmVyYWwsIHBsZWFzZSBkb24ndCBzZW5kIG5vbi1zZXJp
ZXMgcGF0Y2hlcyBhcyByZXBsaWVzIHRvIG90aGVyIHBhdGNoZXMuCkl0IGNvbmZ1c2VzIHRvb2xp
bmcgbGlrZSBiNCB3YXkgdG9vIG9mdGVuLCBhcyB0aGlzIHBhdGNoIGlzIG5vdCBkZXNpZ25hdGVk
CmFzIGEgMi8yIChzaW1pbGFyIHRvIHRoZSBmaXJzdCBvbmUgbm90IGJlaW5nIDEvMikuCgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDIgLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiBpbmRleCA0NDUwOGMyZGQ2MTQuLjkyMzk4
NWQ0MTYxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcDIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jCj4gQEAgLTE2ODUsNyArMTY4NSw2IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrMzU4
OF9jYWxjX2NydV9jZmcoc3RydWN0IHZvcDJfdmlkZW9fcG9ydCAqdnAsIGludCBpZCwKPiAgCXVu
c2lnbmVkIGxvbmcgZGNsa19jb3JlX3JhdGUgPSB2X3BpeGNsayA+PiAyOwo+ICAJdW5zaWduZWQg
bG9uZyBkY2xrX3JhdGUgPSB2X3BpeGNsazsKPiAgCXVuc2lnbmVkIGxvbmcgZGNsa19vdXRfcmF0
ZTsKPiAtCXVuc2lnbmVkIGxvbmcgaWZfZGNsa19yYXRlOwo+ICAJdW5zaWduZWQgbG9uZyBpZl9w
aXhjbGtfcmF0ZTsKPiAgCWludCBLID0gMTsKPiAgCj4gQEAgLTE3MDAsNyArMTY5OSw2IEBAIHN0
YXRpYyB1bnNpZ25lZCBsb25nIHJrMzU4OF9jYWxjX2NydV9jZmcoc3RydWN0IHZvcDJfdmlkZW9f
cG9ydCAqdnAsIGludCBpZCwKPiAgCQl9Cj4gIAo+ICAJCWlmX3BpeGNsa19yYXRlID0gKGRjbGtf
Y29yZV9yYXRlIDw8IDEpIC8gSzsKPiAtCQlpZl9kY2xrX3JhdGUgPSBkY2xrX2NvcmVfcmF0ZSAv
IEs7Cj4gIAkJLyoKPiAgCQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX3BpeGNs
a19yYXRlOwo+ICAJCSAqICppZl9kY2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX2RjbGtfcmF0ZTsK
PiAgCQkgKi8KCQkqaWZfcGl4Y2xrX2RpdiA9IDI7CgkJKmlmX2RjbGtfZGl2ID0gNDsKCndpdGgg
dGhlIGNvZGUgY29udGludWluZyB3aXRoIHRob3NlIHN0YXRpYyBjb25zdGFudHMgYnV0IHRoZSBj
b21tZW50CnNob3dpbmcgYSBmb3J1bXVsYSwgSSBkbyBob3BlIEFuZHkgY2FuIHByb3ZpZGUgYSBi
aXQgb2YgaW5zaWdodCBpbnRvCndoYXQgaXMgaGFwcGVuaW5nIGhlcmUuCgpJLmUuIEknZCByZWFs
bHkgbGlrZSB0byB1bmRlcnN0YW5kIGlmIHRoYXQgcmVhbGx5IGlzIGp1c3QgYSByZW1uYW50IG9y
CnNvbWV0aGluZyBkaWZmZXJlbnQgaXMgbmVlZGVkLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

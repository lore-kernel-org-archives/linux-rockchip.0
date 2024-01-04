Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88224C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 19:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrDuaszLo7T8SJlQBzSnps31pYzb6jBzRvVcX9nCQlE=; b=PgdkqsR/nRLHP8
	bUUSINxGFqij/rzIa2cmff6MQgLwhPt4a033Gosc3qgWPS/py9WOcsKDIpuluepvXjN+p0iSj9PVV
	bw97d2cENIgk1jg17cQ5KjviCtQDEhcBCamwqt/ISJvAVLgdBT78IwWZBA3IYCfntgnmLpGD7mmaM
	r+IMIKxMJ+rkxYgVyq55UE8g/FqY0Nvei0FDCjte1l80w34F+egC1QU9mYn9KtaTQ+Y1C6sR6RQ5M
	yq9mjzeEwVxrXy2IeepKHBVJa4tu0mrXZmcMZ7JY0A9rnOBvfRvG42ChBM29jX5Hp6UFZNUyxB+tT
	s2VM1DzDYsrCvUQj97NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT8s-00F2QZ-2G;
	Thu, 04 Jan 2024 19:12:34 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT8p-00F2O8-2v;
	Thu, 04 Jan 2024 19:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704395547;
	bh=H5jcJXHHsnb0KDKtbYg8I4ZDhU9wIwvX0Jm1PSTYmdc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=z3cAeGYiSpKdzPhNU+Czu3DKgz9WmFQsf48G2Q5tT5lZMpU8UpWwlyhLmLVZZg/SI
	 5j1pX/Q57Ayi+J9LRwwzUQb3qE7wIboeFA/pxPM2E0gqUZWwZwm66jg5QZx3/e9BJ6
	 Djh6KVn+Las4BNgeafr6WiWDvgyW2OqSLiLiw7jk2FXHmXdbtpKpFZrDvwvYkGL7J4
	 U+7OevGeOUFdg2H1F4puyTHBn/Ko3RF02Mc6hl/2l/UL26ukidN8NzHQ9Puvg+7q1G
	 oR1WnHu3MnwSHmlOGYm6ifUjRnOk9VrouUMEQTGbI0b/7iV39nnmsWRk5ctL4q8NPz
	 DIg6qdI4Xq95g==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1E17B37813E4;
	Thu,  4 Jan 2024 19:12:27 +0000 (UTC)
Message-ID: <b017a3e2-f658-4a95-b972-6ffb87acfdc3@collabora.com>
Date: Thu, 4 Jan 2024 21:12:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <5867171.29KlJPOoH8@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_111232_143309_22D00F56 
X-CRM114-Status: GOOD (  21.98  )
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

SGkgSGVpa28sCgpPbiAxLzQvMjQgMTc6NTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIENo
cmlzdGlhbiwgQW5keSwKPiAKPiBBbSBEb25uZXJzdGFnLCA0LiBKYW51YXIgMjAyNCwgMTU6Mzk6
NTAgQ0VUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBDb21taXQgNWEwMjhlOGYwNjJm
ICgiZHJtL3JvY2tjaGlwOiB2b3AyOiBBZGQgc3VwcG9ydCBmb3IgcmszNTg4IikKPj4gaW50cm9k
dWNlZCBhIHZhcmlhYmxlIHdoaWNoIGVuZGVkIHVwIGJlaW5nIHVudXNlZC4gIFJlbW92ZSBpdC4K
Pj4KPj4gcm9ja2NoaXBfZHJtX3ZvcDIuYzoxNjg4OjIzOiB3YXJuaW5nOiB2YXJpYWJsZSDigJhp
Zl9kY2xrX3JhdGXigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJs
ZV0KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9j
YWx0ZWFAY29sbGFib3JhLmNvbT4KPiAKPiBpbiBnZW5lcmFsLCBwbGVhc2UgZG9uJ3Qgc2VuZCBu
b24tc2VyaWVzIHBhdGNoZXMgYXMgcmVwbGllcyB0byBvdGhlciBwYXRjaGVzLgo+IEl0IGNvbmZ1
c2VzIHRvb2xpbmcgbGlrZSBiNCB3YXkgdG9vIG9mdGVuLCBhcyB0aGlzIHBhdGNoIGlzIG5vdCBk
ZXNpZ25hdGVkCj4gYXMgYSAyLzIgKHNpbWlsYXIgdG8gdGhlIGZpcnN0IG9uZSBub3QgYmVpbmcg
MS8yKS4KClRoYXQgd2FzIHVuaW50ZW50aW9uYWwsIHNvcnJ5ISAgSSB3cm9uZ2x5IGFzc3VtZWQg
J2dpdCBzZW5kLWVtYWlsJyBpcwphYmxlIHRvIGNvcnJlY3RseSBoYW5kbGUgbXVsdGlwbGUgcGF0
Y2hlcyB3aGljaCBhcmUgbm90IHBhcnQgb2YgYQpzZXJpZXMuICBJJ20gbm90IHN1cmUgaWYgdGhl
ICctLW5vLXRocmVhZCcgZmxhZyB3b3VsZCBoYXZlIGhlbHBlZC4KCj4+IC0tLQo+PiAgZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAyIC0tCj4+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AyLmMKPj4gaW5kZXggNDQ1MDhjMmRkNjE0Li45MjM5ODVkNDE2MWIg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
Mi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4+IEBAIC0xNjg1LDcgKzE2ODUsNiBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyByazM1ODhfY2Fs
Y19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZwLCBpbnQgaWQsCj4+ICAJdW5zaWdu
ZWQgbG9uZyBkY2xrX2NvcmVfcmF0ZSA9IHZfcGl4Y2xrID4+IDI7Cj4+ICAJdW5zaWduZWQgbG9u
ZyBkY2xrX3JhdGUgPSB2X3BpeGNsazsKPj4gIAl1bnNpZ25lZCBsb25nIGRjbGtfb3V0X3JhdGU7
Cj4+IC0JdW5zaWduZWQgbG9uZyBpZl9kY2xrX3JhdGU7Cj4+ICAJdW5zaWduZWQgbG9uZyBpZl9w
aXhjbGtfcmF0ZTsKPj4gIAlpbnQgSyA9IDE7Cj4+ICAKPj4gQEAgLTE3MDAsNyArMTY5OSw2IEBA
IHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrMzU4OF9jYWxjX2NydV9jZmcoc3RydWN0IHZvcDJfdmlk
ZW9fcG9ydCAqdnAsIGludCBpZCwKPj4gIAkJfQo+PiAgCj4+ICAJCWlmX3BpeGNsa19yYXRlID0g
KGRjbGtfY29yZV9yYXRlIDw8IDEpIC8gSzsKPj4gLQkJaWZfZGNsa19yYXRlID0gZGNsa19jb3Jl
X3JhdGUgLyBLOwo+PiAgCQkvKgo+PiAgCQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtfcmF0ZSAv
IGlmX3BpeGNsa19yYXRlOwo+PiAgCQkgKiAqaWZfZGNsa19kaXYgPSBkY2xrX3JhdGUgLyBpZl9k
Y2xrX3JhdGU7Cj4+ICAJCSAqLwo+IAkJKmlmX3BpeGNsa19kaXYgPSAyOwo+IAkJKmlmX2RjbGtf
ZGl2ID0gNDsKPiAKPiB3aXRoIHRoZSBjb2RlIGNvbnRpbnVpbmcgd2l0aCB0aG9zZSBzdGF0aWMg
Y29uc3RhbnRzIGJ1dCB0aGUgY29tbWVudAo+IHNob3dpbmcgYSBmb3J1bXVsYSwgSSBkbyBob3Bl
IEFuZHkgY2FuIHByb3ZpZGUgYSBiaXQgb2YgaW5zaWdodCBpbnRvCj4gd2hhdCBpcyBoYXBwZW5p
bmcgaGVyZS4KPiAKPiBJLmUuIEknZCByZWFsbHkgbGlrZSB0byB1bmRlcnN0YW5kIGlmIHRoYXQg
cmVhbGx5IGlzIGp1c3QgYSByZW1uYW50IG9yCj4gc29tZXRoaW5nIGRpZmZlcmVudCBpcyBuZWVk
ZWQuCgpUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBpcyBub3QgYWJsZSB0byBoYW5kbGUgYWxs
IGRpc3BsYXkgbW9kZXMKc3VwcG9ydGVkIGJ5IGNvbm5lY3RlZCBkaXNwbGF5cywgZS5nLiBpbiBt
eSB0ZXN0aW5nIGVudmlyb25tZW50IEkKZW5jb3VudGVyZWQgaXNzdWVzIHdpdGggMjU2MHgxNDQw
LTc1LjAwSHosIDIwNDh4MTE1Mi02MC4wMEh6LAoxMDI0eDc2OC02MC4wMEh6LiAgQWRkaXRpb25h
bGx5LCBpdCBkb2Vzbid0IHNlZW0gdG8gY29wZSB3ZWxsIHdpdGgKbm9uLWludGVnZXIgcmVmcmVz
aCByYXRlcyBsaWtlIDU5Ljk0LCAyOS45NywgMjMuOTgsIGV0Yy4KCk15IHRlbXBvcmFyeSB3b3Jr
YXJvdW5kIHJlbGllcyBvbiB1c2luZyB0aGUgSERNSSBQSFkgUExMIGluIGNvbmp1bmN0aW9uCndp
dGggYSBkb3duc3RyZWFtLWJhc2VkIGhhY2sgdG8gY29tcHV0ZSB0aGUgY2xvY2sgcmF0ZXMuICBJ
J20gbm90IHN1cmUKdGhhdCB3b3VsZCBiZSBhbiB1cHN0cmVhbWFibGUgc29sdXRpb24sIHNvIEkg
d291bGQgbGV0IEFuZHkgc2hlZCBzb21lCmxpZ2h0IG9uIHRoZSB0b3BpYy4KClRoYW5rcywKQ3Jp
c3RpYW4KCj4gCj4gSGVpa28KPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

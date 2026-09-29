Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF0ACA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 16:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAZ45zwh6QWDYPvk1IRcBUu8hoevLeR4hWWfyRXuX6Q=; b=Y3nheqqjfh5Bhf
	R8okfk11uMV6tdK44ChMcE4HVfISy19V+fEWcy+raYdszJOf8Q9j13rVbFISVvbIMtA+nk+pTpsE9
	1ofxrmD/F/biVQfJeI5CSW/EmKZbftQHdp5zNGsTqQ1+wDTAGOsDURHLGSJTRrr8VTI/edh9+nRPR
	kQOSR9oNxlhs8I0iNcNaK80vrORd9wMOADk/eBJrQU4nQJxCFfGGkHzwhwXvFeEXq/zDbkJdZudC0
	JfWqYeMooD7FsVUQEMLYQ4Z++B1MUhNVJ2pjnr67Rjeo2hTsGRafTN+nlSDv6FiDWog1ybR58NBlP
	k3zrq1sqZF/gFfKboWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBaGG-0000000405g-3Zmf;
	Tue, 29 Sep 2026 16:00:56 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBaGD-0000000404I-0Kml;
	Tue, 29 Sep 2026 16:00:54 +0000
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4hvNFB5DQ9zMlhW;
	Tue, 29 Sep 2026 18:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1790697646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IiGOJgGIass9aVDNQ4vKCQdxgrlpbqGo3d/LNJ/Qqdk=;
	b=EtznGOuuYrnwKzckU/TLZKsDDV3MsyaLoBwKUvB1oD8ljsWrN5izxLfo7svXbzGDHzcp/T
	twCGdEXz91ga6meCpQqhjcXD1zECB00a9nIQx2ZNgOyaAN9WhdVEqy/3VWTRI+W9FSaCT8
	Ef1P4f8da3ZAutQsfhch0aLU8lB23I+aEK5NRj2aMtCJLmDlOGJKnBLV7YRoQgfyVwSV/V
	C7dLIP4SW7RtH8FPJbeBbOPLW3DdPAWLSfrbowSAncdh+ZH6hIldISb61YrWaqeSimsZOK
	8nab3Vtq55aNg5VyIfCoyQN919Y0uS5Aby8yK7MWw9fuvZu+QtU4xItwAFcfMA==
Message-ID: <a9164202-bb55-40cd-b9ad-20f5be344ba1@mailbox.org>
Date: Tue, 29 Sep 2026 18:00:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
To: Leo Li <sunpeng.li@amd.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Xaver Hugl <xaver.hugl@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
 <0226527e-ee38-40ab-a2a8-1ae62013b950@amd.com>
 <VERVf-aJRRKsBOI_3dpScg@collabora.com>
 <8a3b2902-3255-4dd9-82f0-75a7747b710e@amd.com>
 <3cf7143d-7013-4a3b-a831-96c3f125c2f6@mailbox.org>
 <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
X-MBO-RS-META: 11ugeqcc3bte89ybq6np5e6yubuc9mu3
X-MBO-RS-ID: ebf20fcafbe5d0a3431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_090053_269302_83B23EDD 
X-CRM114-Status: GOOD (  18.57  )
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

T24gOS8yOS8yNiAxNjozNCwgTGVvIExpIHdyb3RlOgo+IAo+IAo+IE9uIDIwMjYtMDktMjggMDQ6
MTAsIE1pY2hlbCBEw6RuemVyIHdyb3RlOgo+Pj4+IFlvdSBjYW4gcGljdHVyZSBWUlIgbGltaXRp
bmcgYXMgYWx3YXlzIGJlaW5nIGFjdGl2ZSwgYnV0IHdpdGggYSBsaW1pdCByYXRpb25hbAo+Pj4+
IG9mIDAgaXQgdXNlcyB0aGUgZGlzcGxheSdzIGxpbWl0IGFzIHBlciB0aGUgRURJRCwgd2hpY2gg
aXMgd2hhdCB1bmxpbWl0ZWQgZ2FtZQo+Pj4+IG1vZGUgaXMuIFNvIHdpdGggaG93IGl0J3MgaW1w
bGVtZW50ZWQgcmlnaHQgbm93IGluIGhkbWlfdmFsaWRhdGVfdnJyKCksIHlvdXIKPj4+PiBleGFt
cGxlIHdvdWxkIHNldCBhIG1heGltdW0gdGFyZ2V0LCBidXQgbGVhdmUgdGhlIG1pbmltdW0gYXQg
d2hhdGV2ZXIgdGhlCj4+Pj4gZGlzcGxheSBkZWZhdWx0cyB0by4KPj4+Pgo+Pj4+IE5vdyB0aGF0
IEknbSB0aGlua2luZyB0aHJvdWdoIHRoaXMsIGEgcG9zc2libGUgcHJvYmxlbSBpcyB0aGF0Cj4+
Pj4gZHJtX2NydGNfaGVscGVyX3Zycl9pc19maXhlZF9yYXRlKCkgb3BlcmF0ZXMgb24gdGhlIHVz
ZXIgc3VwcGxpZWQgbGltaXRzLCBidXQKPj4+PiBpZiB0aGUgZGlzcGxheSBzdXBwbGllZCBsb3dl
ciBsaW1pdCBpcyBlcXVhbCB0byB0aGUgdXNlciBzdXBwbGllZCB1cHBlciBsaW1pdCwKPj4+PiB0
aGVuIHdlIGhhdmUgYSBmaXhlZCByYXRlIHNjZW5hcmlvIHdpdGhvdXQgcmVjb2duaXNpbmcgaXQg
YXMgc3VjaC4gSSB0aGluayBJCj4+Pj4gbmVlZCB0byBoYXZlIGEgcG9uZGVyIG9uIHdoYXQgdGhl
IGxlYXN0IHN1cnByaXNpbmcgYmVoYXZpb3VyIGZvciB1c2Vyc3BhY2UKPj4+PiBpcyBpbiB0aGF0
IGluc3RhbmNlLiBUaGUgZGlzcGxheSBsaW1pdCBzdHVmZiBnZXRzIGEgYml0IGNvbXBsZXggZHVl
IHRvCj4+Pj4gQ2luZW1hVlJSIGFuZCBRTVMgVEZSbWluL1RGUm1heC4KPj4+Pgo+Pj4+IEknbGwg
aW1wcm92ZSB0aGUgZG9jdW1lbnRhdGlvbiBvbiB0aGUgbmV4dCByZXZpc2lvbiB0byBtYWtlIHRo
ZSBtZWFuaW5ncyBtb3JlCj4+Pj4gZXhwbGljaXQuCj4+PiBQZXJoYXBzIGEgc2ltcGxlIHdheSBp
cyB0byByZXF1aXJlIHNpbXVsdGFuZW91cyBzZXR0aW5nIE1JTiBhbmQgTUFYIHBhaXJzPwo+Pj4g
SU9XLCByZXF1aXJlIHVzZXJzcGFjZSB0byBzZXQgTUlOIGFuZCBNQVggc2ltdWx0YW5lb3VzbHkg
dG8gPjAsIG9yID0wLiBGb3IgZXhhbXBsZToKPj4+Cj4+PiBpZiAoKHZycl9taW5fbiA9PSAwIHx8
IHZycl9taW5fZCA9PSAwIHx8Cj4+PiAgICAgIHZycl9tYXhfbiA9PSAwIHx8IHZycl9tYXhfZCA9
PSAwKSAmJgo+Pj4gICAgICh2cnJfbWluX24gPiAwIHx8IHZycl9tYXhfbiA+IDApKQo+Pj4gCXJl
dHVybiAtRUlOVkFMOwo+Pj4gVGhhdCB3YXksIGl0J3MgbmV2ZXIgYW1iaWd1b3VzIHdoYXQgdXNl
cnNwYWNlIGhhcyByZXF1ZXN0ZWQgZm9yIHRoZSByYW5nZS4KPj4+IFRoZXkgY2FuIGNvcHkgdGhl
IEVESUQgc3VwcG9ydGVkIHJhbmdlIGlmIHRoZXkgZG9uJ3QgY2FyZSBhYm91dCBsaW1pdGluZyBv
bmUgc2lkZSwgcmF0aGVyIHRoYW4gbGVhdmluZyBpdCBhdCAwLgo+PiBEZXRlcm1pbmluZyB0aGUg
YWN0dWFsIGxpbWl0cyBjYW4gYmUgbm9uLXRyaXZpYWwgKHRob3VnaCBJIGd1ZXNzIHRoYXQgbWln
aHQgYmUgZmluZSBhcyBsb25nIGFzIGxpYmRpc3BsYXktaW5mbyBjYW4gd29yayB0aGVtIG91dCks
IGlmIHVzZXIgc3BhY2UgZ2V0cyB0aGVtIHdyb25nLCBpdCBtaWdodCBhY2NpZGVudGFsbHkgYXBw
bHkgYSBuYXJyb3dlciBsaW1pdCB0aGFuIGludGVuZGVkLgo+Pgo+Pgo+Pj4gSXQncyB0aGVuIGFs
c28gY2xlYXIgaWYgdGhleSByZXF1ZXN0ZWQgYSBzdGF0aWMgSHouCj4+IEkgZG8gc2VlIHRoZSBi
ZW5lZml0IG9mIHlvdXIgc3VnZ2VzdGlvbiBmb3IgdGhpcyB0aG91Z2guCj4gCj4gWGF2ZXIgYW5k
IEkgd2VyZSBjaGF0dGluZyBhYm91dCB0aGlzIGF0IFhEQywgYW5kIHllYWggaXQnbGwgYmUgZGlm
ZmljdWx0IHRvIG1hdGNoIEtNRCdzIG1vbml0b3IgcmFuZ2UsIGVzcGVjaWFsbHkgaWYgS01EIGRl
Y2lkZXMgdG8gcGF0Y2ggaXQgd2l0aCBxdWlya3MgYW5kIHdoYXRub3QuCgpUaGF0J3MgYSBnb29k
IHBvaW50LgoKCj4gU2luY2Ugd2UgYXJlIGhhbmRpbmcgY29tcG9zaXRvcnMgY29udHJvbCBvdmVy
IHZyciByYW5nZSwgZG9lcyBpdCBzb3VuZCBzZW5zaWJsZSB0byBleHBvc2UgS01EJ3MgbW9uaXRv
ciByYW5nZSBhcyBhIHJlYWQtb25seSBwcm9wZXJ0eSBwYWlyIG9uIHRoZSBkcm0gY29ubmVjdG9y
PwoKU291bmRzIGdvb2QgdG8gbWUsIEkgYWN0dWFsbHkgaGFkIGEgc2ltaWxhciBpZGVhIGFmdGVy
IHNlbmRpbmcgbXkgcHJldmlvdXMgcG9zdCBhYm92ZS4gOikKCihJIGhhdmUgdmFndWUgcmVjb2xs
ZWN0aW9uIG9mIHNvbWV0aGluZyBsaWtlIHRoaXMgaGF2aW5nIGJlZW4gc3VnZ2VzdGVkIGJlZm9y
ZSwgY2FuJ3QgcmVtZW1iZXIgYnkgd2hvbSAvIHdoZXJlIC8gd2hlbiB0aG91Z2gpCgoKLS0gCkVh
cnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICBcICAgICAgICBHTk9NRSAvIFh3YXlsYW5kIC8g
TWVzYSBkZXZlbG9wZXIKaHR0cHM6Ly9yZWRoYXQuY29tICAgICAgICAgICAgIFwgICAgICAgICAg
ICAgICBMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

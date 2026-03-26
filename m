Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B90C210AB80E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5odQYCLt08oVdKIItrmMdnyZZOHavu6pEHXZH6bGKJo=; b=uNQD6tzpZ99isU
	eBQ8/JhJvsNqW/kymZquHWxwI2TSGkmDlwo49i17LC1SxhUJG38wJ9zwXf9lNU/k3e9601S4ITnH6
	hCK95Uvq1Bbr3z++zE3QWSxJ/hCGf4sC4x2ldj4OKRUwUXMc8Bfvwy0100HesJYgs+TjmDSIMd97p
	3wi5WDnk00YPBWwDLB2mdTK2PIPYeR3UHvKwmnWl6hWXTw2m6QKdiFhJdWhfPXCQqBN/SzEYCc7i7
	nlcE+9sZ71RJGcYiz8K8h3EkEPK88/MvPI/E7Kj8lFF4brTpSvYnhykQuc67gnp5/ub8N0RKyV4vr
	EWhA4YeRvImiDjpZPx0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qNe-0000000674c-19it;
	Thu, 26 Mar 2026 19:28:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qNb-0000000673c-2LY3;
	Thu, 26 Mar 2026 19:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=P8q1b7BVCr0bxZwKjgU8Z7Ivc8vxFh7zx0HI/IRg014=; b=NmXGA9ydxp031MJXvgcF0ptzp7
	XnxCZcHUteZX1hWuh3E/f7+WPpkpdHYHTGAs0t3XHOIesKna/h1MQCEtpDxqq5Aeu64B6rF4zPCHe
	3Jief1YqMvdmf1FSJR7SQZO4vnkflxKLX7b01HSqpmpZXuLZoaT94whOqHimtZQVK0MBKyr/I4ihV
	ed39NYWtlj7ywDMsyZPY58FuQ30fqgI+tCaujN3rw6lCsPbaKVpYzAFIbLxGbY6A8H0U/y9Z5fkpj
	zsHWtwTIhTh2pXZZKcSLlS1xp3b6/DVvcNUfYfxAzMuD7QTCOxCrTUDiaXoco6w/oEPu6I2EghD0D
	4cpvgQ4A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] drm/bridge: synopsys: dw-dp: Unregister AUX channel on
 bridge detach
Date: Thu, 26 Mar 2026 20:28:02 +0100
Message-ID: <2053748.usQuhbGJ8B@phil>
In-Reply-To: <20260310-drm-rk-fixes-v2-7-645ecfb43f49@collabora.com>
References: <20260310-drm-rk-fixes-v2-0-645ecfb43f49@collabora.com>
 <20260310-drm-rk-fixes-v2-7-645ecfb43f49@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_122831_617451_69C7E797 
X-CRM114-Status: GOOD (  13.00  )
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

QW0gTW9udGFnLCA5LiBNw6RyeiAyMDI2LCAyMzo0NDozNSBNaXR0ZWxldXJvcMOkaXNjaGUgTm9y
bWFsemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBUaGUgRGlzcGxheVBvcnQgQVVY
IGNoYW5uZWwgZ2V0cyBpbml0aWFsaXplZCBhbmQgcmVnaXN0ZXJlZCBkdXJpbmcKPiBkd19kcF9i
aW5kKCksIGJ1dCBpdCBpcyBuZXZlciB1bnJlZ2lzdGVyZWQsIHdoaWNoIG1heSBsZWFkIHRvIHJl
c291cmNlCj4gbGVha3MgYW5kL29yIHVzZS1hZnRlci1mcmVlOgo+IAo+IFsgIDIyNC42NjEzNzFd
IEJVRzogS0FTQU46IHNsYWItdXNlLWFmdGVyLWZyZWUgaW4gZGV2aWNlX2lzX2RlcGVuZGVudCsw
eGUwLzB4MmIwCj4gWyAgMjI0LjY2MjAxNV0gUmVhZCBvZiBzaXplIDggYXQgYWRkciBmZmZmMDAw
MTFhZWU4NTUwIGJ5IHRhc2sgbW9kcHJvYmUvNjU4Cj4gLi4uCj4gWyAgMjI0LjY2Mjc5Nl0gIGRl
dmljZV9pc19kZXBlbmRlbnQrMHhlMC8weDJiMAo+IFsgIDIyNC42NjI4MDJdICBkZXZpY2VfaXNf
ZGVwZW5kZW50KzB4MTA4LzB4MmIwCj4gWyAgMjI0LjY2MjgwOF0gIGRldmljZV9saW5rX2FkZCsw
eDFmOC8weDEwYjAKPiBbICAyMjQuNjYyODEzXSAgZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KzB4
MTIwLzB4MjAwCj4gWyAgMjI0LjY2MjgxOV0gIGR3X2RwX2JpbmQrMHgzNGMvMHhiMTAgW2R3X2Rw
XQo+IFsgIDIyNC42NjI4MzBdICBkd19kcF9yb2NrY2hpcF9iaW5kKzB4MTk0LzB4MjUwIFtyb2Nr
Y2hpcGRybV0KPiBbICAyMjQuNjYyODY0XSAgY29tcG9uZW50X2JpbmRfYWxsKzB4M2E4LzB4NzIw
Cj4gWyAgMjI0LjY2Mjg2OV0gIHJvY2tjaGlwX2RybV9iaW5kKzB4MTIwLzB4MzkwIFtyb2NrY2hp
cGRybV0KPiBbICAyMjQuNjYyODk5XSAgdHJ5X3RvX2JyaW5nX3VwX2FnZ3JlZ2F0ZV9kZXZpY2Ur
MHg3NmMvMHg4MzgKPiBbICAyMjQuNjYyOTA0XSAgY29tcG9uZW50X21hc3Rlcl9hZGRfd2l0aF9t
YXRjaCsweDFmNC8weDIzMAo+IFsgIDIyNC42NjI5MDldICByb2NrY2hpcF9kcm1fcGxhdGZvcm1f
cHJvYmUrMHg0MjAvMHg1MzggW3JvY2tjaGlwZHJtXQo+IFsgIDIyNC42NjI5MzldICBwbGF0Zm9y
bV9wcm9iZSsweGU4LzB4MTY4Cj4gWyAgMjI0LjY2Mjk0NV0gIHJlYWxseV9wcm9iZSsweDM0MC8w
eDgyOAo+IFsgIDIyNC42NjI5NTBdICBfX2RyaXZlcl9wcm9iZV9kZXZpY2UrMHgyZTAvMHgzNTAK
PiBbICAyMjQuNjYyOTU0XSAgZHJpdmVyX3Byb2JlX2RldmljZSsweDgwLzB4MTQwCj4gWyAgMjI0
LjY2Mjk1OV0gIF9fZHJpdmVyX2F0dGFjaCsweDM5OC8weDQ2MAo+IFsgIDIyNC42NjI5NjRdICBi
dXNfZm9yX2VhY2hfZGV2KzB4ZTAvMHgxOTgKPiBbICAyMjQuNjYyOTY4XSAgZHJpdmVyX2F0dGFj
aCsweDUwLzB4NjgKPiBbICAyMjQuNjYyOTcyXSAgYnVzX2FkZF9kcml2ZXIrMHgyYTAvMHg0YzAK
PiBbICAyMjQuNjYyOTc3XSAgZHJpdmVyX3JlZ2lzdGVyKzB4Mjk0LzB4MzYwCj4gWyAgMjI0LjY2
Mjk4Ml0gIF9fcGxhdGZvcm1fZHJpdmVyX3JlZ2lzdGVyKzB4N2MvMHg5OAo+IFsgIDIyNC42NjI5
ODddICByb2NrY2hpcF9kcm1faW5pdCsweGM0LzB4ZmY4IFtyb2NrY2hpcGRybV0KPiAuLi4KPiAK
PiBVbnJlZ2lzdGVyIHRoZSBBVVggYWRhcHRlciBvbiBicmlkZ2UgZGV0YWNoLgoKdGhhdCBzb3Vu
ZHMgc29ydCBvZiBhc3ltbWV0cmljYWwgdGhvdWdoLiBkcm1fYnJpZGdlX2Z1bmNzIGhhcyBhdHRh
Y2ggYW5kCmRldGFjaCBjYWxsYmFja3MgYW5kIHRoZSBjb21wb25lbnQtZnJhbWV3b3JrIGFsc28g
aGFzIGJpbmQgYW5kIHVuYmluZApjYWxsYmFja3MuCgpUaGlzIG1pZ2h0IGNhdXNlIGNvbmZ1c2lv
biBsYXRlciBvbiBJIGd1ZXNzLCBlc3BlY2lhbGx5IGFzIEkgZG9uJ3Qga25vdwppZiB0aGVyZSBj
b3VsZCBiZSBhIGJyaWRnZSBhdHRhY2gsIGFmdGVyIHRoZSBkZXRhY2ggdGhhdCB1bnJlZ2lzdGVy
cyB0aGUKYXV4IGFkYXB0ZXIuCgpMb29raW5nIGF0IHRoZSBBbmFsb2dpeERQIGZvciBleGFtcGxl
LCBpdCBkb2VzIHRoZSB0aGUgcmVnaXN0ZXIgYW5kCnVucmVnaXN0ZXIgaW4gdGhlIGJpbmQvdW5i
aW5kIGNhbGxiYWNrcyBvZiB0aGUgY29yZSBkcml2ZXIuCgpTbyBJIGd1ZXNzIHRoZSBpbiBteSBl
eWVzIGNsZWFuZXIgd2F5IHdvdWxkIGJlIHRvIGludHJvZHVjZSBhCmR3X2RwX3VuYmluZCgpIGZ1
bmN0aW9uIGFuZCBwdXQgdGhlIGF1eCB1bnJlZ2lzdGVyIHRoZXJlPwoKQXQgbGVhc3QgdGhhdCB3
YXksIGV2ZXJ5dGhpbmcgd291bGQgYmUgYXQgdGhlIHNhbWUgImxldmVsIi4KCgpIZWlrbwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

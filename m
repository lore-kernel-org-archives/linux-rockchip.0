Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB0C3FF8869
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pxF8SFxV73vsw+/o/4HNqVF3NoY/y+j6A9wYJK492I=; b=Oa7USbxY2GlvIF
	QnbXRAq6amm+4zQk2xCfM6cTi30QfOfWfs9AlbASc5dDbXCX/vFYktFtHCM5kEl4QzOJS39iB0xOz
	44AuS1pMSSB8eMgF76WqikT9IMYEk5/RjFUETuz8XfGsi8dYXM0/8IVflTSRthDEvH7AN6jAN5Rz0
	YksM8Etd60vv6z5wAkQ5wmhYcQikvxscf7JH3+vLSLfMNCJIGl0TvWL0E+RRKRc+7weuAQdvJDHbD
	Q4PkkceSDJWDwgkelUsk73avBlYCL3EWOjEXxXyoQg0aDMpOmuxKCg+EzOpGDNY/wWQSVboNTSZnh
	sLwPmOoYDhl6Gz883tMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOzy-0000000HNcV-1e0A;
	Mon, 27 Apr 2026 16:39:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOzu-0000000HNbn-3oGN;
	Mon, 27 Apr 2026 16:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777307985;
	bh=f238bjapOZ8zpcnG+Q+ZHGREX5Zx5UvSKClStNdPxjw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BHF9E5yZ2esbtbd4p4gLa4dp9X79XhbP8MMTNq1IVqdI/jUxRqbEr7JFQv0Xkg7Ff
	 yHpwPcmXQjEndOP/JJEWOc2B0jW50tvR3vqEbPaC+onIYVIACbp60JckRTDzR20cB3
	 gxa1XL8+Wd5s2TnaSVfmuuS821QEErQLKodgbN/9ckxZ88OdQYFOwXLEpxewiLY9GK
	 HYZ1BLKU4OAFF+CPUfuAHutyfh3/ARPS1+mmHwy9WDh2SjMM7J7VAsi9qPYD/w0sra
	 wWHncdgXBicN0mN3o44yKCHZS95QepzhbC3Hf7BzmX7Za9yowxfhBM5G72xPE5/oDE
	 LwajlnH5tEhzw==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2B9F417E0F33;
	Mon, 27 Apr 2026 18:39:45 +0200 (CEST)
Message-ID: <d3b5239b-e3d9-4d81-9220-d6057d670ff3@collabora.com>
Date: Mon, 27 Apr 2026 19:39:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] drm/bridge: dw-hdmi-qp: Add HDMI 2.0 SCDC
 scrambling and high TMDS clock ratio support
To: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Maud Spierings <maud_spierings@hotmail.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
 <3826043.PYKUYFuaPT@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3826043.PYKUYFuaPT@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_093951_141969_687ADE62 
X-CRM114-Status: GOOD (  17.19  )
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

SGVsbG8gSGVpa28sCgpUaGFua3MgZm9yIHRoZSBxdWljayByZXZpZXdzIQoKT24gNC8yNy8yNiAx
OjQ5IFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBTb25udGFnLCAyNi4gQXByaWwgMjAy
NiwgMDI6MjA6MTcgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBDcmlzdGlh
biBDaW9jYWx0ZWE6Cj4+IEVuYWJsZSBIRE1JIDIuMCBkaXNwbGF5IG1vZGVzIChlLmcuIDRLQDYw
SHopIGJ5IGFkZGluZyBTQ0RDIG1hbmFnZW1lbnQKPj4gZm9yIHRoZSBoaWdoIFRNRFMgY2xvY2sg
cmF0aW8gYW5kIHNjcmFtYmxpbmcsIHJlcXVpcmVkIHdoZW4gdGhlIFRNRFMKPj4gY2hhcmFjdGVy
IHJhdGUgZXhjZWVkcyB0aGUgMzQwIE1IeiBIRE1JIDEuNGIgbGltaXQuCj4+Cj4+IEEgcGVyaW9k
aWMgd29yayBpdGVtIG1vbml0b3JzIHRoZSBzaW5rJ3Mgc2NyYW1ibGluZyBzdGF0dXMgdG8gcmVj
b3Zlcgo+PiBmcm9tIHNpbmstc2lkZSByZXNldHMuICBPbiBob3RwbHVnIGRldGVjdCwgaWYgU0NE
QyBzY3JhbWJsaW5nIHN0YXRlIGlzCj4+IG91dCBvZiBzeW5jIHdpdGggdGhlIGRyaXZlciwgdHJp
Z2dlciBhIENSVEMgcmVzZXQgdG8gcmUtZXN0YWJsaXNoIHRoZQo+PiBsaW5rLgo+Pgo+PiBSZWpl
Y3QgbW9kZXMgcmVxdWlyaW5nIFRNRFMgcmF0ZXMgYWJvdmUgNjAwIE1IeiwgYXMgdGhvc2UgZmFs
bCBpbiB0aGUKPj4gSERNSSAyLjEgRlJMIGRvbWFpbiB3aGljaCBpcyBub3Qgc3VwcG9ydGVkLiBJ
biBub19ocGQgY29uZmlndXJhdGlvbnMsCj4+IGZ1cnRoZXIgcmVzdHJpY3QgdG8gMzQwIE1IeiBz
aW5jZSBTQ0RDIHJlcXVpcmVzIGEgY29ubmVjdGVkIHNpbmsuCj4+Cj4+IFRlc3RlZC1ieTogRGll
ZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+Cj4+IFRlc3RlZC1ieTogTWF1
ZCBTcGllcmluZ3MgPG1hdWRfc3BpZXJpbmdzQGhvdG1haWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+
PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIHwg
MTg4ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDE3MiBp
bnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPj4gaW5kZXggZDY0OWExY2YwN2Y1Li5jNDgyYThl
N2RhMjUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
aGRtaS1xcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRt
aS1xcC5jCj4+IEBAIC0yLDYgKzIsNyBAQAo+PiAgLyoKPj4gICAqIENvcHlyaWdodCAoYykgMjAy
MS0yMDIyIFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgo+PiAgICogQ29weXJpZ2h0IChj
KSAyMDI0IENvbGxhYm9yYSBMdGQuCj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjUgQW1hem9uLmNv
bSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcy4KPiAKPiBJIGhhdmUgbm8gcmVhbCBjbHVlIGFib3V0
IHRoZSBpbm5lciB3b3JraW5ncyBvZiBoZG1pLCBidXQgdGhhdCBsaW5lCj4gZG9lcyBtYWtlIG1l
IGN1cmlvdXMsIGJlY2F1c2Ugbm8gcGFydCBvZiB0aGUgcGF0Y2ggYXV0aG9yc2hpcCBkb2VzCj4g
bWVudGlvbiBBbWF6b24gOy0pIC4KClRoYXQgd2FzIGludGVudGlvbmFsOiBhbHRob3VnaCB0aGUg
Y29kZSB3YXMgd3JpdHRlbiBieSBDb2xsYWJvcmEsIHRoZSBjb3B5cmlnaHQKYmVsb25ncyB0byBB
bWF6b24uCgo+IEFsc28gSSB0aGluayAib3IgaXQncyBhZmZpbGlhdGVzIiBtaWdodCBiZSB3YXkg
dG9vIGJyb2FkLCBiZWNhdXNlIHRoaXMKPiBjYW4gYmUgZXNzZW50aWFsbHkgZXZlcnlvbmUuIFNv
IG5vb25lIGluIHRoZSBmdXR1cmUgd2lsbCBrbm93IHdobyB0bwo+IGFzayBvbiBjb3B5cmlnaHQg
cXVlc3Rpb25zLgo+IAo+IFNpbWlsYXJseSB3aGVuIF9zb21lYm9keV8gY29tZXMgZm9yd2FyZCB3
aXRoICJJIGhvbGQgYSBjb3B5cmlnaHQgb24gdGhpcyIKPiBuby1vbmUgY291bGQgdmVyaWZ5IHRo
aXMgY2xhaW0gYXMgd2VsbC4KPiAKPiBJIHNvbWVob3cgZXhwZWN0IF9vbmVfIGVudGl0eSBiZWlu
ZyBzcGVjaWZpZWQsIG5vdCBwb3NzaWJseSBodW5kcmVkcy4KCkhtbSwgSSBmb2xsb3dlZCB0aGUg
d29yZGluZyBhbHJlYWR5IHVzZWQgZWxzZXdoZXJlIGluIHRoZSBrZXJuZWwgdHJlZToKCiQgZ2l0
IGdyZXAgJ0NvcHlyaWdodC4qQW1hem9uLiphZmZpbGlhdGVzJyB8IHdjIC1sCjkzCgpUaGVyZSBh
cHBlYXJzIHRvIGJlIG9ubHkgYSBzaW5nbGUgaW5zdGFuY2UgdGhhdCBvbWl0cyDigJxhZmZpbGlh
dGVz4oCdOgoKJCBnaXQgZ3JlcCAnQ29weXJpZ2h0LipBbWF6b24nIHwgZ3JlcCAtdiBhZmZpbGlh
dGVzCmRyaXZlcnMvcG93ZXIvc3VwcGx5L21heDE0NjU2X2NoYXJnZXJfZGV0ZWN0b3IuYzogKiBD
b3B5cmlnaHQgKEMpIEFtYXpvbiBUZWNobm9sb2dpZXMgSW5jLiBBbGwgcmlnaHRzIHJlc2VydmVk
LgoKV2hpY2ggd2FzIGFkZGVkIG5lYXJseSB0ZW4geWVhcnMgYWdvLCBzbyBJ4oCZbSBub3Qgc3Vy
ZSBpdCBtYWtlcyBzZW5zZSB0byBhZG9wdAp0aGF0IGZvcm0gbm93LgoKQWN0dWFsbHksIHRoaXMg
c2VlbXMgdG8gYmUgZmFpcmx5IGNvbW1vbiBhbW9uZyBvdGhlciB2ZW5kb3JzIGFzIHdlbGw6Cgok
IGdpdCBncmVwICdDb3B5cmlnaHQuKmFmZmlsaWF0ZXMnIHwgd2MgLWwKMTAxNAoKUmVnYXJkcywK
Q3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

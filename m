Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C58E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 10:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNBAgIqBvbnsjEJIOcXviEdIPoSYmobPwPvKGT9jzkY=; b=Ds45JPbtLPfayu
	xjdz1K+CDhiwc1niikolsZa/IdBbMX6wf5owSRhmjqbqrGoR/QkOGVyPPECeP/4cEhhXb4BMDpQ2H
	JSmshgrEMxGApL5C6k4nsWX7eEY6rhyWuHUrjWiOZB6d5AU7UMprRBHTCrFubSO+tkS7P7UW3XDuC
	2vLJ2P9D4j7FXcmbhka3B4Il17DWRNJ3EkjXiTf7y56PJpp1yOTViVFUJKNw0BtL2UfA9Y/OJop++
	hRAIsNYjQrea1dp7ALeVYxvvCnGOBGwcZCmFTQXdKJdkMiBKe4QJdF4QOSjx4+RynV4nqn2t8+vrM
	WMbgXytvGohWtPTIa4sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKxEa-0000000B5XS-2HAn;
	Tue, 10 Dec 2024 10:12:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKx43-0000000B3d8-2Rnv;
	Tue, 10 Dec 2024 10:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7r4xfSODKGy3g81bMhiMFOfk/EfRckjRbt+ZPVGFK4g=; b=PL/M6RXV0ShUZBMUNHiO5ZgItP
	apLiD0XeIwBENg5C3YZHRvB7etdwsQkW62AKHgcAt5QqwRPGytnr5gjgh9b4FVMT+eIQj5q7oBbrF
	PvMqnPXqlb8rMfX/A53ximn12OI8ob53r+fgcoasq6nZT0XjAHUyuQPUtbcMLjRe+y18yephfx3cE
	emwHQ+w6sK7y0D9vOBkLXZqzDyvadoDStZb2HoeRAgXFRBc/BONNTJpmpPQYSFvp7jSb+8Emav+0W
	Yt5NL6mUE9LpbcgYi1OhE2bpqvMCfT/nG9QC/Rdt5xM7r+gaw1PZGdpr5IP/ERpaobgInwSFN4nEj
	qXJk9vIA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tKx3g-0003mj-0a; Tue, 10 Dec 2024 11:01:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Yan <andyshrk@163.com>
Cc: Daniel Semkowicz <dse@thaumatec.com>,
 Diederik de Haas <didi.debian@cknow.org>, andy.yan@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, quentin.schulz@cherry.de, rfoss@kernel.org,
 robh@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Tue, 10 Dec 2024 11:01:34 +0100
Message-ID: <2117643.K71DO8KEF6@diego>
In-Reply-To: <2d68155e.1e5b.193ae4616b9.Coremail.andyshrk@163.com>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <CAA8EJprLA09NP0KAztc5eoAMkGcrom84jg_pcbNcwN0FAaSLrw@mail.gmail.com>
 <2d68155e.1e5b.193ae4616b9.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_020159_615735_02F8AB7B 
X-CRM114-Status: GOOD (  28.14  )
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

QW0gRGllbnN0YWcsIDEwLiBEZXplbWJlciAyMDI0LCAwMjo1NDowOSBDRVQgc2NocmllYiBBbmR5
IFlhbjoKPiAKPiBIaSBEbWl0cnksCj4gCj4g5ZyoIDIwMjQtMTItMTAgMDk6NDU6MTHvvIwiRG1p
dHJ5IEJhcnlzaGtvdiIgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4g5YaZ6YGT77yaCj4g
Pk9uIFR1ZSwgMTAgRGVjIDIwMjQgYXQgMDM6MjIsIEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4gSGkgRG1pdHJ5LAo+ID4+Cj4gPj4g5ZyoIDIwMjQtMTIt
MTAgMDk6MDE6MzjvvIwiRG1pdHJ5IEJhcnlzaGtvdiIgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJv
Lm9yZz4g5YaZ6YGT77yaCj4gPj4gPk9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDA4OjUwOjUxQU0g
KzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+ID4+ID4+Cj4gPj4gPj4KPiA+PiA+PiBIaSwKPiA+PiA+
Pgo+ID4+ID4+IEF0IDIwMjQtMTItMTAgMDc6MTI6MjYsICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4gPj4gPj4gPkFtIE1vbnRhZywgOS4gRGV6ZW1iZXIgMjAyNCwg
MTc6MTE6MDMgQ0VUIHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiA+PiA+PiA+PiBIaSwKPiA+
PiA+PiA+Pgo+ID4+ID4+ID4+IE9uIE1vbiBEZWMgOSwgMjAyNCBhdCA0OjA2IFBNIENFVCwgRGFu
aWVsIFNlbWtvd2ljeiB3cm90ZToKPiA+PiA+PiA+PiA+IE9uIDAzLjEyLjI0IDIxOjU0LCBIZWlr
byBTdHVlYm5lciB3cm90ZToKPiA+PiA+PiA+PiA+ID4gVGhpcyBzZXJpZXMgYWRkcyBhIGJyaWRn
ZSBhbmQgZ2x1ZSBkcml2ZXIgZm9yIHRoZSBEU0kyIGNvbnRyb2xsZXIgZm91bmQKPiA+PiA+PiA+
PiA+ID4gaW4gdGhlIHJrMzU4OCBzb2MgZnJvbSBSb2NrY2hpcCwgdGhhdCBpcyBiYXNlZCBvbiBh
IFN5bm9wc2lzIElQIGJsb2NrLgo+ID4+ID4+ID4+ID4gPgo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+
PiA+IEkgZGlkIG1vcmUgdGVzdHMgd2l0aCBkaWZmZXJlbnQgTFZEUyBkaXNwbGF5cy4gSSB0ZXN0
ZWQgZm9sbG93aW5nCj4gPj4gPj4gPj4gPiBjb25maWd1cmF0aW9ucyB3aXRoIERTSS9MVkRTIGJy
aWRnZToKPiA+PiA+PiA+PiA+IC0gMTAyNHg2MDBANjAuMDEKPiA+PiA+PiA+PiA+IC0gMTAyNHg3
NjhANjAuMDIKPiA+PiA+PiA+PiA+IC0gMTI4MHg4MDBANjAuMDcKPiA+PiA+PiA+PiA+IC0gMTM2
Nng3NjhANjAuMDYKPiA+PiA+PiA+PiA+Cj4gPj4gPj4gPj4gPiBBbGwgb2YgdGhlbSB3b3JrZWQg
d2l0aG91dCBpc3N1ZXMsIGV4Y2VwdCAxMzY2eDc2OC4KPiA+PiA+PiA+PiA+IFdpdGggdGhpcyBy
ZXNvbHV0aW9uLCB2aWRlbyBpcyBibHVycnksIGFuZCBvZmZzZXQgaW5jb3JyZWN0bHkKPiA+PiA+
PiA+PiA+IHRvIHRoZSBsZWZ0LiBUaGVyZSBhcmUgYWxzbyByZXBlYXRpbmcgZXJyb3JzIG9uIHRo
ZSBjb25zb2xlOgo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+PiA+ICAgcm9ja2NoaXAtZHJtIGRpc3Bs
YXktc3Vic3lzdGVtOiBbZHJtXSAqRVJST1IqIFBPU1RfQlVGX0VNUFRZIGlycSBlcnIgYXQgdnAz
Cj4gPj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gSW4gY29ycmVjdCBvcGVyYXRpb24gd2l0aCBvdGhl
ciByZXNvbHV0aW9ucywgdGhlcmUgaXMgbm8gZXJyb3IuCj4gPj4gPj4gPj4gPiBJIGFtIG5vdCBz
dXJlIGlmIHRoaXMgaXMgYSBwcm9ibGVtIGluIHlvdXIgc2VyaWVzIG9yIHJhdGhlciBpbiBWT1Ay
Cj4gPj4gPj4gPj4gPiBkcml2ZXIuCj4gPj4gPj4gPgo+ID4+ID4+ID5UaGlzIHJlYWxseSBzb3Vu
ZHMgbGlrZSBzb21ldGhpbmcgaXMgd3Jvbmcgb24gdGhlIHZvcCBzaWRlLgo+ID4+ID4+ID5UaGUg
aW50ZXJydXB0IGlzIHBhcnQgb2YgdGhlIHZvcCwgdGhlIGRpdmlzYWJsZSBieSA0IHRoaW5ncyBs
aWtlbHkgdG9vLgo+ID4+ID4+Cj4gPj4gPj4gVGhpcyBpcyBhIGhhcmR3YXJlIGxpbWl0YXRpb24g
b24gdm9wIHNpZGU6Cj4gPj4gPj4gVGhlIGhvcml6b250YWwgcmVzb2x1dGlvbiBtdXN0IGJlIDQg
cGl4ZWwgYWxpZ25lZC4KPiA+PiA+Cj4gPj4gPlRoZW4gbW9kZV92YWxpZCgpIGFuZCBhdG9taWNf
Y2hlY2soKSBtdXN0IHJlamVjdCBtb2RlcyB0aGF0IGRvbid0IGZpdC4KPiA+Pgo+ID4+IFdlIHJv
dW5kIGRvd24gdG8gNCBwaXhlbCBhbGlnbmVkIGluIG1vZGVfZml4dXAgaW4gb3VyIGJzcCBrZXJu
ZWwsCj4gPgo+ID5XaGF0IGlzIG1lYW50IGJ5IHRoZSAiYnNwIGtlcm5lbCIgaGVyZT8gSSBkb24n
dCBzZWUgaXQgYmVpbmcgcHJlc2VudAo+IAo+IGJzcCBrZXJuZWwgbWVhbnMgZG93bnN0cmVhbSB2
ZW5kb3Iga2VybmVsLgo+IAo+ID5pbiB0aGUgbWFpbmxpbmUga2VybmVsLiBTbywgaWYgdGhlIG1v
ZGUgaXMgdW5zdXBwb3J0ZWQsIGl0IHNob3VsZCBiZQo+IAo+IFdpbGwgaXQgYmUgYWNjZXB0YWJs
ZSB0byBhZGQgdGhpcyByb3VuZCBkb3duIGluIHRoZSBtYWlubGluZSBtb2RlX2ZpeHVwPwoKcGVy
c29uYWxseSBJJ2QgbGlrZSB0aGF0LgoKSS5lLiB0aGUgdGhpbmcgaW4gdGhlIGV4YW1va2UgYWJv
dmUgaXMgYW4gTFZEUyBkaXNwbGF5LCBzbyBoYXMgZXNzZW50aWFsbHkKZml4ZWQgcmVzb2x1dGlv
bi4gU28gYWRhcHRpbmcgdGhlIHJlc29sdXRpb24gbWF5IG9yIG1heSBub3QgYmUgcG9zc2libGUK
KHNvbWUgZm9yIERTSSBvciB3aGF0ZXZlcikgLgoKRG9pbmcgdGhhdCByb3VuZGluZy1kb3duIEFO
RCBlbWl0dGluZyBhIGRldl93YXJuIGFib3V0IHRoYXQgZmFjdCB3b3VsZApiZSBwcmVmZXJyYWJs
ZSB0byBtZSBwZXJzb25hbGx5LCB0aG91Z2ggSSBkb24ndCBrbm93IGlmIHRoZXJlIGlzIHNvbWUK
ZGlmZmVyZW50IHByZWNlZGVudCBpbiBvdGhlciBwYXJ0cyBvZiBEUk0uCgoKSGVpa28KCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

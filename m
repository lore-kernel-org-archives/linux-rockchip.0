Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA95CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 18:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3S1gudilIKkQ1Vk2bilVDt/sERrBhrC1rl5nnHUdSY=; b=JVnx5TH4hrpe/p
	34MqaU6eL0clyDte8UjNg/S4c3iTqzZgy8nc7dxwrQU3lkKsZyK6dW1+pb2YyR76hOyKFiIs9f97r
	BCsi3tb6Xr37EK2T8dS8o3qSvvEBd89EYBk60Vw8fm2pMMVXuIzhUGdw+kmO0A+1l+MSilTiZbddN
	9UmRxy2PKiJryjDobgU4k2m5kORvHMWn47D7NYZZlbulcOiCM3eBZ6ZPcfUF9WDui3Wg6IzLPrr74
	z9EZsnLoyKPZmH236eRRy+B12br9PnPD+qQ9SpYUjdsAcCBvbbhQ6Rh+p3/MO+vuIo5Kq0Fg2xsjD
	W4pDeYXg5+mU65yRhYjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSAk-00AJKy-0q;
	Mon, 16 Oct 2023 18:18:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSAg-00AJKb-1I
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 18:18:31 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsSAc-0007vZ-Ly; Mon, 16 Oct 2023 20:18:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Guido =?ISO-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 andyshrk@163.com, jagan@edgeble.ai, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
 kernel@puri.sm, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Date: Mon, 16 Oct 2023 20:18:25 +0200
Message-ID: <2140189.3Lj2Plt8kZ@diego>
In-Reply-To: <e52152b6783e3fce9aebb64a553c6922@manjaro.org>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
 <CADcbR4+i_B26g_gLrjTm8dxVzprb-WHRrx=r07wKhcJuei+96w@mail.gmail.com>
 <e52152b6783e3fce9aebb64a553c6922@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_111830_458854_FF399B19 
X-CRM114-Status: GOOD (  17.30  )
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

SGksCgpBbSBNb250YWcsIDE2LiBPa3RvYmVyIDIwMjMsIDE4OjA3OjUyIENFU1Qgc2NocmllYiBE
cmFnYW4gU2ltaWM6Cj4gT24gMjAyMy0xMC0xNiAxNzo1MiwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+
ID4gQ29uZmlybWVkIHRoYXQgdGhvc2UgcGVuZGluZyBwYXRjaGVzIERPIGZpeCB0aGUgcGFuZWwg
c3VzcGVuZCBpc3N1ZXMuIAo+ID4gVGhhbmsgeW91Lgo+IAo+IEF3ZXNvbWUsIHRoYXQncyBncmVh
dCB0byBoZWFyISAgUGVyaGFwcyBhICJUZXN0ZWQtYnkiIGluIHRoZSBvcmlnaW5hbCAKPiBMS01M
IHRocmVhZCBbMV0gY291bGQgaGVscCB3aXRoIGhhdmluZyB0aGUgcGF0Y2ggcHVsbGVkIHNvb25l
ci4KPiAKPiBMaW5rczoKPiBbMV0gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8zM2I3
Mjk1Ny0xMDYyLTFiNjYtODVlYi1jMzdkYzVjYTI1OWJAcmVkaGF0LmNvbS9ULwo+IAo+IAo+ID4g
T24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgMzo0MeKAr0FNIEd1aWRvIEfDvG50aGVyIDxndWlkby5n
dW50aGVyQHB1cmkuc20+IAo+ID4gd3JvdGU6Cj4gPj4gCj4gPj4gSGkgQ2hyaXMsCj4gPj4gT24g
RnJpLCBPY3QgMTMsIDIwMjMgYXQgMDE6Mzk6MTZQTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdyb3Rl
Ogo+ID4+ID4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+
PiA+Cj4gPj4gPiBUaGUgUG93a2lkZHkgUkdCMzAgNCBpbmNoIHBhbmVsIGlzIGEgNCBpbmNoIDcy
MHg3MjAgRFNJIHBhbmVsIHVzZWQgaW4KPiA+PiA+IHRoZSBQb3draWRkeSBSR0IzMCBoYW5kaGVs
ZCBnYW1pbmcgZGV2aWNlLiBBZGQgc3VwcG9ydCBmb3IgaXQuCj4gPj4gPgo+ID4+ID4gVE9ETzog
VGhlIHBhbmVsIHNlZW1zIHRvIG5vdCByZXN1bWUgcHJvcGVybHkgZnJvbSBzdXNwZW5kLiBJJ3Zl
Cj4gPj4gPiBjb25maXJtZWQgb24gdGhlIG90aGVyIFNUNzcwMyBiYXNlZCBkZXZpY2VzIGl0IHdv
cmtzIGNvcnJlY3RseS4KCnNvIHRoaXMgVE9ETyBpdGVtIGNvdWxkIGdvIGF3YXksIHJpZ2h0PwpJ
IGNhbiByZW1vdmUgaXQgd2hlbiBhcHBseWluZyB0aGUgcGF0Y2gsIGp1c3Qgd2FudCB0byBtYWtl
IHN1cmUKYWxsIHJldmlldyBjb21tZW50cyBhcmUgYWRkcmVzc2VkIC0gb25seSB0aGUgc3VzcGVu
ZCB0aGluZyBpdCBzZWVtcy4KCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

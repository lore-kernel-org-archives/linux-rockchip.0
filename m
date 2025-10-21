Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B8B5CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eecZwO/3OT27qmTGXi6jjPQPZiBiMDd2hXugcXyuSP0=; b=mFVUO9vS0fn8N9
	7qhV2+e8AT9O8wz0btQ/YDVH9uCx8+ncv4rf9yVix81gQH/vS8wkfowxjqfCKwF1MvuUtvb+LByA+
	ZqlnPnLesx/z07BLkJQK5FImtygBIHIvDsHFPi8/+zN8oLoop4T1b1ucSAaLlts1R5rAusPPpdtn4
	GSeo5vqwvRBbTQpe45tPqmiuMLWg9Vw2H9CBKy8XwdA8zKW9yZe3Oj7/UEoxsbWOBXJeM3mQpJj5s
	r2sSgG57Z0CA1d4HoQAeUVkGWTjD8ATPLqWJCXvhx8syu2Nq7sViGBZR1J13OBDhX1Y7Xn7Wepsc/
	CrJtJbyk2VjkbTnUvOWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7vp-0000000GJp1-40iX;
	Tue, 21 Oct 2025 08:41:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7vm-0000000GJno-0Gxm;
	Tue, 21 Oct 2025 08:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OMqtz21WxbMi8VBZjYtytcrz+hZpM9P8lLYQDAdVBZc=; b=JeutWjWfFw7/Z6LO+JooK0rt9M
	MhJp80ndS4eV7655BwHzm5EZqINVFQq9RCIyXPsS8ie7ScQnMmmwNGyvscr46QqnXAJ00kLUmDnXk
	anL12s+RnLboKyspfEBOqBU5Y24WFCdLEide841YtSCUv9AF1dNDy1oZEG0n/U4HxF7ugmz1okiHV
	/Tu5nLLxJQaVgT7bwwtmS4F8NYlFbZ34dEo5AchB+c2zrTEVvYbelYojpn7pfCC4508OmBOoyR392
	BM0VDanby9lrU3gzfYFZkrOfLOG2CsdRtAkHad5mRTYUdpyN5YE2MmGTo0RhubRHGaMaHpvjYd+tE
	/QKCraag==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB7vc-0001Wr-GZ; Tue, 21 Oct 2025 10:41:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the Orange Pi
 CM5 Base board
Date: Tue, 21 Oct 2025 10:41:11 +0200
Message-ID: <3720286.R56niFO833@phil>
In-Reply-To: <20251020154625.GB6159@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <2328202.iZASKD2KPV@phil> <20251020154625.GB6159@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_014122_096044_B70AEA90 
X-CRM114-Status: GOOD (  34.77  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Ondrej Jirman <megi@xff.cz>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Cenk Uluisik <cenk.uluisik@googlemail.com>, Alexey Charkov <alchark@gmail.com>, Maxime Ripard <mripard@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxNzo0NjoyNSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIExhdXJlbnQgUGluY2hhcnQ6Cj4gT24gTW9uLCBPY3QgMjAsIDIw
MjUgYXQgMDQ6NDQ6MjFQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBBbSBNb250
YWcsIDYuIE9rdG9iZXIgMjAyNSwgMDE6NTU6MzYgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnpl
aXQgc2NocmllYiBMYXVyZW50IFBpbmNoYXJ0Ogo+ID4gPiBIZWxsbywKPiA+ID4gCj4gPiA+IFRo
aXMgcGF0Y2ggc2VyaWVzIGFkZHMgYSBkZXZpY2UgdHJlZSBmb3IgdGhlIE9yYW5nZSBQaSBDTTUg
QmFzZSBib2FyZAo+ID4gPiBmcm9tIFh1bmxvbmcuIFRoaXMgaXMgYSBjb21iaW5hdGlvbiBvZiBh
IGNvbXB1dGUgbW9kdWxlIGFuZCBhIGNhcnJpZXIKPiA+ID4gYm9hcmQsIHNvIHRoZSBkZXZpY2Ug
dHJlZSBpcyBzcGxpdCBpbiB0d28gZmlsZXMuCj4gPiA+IAo+ID4gPiBUaGUgd29yayBpcyBiYXNl
ZCBvbiBhIGNvbWJpbmF0aW9uIG9mIHVwc3RyZWFtIGRldmljZSB0cmVlcyBmb3Igb3RoZXIKPiA+
ID4gUkszNTg4LWJhc2VkIE9yYW5nZSBQaSBib2FyZHMgYW5kIHRoZSBkb3duc3RyZWFtIGRldmlj
ZSB0cmVlLCBhbGwKPiA+ID4gY2hlY2tlZCBhZ2FpbnN0IHRoZSBhdmFpbGFibGUgc2NoZW1hdGlj
cyBmb3IgdGhlIGNhcnJpZXIgYm9hcmQuIFRoZQo+ID4gPiBjb21wdXRlIG1vZHVsZSBzY2hlbWF0
aWNzIGlzIHVuZm9ydHVuYXRlbHkgbm90IGF2YWlsYWJsZS4KPiA+ID4gCj4gPiA+IFRoZSBzZXJp
ZXMgc3RhcnRzIHdpdGggdGhyZWUgcGF0Y2hlcyB0aGF0IGFkZCBhIG5ldyB0bWRzLWVuYWJsZS1n
cGlvcwo+ID4gPiBwcm9wZXJ0eSB0byB0aGUgcmszNTg4LWR3LWhkbWktcXAgRFQgYmluZGluZyAo
MS81KSBhbmQgdXBkYXRlIHRoZSBkcml2ZXIKPiA+ID4gYWNjb3JkaW5nbHkgKDIvNSBhbmQgMy81
KS4gVGhvc2UgcGF0Y2hlcyBoYXZlIGJlZW4gYXV0aG9yZWQgYnkgQ3Jpc3RpYW4KPiA+ID4gQ2lv
Y2FsdGVhIGFzIHBhcnQgb2YgYSBsYXJnZXIgc2VyaWVzLCBJIGhhdmUgaW5jb3Jwb3JhdGVkIHRo
ZW0gaGVyZQo+ID4gPiBhcy1pcy4KPiA+ID4gCj4gPiA+IFBhdGNoIDQvNSB0aGVuIGFkZCBhIG5l
dyBjb21wYXRpYmxlIGZvciB0aGUgYm9hcmQgdG8gYXJtL3JvY2tjaGlwLnlhbWwuCj4gPiA+IFRo
ZSBsYXN0IHBhdGNoICg1LzUpIGFkZHMgdGhlIGRldmljZSB0cmVlIGZvciB0aGUgYm9hcmQuCj4g
PiA+IAo+ID4gPiBQYXRjaGVzIDIvNSBhbmQgMy81IGNvdWxkIGJlIG1lcmdlZCBzZXBhcmF0ZWx5
IHRocm91Z2ggdGhlIERSTSB0cmVlLAo+ID4gPiBidXQgcGF0Y2ggMS81IG5lZWRzIHRvIGJlIG1l
cmdlZCB3aXRoIHRoZSBkZXZpY2UgdHJlZSBpbiA1LzUgdG8gYXZvaWQKPiA+ID4gaW50cm9kdWNp
bmcgRFQgdmFsaWRhdGlvbiB3YXJuaW5ncy4gSSdkIGFwcHJlY2lhdGUgYWR2aWNlIGZyb20gdGhl
IERUCj4gPiA+IG1haW50YWluZXJzIHJlZ2FyZGluZyBob3cgdG8gaGFuZGxlIHRoaXMsIGFzIEkg
aGF2ZSBiZWVuIHRvbGQgYmVmb3JlCj4gPiA+IHRoYXQgRFQgYmluZGluZ3MgYW5kIERUIHNvdXJj
ZXMgY2FuJ3QgYmUgbWVyZ2VkIHRocm91Z2ggdGhlIHNhbWUgdHJlZS4KPiA+IAo+ID4gSSB0aGlu
ayB3ZSBnZW5lcmFsbHkgb25seSBjYXJlIGFib3V0IGJpbmRpbmcgd2FybmluZ3MgaGFwcGVuaW5n
Cj4gPiBpbiBsaW51eC1uZXh0Lgo+ID4gCj4gPiBJLmUuIGluIG1vc3QgY2FzZXMsIHRoZSBiaW5k
aW5nIGlzIG1lcmdlZCB3aXRoIHRoZSBkcml2ZXIgYW5kCj4gPiB0aGUgZHRzIHRoZW4gaW50byBh
IHNlcGFyYXRlIHRyZWUgLSBzb3J0IG9mIGlnbm9yaW5nIHRoZSBsb2NhbAo+ID4gYmluZGluZyBl
cnJvciwgYmVjYXVzZSBldmVyeXRoaW5nIHdpbGwgYmUgZmluZSBvbmNlIHN0dWZmIGNvbWVzCj4g
PiB0b2dldGhlciBpbiBsaW51eC1uZXh0Lgo+IAo+IEFzc3VtaW5nIHRoZXkgZ2V0IG1lcmdlZCB0
b2dldGhlciBpbiBsaW51eC1uZXh0LiBJZiB0aGVyZSdzIGEgZGVsYXksCj4gbGludXgtbmV4dCB3
aWxsIGV4aGliaXQgd2FybmluZ3MgZm9yIHNvbWUgdGltZS4gSSBkb24ndCBrbm93IHdoYXQgdGhl
Cj4gcnVsZSBpcyByZWdhcmRpbmcgdGhhdC4KCk5vcm1hbGx5IG9uY2UgdGhlIGRyaXZlci1tYWlu
dGFpbmVyIGhhcyBhcHBsaWVkIGJpbmRpbmcgKyBkcml2ZXIKY2hhbmdlLCBJIGFsc28gcGljayB1
cCB0aGUgZGV2aWNldHJlZSBzaG9ydGx5IGNoYW5nZSBhZnRlciB0aGF0LgoKQW5kIGluIG1vc3Qg
Y2FzZXMgdGhlIGRyaXZlciBjaGFuZ2Ugd2lsbCBiZSBpbiAtbmV4dCB0aGUgbmV4dCBkYXksCmFu
ZCB0aGUgZHRzIGNoYW5nZSBhcyB3ZWxsIG9yIDEtMiBkYXlzIGxhdGVyLgoKSWYgYSBDSSBib3Qg
Y29tcGxhaW5zLCBvbmUgdGhlbiBnb2VzIGxvb2tpbmcgaWYgc29tZXRoaW5nIHdlbnQgd3Jvbmcg
Oi0pIC4KQnV0IGluIDk5LjklIG9mIGNhc2VzLCB0aGluZ3MganVzdCB3b3JrIG91dC4KCgo+ID4g
U3BlYWtpbmcgb2YgYmluZGluZ3MsIGRvZXMgeW91ciBib2FyZCBfbmVlZF8gdGhlIGZybC1ncGlv
IHRvIHByb2R1Y2UKPiA+IGFueSBoZG1pIG91dHB1dD8gTGlrZSBjb3VsZCB3ZSBtZXJnZSB0aGUg
Ym9hcmQgd2l0aG91dCB0aGUgKG9wdGlvbmFsKQo+ID4gZ3BpbyBhbmQgdGhlbiBhZGQgaXQgbGF0
ZXIsIG9uY2UgdGhlIGJpbmRpbmcrZHJpdmVyIGhhdmUgbWFkZSBpdCBpbj8KPiAKPiBXaXRoIGEg
c3VpdGFibGUgcHVsbC11cCBJIHRoaW5rIHNvLiBJIGNhbiBzdWJtaXQgYSB2MyB3aXRoIHRoYXQu
CgpJIGd1ZXNzIHRoYXQgbWlnaHQgYmUgYSBuaWNlIHdheSB0byBnbywgYXMgdGhlbiB0aGUgbWFp
biBib2FyZCBkdHMKZG9lc24ndCBoYXMgdG8gd2FpdCBmb3IgdGhlIGRybSBjaGFuZ2VzIHRvIGJl
IGZpbmFsaXplZCA6LSkKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5050C624DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 21:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=090KMQle8PzmIuLUsqW4qmqJsP3sunwkwk+IpsOCzcw=; b=kGC/rtOGJApaWc
	t4Gb+ZoKkkL8siel/cqqqHC7ZFQLZTiwd+1ZItXqYXMTo34D6dQUH9Cs7J43xEwXOrGdpx7bm4iJx
	E8SdV9QQi5kYY3iwhhxGWgAhRYrk+CFAYAMsaP2v9lpmNn60EhcGm8/4sw5u3IiiR0MmiZ/xLAOEc
	gYn9Li8lJidC/1CTtAyCdlNeRjiZ5i8ybBkYLXcMPQw66W2bInZujQucdWTGdUHPshhJerD7nPOSG
	81hyGxqN2h9caJgD2aiOAGMofvYqH+BeL84zJ/gELLVLlz2L2yZ5eKN8ZnNyaSXlSRyGPo3+fcybY
	XroD4x0WF2WcW2GwW8Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Eh3-00000000byP-3pEV;
	Thu, 03 Sep 2026 21:09:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Eh1-00000000bxs-14sY;
	Thu, 03 Sep 2026 21:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Jn4fU7y77lECs7I6hTxfYjF0J9XYYojKqt6y7PNxEWI=; b=rHE/PaMWwEQJHJqpiFRbjAmxov
	H82kIeKRs6/bXHDWJZNT8gfDziefluhXSWk/oBJu/qlFwhCD18Nh3jpgb1kEi3igslJvIgl1cVTk7
	k6xcPxk3f5gGof/gUfxFZanoLSh3VrFmtnqabn2OiJU17+yWOjWEWXQCJzz1YHRtZ5qp3riHreGUR
	8ZN0ET0Xg6UWBWpKSjcmvW+Y0SfufXtWdVP+Ii/P3x6FlRnQuwKECbRrqu3Z0o/cljfeES/ZLghaM
	kx5hpxb3paAjFaq4DWpgMgIamX8cTLBzKYtnJNsCeQVBmsfi5qdrutLeYpQliXhI+HmjGSsnNPHBW
	/li1+feA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>
Subject: Re: [PATCH v2] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc()
 API
Date: Thu, 03 Sep 2026 23:09:38 +0200
Message-ID: <4592222.hdfAi7Kttb@diego>
In-Reply-To: <afde7cfa-bd1e-40d2-9315-d3d88abb7606@gmail.com>
References: <20260824-drm-v2-1-7f9273c6020b@gmail.com> <2814844.6tgchFWduM@diego>
 <afde7cfa-bd1e-40d2-9315-d3d88abb7606@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_140955_317987_FB322C87 
X-CRM114-Status: GOOD (  19.47  )
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

SGkgSm9oYW4sCgpBbSBEb25uZXJzdGFnLCAzLiBTZXB0ZW1iZXIgMjAyNiwgMjI6NDQ6NTcgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKb2hhbiBKb25rZXI6Cj4gT24gOS8z
LzI2IDE3OjEyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIE1vbnRhZywgMjQuIEF1Z3Vz
dCAyMDI2LCAxMjoyMToxOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpv
aGFuIEpvbmtlciB2aWEgQjQgUmVsYXk6Cj4gPj4gRnJvbTogSMO8c2V5aW4gQklZSUsgPGJvb2dp
ZXBvcEBnbXguY29tPgo+ID4+Cj4gPj4gVGhlIGZ1bmN0aW9uIGRldm1fZHJtX2JyaWRnZV9hbGxv
YygpIGlzIHRoZSBuZXcgQVBJIGZvciBhbGxvY2F0aW5nIERSTSBicmlkZ2VzLgo+ID4+IFRoaXMg
Y29udmVyc2lvbiB3YXMgbWlzc2VkIGR1cmluZyB0aGUgaW5pdGlhbCBjb252ZXJzaW9uIG9mIGFs
bCBicmlkZ2VzIHRvCj4gPj4gdGhlIG5ldyBBUEkuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBI
w7xzZXlpbiBCSVlJSyA8Ym9vZ2llcG9wQGdteC5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSm9o
YW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgfCA4ICsrKystLS0tCj4gPj4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+ID4+IGluZGV4IGYyOGQ2YTg4M2UwOS4uMzljNjVl
ZTA3Y2FhIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZf
aGRtaS5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMK
PiA+PiBAQCAtNzAzLDcgKzcwMyw2IEBAIHJrMzA2Nl9oZG1pX3JlZ2lzdGVyKHN0cnVjdCBkcm1f
ZGV2aWNlICpkcm0sIHN0cnVjdCByazMwNjZfaGRtaSAqaGRtaSkKPiA+PiAgCQkJIERSTV9NT0RF
X0VOQ09ERVJfVE1EUywgTlVMTCk7Cj4gPj4gIAo+IAo+ID4+ICAJaGRtaS0+YnJpZGdlLmRyaXZl
cl9wcml2YXRlID0gaGRtaTsKPiAKPiBDYW4gdGhpcyBiZSByZW1vdmVkPwo+IFNlZSBsaW5rL2Nv
bW1lbnQgYmVsb3cuCgp0aGF0IGlzIHdoYXQgSSBtZWFudC4gYnJpZGdlLmNvbnRhaW5lciBob2xk
cyB0aGUgc2FtZSBpbmZvcm1hdGlvbiBhbmQKYnJpZGdlLnByaXZhdGVfZGF0YSBpcyBub3QgdXNl
ZCBpbiB0aGUgcmszMDY2X2hkbWkgZHJpdmVyIGF0IGFsbC4KClNvIGlmIHNvbWUgZnV0dXJlIGZ1
bmN0aW9uIG5lZWRzIHRvIGFjY2VzcyB0aGUgc3RydWN0IHJrMzA2Nl9oZG1pIGl0IGNhbgpkbyBz
byB2aWEgdGhlIGNvbnRhaW5lciBmaWVsZC4KCgo+IGFuZCBoZG1pLT5icmlkZ2UuZnVuY3MgYXJl
IHJlZHVuZGFudCBieSB0aGlzIGNoYW5nZT8KPiAKPiBOb3QgcmVkdW5kYW50LCBqdXN0IGZ1bmNz
IGFyZSBhdHRhY2hlZCBpbiBhIGNvbW1vbiBmdW5jdGlvbiBfX2Rldm1fZHJtX2JyaWRnZV9hbGxv
YygpCgp0aGF0J3MgZXhhY3RseSB3YXQgSSBtZWFudC4gQXMgdGhleSBhcmUgYXR0YWNoZWQgYWxy
ZWFkeSBpbiB0aGUgY29tbW9uCmZ1bmN0aW9uLCB0aGVyZSBpcyBubyBuZWVkIHRvIGRvIGl0IF9h
Z2Fpbl8gaW4gcmszMDY2X2hkbWlfcmVnaXN0ZXIoKQoKPiAKPiBQbGVhc2UgYWR2aXNlIHdoYXQg
Y2hhbmdlcyBhcmUgbmVlZGVkPwo+IFJLMzA2Nl9oZG1pIGlzIGJyb2tlbiBzaW5jZSBzb21ld2hl
cmUgMjAyNS0wNS4KClNvIGJvdGggc2hvdWxkIGJlIGRyb3BwZWQuCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4E8C677C4
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 08:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2sxeu+yPuJ/eINwzu767U9wixFpfsOyWUAkC3Y2E/o=; b=KaHcWZLsLiPVBr
	IsIDUmFI8RH9Qh09zGEQpRHTwJWPPxESiQX6S/F/DM3MTOzg17MCW3JD0FoQI7sNU6N+Lc8Mpxsfb
	VnIPSgCr6EQenbt32G80tt/Oc7+hHvSaNIhSFfocXRFywFUW6uUWVbquKYKLnhuL3BAWHh5GWm0Hb
	j2G6SImOqt8ImiMDIK9zwFpaTsMFuFocWCTeQ4fQ97HBPrvpcm1PSWkz4ezAGap8Ry15aELPSVtFr
	WvpSTpkPFSvoSxus+ye2Qw0M61gfvNjZVzUbmDbwbzCXY3f+VIjpQYTN2czNAkZMMtz5VL7iUVLSp
	lPg9Xf97vYPohvCx9uww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYHR-00000003i0s-3xl1;
	Mon, 09 Jun 2025 08:54:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYDb-00000003haC-0hFw;
	Mon, 09 Jun 2025 08:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FOHakUk5xT1fcNi+NPqv3HQ+xAZj2Oji/+RFN8IiveA=; b=1R6ba9wkp1ZO9GSRWkwczG90ui
	Uifd7T3spP4VYBkQjasbFUAKxrlDFyusDdhK2NPoVCW0proWCH2OYPyuUu4gv4UTbwY0iVbtDdzuu
	tMS15zAP236F4PI8tZoP56ZLHKX6S2dcsLrHtVTNgs4fwmVg9TAvq/Ves07/fwp2Dd8mG6QNfhy3q
	KIVKTs+fh4/qAdV3DZsn6cPHwyq6v2F5lNpj7jdJqxDuuTlIJs4EzVH7U8Vsx+vZklAwigAffvq1o
	t8HAaZ+BT76JWnkFFEQJIKDhGsOhtAIVhzyeWlc2rhEB9Y0RJRpOlIjOz5CMhBC4EZwQ02NIor6bD
	GDd/kYnw==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOYDP-0005cP-0b; Mon, 09 Jun 2025 10:50:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 0/4] Quality Improvements for Rockchip-IP PCIe
Date: Mon, 09 Jun 2025 10:50:45 +0200
Message-ID: <2266650.atdPhlSkOF@phil>
In-Reply-To: <aEQbx0Qu-2UKhV1y@geday>
References: <aEQbx0Qu-2UKhV1y@geday>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_015059_219626_7792B9A3 
X-CRM114-Status: GOOD (  12.46  )
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

SGkgR2VyYWxkbywKCkFtIFNhbXN0YWcsIDcuIEp1bmkgMjAyNSwgMTM6MDA6MjMgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBHZXJhbGRvIE5hc2NpbWVudG86Cj4gRHVyaW5n
IGEgMzAtZGF5IGRlYnVnZ2luZy1ydW4gZmlnaHRpbmcgcXVpcmt5IFBDSWUgZGV2aWNlcyBvbiBS
SzMzOTkKPiBzb21lIHF1YWxpdHkgaW1wcm92ZW1lbnRzIGJlZ2FuIHRvIHRha2UgZm9ybSBhbmQg
dGhpcyBpcyBteSBhdHRlbXB0Cj4gYXQgdXBzdHJlYW1pbmcgaXQuIEl0IHdpbGwgZW5zdXJlIG1h
eGltdW0gY2hhbmNlIG9mIHJldHJhaW5pbmcgdG8gR2VuMgo+IDUuMEdUL3MsIG9uIGFsbCBmb3Vy
IGxhbmVzIGFuZCBwbHVzIGlmIGFueWJvZHkgaXMgZGVidWdnaW5nIHRoZSBQSFkKPiB0aGV5J2xs
IG5vdyBnZXQgcmVhbCB2YWx1ZXMgZnJvbSBURVNUX0lbMzowXSBmb3IgZXZlcnkgVEVTVF9BRERS
WzQ6MF0KPiB3aXRob3V0IHJpc2sgb2YgbG9ja2luZyB1cCBrZXJuZWwgbGlrZSB3aXRoIHByZXNl
bnQgYnJva2VuIGFzeW5jCj4gc3Ryb2JlIFRFU1RfV1JJVEUuCgpjb3VsZCB5b3UgY2hlY2sgeW91
ciBzZXR0aW5ncyBmb3Igc2VuZGluZyBwYXRjaGVzIHBsZWFzZT8KClRoZSBpbmRpdmlkdWFsIHBh
dGNoZXMgb2YgdGhpcyBzZXJpZXMgZGlkIG5vdCBnZXQgImluLXJlcGx5LXRvIiBoZWFkZXJzCnRo
YXQgd291bGQgcG9pbnQgdG8gdGhpcyBjb3Zlci1sZXR0ZXIuIEluc3RlYWQgZWFjaCBtYWlsIG9m
IHRoaXMKc2VyaWVzIHN0YW5kcyBvbiBpdHMgb3duLCBwcmV2ZW50aW5nIG1haWwgY2xpZW50cyBm
cm9tIGNyZWF0aW5nIGEKdGhyZWFkZWQgZGlzcGxheSBvZiB0aGUgc2VyaWVzLgoKZ2l0LXNlbmQt
ZW1haWwgbm9ybWFsbHkgZG9lcyBjcmVhdGUgdGhlc2UgbmVlZGVkIGhlYWRlcnMgb24gaXRzIG93
biwKc28gY291bGQgeW91IGNoZWNrIGlmIHlvdSBoYXZlIHNvbWUgb3B0aW9uIGVuYWJsZWQgdGhh
dCBwcmV2ZW50cyB0aGlzPwoKVGhhbmtzIGEgbG90CkhlaWtvCgoKPiAKPiBHZXJhbGRvIE5hc2Np
bWVudG8gKDQpOgo+ICAgUENJOiBwY2llLXJvY2tjaGlwOiBhZGQgYml0cyBmb3IgVGFyZ2V0IExp
bmsgU3BlZWQgaW4gTENTXzIKPiAgIFBDSTogcm9ja2NoaXAtaG9zdDogU2V0IFRhcmdldCBMaW5r
IFNwZWVkIGJlZm9yZSByZXRyYWluaW5nCj4gICBwaHk6IHJvY2tjaGlwLXBjaWU6IGVuYWJsZSBh
bGwgZm91ciBsYW5lcwo+ICAgcGh5OiByb2NrY2hpcC1wY2llOiBhZGp1c3QgcmVhZCBtYXNrIGFu
ZCB3cml0ZSBzdHJvYmUgZGlzYWJsZQo+IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jIHwgIDQgKysrKwo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAuaCAgICAgIHwgIDMgKysrCj4gIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1wY2llLmMgICAgfCAxNiArKysrKysrKystLS0tLS0tCj4gIDMgZmlsZXMgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiAKCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

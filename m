Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2933CC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 18:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZixkDDvlCMyYyETDzhiMJuwad8iyBsr7v9PCFjtLStg=; b=vxWm4E+zGVrLbp
	2vP1HogGa2OkeDit78PEb2iXnCrAvPkczvbyWZ1UoNMugcQXimwVSc434GhhhiQyHxJEMepYszySM
	MkNg2lGx48dGVRqBup6XnXnzn66xIFF62sfFhRelglB51Sb9mMVZjP+b4jWk+OikBBle9elXJlQDO
	AsEyHOIJ3u9N8ylIHI6QoPA9rTGeA7qK2Zd1vvBo5PRBx1Uq2wzbHI2dvbxa5Zfxr818i3Rt8XTQA
	M5TVb5E/nWXZQyMkCdnlsrsX6F90PlUDW8bjkZPsHbCu14rDbQm3bn1nM27ZB2NBZTFCOR19hpkro
	IyDp/L7MpTWahbIm3ypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RsH-00000009El7-0aYF;
	Wed, 23 Sep 2026 18:39:21 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rrk-00000009EcZ-0H4w;
	Wed, 23 Sep 2026 18:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=LUoQDWHb/l+6k19FrArKmt1pfReWHaZCAaEIs75K+TA=; b=Ux
	10jPK/Jr2kaGr5zP5pmxeJ9F5DC1v2qDGJnC3X5sZiMz15wOrvsdzigv88YtSfPk/J7YH5Di4Le/5
	IFCyhnFkTBQ0A7F75M8IP61B9YJnFm1Dy2dNwbtKcPHEg8ZC6fHm7u89c9yqcYky2vQo8GpJifxF2
	cqsvWLT+oUfqMi0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1x9Rrb-006rCZ-36; Wed, 23 Sep 2026 20:38:39 +0200
Date: Wed, 23 Sep 2026 20:38:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak
 when the PHY clock fails
Message-ID: <b6d534b0-8ccc-4cbd-8d13-cd0c887a3260@lunn.ch>
References: <20260919174223.2356964-1-coiaprant@gmail.com>
 <20260922191758.2730da7a@kernel.org>
 <CALj3r0gPjraK9wy_WbTkeYD1OK_HhSeMi8bDmk03gOVJUb825g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gPjraK9wy_WbTkeYD1OK_HhSeMi8bDmk03gOVJUb825g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_113848_124514_4DEF08CF 
X-CRM114-Status: GOOD (  10.95  )
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

T24gV2VkLCBTZXAgMjMsIDIwMjYgYXQgMDg6MzE6MDhQTSArMDgwMCwgQ29pYSBQcmFudCB3cm90
ZToKPiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDIz5pel
5ZGo5LiJIDEwOjE45YaZ6YGT77yaCj4gPgo+ID4gT24gU3VuLCAyMCBTZXAgMjAyNiAwMTo0Mjoy
MyArMDgwMCBDb2lhIFByYW50IHdyb3RlOgo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgaWYg
KHJldCkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xrX2J1bGtfZGlzYWJs
ZV91bnByZXBhcmUoYnNwX3ByaXYtPm51bV9jbGtzLAo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBic3BfcHJpdi0+Y2xrcyk7Cj4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICB9Cj4gPgo+ID4gTWlzc2luZyBhIGJyYWNrZXQsIEVCVUlMRC4gSSBh
bG1vc3QgYXBwcmVjaWF0ZSBzZWVpbmcgYSBodW1hbiBlcnJvciBsaWtlCj4gPiB0aGlzIHRoZXNl
IGRheXMgOikKPiA+IC0tCj4gPiBwdy1ib3Q6IGNyCj4gCj4gVGhhdCdzIHdoYXQgSSBnZXQgZm9y
IGhpdHRpbmcgc2VuZCB3aGlsZSBteSBicmFpbiB3YXMgRUJVU1kuIFdpbGwgZml4Cj4gYW5kIHJl
cG9zdCBzaG9ydGx5LgoKSSBhbG1vc3QgYXBwcmVjaWF0ZSBhIGh1bWFuIGJyYWluIGJlaW5nIGlu
dm9sdmVkIHRoaXMgdGhlc2UgZGF5cyA6LSkKCiAgQW5kcmV3CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

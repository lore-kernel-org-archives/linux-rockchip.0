Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1FEAC55160
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 11:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZXvSgIxdaJ+dfKgU2upRtiGq8grh+7JClg/0D9TAvA=; b=VbJYxU1Lv3f4xn
	gJdXIaYmF91qhvinEWVoe5pkD0Fm7pugAfhAdKi4zTH0wPdzsDrFWG6AzHsQRc25Z6l+Zp3qM9UpA
	XqF6q82H+htrL5ou6LlgJqfaw5e22MokfC4jTGJIBgATd7cYNX1PNfeUqTlsZaKDoal3RHMErd8Pr
	9UbIbTxPbFGTr9frGNFnXMHmcTcwuLWgD5GYcCo5BKmEQyp2ok8sZ8Iokvbll8Yd86YQkJJnlh43p
	kM7rrvm9xRqLWkb2GtXwS/uT26fE3/d6uywSYzesoGWy1pumsig+TpWciEzZ+0RR3sF+ZKjcmIwqW
	35yiFZWFQIuJSlqJ0sCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPNk-0000000AP0k-11Qx;
	Thu, 30 Jul 2026 11:57:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPNh-0000000AOz4-2MUY;
	Thu, 30 Jul 2026 11:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uoqq1t7wo5rd6IE4QW2AeY1PA9dd7LzEhkBVOmAfXAQ=; b=IJ9KA5kaKVbh9kAGoIuAs0737n
	9KwbWbh80SbvMTcZZeuiWrY0drRB52Sgl//jlu2Sq+NI5ELjBO21p78aAq+1Pr58IU/KB8Q6eOtFj
	yxp2ra/AEeBbAiPZBvSb2KdgPQN5fSN26n08OXX+KjgKyLb0cG/YJqxuSyBCCBWrYRhBrrqwJJLEA
	deYS0ROJtc6Yma+esHRqKQUuV2qbTQgATAUCFgM94YQJik1RQjeu3LtA9HexaCd3xfkyl9myj0WtQ
	9ggGAkSFC8czPcuutPi0cb9P1Tn//427Bip3RojIlPsQwJxR58QPCRsXmlFK3dklWgzegwMUiHbTy
	WTCwYcUA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v10 00/11] Add eDP support for RK3576
Date: Thu, 30 Jul 2026 13:56:17 +0200
Message-ID: <2154821.UkFFEUeh36@diego>
In-Reply-To: <20260601065100.1103873-1-damon.ding@rock-chips.com>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_045657_660548_0C9E6E0A 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAxLiBKdW5pIDIwMjYsIDA4OjUwOjQ5IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBQYXRjaCAxLTUgYXJlIHRvIGFkZCBtaXNzaW5n
IGNsb2NrICJoY2xrIiBmb3IgUkszNTg4IGVEUCBub2Rlcy4KPiBQYXRjaCA2IGlzIHRvIHVzZSBh
dXRvbWF0aWMgY2xlYW51cCB0byBmaXggT0Ygbm9kZSByZWZlcmVuY2UgbGVhawo+ICAgICAgICAg
cmVwb3J0ZWQgYnkgU2FzaGlrby4KPiBQYXRjaCA3LTggYXJlIHRvIGFkZCB0aGUgUkszNTc2IGVE
UCBub2RlLgo+IFBhdGNoIDktMTEgYXJlIHRvIHN1cHBvcnQgdGhlIFJLMzU3NiBBbmFsb2dpeCBE
UCBjb250cm9sbGVyLgoKTm90IHN1cmUgd2hhdCBoYXBwZW5lZCwgYnV0IEkgZG9uJ3Qgc2VlIGFu
IGFwcGxpZWQgbWFpbCBhYm91dCB0aGUgRFRTCnBhdGNoZXMgKDMrNCs4KSBpbiBteSBvd24gbWFp
bCBhcmNoaXZlLCBub3Igb24gbG9yZS4KCk5ldmVydGhlbGVzcyBJIGRpZCBhcHBseSB0aGVtIHRv
IG15IGR0czY0IGJyYW5jaCBbMF0gIG9uIGp1bHkgdGhlIDI0dGggYXMKWzAzLzExXSBlZGUyZWUz
N2YwYTQ0NWNhY2JmMjQ3NjBmNTNiZWZhMTBmNjQ5OTRhClswNC8xMV0gMDk4MjA4MTFjNTQ5ZWUy
YzQwOGRlZmUzNmIyMTBiMTNjN2E4NWZjZgpbMDgvMTFdIGE0MTY4N2I4OTAwNWY1MDkwOWU1OTEz
MGE0YzBiMDhlODI5OTY3MzkKCgpIZWlrbwoKWzBdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdpdC9sb2cvP2g9djcu
My1hcm1zb2MvZHRzNjQKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

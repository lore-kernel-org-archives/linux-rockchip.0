Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C094BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 12:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cea5nELvB04PMPKWsQpYyC5kCua+UN+iT2RF1o2bGHs=; b=onAefcZtWVvM3X
	we6VdnHxUFM1ix/2JnZYVkXr0/DoD77tm5+aqcHBG5IJgD3rBzkjw8mTGF/FFSpyEhoiKLcmrYXcv
	lq30g0RvFdGltlf1GB7mAaZIFpkoe9Xo3bFfo/5zuuIdGhnN2fxWAO0SIm1oVKCeebbqVWkDF759L
	dL8ZK6XYqohW0IJeL6p0Q2ehoU9ug6pSe3kKV/K/uWViystnOwfTvpkkL3hTGZMFIAlLPamfzrtzi
	oyApeLHxR2t/F/e7chNOUJgzTjVeD7Q1QCH9OKzggfDoksTHq+4NSG4dEu1f8PVzvAvLZ/FL7PiUg
	/m0/u4Cf+LfXu+tAwU2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5VM-00AJU1-90; Tue, 13 Sep 2022 12:59:08 +0000
Received: from sosiego.soundray.org ([2a01:4f8:c2c:a9a0::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5V6-00AJ4z-8W; Tue, 13 Sep 2022 12:58:57 +0000
From: Linus Heckemann <linus@sphalerite.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sphalerite.org;
	s=sosiego; t=1663073918;
	bh=PkccHgCNgdx9/YruWzJhpaVP37la3JXb4uAxKfHjN4M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=v2Kz9y7hkx5TssqX5I4jMOX15Dk/vUkKMPVO7SLnWcjShI+7St1SU/ePvPLjFXiIq
	 99Sl5BZDnPTVPfnlltF+1Hzy3cRUbu9U2IT1xUIvbhGsR6y39OPE16RRWdPYyz7nlz
	 vduiVF5dp6a6KX6elLCrYzYbaoLCuKXWcIma92Sg=
To: Hugh Cole-Baker <sigmaris@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com, Hugh
 Cole-Baker <sigmaris@gmail.com>
Subject: Re: [PATCH v2 1/3] drm/rockchip: define gamma registers for RK3399
In-Reply-To: <20211019215843.42718-2-sigmaris@gmail.com>
References: <20211019215843.42718-1-sigmaris@gmail.com>
 <20211019215843.42718-2-sigmaris@gmail.com>
Date: Tue, 13 Sep 2022 14:58:32 +0200
Message-ID: <ygaa6735t3b.fsf@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055852_818184_A82352FD 
X-CRM114-Status: UNSURE (   7.36  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ckh1Z2ggQ29sZS1CYWtlciA8c2lnbWFyaXNAZ21haWwuY29tPiB3cml0ZXM6Cj4KPiBUaGUgVk9Q
IG9uIFJLMzM5OSBoYXMgYSBkaWZmZXJlbnQgYXBwcm9hY2ggZnJvbSBwcmV2aW91cyB2ZXJzaW9u
cyBmb3IKPiBzZXR0aW5nIGEgZ2FtbWEgbG9va3VwIHRhYmxlLCB1c2luZyBhbiB1cGRhdGVfZ2Ft
bWFfbHV0IHJlZ2lzdGVyLiBBcwo+IHRoaXMgZGlmZmVycyBmcm9tIFJLMzI4OCwgZ2l2ZSBSSzMz
OTkgaXRzIG93biBzZXQgb2YgImNvbW1vbiIgcmVnaXN0ZXIKPiBkZWZpbml0aW9ucy4KPgo+IFNp
Z25lZC1vZmYtYnk6IEh1Z2ggQ29sZS1CYWtlciA8c2lnbWFyaXNAZ21haWwuY29tPgo+IFRlc3Rl
ZC1ieTogIk1pbGFuIFAuIFN0YW5pxIciIDxtcHNAYXJ2YW50YS5uZXQ+Cj4gLS0tCj4KPiBDaGFu
Z2VzIGZyb20gdjE6IG5vIGNoYW5nZXMgaW4gdGhpcyBwYXRjaAo+CgpUaGlzIHNlcmllcyBtYWtl
cyBnYW1tYXN0ZXAgb24gc3dheSBmb3IgYWRqdXN0aW5nIGNvbG91ciB0ZW1wZXJhdHVyZQp3b3Jr
IHdvbmRlcmZ1bGx5LiBJJ2QgcmVhbGx5IGFwcHJlY2lhdGUgaWYgaXQgZm91bmQgaXRzIHdheSB1
cHN0cmVhbSEKClRlc3RlZC1ieTogTGludXMgSGVja2VtYW5uIDxnaXRAc3BoYWxlcml0ZS5vcmc+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

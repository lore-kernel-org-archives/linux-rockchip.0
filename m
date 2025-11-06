Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1B6CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 19:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FePZ+koqTHFr9DSvJcVUbeuGSbC2eaGi4O9d1E+Bno=; b=0SulC4xY9sLAcc
	WhMwB+xmaWkV9P4xN31ukCFAG+g9DBc7W/VwxHXrOM/1OMFfIelLBcidEk8RcVbaJ8orx36pFu2c9
	E5lFHU0wHBewdsjPZ5ET2I6VmN241pIYYsfkRkHbh5vVxzBuPcSC0T0Q3cvkvKO6c96xx0QpIMo0Z
	Y9CY+xLaUlvs3SF7L52/cP3VwLFGaYJZ87zmB31ZpDEScjVDOITx/8PM09CXBHAUdTQKJ1ORU1G4C
	xOfvPmakXnnKipGTETeqgA8MSopOX4kiyZ/z2evBQnpu8o2iziqkxWPVUCH2NK6MUnu4n3WS1W7ut
	1bjG1NtZ7f8pdTeR6Mnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5r0-0000000GAva-1GuT;
	Thu, 06 Nov 2025 19:41:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5qx-0000000GAv4-2IrN
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 19:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=fbewH0AF1zwBWF/L/JW/wVvoIg0eBxwJ3drbHbIHh1g=; b=LAc7KxzNkl0iUZclB18yXMzh4X
	j1f90hqDtSbxM8SeKE12FB/0WNsLNSSMDv++/XEwX4xObFn80jHszlI/0/KCgmF0WeASWadAZLOmv
	KqkoyZhE+lbx8CnRqJdl+fCsNyp8B+YknCq1L7a8mWVzx3oYk50aG6KkrKypvxJknkipi5NSEiZrX
	+/LfDJ4qbR+5/UqegZLn+beYiKOUzStxDf3hHPfYhVJsoivyPhVy2BlOIoONFXLU1hzQnQ3Fly+CF
	5IT0Nk+k9mtHBeKkEKdx5lwguHyM48bah1z5MHKoS76uRwViGX7Es+asgat3YXbqoLGuG0u2BqdRL
	y12KUbqQ==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH5qq-0000iJ-V7; Thu, 06 Nov 2025 20:40:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu, 06 Nov 2025 20:40:55 +0100
Message-ID: <2301926.irdbgypaU6@phil>
In-Reply-To: <20251106180914.768502-3-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-3-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_114103_612668_A376F59A 
X-CRM114-Status: GOOD (  13.29  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgNi4gTm92ZW1iZXIgMjAyNSwgMTk6MDk6MTMgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gRnJvbTogQ2hyaXMgTW9yZ2Fu
IDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIGR3LWhk
bWktcXAgZHJpdmVyIHRvIGhhbmRsZSBkZXZpY2VzIHdpdGggbWlzc2luZwo+IEhQRCBwaW5zLgo+
IAo+IFNpbmNlIGluIHRoaXMgc2l0dWF0aW9uIHdlIGFyZSBub3cgcG9sbGluZyBmb3IgdGhlIEVE
SUQgZGF0YSB2aWEgaTJjCj4gY2hhbmdlIHRoZSBlcnJvciBtZXNzYWdlIHRvIGEgZGVidWcgbWVz
c2FnZSB3aGVuIHdlIGFyZSB1bmFibGUgdG8KPiBjb21wbGV0ZSBhbiBpMmMgcmVhZCwgYXMgYSBk
aXNjb25uZWN0ZWQgZGV2aWNlIHdvdWxkIG90aGVyd2lzZSBmaWxsCj4gZG1lc2cgd2l0aCBpMmMg
cmVhZCBlcnJvcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdh
bkBob3RtYWlsLmNvbT4KCj4gQEAgLTEwNzQsMTIgKzEwOTUsMTggQEAgc3RydWN0IGR3X2hkbWlf
cXAgKmR3X2hkbWlfcXBfYmluZChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAJaWYg
KHJldCkKPiAgCQlyZXR1cm4gRVJSX1BUUihyZXQpOwo+ICAKPiArCWlmIChvZl9wcm9wZXJ0eV9w
cmVzZW50KHBkZXYtPmRldi5vZl9ub2RlLCAibm8taHBkIikpCj4gKwkJaGRtaS0+bm9faHBkID0g
MTsKPiArCWVsc2UKPiArCQloZG1pLT5ub19ocGQgPSAwOwo+ICsKCndoYXQgaXMgdGhlIGFyZ3Vt
ZW50IGFnYWluc3QKCmhkbWktPm5vX2hwZCA9IG9mX3Byb3BlcnR5X3JlYWRfYm9vbChwZGV2LT5k
ZXYub2Zfbm9kZSwgIm5vLWhwZCIpKTsgPwoKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

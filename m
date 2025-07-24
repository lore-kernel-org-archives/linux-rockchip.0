Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95979C87FC5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMVvMoXiXijt0sNLpSz1XTmL1PUWvJaO8owPaUFbYSc=; b=rWAV5TpVmEHn5B
	3VEvQPuErlMf4T8oERNd8GdHTTwSLrdgI6VVciDPsw9ujfASg7bv0f8Y2LzgTh6Nrmx4kA4kYhdkp
	pwVACt/PN28J6kjXhz1xDVwl57yASpJPqqH8YY4IqtAF5MTZ1k/LsmCgp4miksWQI2zOXFyCfD3WK
	0J+/agHwSH0VVgKJdTnEQxJJmqPY2wL6PnhTq+jfK9uGkw5vWuY63L+CxqESDnKfGu1NJ0hghstL4
	v3VNAX9eN8J+bGKUhwsDiUIV9Xls1YsFy2lnhV3Ak5bgsitwmXAWHc7FEhDHoRmKrkmv6aXb9Mh8U
	xdsqK189O0pXTMyHP+9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewPR-00000007dMe-0Ldm;
	Thu, 24 Jul 2025 13:54:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevih-00000007U5I-1j0L;
	Thu, 24 Jul 2025 13:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=oslcU2z5E9VNKbs5VzEQgy0a5q5NibBzjbcK3BaZxXM=; b=G0bWLgCGIKAEYwjd5FPaoCKZUD
	PYSktF7e05P9oNthQAXoGLcRrn972qSx5o3jR79UmzuBSAvXZzwlnEhOwX0sAiHRhLToBG9qUR2BS
	XPvmNdO0PnSfvjJsd+m+PZCy3zcQBLK1o26OccU51QRsx9wS4LKO+CBzHixeyN1/67JBTRw+0RWEF
	b68x7MYQ7gBfVCeRI8WBL83E1i3amGXGrc9EQssqseaaTVSP+a924HfxiK8wk0PtmhBzxX6FqIB6S
	tx7LkuIdJNq8+HHTtcMwgQU2VSHoHKZceQyR3htodYZfkCkBOWLEzb3fO/NqR+bAhruuSYOi/JGed
	C/YCK6KQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uevi5-0005on-NF; Thu, 24 Jul 2025 15:10:09 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 00/14] Apply drm_bridge_connector and panel_bridge helper for
 the Analogix DP driver
Date: Thu, 24 Jul 2025 15:10:08 +0200
Message-ID: <3890785.kQq0lBPeGt@diego>
In-Reply-To: <20250724080304.3572457-1-damon.ding@rock-chips.com>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_061047_446464_763D7049 
X-CRM114-Status: UNSURE (   9.26  )
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

QW0gRG9ubmVyc3RhZywgMjQuIEp1bGkgMjAyNSwgMTA6MDI6NTAgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+IFBBVENIIDEgaXMgYSBzbWFsbCBmb3Jt
YXQgb3B0aW1pemF0aW9uIGZvciBzdHJ1Y3QgYW5hbG9naWRfZHBfZGV2aWNlLgo+IFBBVENIIDIg
aXMgdG8gcGVyZm9ybSBtb2RlIHNldHRpbmcgaW4gJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2Vu
YWJsZS4KPiBQQVRDSCAzIGlzIHRvIGFwcGx5IGEgYmV0dGVyIEFQSSBmb3IgdGhlIGVuY29kZXIg
aW5pdGlhbGl6YXRpb24uCj4gUEFUQ0ggNC03IGFyZSBwcmVwYXJhdGlvbnMgZm9yIGFwcGx5IGRy
bV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlci4KPiBQQVRDSCA4IGlzIHRvIGFwcGx5IHRoZSBkcm1f
YnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIuCj4gUEFUQ0ggOS0xMSBhcmUgdG8gbW92ZSB0aGUgcGFu
ZWwvYnJpZGdlIHBhcnNpbmcgdG8gdGhlIEFuYWxvZ2l4IHNpZGUuCj4gUEFUQ0ggMTItMTMgYXJl
IHByZXBhcmF0aW9ucyBmb3IgYXBwbHkgcGFuZWxfYnJpZGdlIGhlbHBlci4KPiBQQVRDSCAxNCBp
cyB0byBhcHBseSB0aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KCmZvciBmdXR1cmUgcmV2aXNpb25z
LCBwbGVhc2UgcHJvdmlkZSBhIGNoYW5nZWxvZyBvbiB3aGF0IGNoYW5nZWQgc2luY2UKdGhlIHBy
ZXZpb3VzIHZlcnNpb24sIEkgZ3Vlc3MgaWRlYWxseSBoZXJlIGluIHRoZSBjb3Zlci1sZXR0ZXIu
CgoKT24gbXkgcmszNTg4LXRpZ2VyLWRpc3BsYXlwb3J0LWNhcnJpZXIgdGhpcyB3b3JrcyBsaWtl
IGEgY2hhcm0KVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

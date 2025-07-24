Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A860C87FC5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 13:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjjUHT2oB1rvCFAEV6NjwINNncYyC7OOLleaS9IK2A8=; b=xogPclTzYUy6CX
	HYXnIZkHm+CAgS/cUK9uIqZTccscZdFJHQNoyhoYe25Ny+oqeWyztnIJ4oIj4tzTngv23nqTAoGsM
	ALPQhZ/4/afMguz3UnJDf9CfNLKnC1mvgdAvJw1D9Xf+XkQEENOo6cTJ/UFv0wxLeLdlI5zMQVHyb
	zvgDp4pTNshphRUs2Q2rBfKkvAMCxrgm2/jU01yFGCsbh+nbeyc+BqoxCaEh3VCn5n7QNGwngnbel
	wHUm4uaq+kDYamB/cZSMuQtcCGALkWp4Qc7Vx6DMI4wgYn94vE7DwuYmPxLqDEgoLY6voEQj8A4nh
	v0/3lPMSY0tVlJxS38mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewPN-00000007dGM-40V7;
	Thu, 24 Jul 2025 13:54:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevh8-00000007Tu1-2FDK;
	Thu, 24 Jul 2025 13:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HYbBR/vjtvPGQp6a/iAl/VH02ieL5RdhqTwrGy8yYEg=; b=gMB3Z0Re5e0Ku5KUYsXpWeF6CW
	QTTfHmKKsDRzxk4T4aBUpRGwLEoZrxHmYjiovGZX1VOCUh58SwscvBejmCwgkSNdaVonI2jMY1dfT
	6EDnSdXL5pyB2j/4FW038FEkOKguyLnl1YIxkunwLitGklZFTetQ4A2KBe1p90S2t8y7RYuAnNHT6
	iVTPEVC8iAFCxbCcJ7X91AQsohrM5Pww0SCpXexABY9T99TZuntmT9XD+bVFVq9udOzushM1nYBzT
	TEfGEUkZR8FxrnvwukqxJ455zKRq/IPB8bzMJhvjW+ff6MxSVeYIDRcAoH9kKMIsl3vMlV5Msy8nS
	IvCaybUw==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uevgU-0005mk-HK; Thu, 24 Jul 2025 15:08:30 +0200
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
Subject: Re: [PATCH v3 14/14] drm/bridge: analogix_dp: Apply panel_bridge helper
Date: Thu, 24 Jul 2025 15:08:29 +0200
Message-ID: <22774005.EfDdHjke4D@diego>
In-Reply-To: <20250724080304.3572457-15-damon.ding@rock-chips.com>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-15-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_060910_571694_57291E92 
X-CRM114-Status: GOOD (  12.31  )
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

SGkgRGFtb24sCgpBbSBEb25uZXJzdGFnLCAyNC4gSnVsaSAyMDI1LCAxMDowMzowNCBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4gSW4gb3JkZXIgdG8g
dW5pZnkgdGhlIGhhbmRsaW5nIG9mIHRoZSBwYW5lbCBhbmQgYnJpZGdlLCBhcHBseQo+IHBhbmVs
X2JyaWRnZSBoZWxwZXJzIGZvciBBbmFsb2dpeCBEUCBkcml2ZXIuIFdpdGggdGhpcyBwYXRjaCwg
dGhlCj4gYnJpZGdlIHN1cHBvcnQgd2lsbCBhbHNvIGJlY29tZSBhdmFpbGFibGUuCj4gCj4gVGhl
IGZvbGxvd2luZyBjaGFuZ2VzIGhhdmUgYmVuIG1hZGU6Cj4gLSBBcHBseSBwbGFuZV9icmlkZ2Ug
aGVscGVyIHRvIHdyYXAgdGhlIHBhbmVsIGFzIHRoZSBicmlkZ2UuCj4gLSBSZW1vdmUgdGhlIGV4
cGxpY2l0IHBhbmVsIEFQSXMgY2FsbHMsIHdoaWNoIGNhbiBiZSByZXBsYWNlZCB3aXRoCj4gICB0
aGUgYXV0b21pYyBicmlkZ2UgQVBJcyBjYWxscyB3cmFwcGVkIGJ5IHRoZSBwYW5lbC4KPiAtIFVu
aWZ5IHRoZSBBUEkgb2YgZ2V0dGluZyBtb2RlcyB0byBkcm1fYnJpZGdlX2dldF9tb2RlcygpLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+
CgpUbyBrZWVwIHRoZSBjb2RlIGJpc2VjdGFibGUsIEkgdGhpbmsgcGF0Y2hlcyAxMisxMysxNCBu
ZWVkIHRvIGJlIG9uZSBwYXRjaD8KUmVtb3ZpbmcgdGhlIHBhbmVsLWhhbmRsaW5nIGZlZm9yZSB0
aGlzIGNvbnZlcnNpb24gdG8gdGhlIHBhbmVsLWJyaWRnZQp3b3VsZCBwcm9kdWNlIGEgZ2FwLCB3
aGVyZSBwcmV2aW91c2x5IGhvb2tlZCB1cCBwYW5lbHMgd291bGQgbm90IHdvcmsKaWYgYSBnaXQg
YmlzZWN0IGxhbmRzIGRpcmVjdGx5IGJlZm9yZSB0aGlzIHBhdGNoIDE0LCBJIHRoaW5rCgoKSGVp
a28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254E0C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 20:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1jKrdQu393BXIjLpPOvH+7813yNGwKPEDuz3cdAEIc=; b=VhencSPhWUaLrq
	WpoAWO/TGy3wkDveBm1K7+jcxjGlfM0UMxPAeHLdT/zrRJPRkJM6e0rfS6OVZrreub1KuybYneY4/
	yXfEAd5SRMKNi3MwzUtlzKQtKn3wq/greoR4nxhofOqi6yTCkhyg7RVgJ1bKkzcUkGqlVmvMYrdEM
	gD/T6xO9V0F83DWiHwm6hYoyMV6aUNxpvNc8O54QXqQktKsFD0jv/lGGEayHrG/Fs1WnkD71qfUvV
	Pol85BFgxo81AUDRXZY8qL1/YeCD0MKjFr002K4F0+ioOdrH2HyOtJfDjD9RbgpMchxAzRHW/QB05
	mfA9v8ReRr1x5SJsrlAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLqx9-000D1T-1a;
	Fri, 05 Jan 2024 20:38:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLqx5-000Cyu-2u;
	Fri, 05 Jan 2024 20:38:01 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLqwi-0007ui-8H; Fri, 05 Jan 2024 21:37:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maxime Ripard <mripard@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	David Airlie <airlied@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Date: Fri,  5 Jan 2024 21:37:34 +0100
Message-Id: <170448704129.3462688.7176944458440903061.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240105174007.98054-1-cristian.ciocaltea@collabora.com>
References: <20240105174007.98054-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_123759_936662_4440FE80 
X-CRM114-Status: GOOD (  12.41  )
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

T24gRnJpLCA1IEphbiAyMDI0IDE5OjQwOjA2ICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4gQ29tbWl0IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBv
cnQgZm9yIHJrMzU4OCIpCj4gaW50cm9kdWNlZCBhIHZhcmlhYmxlIHdoaWNoIGVuZGVkIHVwIGJl
aW5nIHVudXNlZDoKPiAKPiByb2NrY2hpcF9kcm1fdm9wMi5jOjE2ODg6MjM6IHdhcm5pbmc6IHZh
cmlhYmxlIOKAmGlmX2RjbGtfcmF0ZeKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQt
c2V0LXZhcmlhYmxlXQo+IAo+IFRoaXMgaGFzIGJlZW4gaW5pdGlhbGx5IHVzZWQgYXMgcGFydCBv
ZiBhIGZvcm11bGEgdG8gY29tcHV0ZSB0aGUgY2xvY2sKPiBkaXZpZGVycywgYnV0IGV2ZW50dWFs
bHkgaXQgaGFzIGJlZW4gcmVwbGFjZWQgYnkgc3RhdGljIHZhbHVlcy4KPiAKPiBbLi4uXQoKQXBw
bGllZCwgdGhhbmtzIQoKWzEvMV0gZHJtL3JvY2tjaGlwOiB2b3AyOiBEcm9wIHVudXNlZCBpZl9k
Y2xrX3JhdGUgdmFyaWFibGUKICAgICAgY29tbWl0OiAxOTZkYTNmM2Y3NmE0NjkwNWY3ZGFhYjI5
YzU2OTc0ZjFhYmE5YTdhCgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

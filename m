Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBBD606A328
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pIJ2GA8I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=fXxf8NhR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FiVw7T3tJZYqQrQqIL7OGhT9eC0o35Rn6kZpRDVBk04=; b=pIJ2GA8IxapBLsIoBCFzmLxLIC
	yMlyvtiNcWWGqxN4qwcWfKkpVcMMTdkuNZHdFS8j18UL6axon/VKsKwkPlolhd1P8Q49lqyWAqYSX
	K9ubTQVkKe3b/xEAmuFVx7+UVOglmKbYdIUQiXz6UTPLSrt+oefJuplt9oFbrwXndgYmEKG8DiJFI
	ZPgE4Im/Pag13y/iDUOeoQueS2JVUtqj+0fKyyL0IVVk95J/RS6dF2glZ953VPwF53F1JR+RFD+np
	2QagvAYQDEBhhbBQ2qTKk1beMCeNn7sN9TBoH6mO3AhkJKcEl2rHT37uqtCqJt0P9wgPPWWENBldG
	HvKBTvkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2mT-0000000AHwx-3uZI;
	Thu, 05 Nov 2026 19:05:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2mP-0000000AHwN-0EuV
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 19:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1PmTV1YjmPPFpTx+P+HNfLiKEIkEPn2yau3dwP6izoc=; b=fXxf8NhRuHh4GeEyagf8lKlBmV
	fkhdA1h99e5cxhcyvVtPNZv2kqZGmvJMW/BUpUjMM0jqsRotxiX1LDma4A3xCAiEoMmYyJHhMswSc
	RyTigzG9nPuoBljd3oJ4MWo7rNnwi17AsKG5Q2DQFSthFagHeFjqyUwrZjdGbgj/Exi2KStDJzRH/
	VlUPptYlrs/AfA4nCNnlbGdH++ooiEjrJTaqsGpNX6ybNQQDNo5YdCfKb6fEYUHj879DaKaYdtVzD
	ICWvxobFpzODczdprcAw7k40ZFMlB8y5m77iT4vfBdBbiIeFBbtSNaXfUPbLox1nF5YqqRrAXrb1j
	Ltr9fk5g==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH RESEND 38/83] drm/rockchip: Switch to
 drm_mode_config_create_initial_state
Date: Thu, 05 Nov 2026 20:05:20 +0100
Message-ID: <4981299.mvXUDI8C0e@diego>
In-Reply-To: <20261105-drm-no-more-config-reset-v1-38-1f58d1e33380@kernel.org>
References: <20261105-drm-no-more-config-reset-v1-0-1f58d1e33380@kernel.org>
 <20261105-drm-no-more-config-reset-v1-38-1f58d1e33380@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_110545_119372_34F46D16 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRG9ubmVyc3RhZywgNS4gTm92ZW1iZXIgMjAyNiwgMTY6Mjk6NDcgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBNYXhpbWUgUmlwYXJkOgo+IGRybV9tb2RlX2NvbmZpZ19y
ZXNldCgpIGhhcyBhIGR1YWwgcm9sZTogaXQgY3JlYXRlcyB0aGUgaW5pdGlhbCBLTVMKPiBzdGF0
ZSBhdCBwcm9iZSB0aW1lLCBhbmQgcmVzZXRzIGhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBzdGF0ZSBk
dXJpbmcKPiBzdXNwZW5kL3Jlc3VtZSBjeWNsZXMuCj4gCj4gU2luY2UgdGhlIHR3byByb2xlcyBu
ZWVkIGRpZmZlcmVudCBiZWhhdmlvcnMgKG5vdGFibHkgZm9yIG9iamVjdHMgbGlrZQo+IGRybV9w
cml2YXRlX29iaiB0aGF0IG11c3QgcGVyc2lzdCBhY3Jvc3Mgc3VzcGVuZC9yZXN1bWUpLAo+IGRy
bV9tb2RlX2NvbmZpZ19jcmVhdGVfaW5pdGlhbF9zdGF0ZSgpIHdhcyBpbnRyb2R1Y2VkIHRvIGhh
bmRsZSBvbmx5Cj4gdGhlIGluaXRpYWwgc3RhdGUgY3JlYXRpb24gYXQgcHJvYmUgdGltZS4KPiAK
PiBTd2l0Y2ggdG8gZHJtX21vZGVfY29uZmlnX2NyZWF0ZV9pbml0aWFsX3N0YXRlKCkuCj4gCj4g
U2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKQWNrZWQt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

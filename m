Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D0CCD19512
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfLx1K1r9RHBLPtJOetKAoCbczSAR+miKLMloyIb028=; b=cQ1/JN9AsKUdqC
	09+uQg8mgFqTynoz5De+DqNykaw/iAef0cumR80aNryxVUT1p2fz2MSx3f8VId2E9SnFOANmmodpC
	BVIy4mY05eJ4GVzKH+JP8bJlK2DyPqNUbmWy1jmEtlRiBJzgAGDNsof/Y7tmojmRKDh2+qF/jHtpG
	nr+JpEiEh4a16oo9AA52kiyWsPHt2Iq5FV57d6pLYewmXT3YCcvNExd3P0tBqpCzCpAum8dtvr8Zc
	bPfjIFYHAkoJDO89VGLt5wZHxyEwTGIkR3f5qSu5yYfQngwavFMgjxn/8H9N2owMUMxlxJLfKpl5a
	rPUUzDNlPdioZ+keOCSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRHk-0000000D4n6-0oHU;
	Mon, 26 Jan 2026 18:26:00 +0000
Received: from sender4-op-o10.zoho.com ([136.143.188.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRHg-0000000D4mT-3fLt;
	Mon, 26 Jan 2026 18:25:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769451944; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Zn/ooi+tjr/B3JZDfPh6S7Ri3js5/zkIprHGuSy97Br9nKNc5h9Q+3B0YtaxOSINPbwt5XSlq7A285NIzYIhKR3+uw7TCTuccCx8ru7A0VY+1OCkrptNhflRy6+f6Z/7EFDNt02eVgv8txvvOeWg3v3mEpxqRRvkq/zWGaw62kQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769451944; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=M1pdoPngF1aDapNIHrwNpRBo4Sp2UIKTCGoXtl4MeI4=; 
	b=mH+JJFvIxEHJy/ZqUXFKpCNR56M+yc2s5cu7Kj/5E1PjupQbN+MMgkU9rFQsKRHZcnd7g8RN9XvUrf5SAFnXhBVoqzCq/X1BNYjGTdhAX+p+yxV34OghF5PjtsS9vqDqO5Vr7W9RYPfQ7kKC1ezDMdMXKZoKxA0ru5ETMMjpbT8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769451944;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=M1pdoPngF1aDapNIHrwNpRBo4Sp2UIKTCGoXtl4MeI4=;
	b=kx4bYd12ixykYU8diZAiP/k70qprWD1JrV1394b507KEwJW1kFjztI6eDoTdXmPJ
	3hSiX5ttD67uYlI6KIHByJf3ZXLw1EP7BGtJ2DE+mQp2TeJ3325DDtTizqYaTh9Ap0I
	7VOZVwpb30TL56i6OValyHjQb9aWD5899FMpx0hM=
Received: by mx.zohomail.com with SMTPS id 176945194260896.91308996533701;
	Mon, 26 Jan 2026 10:25:42 -0800 (PST)
Message-ID: <0dfb0aafeb37f0683182ef23293bb8373dd7caf2.camel@collabora.com>
Subject: Re: [PATCH v4 3/4] drm/vkms: Support setting custom background color
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Maarten Lankhorst
	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sandy Huang	 <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,  Andy Yan
 <andy.yan@rock-chips.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed	 <hamohammed.sa@gmail.com>, Melissa Wen
 <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Mon, 26 Jan 2026 15:25:35 -0300
In-Reply-To: <20251219-rk3588-bgcolor-v4-3-2ff1127ea757@collabora.com>
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
	 <20251219-rk3588-bgcolor-v4-3-2ff1127ea757@collabora.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_102556_980335_1A455D97 
X-CRM114-Status: UNSURE (   7.57  )
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

T24gRnJpLCAyMDI1LTEyLTE5IGF0IDIzOjQ3ICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4gTWFrZSB1c2Ugb2YgdGhlIEJBQ0tHUk9VTkRfQ09MT1IgQ1JUQyBwcm9wZXJ0eSB3aGVu
IGZpbGxpbmcgdGhlCj4gYmFja2dyb3VuZCBkdXJpbmcgYmxlbmRpbmcuwqAgSXQgYWxyZWFkeSBk
ZWZhdWx0cyB0byBzb2xpZCBibGFjay4KPiAKPiBTaW5jZSB0aGUgaW50ZXJuYWwgcmVwcmVzZW50
YXRpb24gb2YgdGhlIHBpeGVsIGNvbG9yIGluIFZLTVMgcmVsaWVzCj4gb24KPiAxNiBiaXRzIG9m
IHByZWNpc2lvbiwgdXNlIHRoZSBuZXdseSBpbnRyb2R1Y2VkCj4gRFJNX0FSR0I2NF9HRVR7UnxH
fEJ9KCkKPiBoZWxwZXJzIHRvIGFjY2VzcyB0aGUgaW5kaXZpZHVhbCBjb21wb25lbnRzIG9mIHRo
ZSBiYWNrZ3JvdW5kIGNvbG9yCj4gcHJvcGVydHksIHdoaWNoIGlzIGNvbXBsaWFudCB3aXRoIERS
TV9GT1JNQVRfQVJHQjE2MTYxNjE2Lgo+IAo+IEl0J3Mgd29ydGggbm90aW5nIHRoZSBhbHBoYSBj
b21wb25lbnQgaXMgaWdub3JlZCwgaGVuY2Ugbm9uLW9wYXF1ZQo+IGJhY2tncm91bmQgY29sb3Jz
IGFyZSBub3Qgc3VwcG9ydGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRl
YSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTsOtY29s
YXMgRi4gUi4gQS4gUHJhZG8gPG5mcmFwcmFkb0Bjb2xsYWJvcmEuY29tPgoKLS0gClRoYW5rcywK
Ck7DrWNvbGFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

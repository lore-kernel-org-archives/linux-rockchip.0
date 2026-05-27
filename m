Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57654CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 13:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eT8q58KSo1sgwjmpdwfiP2h5q5OtOtiZFfQ8v7nZzJA=; b=uj6OCHeCqazQGW
	SVN5K8OK6fmU1tTklag/fcdKmJ0CNyZf6iDbmNncDfnCqi/Nfhn5IEX7jUq+wCg+Qrgn3DoJ1Bdia
	MtdYThkgbxrgG3zXzwYZp9KEoN7I/g/F8Mj8haIpYV6y6RGb0tCbqs8OPvT7itNWe88LEVfEuPdRB
	v8xjIWlnXMe5MeZgwa2FSXSeg/mJ/nEY550BTy0TYHMYpakvM1HP/UAh7G1R/p/5Ed7UO6kvDmXsC
	ikSpRWHajYBzohaXVObZbIqfXl89p3wR95geqofUSaCE5IHQrnLxYqKMiw5HRJW0m5HUVIolv0BV0
	bo+7Sj+a1eY82rlLNXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEPd-00000004Cgd-13uA;
	Wed, 27 May 2026 13:35:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEPa-00000004Cfz-1QrQ;
	Wed, 27 May 2026 13:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7bbLd/ReiMVal7BI3TQK6EkG9qzsmUQTFJ7L4iRvVGQ=; b=Q0uEJmSC2jorPw/8uLKDtgqIft
	zOgIaT7DfctgL3B+ol+wNUa8zWAEcEOn5hhJqktN64wvxF4qgG3Ns9PylFEd7sN71wq4MgZJfMPyJ
	lpbu8lfei6JrSi7lVJn3R1M6b7HrRs2HU/ZMfabpTSqDyygO2NUhzjyVzztiY5K/8yC/5HMue/2Ej
	N8GUNcyGSmQmgvGlkmabT2y8T/NBIt1H5yOLjXPxFGerCwhwfuv3Uyi3yk7YXsktvmP9zJ/kXFcOc
	HPzqJdpulAQYuFzulBcEWHwTD1Q0VeoVG1OfPLf8h7YWbRpYCiNaJ+rBTF4MIwFZo1sBWK0xx9I/C
	N9iP95xA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	=?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@pengutronix.de,
	nicolas@ndufresne.ca,
	sebastian.reichel@collabora.com,
	m.tretter@pengutronix.de,
	p.zabel@pengutronix.de,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Michael Olbrich <m.olbrich@pengutronix.de>
Subject: Re: (subset) [PATCH v7 00/28] media: platform: rga: Add RGA3 support
Date: Wed, 27 May 2026 15:34:55 +0200
Message-ID: <177988888078.3803653.9229622993223830333.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_063506_485483_CCC4346C 
X-CRM114-Status: GOOD (  10.31  )
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

Ck9uIFRodSwgMjEgTWF5IDIwMjYgMDA6NDQ6MDUgKzAyMDAsIFN2ZW4gUMO8c2NoZWwgd3JvdGU6
Cj4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgUmFzdGVyIEdyYXBoaWMgQWNjZWxl
cmF0aW9uIDMgKFJHQTMpCj4gcGVyaXBoZXJhbCwgd2hpY2ggaXMgaW5jbHVkZWQgaW4gdGhlIFJL
MzU4OCBTb0MuIFRoZSBSSzM1ODgKPiBjb250YWlucyBvbmUgUkdBMi1FbmhhbmNlZCBjb3JlICh3
aGljaCBpcyBhbHJlYWR5IGltcGxlbWVudGVkIGJ5IHRoZQo+IHJvY2tjaGlwIHJnYSBkcml2ZXIp
IGFuZCB0d28gaW5kZXBlbmRlbnQgUkdBMyBjb3Jlcy4gVGhleSBmZWF0dXJlCj4gYSBzaW1pbGFy
IGZ1bmN0aW9uYWxpdHkgb2Ygc2NhbGluZywgY3JvcHBpbmcgYW5kIHJvdGF0aW5nIG9mIHVwIHRv
IHR3byBpbnB1dAo+IGltYWdlcyBpbnRvIG9uZSBvdXRwdXQgaW1hZ2UuIEtleSBkaWZmZXJlbmNl
cyBvZiB0aGUgUkdBMyBhcmU6Cj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsyOC8yOF0g
YXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCByZ2EzIGR0IG5vZGVzCiAgICAgICAgY29tbWl0OiAy
NWVlODk4OTYxYTJjNjYxZTRjZDcyYmM5OGYwMDYwZjFjZDExMjIyCgpCZXN0IHJlZ2FyZHMsCi0t
IApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

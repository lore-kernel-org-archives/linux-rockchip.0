Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC7FAC77B6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 15:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdMBx6g3kyrcmQAsevdsLqdaQTB9lIYFsZd/R26xTuk=; b=QETFIEYcFuxRNI
	+N/QRGBigyKuhcqDMwVWdotwGRVqip+r7481QQ0m1YtjifLtAZbXplNqLp9+hv8bcs7xk9LP0j45V
	VvxOn4VHX8I80/Dft/o6AgYYIYMVZiNcz/YlIQvLqF6dk/zdlnXvlQNUZax1fbxR7tTkpfbuVc/ox
	8rkRdxUKue6Sd9rSiZqX46eYnL/N92Qk+FoiP7HSdZbJMpufiAZTZLEVy7oL8+y61E3extkJhblA2
	m8yUvBEYvGITLTskfEx7Cz4CyNsggp9ngEFspMqZY28xTVfgXm61sDOscCH4zxuXP21e/V2pIrZMS
	JBJhba7iI7MbcAp/fqdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFbx-000M2d-0m;
	Tue, 11 Apr 2023 15:08:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFbt-000M00-25;
	Tue, 11 Apr 2023 15:08:42 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 54D6A66031EA;
	Tue, 11 Apr 2023 16:08:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681225717;
	bh=076CzJvPOPKrvq+MGxxB4wZDMf27bcPrUtizfOd0u4Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=T9sqm70h7J7oaiuU67WzBUMIQBqkQlP3kEAMaYwOUOn8EdVh8dpBYOlSlRvwEfuHA
	 U6aAjG5OZB86zADQEjkuWhUSySyZSwh3S/SrGLeFIM5NX0TuwVsAqmXscvVEYC4JO5
	 ABDQnFbcqlThss8JCmtsHv3W6e4CYlO6TO7iGs/Dm/08pVIjKcnOapLBHosuE8lFpf
	 sypiCU9ofXYqyiNDk/9tro41zQIhGbvdiTDrMW0gqjup6fhTlluQZ9FcnKrkGKY0pk
	 CykGkxTVDxl3iXgi1RINxy7t/K1hgJlSs/6xQCWhgv7Qgk6TJO/FdJmVi5BQRi4zLd
	 A8DwQn0sbAEhg==
Message-ID: <46703c104c57d7b192f3e19860809e8e71016997.camel@collabora.com>
Subject: Re: [PATCH v5 04/13] media: verisilicon: Get bit depth for
 V4L2_PIX_FMT_NV12_10LE40_4L4
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Tue, 11 Apr 2023 11:08:26 -0400
In-Reply-To: <20230330154043.1250736-5-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
	 <20230330154043.1250736-5-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_080841_810190_88D5515A 
X-CRM114-Status: GOOD (  10.32  )
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

TGUgamV1ZGkgMzAgbWFycyAyMDIzIMOgIDE3OjQwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IExldCdzIHRoZSBkcml2ZXIga25vd3MgdGhhdCBWNEwyX1BJWF9GTVRfTlYx
Ml8xMExFNDBfNEw0IGlzIGEgMTBiaXRzCj4gcGl4ZWwgZm9ybWF0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3Jh
LmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gaW5k
ZXggZDIzOGQ0MDdmOTg2Li43ZWQyZGZkNGFlZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gKysrIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gQEAgLTcxLDYgKzcxLDcgQEAg
aW50IGhhbnRyb19nZXRfZm9ybWF0X2RlcHRoKHUzMiBmb3VyY2MpCj4gIAlzd2l0Y2ggKGZvdXJj
Yykgewo+ICAJY2FzZSBWNEwyX1BJWF9GTVRfUDAxMDoKPiAgCWNhc2UgVjRMMl9QSVhfRk1UX1Aw
MTBfNEw0Ogo+ICsJY2FzZSBWNEwyX1BJWF9GTVRfTlYxMl8xMExFNDBfNEw0Ogo+ICAJCXJldHVy
biAxMDsKPiAgCWRlZmF1bHQ6Cj4gIAkJcmV0dXJuIDg7CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

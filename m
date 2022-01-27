Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4593EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 14:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK9f98SkHwUTK4ngJU7hWvsOPIVFoDOK2qpDQR2JKqY=; b=TDpHsIxkDRZocP
	stCwzUWkMPYHH19tqTZkJmz9zt/oq3VIWmuINsCd38A0WinMPXQCU7SuEq9kOQA0BskQ6TNThF8hy
	fLe+bCLMDOs+OFYEmAz7EX4jAozsx6s34iDt4sRehtEUTuQaittH8FzokRJgbrARCkwFjH87wAuJL
	B47iPN50obADNeC6eMZjreqDo2MlvRUa3CV3MV12Z488Exqf1rACjyvfIAo85OQgdBnOTp/WfamXj
	rWlQ0bYHUzL4X/O31rGVkquGPJWZj6HFC+xm0+229sFiieGfHk++EQHXyYuWUdTnGeoXrcc250/sA
	41RRT+Omuup+v3vE1n+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD600-00G6j9-Sl; Thu, 27 Jan 2022 14:43:44 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD5zm-00G6h9-VJ; Thu, 27 Jan 2022 14:43:32 +0000
Received: by mail-lf1-x135.google.com with SMTP id y15so5753361lfa.9;
 Thu, 27 Jan 2022 06:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ems2AVRzgkln4g25JzOfFWh1TwoPY/Y8voDAbyyDVf0=;
 b=BAn2jTpFDnjHLFDhEgg0n9RbAV0aMMiQeP5idKwIoCPsIx0n3ulV0vAeEtTHXLcv6l
 w6gxOasGY7zf+ty0A+O5cUKuwhv2mBT2tS7Y1qp8Qxd89OMEY3hjKvRujj7LYsC1Rbx1
 zl6sT4qgfSMr8Xwn1aDyuMH6yfPUu39X2ZlGCTkqa5CHkWVF5GYqQZipcJPNgPZZEF0a
 arnr4kUhXqCz3QN3qXkxLzEXNz6oNEigJ29/Vmbw4vs12yPzLN9hBHvNHjMG9gkbEEJc
 9HpI66Fsp2Lq9QgS3dJ/XXcJBom5OLSk/FAyQtHpM/zIQ9lU1wM6OfwjwJ08WQf1qwF/
 WNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ems2AVRzgkln4g25JzOfFWh1TwoPY/Y8voDAbyyDVf0=;
 b=24WckFAwE3RNzF4LPP7tfPFdUmaGZjH5tvvc4tolQ4LpVSp46yt0YjAwZ1axitG98+
 3xXANM1xKvoAzxFvz1hs8o6AWJdV5HeCEyRenL56zIAQAUVbeA6B4zTB8anAt6quM6wR
 PYQ6fEm47phtQFJ/YHTZo8KoSJ8gFCyj1D7QZtxHNI3/ZiDOmqaw24r5MgDHNb0HGAW+
 uMVUb8sjew6zyK6XVQaqZErLkJh0iuI5GXRSm9DGWN9wg4TMDOgQzkbGl9O43IRekeVe
 i8KwVfCZ51WY6Q+MrD5Buo+bGiTg+FqdD+S0V/0nz/SRldBW0OdImmYJvnfAWukBqUvC
 qlew==
X-Gm-Message-State: AOAM530vznEV+U03Swdf/gAyaGYrZaz6yMrafiOumxLcxNb/37HcTrHP
 vvkAe77tgj85z4iXshkuwPk=
X-Google-Smtp-Source: ABdhPJxNXOMj0HG4eaEtEWBOBz5dKP+jjqXxckuqFNSi9mi+FleyYUby2GFywJABEdDjRvYBB5LiMQ==
X-Received: by 2002:a05:6512:ea1:: with SMTP id
 bi33mr3027601lfb.571.1643294609150; 
 Thu, 27 Jan 2022 06:43:29 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id z9sm2196073lft.160.2022.01.27.06.43.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jan 2022 06:43:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 27/27] drm: rockchip: Add VOP2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220127110009.GK23490@pengutronix.de>
Date: Thu, 27 Jan 2022 15:43:24 +0100
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <6E75EF52-3ED6-4E53-9DE3-DBEAA7BFD005@gmail.com>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
 <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
 <20220127110009.GK23490@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_064331_030491_2AB5B8F4 
X-CRM114-Status: GOOD (  12.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDI3LjAxLjIwMjIsIG8gZ29kei4gMTI6MDA6Cj4gCj4+IAo+PiAt
b24gcmszMzk5IGl0IGdpdmVzIG1lIDRrIHNjcmVlbiB3aGVyZSByaWdodCB2ZXJ0aWNhbCAxLzMg
cGFydCBvZiBzY3JlZW4gaXMgZ2FyYmFnZQo+PiAtb24gcmszNTY2IG15IHNhbXN1bmcgNGsgbW9u
aXRvciBoYXMgYmxhY2sgc2NyZWVuIGFuZCBjeWNsZSBvZiBPU0QgbXNnczogSERNSTIgY29ubmVj
dGVkOyBIRE1JMiBkaXNjb25uZWN0ZWQ7IC4uLi4KPiAKPiBTYW1lIGhlcmUgb24gbXkgcmszNTY4
LCBhbHNvIHdpdGggYSBzYW1zdW5nIG1vbml0b3IuIFdhcyBpdCA0a0A2MEh6IG9yCj4gNGtAMzBI
ej8gSWYgdGhlIGZvcm1lciwgY291bGQgeW91IGdpdmUgNGtAMzBIeiBhIHRyeT8gVGhhdCBtb2Rl
IHdvcmtzCj4gd2VsbCBoZXJlLgoKSXQgd2FzIDRrQDMwCkluZGVlZCAtIGZpcm13YXJlIG9mIG15
IHNhbXN1bmcgaXMgdG90YWwgY3JhcCBpbiBVSSBhc3BlY3RzIC0gc28gbWF5YmUgaW4gaGRtaSBt
b2RlcyBhcmUgYXMgd2VsbCA6LXAKQW55d2F5IC0gdGhpcyBjcmFwIG1vbml0b3Igd29ya3Mgb2sg
d2l0aCA0a0AzMCBvbiBBVy9SUEk0L3JrMzM5OS9uMzQ1MC9NYWNCb29rUHJvCgo+PiAKPj4gQlRX
OiBnZXR0aW5nIHdlbGwgd29ya2luZyA0ayBIRE1JIG1vZGVzIG9uIHJrMzM5OSB3YXMgcmVhbCBz
dG9yeSBmb3IgbWUuCj4+IFRoZXJlIGlzIG1hbnkgZGlmZmVyZW50IHNlcmllcyBvZiBwYXRjaGVz
IHRvIGFkZHJlc3MgdGhpcyAtIGJ1dCBhbGwgaGF2ZSBzb21lIHN1YnRsZSBpc3N1ZXMgZm9yIG1l
IChpLmUuIDRrIEhETUkgbW9kZXMgd29ya3MgYnV0IGkuZS4gUXQgaXMgZmFpbGluZyB3aXRoIERS
TSBhdG9taWMgY29tbWl0cyBpbiBFR0xGUykKPj4gSSBkZXZlbG9wZWQgd2VsbCB3b3JraW5nIFsx
XSBnaXZpbmcgbWUgcmVsaWFibGUgNGsgb24gcmszMzk5IChpbmNsdWRpbmcgd29ya2luZyBRdCBE
Uk0gZHJhd2luZyBpbiBFR0xGUyBtb2RlKSAKPj4gTWF5YmUgaXQgd2lsbCBiZSBzb21laG93IGhl
bHBmdWwgdG8gZ2V0IDRrIG1vZGVzIHNvbHV0aW9uIGZvciByazM1NjYgX2FuZF8gcmszMzk5IChv
biBzaW5nbGUga2VybmVsIGJpbmFyeSk/Cj4+IAo+PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3dh
cnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC01LjE2L2ZpbGVz
LzA3MzAtZHJtLXJvY2tjaGlwLWFkZC00ay12aWRlb21vZGVzLXN1cHBvcnQucGF0Y2gKPiAKPiBB
dCBsZWFzdCB0aGVyZSBhcmUgcGF0Y2hlcyBpbiBpdCB0aGF0IEkgaGF2ZSBpbiBteSBzZXJpZXMg
YXMgd2VsbCBhbmQKPiBrZWVwIHBvcHBpbmcgdXAgZXZlcnl3aGVyZSBsaWtlICJkcm0vcm9ja2No
aXA6IGR3X2hkbWk6IFVzZQo+IGF1dG8tZ2VuZXJhdGVkIHRhYmxlcyIgYW5kICJkcm0vcm9ja2No
aXA6IGR3X2hkbWk6IFNldCBjdXJfY3RyIHRvIDAKPiBhbHdheXMiCj4gCgpXaGF0IHdhcyB0aW1l
LWNvbnN1bWluZyBmb3IgbWUgd2FzIGZpbmRpbmcgd29ya2luZyBwYXRjaGVzIGNvbWJpbmF0aW9u
IHdoaWNoIG5vdCBicmVha3MgUXQgRFJNIEF0b21pYyBjb21taXRzLgpNYW55IHNlcmllcyBmbG9h
dGluZyBhcnJvdW5kIHZhcmlvdXMgZ2l0IHJlcG9zL3Byb2plY3RzIHdlcmUgb2ZmZXJpbmcgNGsg
bW9kZXMgYnV0IGJyZWFraW5nIFF0IGluIHRoZSBzYW1lIHRpbWUuLi4uCgpidHc6IGhhdmUgeW91
IHBsYW5zIHRvIGxvb2svYWRkcmVzcyBub24td29ya2luZyBEUk0gcGxhbmVzIGluIFZPUDI/ClJl
bmRlcmluZyB0byBEUk0gcGxhbmUgZ2l2ZXMgbWUgZ3JlZW4gc2NyZWVuIG9uIHJrMzU2Ni4KVGhl
IHNhbWUgY29kZSAoYW5kIGJpbmFyaWVzKSBhcmUgd29ya2luZyBvayBvbiByazMzOTkgKGFuZCBv
dGhlciBTb0NzKS4KIAogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

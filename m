Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B577DC7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 11:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeDKmvn5ScaDg1znjE0Nj+hHm+zh0WTCYvydUTeJ0Ag=; b=LIG1uHffgnC0se
	noHTQ2J10NfjecNnk/fP456s3BX/m3dBq/hpPslj+6kKK2zVmANTnsOlGfHqKI4h6zdAae4DoDcW8
	CqGElBJiY77MguPNsixuyiVH9TEXw3cZuCuVHwWVerqtRZm/Eu4XcdC6OGz23CGk7LLN1P3hbzzHy
	+sybPJt4CR14zOSN4svRScnwKZclsQVJC8429y6cs1T63a3n5cxGgNP1a5MPJF6YMU0b9bxcuzHZ+
	U1tq4vl5ygqbC6uPb+5ItfZ9J8o2XyCOBNlhQU0PbjpMeUgTJx0EHs/fxD6EI+EBifOmazMUfB2ki
	tUzr91KIsR73B5bxyqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnwO-001BW7-0p;
	Tue, 02 May 2023 11:13:04 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnwK-001BV0-2a;
	Tue, 02 May 2023 11:13:02 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1ptnwE-0005l8-N6; Tue, 02 May 2023 13:12:54 +0200
Message-ID: <5a070053-2151-56d7-26a2-03871e1e4e8e@leemhuis.info>
Date: Tue, 2 May 2023 13:12:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, robert.mader@collabora.com,
 nicolas.dufresne@collabora.co.uk, ezequiel@vanguardiasur.com.ar,
 festevam@gmail.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, linux-imx@nxp.com, regressions@lists.linux.dev
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
 <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
 <dcd317db-3c24-895d-572b-1b139c370ff7@leemhuis.info>
 <05da00c0-2180-62ee-6276-8553ad9341c4@collabora.com>
Content-Language: en-US, de-DE
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <05da00c0-2180-62ee-6276-8553ad9341c4@collabora.com>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1683025980;0d5ad175;
X-HE-SMSGID: 1ptnwE-0005l8-N6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_041301_001144_21996E6E 
X-CRM114-Status: GOOD (  12.94  )
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDIuMDUuMjMgMDg6NTYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+IExlIDAxLzA1LzIw
MjMgw6AgMDk6MjEsIFRob3JzdGVuIExlZW1odWlzIGEgw6ljcml0wqA6Cj4+IE9uIDI3LjA0LjIz
IDAwOjE5LCBTaHJlZXlhIFBhdGVsIHdyb3RlOgo+Pj4gT24gMjAvMDIvMjMgMTY6MTgsIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+Pj4+IFNldHRpbmcgY29udGV4dCBzb3VyY2UgYW5kIGRlc3Rp
bmF0aW9uIGZvcm1hdHMgc2hvdWxkIG9ubHkgYmUgZG9uZQo+Pj4+IGluIGhhbnRyb19zZXRfZm10
X291dCgpIGFuZCBoYW50cm9fc2V0X2ZtdF9jYXAoKSBhZnRlciBjaGVjayB0aGF0Cj4+Pj4gdGhl
IHRhcmdldGVkIHF1ZXVlIGlzIG5vdCBidXN5Lgo+Pj4+IFJlbW92ZSB0aGVzZSBjYWxscyBmcm9t
IGhhbnRyb19yZXNldF9lbmNvZGVkX2ZtdCgpIGFuZAo+Pj4+IGhhbnRyb19yZXNldF9yYXdfZm10
KCkgdG8gY2xlYW4gdGhlIGRyaXZlci4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4gS2VybmVsQ0kg
Zm91bmQgdGhpcyBwYXRjaCBjYXVzZXMgYSByZWdyZXNzaW9uIGluIHRoZQo+Pj4gYmFzZWxpbmUu
ZG1lc2cuYWxlcnQgdGVzdCBbMV0gb24gcmszMzk5LXJvY2stcGktNGIgWzJdLAo+Pj4gc2VlIHRo
ZSBiaXNlY3Rpb24gcmVwb3J0IGZvciBtb3JlIGRldGFpbHMgWzNdLgo+Pj4KPj4+IExldCB1cyBr
bm93IGlmIHlvdSBoYXZlIGFueSBxdWVzdGlvbnMuCj4+Pgo+Pj4gWzFdCj4+PiBodHRwczovL2dp
dGh1Yi5jb20va2VybmVsY2kva2VybmVsY2ktY29yZS9ibG9iL21haW4vY29uZmlnL3Jvb3Rmcy9k
ZWJvcy9vdmVybGF5cy9iYXNlbGluZS9vcHQva2VybmVsY2kvZG1lc2cuc2gKPj4+IFsyXSBodHRw
czovL2xpbnV4Lmtlcm5lbGNpLm9yZy90ZXN0L2Nhc2UvaWQvNjQ0MmU4MjVmMTkxMzRkNzRjMmU4
NjVkLwo+Pj4gWzNdIGh0dHBzOi8vZ3JvdXBzLmlvL2cva2VybmVsY2ktcmVzdWx0cy9tZXNzYWdl
LzQwNzQwCj4+IFRoeCBmb3IgdGhlIHJlcG9ydC4gRldJVywgcmVnemJvdCBub3RpY2VkIHRoZXJl
IGlzIGEgcGF0Y2ggdGhhdCByZWZlcnMKPj4gdG8gdGhlIGN1bHByaXQgdGhhdCBtaWdodCBoYXZl
IGJlZW4gbGFuZGVkIGluIG5leHQgYWZ0ZXIgeW91ciB0ZXN0IHJhbgo+PiBmb3IgdGhlIGxhc3Qg
dGltZSAoYW5kIG1lYW53aGlsZSBpdCB3YXMgbWFpbmxpbmVkKTogZjEwMGNlM2JiZDYgKCJtZWRp
YToKPj4gdmVyaXNpbGljb246IEZpeCBjcmFzaCB3aGVuIHByb2JpbmcgZW5jb2RlciIpCj4gCj4g
WWVzIHRoYXQgcGF0Y2ggc2hvdWxkIGZpeCB0aGUgcHJvYmluZyBpc3N1ZS4KPiBNYXJlayBpcyB3
b3JraW5nIG9uIGFuIGFkZGl0aW9uYWwgb25lIHRvIGZpeCBwaXhlbCBmb3JtYXQgbmVnb3RpYXRp
b24KPiBidXQgdGhhdCBkb2Vzbid0IGltcGFjdCB0aGUgYm9vdC4KCkdyZWF0LCB0aHggZm9yIHRo
ZSByZXBseS4KClNocmVleWEsIG5vcm1hbGx5IEkgYmVsaWV2ZSBkZXZlbG9wZXJzIGluIGNhc2Vz
IGxpa2UgdGhpcyBhbmQgd291bGQgaGF2ZQppbmNsdWRlZAoKICNyZWd6Ym90IGZpeDogZjEwMGNl
M2JiZDYKCmluIHRoaXMgbWFpbCAod2l0aG91dCB0aGUgc3BhY2UgaW4gZnJvbnQgb2YgdGhlICMp
IHRvIG1hcmsgdGhlCnJlZ3Jlc3Npb24gYXMgcmVzb2x2ZWQuIFdvdWxkIHRoYXQgYmUgb2theSBm
b3IgeW91IGFuZCBvdGhlciBrZXJuZWwuY2kKcGVvcGxlPyBPciBkbyB5b3Ugd2FudCB0byBjb25m
aXJtIHRoaXMgZmlyc3Q/CgpDaWFvLCBUaG9yc3RlbiAod2VhcmluZyBoaXMgJ3RoZSBMaW51eCBr
ZXJuZWwncyByZWdyZXNzaW9uIHRyYWNrZXInIGhhdCkKLS0KRXZlcnl0aGluZyB5b3Ugd2FubmEg
a25vdyBhYm91dCBMaW51eCBrZXJuZWwgcmVncmVzc2lvbiB0cmFja2luZzoKaHR0cHM6Ly9saW51
eC1yZWd0cmFja2luZy5sZWVtaHVpcy5pbmZvL2Fib3V0LyN0bGRyCklmIEkgZGlkIHNvbWV0aGlu
ZyBzdHVwaWQsIHBsZWFzZSB0ZWxsIG1lLCBhcyBleHBsYWluZWQgb24gdGhhdCBwYWdlLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

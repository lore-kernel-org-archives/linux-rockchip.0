Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39521C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 16:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5RaUW8PXJKJEnCaar6pV3cUngZ3v8pxD4YHg88NBrs=; b=JRAnmK2ksVS9Gf
	6xqRMDQC76cTf3NtJkZOL4cx/g78FgUVoFDjx/o/rnk3nxdbKwr73imP1HzXLgjCfH4Bkksv/7Llt
	q1SsOpAVnyrrU9L8uEbTYnol9zG0JTL0Hqq8/WLQ+hbc7AippfebLLsdD5pbS94UQuT25wBIgmYT8
	xrF9kL5kRq3Ab8apzGJ8mQ3NVVUkzjIXmSuh9sC3dFCG6k2xFx6KOha/MTg87r6Qm84t5ASKD5ISU
	uMvc48dkMpdDLwCpW5sO/aEYB1UtpI2I9bpEUUnSUCb/TK1OmphetNVjU7qEbK1oX6W1i9LpLqytl
	l8VgoA1stjBXtO7koT9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFzZd-000TiQ-2N;
	Wed, 20 Dec 2023 16:37:33 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFzZY-000Tge-2C;
	Wed, 20 Dec 2023 16:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703090242;
	bh=pvibR0nQA9GDkxI5bQPaqCc+AIH4+2nJTGzFe8u/X/U=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=GMlIvPixQSMHnq7CFgBfdPCbWcFBg9f4pftaiB69SPkKYKZOaPRo4Pdt1LyTHSqrD
	 8M7WsdN3jDfpS87hNjDXzNmRDG3xcAWYpt9IAfMkbo2lLnISVNI58j2wdEQRQJ0yLb
	 m3/5FCt1RQXxVBdmvVCtsHUasZaQVzU/OMGGqA/8RAxbYaRC7e6KRyJfZsjNLCm6hL
	 OHjC0V+0ZB9b0qcr0lNTyE7W8p8iGzRLLHxocP0by40jfoxPYFQZkNTFUlzFmVO+YE
	 GoqTifXTDbW3kBW9+cJ05cD3P+xXDRZY0BIZhfoLc6wEiOiyJnxD7G3oknzolWKpEr
	 mKJRHIoThHdng==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 04A4737814A9;
	Wed, 20 Dec 2023 16:37:18 +0000 (UTC)
Message-ID: <f8205a1ba599b354032d88dc16b0b6b88f8c2cf8.camel@collabora.com>
Subject: Re: [PATCH v4 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Laurent Pinchart
 <laurent.pinchart+renesas@ideasonboard.com>, Daniel Almeida
 <daniel.almeida@collabora.com>, Benjamin Mugnier
 <benjamin.mugnier@foss.st.com>,  Heiko Stuebner <heiko@sntech.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-media@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 linux-stm32@st-md-mailman.stormreply.com, Rob Herring <robh+dt@kernel.org>,
  Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>
Date: Wed, 20 Dec 2023 11:37:14 -0500
In-Reply-To: <20231220152732.2138260-1-hugues.fruchet@foss.st.com>
References: <20231220152732.2138260-1-hugues.fruchet@foss.st.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=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
User-Agent: Evolution 3.50.2 (3.50.2-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_083728_851791_A2982ED7 
X-CRM114-Status: GOOD (  17.81  )
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

TGUgbWVyY3JlZGkgMjAgZMOpY2VtYnJlIDIwMjMgw6AgMTY6MjcgKzAxMDAsIEh1Z3VlcyBGcnVj
aGV0IGEgw6ljcml0wqA6Cj4gVGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIFZE
RUMgdmlkZW8gaGFyZHdhcmUgZGVjb2Rlcgo+IGFuZCBWRU5DIHZpZGVvIGhhcmR3YXJlIGVuY29k
ZXIgb2YgU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyTVAyNQo+IFNvQyBzZXJpZXMuCj4gCj4gVGhp
cyBpbml0aWFsIHN1cHBvcnQgaW1wbGVtZW50cyBIMjY0IGRlY29kaW5nLCBWUDggZGVjb2Rpbmcg
YW5kCj4gSlBFRyBlbmNvZGluZy4KPiAKPiBUaGlzIGhhcyBiZWVuIHRlc3RlZCBvbiBTVE0zMk1Q
MjU3Ri1FVjEgZXZhbHVhdGlvbiBib2FyZC4KPiAKPiA9PT09PT09PT09PQo+ID0gaGlzdG9yeSA9
Cj4gPT09PT09PT09PT0KPiB2ZXJzaW9uIDQ6Cj4gICAgLSBGaXggY29tbWVudHMgZnJvbSBOaWNv
bGFzIGFib3V0IGRyb3BwaW5nIGVuY29kZXIgcmF3IHN0ZXBzCgpBcyBkaXNjdXNzZWQgaW4gY2hh
dCwgVGhlIDRLIHJlc29sdXRpb24gZGlkbid0IHdvcmsgY29ycmVjdGx5LCBzbyBhbGwgdGhlCnJl
c29sdXRpb24gaGF2ZSBiZWVuIHNldCBiYWNrIHRvIDEwODBwLgoKPiAKPiB2ZXJzaW9uIDM6Cj4g
ICAgLSBGaXggcmVtYXJrcyBmcm9tIEtyenlzenRvZiBLb3psb3dza2k6Cj4gICAgIC0gZHJvcCAi
aXRlbXMiLCB3ZSBrZWVwIHNpbXBsZSBlbnVtIGluIHN1Y2ggY2FzZQo+ICAgICAtIGRyb3Agc2Vj
b25kIGV4YW1wbGUgLSBpdCBpcyB0aGUgc2FtZSBhcyB0aGUgZmlyc3QKPiAgICAtIERyb3AgdW51
c2VkIG5vZGUgbGFiZWxzIGFzIHN1Z2dlc3RlZCBieSBDb25vciBEb29sZXkKPiAgICAtIFJldmlz
aXQgbWluL21heCByZXNvbHV0aW9ucyBhcyBzdWdnZXN0ZWQgYnkgTmljb2xhcyBEdWZyZXNuZQo+
IAo+IHZlcnNpb24gMjoKPiAgICAtIEZpeCByZW1hcmtzIGZyb20gS3J6eXN6dG9mIEtvemxvd3Nr
aSBvbiB2MToKPiAgICAgLSBzaW5nbGUgdmlkZW8tY29kZWMgYmluZGluZyBmb3IgYm90aCBWREVD
L1ZFTkMKPiAgICAgLSBnZXQgcmlkIG9mICItbmFtZXMiCj4gICAgIC0gdXNlIG9mIGdlbmVyaWMg
bm9kZSBuYW1lICJ2aWRlby1jb2RlYyIKPiAKPiB2ZXJzaW9uIDE6Cj4gICAtIEluaXRpYWwgc3Vi
bWlzc2lvbgo+IAo+IEh1Z3VlcyBGcnVjaGV0ICg1KToKPiAgIGR0LWJpbmRpbmdzOiBtZWRpYTog
RG9jdW1lbnQgU1RNMzJNUDI1IFZERUMgJiBWRU5DIHZpZGVvIGNvZGVjcwo+ICAgbWVkaWE6IGhh
bnRybzogYWRkIHN1cHBvcnQgZm9yIFNUTTMyTVAyNSBWREVDCj4gICBtZWRpYTogaGFudHJvOiBh
ZGQgc3VwcG9ydCBmb3IgU1RNMzJNUDI1IFZFTkMKPiAgIGFybTY0OiBkdHM6IHN0OiBhZGQgdmlk
ZW8gZGVjb2RlciBzdXBwb3J0IHRvIHN0bTMybXAyNTUKPiAgIGFybTY0OiBkdHM6IHN0OiBhZGQg
dmlkZW8gZW5jb2RlciBzdXBwb3J0IHRvIHN0bTMybXAyNTUKPiAKPiAgLi4uL21lZGlhL3N0LHN0
bTMybXAyNS12aWRlby1jb2RlYy55YW1sICAgICAgIHwgIDUwICsrKysrKysrCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpICAgICAgICB8ICAxMiArKwo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTUuZHRzaSAgICAgICAgfCAgMTcgKysrCj4gIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vS2NvbmZpZyAgICB8ICAxNCArKy0KPiAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9NYWtlZmlsZSAgIHwgICA0ICsKPiAgLi4u
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyAgIHwgICA0ICsKPiAgLi4u
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oICAgIHwgICAyICsKPiAgLi4u
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMgIHwgIDkyICsrKysrKysr
KysrKysrCj4gIC4uLi9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmVuY19ody5jICB8
IDExNSArKysrKysrKysrKysrKysrKysKPiAgOSBmaWxlcyBjaGFuZ2VkLCAzMDcgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMm1wMjUtdmlkZW8tY29kZWMueWFtbAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9z
dG0zMm1wMjVfdmRlY19ody5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZW5jX2h3LmMKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

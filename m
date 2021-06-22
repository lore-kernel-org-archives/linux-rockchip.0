Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8F1DC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 22:22:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 859F060FF1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 22:22:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 859F060FF1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nkU3miiqCJP/REfOgo8iJ+wXbDhKCWPtCNAs3b3mZg=; b=trRTJ62F/EG5F1
	QHXsCZuR93QVnY6sjkeY7arFe/EX6nE/0Iaa+djLcTRGFM4FDUlxiacKQQ/zn0N3ygz4wHWpK9ZSa
	HNr95qvD2wumbMl5JfwW6O9LG/EcMs8Yc3jJ3yGJ2GEp6xZKjROiWrqw7qD2LTwk+iNYNzjYEGPi7
	JoNKqp98x8i5F4CBRttaenaPwjUA/Mi6SzDx6pZLix3QpQXAn+tcxEnDuaWV4qsNGVKu4KpT8B2ge
	uO2jIzE0NstlERNLH2B6NE5lpJWo6r9zPk2ifglbcCQz8FM1ZPZGmB/gTHLSipTM25NzgUjiC3obS
	+J0u52tfnP5QtxSiD3pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvomM-008bXM-LT; Tue, 22 Jun 2021 22:21:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvomA-008bWP-Hs; Tue, 22 Jun 2021 22:21:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D68571F42BE0
Message-ID: <dea119557eb7ba37b3b468a44a2b6b98bc56a690.camel@collabora.com>
Subject: Re: [PATCH v3 4/8] media: Add P010 video format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de,  mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, gregkh@linuxfoundation.org,
 mripard@kernel.org,  paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net,  emil.l.velikov@gmail.com,
 andrzej.p@collabora.com, jc@kynesim.co.uk,  jernej.skrabec@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 22 Jun 2021 19:21:23 -0300
In-Reply-To: <be4b635675df2111cb7c095013323b3ba1ac246e.camel@ndufresne.ca>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-5-benjamin.gaignard@collabora.com>
 <fbf31c292fde2f7dafb1441fc85a1ead34fdf96d.camel@collabora.com>
 <be4b635675df2111cb7c095013323b3ba1ac246e.camel@ndufresne.ca>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_152146_747829_98DBB755 
X-CRM114-Status: GOOD (  21.58  )
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

T24gVHVlLCAyMDIxLTA2LTIyIGF0IDE3OjI0IC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3Rl
Ogo+IExlIHZlbmRyZWRpIDE4IGp1aW4gMjAyMSDDoCAxNjozOCAtMDMwMCwgRXplcXVpZWwgR2Fy
Y2lhIGEgw6ljcml0wqA6Cj4gPiBIaSBCZW5qYW1pbiwKPiA+IAo+ID4gT24gRnJpLCAyMDIxLTA2
LTE4IGF0IDE1OjE1ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+ID4gUDAxMCBp
cyBhIFlVViBmb3JtYXQgd2l0aCAxMC1iaXRzIHBlciBwaXhlbCB3aXRoIGludGVybGVhdmVkIFVW
Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWlu
LmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiA+IC0tLQo+ID4gPiB2ZXJzaW9uIDI6Cj4gPiA+
IMKgLSBBZGQgZG9jdW1lbnRhdGlvbiBhYm91dCBQMDEwIHBhZGRpbmcKPiA+ID4gwqAtIEZpeCB0
aGUgbnVtYmVyIG9mIGJpdHMgcGVyIGNvbXBvbmVudCAoMTYpCj4gPiA+IAo+ID4gPiDCoC4uLi9t
ZWRpYS92NGwvcGl4Zm10LXl1di1wbGFuYXIucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA3OCAr
KysrKysrKysrKysrKysrKystCj4gPiA+IMKgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1j
b21tb24uY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+ID4gPiDCoGRyaXZlcnMvbWVkaWEvdjRs
Mi1jb3JlL3Y0bDItaW9jdGwuY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSArCj4gPiA+IMKgaW5j
bHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAxICsKPiA+ID4gwqA0IGZpbGVzIGNoYW5nZWQsIDc5IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL3Y0bC9waXhmbXQteXV2LXBsYW5hci5yc3QgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3BpeGZtdC15dXYtcGxhbmFyLnJzdAo+ID4gPiBpbmRleCAw
OTBjMDkxYWZmZDIuLmFmNDAwZDM3YzhmZCAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlv
bi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9waXhmbXQteXV2LXBsYW5hci5yc3QKPiA+ID4gKysr
IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9waXhmbXQteXV2LXBsYW5h
ci5yc3QKPiA+ID4gQEAgLTEwMCw4ICsxMDAsMTMgQEAgQWxsIGNvbXBvbmVudHMgYXJlIHN0b3Jl
ZCB3aXRoIHRoZSBzYW1lIG51bWJlciBvZiBiaXRzIHBlciBjb21wb25lbnQuCj4gPiA+IMKgwqDC
oMKgwqDCoCAtIENiLCBDcgo+ID4gPiDCoMKgwqDCoMKgwqAgLSBObwo+ID4gPiDCoMKgwqDCoMKg
wqAgLSA2NHgzMiBtYWNyb2Jsb2Nrcwo+ID4gPiAtCj4gPiA+IC3CoMKgwqDCoMKgwqDCoCBIb3Jp
em9udGFsIFogb3JkZXIKPiA+ID4gK8KgwqDCoCAqIC0gVjRMMl9QSVhfRk1UX1AwMTAKPiA+IAo+
ID4gRG8gd2UgaGF2ZSBzdXBwb3J0IGluIEdTdHJlYW1lciAob3IgZWxzZXdoZXJlKSBmb3IgdGhp
cz8KPiAKPiBJIGJlbGlldmUgeW91IHdhbnRlZCB0byBhc2sgZm9yIHBhdGNoZWQgZnJhbWV3b3Jr
IHRvIGV4ZXJjaXNlIHRoaXMgPyBTaW5jZSBib3RoCj4gRkZNUEVHIGFuZCBHU1RyZWFtZXIgaGF2
ZSBoYWQgdGhhdCBmb3JtYXQgZm9yIGFnZXMuIEZvciBHU3RyZWFtZXI6Cj4gCj4gaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9nc3QtcGx1Z2lucy1iYXNlLy0vYmxvYi9t
YXN0ZXIvZ3N0LWxpYnMvZ3N0L3ZpZGVvL3ZpZGVvLWZvcm1hdC5oI0wxMDIKPiAKCkFoLCBncmVh
dC4gVGhpcyBzb3J0IG9mIGluZm8gcmVhbGx5IGNvdWxkIGJlIGluIHRoZSBjb21taXQgZGVzY3Jp
cHRpb24KYXMgaXQncyBub3QgYWx3YXlzIGNsZWFyIGlmIGEgbmV3IHBpeGVsIGZvcm1hdCBsb29r
cyBzYW5lIG9yIG5vdC4KCj4gTm8gVjRMMiBtYXBwaW5nIHVwc3RyZWFtLCBidXQgdGhpcyBpcyBh
IGJpdCBub3JtYWwsIGNhbid0IHVwc3RyZWFtIGEgbWFwcGluZyBmb3IKPiBzb21ldGhpbmcgdGhh
dCBkb2VzIG5vdCBleGlzdCB5ZXQuCj4gCgpXZWxsLCBpZiB5b3UgYXJlIGhhcHB5IHdpdGggdGhl
IHBhdGNoIGFzLWlzIGNvdWxkIHlvdSBhY2sgaXQ/IElJUkMsIEhhbnRybwphbmQgVkM4MDAwRCBw
cm9kdWNlIHRoaXMsIHNvIHdlJ2xsIHVzZSBpdCBzb29uZXIgb3IgbGF0ZXIuIChUaGlzIGluZm9y
bWF0aW9uCmNvdWxkIGJlIGluIHRoZSBjb21taXQgZGVzY3JpcHRpb24gYXMgd2VsbCkuCi0tIApL
aW5kbHksCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

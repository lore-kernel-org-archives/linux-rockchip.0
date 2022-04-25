Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E27C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omZWxkmz6Mu41Ax8Gn9tcSZHbFCj98szma4aT6WD3dc=; b=c58VWU2DVRQDHf
	0lwZpt+SB/oaNwhDtGsk7Hq98ByuqYbtM5wbgT++lyo/Gma6M8XZEahV/xMH+WaFpljOFnfOTcdma
	NilHB4oyvm4UAhTUTYor7JEhawth4OGujjPaIXaHgNxSPDb5FhAOgjOnZzpo6hppgrJrreyX3rBml
	uG3Ww4iXDcpa/a2LifleL3Of+f7XwEj24PLcfkajcCer+jq4DfPoxmpbygtVbSSRtDJI1dEcArAd3
	fo17NyMH1lFm5vprsJTozdB3MHSOG8wapYoqXBjylp4IIi4dXBZj6wfHnalPiDgrD7er5P94re6KE
	Mrr/cvpttDgO4h5tUpOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niuuH-008tSB-Hb; Mon, 25 Apr 2022 09:21:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niuu2-008tOQ-VD
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:21:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1niutp-0003uW-GT; Mon, 25 Apr 2022 11:20:53 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1niuto-0057Sx-PG; Mon, 25 Apr 2022 11:20:51 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1niutm-0004WV-OB; Mon, 25 Apr 2022 11:20:50 +0200
Message-ID: <25fbf4763c28af4c73162dec254af6111e05461b.camel@pengutronix.de>
Subject: Re: [PATCH v8 2/5] PCI: dwc: rockchip: reset core at driver probe
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Peter Geis <pgwipeout@gmail.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Krzysztof
 =?UTF-8?Q?Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner
 <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Marc Zyngier <maz@kernel.org>, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 25 Apr 2022 11:20:50 +0200
In-Reply-To: <20220423152403.1681222-3-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
 <20220423152403.1681222-3-pgwipeout@gmail.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_022107_043679_0D359C66 
X-CRM114-Status: GOOD (  15.68  )
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

SGkgUGV0ZXIsCgpPbiBTYSwgMjAyMi0wNC0yMyBhdCAxMToyNCAtMDQwMCwgUGV0ZXIgR2VpcyB3
cm90ZToKPiBUaGUgUENJZSBjb250cm9sbGVyIGlzIGluIGFuIHVua25vd24gc3RhdGUgYXQgZHJp
dmVyIHByb2JlLiBUaGlzIGNhbgo+IGxlYWQgdG8gdW5kZXNpcmVhYmxlIGVmZmVjdHMgd2hlbiB0
aGUgZHJpdmVyIGF0dGVtcHRzIHRvIGNvbmZpZ3VyZSB0aGUKPiBjb250cm9sbGVyLgo+IAo+IFBy
ZXZlbnQgaXNzdWVzIGluIHRoZSBmdXR1cmUgYnkgcmVzZXR0aW5nIHRoZSBjb3JlIGR1cmluZyBw
cm9iZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29t
Pgo+IC0tLQo+IMKgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
IHwgMjIgKysrKysrKy0tLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IGM5YjM0MWU1NWNiYi4uZDY3ZWQ4MTFlNzUyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+
IEBAIC0xNTIsNyArMTUyLDEzIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yZXNvdXJjZV9n
ZXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiDCoAlpZiAoSVNfRVJSKHJvY2tjaGlw
LT5yc3RfZ3BpbykpCj4gwqAJCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5yc3RfZ3Bpbyk7Cj4g
Cj4gLQlyZXR1cm4gMDsKPiArCXJvY2tjaGlwLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJy
YXlfZ2V0X2V4Y2x1c2l2ZSgmcGRldi0+ZGV2KTsKPiArCWlmIChJU19FUlIocm9ja2NoaXAtPnJz
dCkpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihyb2NrY2hp
cC0+cnN0KSwKPiArCQkJCSAgICAgImZhaWxlZCB0byBnZXQgcmVzZXQgbGluZXNcbiIpOwo+ICsK
PiArCXJldHVybiByZXNldF9jb250cm9sX2Fzc2VydChyb2NrY2hpcC0+cnN0KTsKClRoaXMgbWFr
ZXMgInJvY2tjaGlwX3BjaWVfcmVzb3VyY2VfZ2V0IiBhIGJpdCBvZiBhIG1pc25vbWVyLCBtYXli
ZSBtb3ZlCnRoaXMgb3V0IGludG8gcm9ja2NoaXBfcGNpZV9wcm9iZSgpPwoKPiArCgpTdXBlcmZs
dW91cyB3aGl0ZXNwYWNlLgoKcmVnYXJkcwpQaGlsaXBwCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

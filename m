Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F729C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:06:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB1476140F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:06:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB1476140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gDMezLABEquaIP8+NBIXIubCqt01n2BtdgEYlNVFc3Q=; b=A/fnEbk4iVJfpzix/XTvbLdIK
	NNwoHR+//MLrsOEhnHTNQzRIkG2LSEbysoT6Ccs72q1MF3iiFEI4LkQq7Qp5juHUktaulgCFScxmu
	wSqzit8L1rfVIHehcelQER5LLcz7jPM0v9mxSdXDklZjBLGZmXT3H9Ol/yiCCYoHtO7ZvoK65Mfyt
	kI2Jlbbk8xjBlgr2uS+FMKKTS7+3wCjwoX4ojg+5KAzVNKJkh1ftqXHgge/vt5atXsqrD9qOeXseM
	JLt7c5XJl7hP+hftHhvQfIV+olXbi09XaUKisWiVwKAEj+Jn4PyTgy/LZQY4GGcCeWJ17g6lzCo23
	m/y0nfBWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZK3K-00FCTE-Rx; Wed, 21 Apr 2021 21:06:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK3H-00FCT9-Fo
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 21:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=HJMZWbuMqlksHjn+47HiblKRmXyUi8MtOqGxQhzIhZ8=; b=yONd4XtNsPI6XtG/xWGEYBr0JE
 9FV6g+pAnMFo4gg9kLIzU3H8TP9ISGqX+XGTzLXI8o8PfzdHobJsragFErPkav4k0pboW6FXTRAIE
 oUXAZrCtKT0eqboTN+VNU0E6jdBt2BEhwFrk21odANtInkIu3jR1vEQlSLBdJCriqL2crGUnf802T
 njdN7T/fu4YXACelx4MVIj4bnC5ArHavS9vrHrsijcL/acbgDLeE1Tb8ib7b6/9/H8wo8/vYidkkC
 YwYKYgpLL7vKZZ1GVAE5RYS+bRlJT3flvvhlvXhWblM2Rp21u1SczlTPL80aPSVqBGVmK8MzYHmnJ
 4fMu6rwQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK3E-00DC5h-Tz
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 21:06:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3AB781F41EAC
Message-ID: <d1de806e3989900a8a6477f35dce1575473a8983.camel@collabora.com>
Subject: Re: [PATCH v2 3/3] net: stmmac: Add RK3566 SoC support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Johan Jonker <jbx6244@gmail.com>, netdev@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, 
 "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Peter Geis
 <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, David Wu
 <david.wu@rock-chips.com>, kernel@collabora.com
Date: Wed, 21 Apr 2021 18:06:13 -0300
In-Reply-To: <a3cef507-6480-eff8-625c-c5167db718f3@gmail.com>
References: <20210421203409.40717-1-ezequiel@collabora.com>
 <20210421203409.40717-4-ezequiel@collabora.com>
 <a3cef507-6480-eff8-625c-c5167db718f3@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_140625_116185_177E29F4 
X-CRM114-Status: GOOD (  19.63  )
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

T24gV2VkLCAyMDIxLTA0LTIxIGF0IDIyOjQ5ICswMjAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4g
T24gNC8yMS8yMSAxMDozNCBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gRnJvbTogRGF2
aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgo+ID4gCj4gPiBBZGQgY29uc3RhbnRzIGFu
ZCBjYWxsYmFjayBmdW5jdGlvbnMgZm9yIHRoZSBkd21hYyBwcmVzZW50Cj4gPiBvbiBSSzM1NjYg
U29Dcy4gQXMgY2FuIGJlIHNlZW4sIHRoZSBiYXNlIHN0cnVjdHVyZQo+ID4gaXMgdGhlIHNhbWUs
IG9ubHkgcmVnaXN0ZXJzIGFuZCB0aGUgYml0cyBpbiB0aGVtIG1vdmVkIHNsaWdodGx5Lgo+ID4g
Cj4gPiBUaGUgZHdtYWMgSVAgY29yZSB2ZXJzaW9uIHY1LjEsIGFuZCBzbyB0aGUgY29tcGF0aWJs
ZSBzdHJpbmcKPiA+IGlzIGV4cGVjdGVkIHRvIGJlOgo+ID4gCj4gPiDCoCBjb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzU2Ni1nbWFjIiwgInNucHMsZHdtYWMtNC4yMGEiOwo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBEYXZpZCBXdSA8ZGF2aWQud3VAcm9jay1jaGlwcy5jb20+Cj4gPiBbRXplcXVp
ZWw6IFNlcGFyYXRlIHJrMzU2Ni1nbWFjIHN1cHBvcnRdCj4gPiBTaWduZWQtb2ZmLWJ5OiBFemVx
dWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKgLi4uL2Jp
bmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy50eHTCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSAr
Cj4gPiDCoC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuY8KgwqDCoCB8
IDg5ICsrKysrKysrKysrKysrKysrKysKPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA5MCBpbnNlcnRp
b25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L3JvY2tjaGlwLWR3bWFjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMudHh0Cj4gPiBpbmRleCAzYjcxZGE3ZTg3NDIuLjNi
ZDRiYmNkNmM2NSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLWR3bWFjLnR4dAo+ID4gQEAgLTEyLDYgKzEyLDcg
QEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiA+IMKgwqDCoCAicm9ja2NoaXAscmszMzY2LWdtYWMi
OiBmb3VuZCBvbiBSSzMzNjYgU29Dcwo+ID4gwqDCoMKgICJyb2NrY2hpcCxyazMzNjgtZ21hYyI6
IGZvdW5kIG9uIFJLMzM2OCBTb0NzCj4gPiDCoMKgwqAgInJvY2tjaGlwLHJrMzM5OS1nbWFjIjog
Zm91bmQgb24gUkszMzk5IFNvQ3MKPiAKPiA+ICvCoMKgICJyb2NrY2hpcCxyazM1NjYtZ21hYyIs
ICJzbnBzLGR3bWFjLTQuMjBhIjogZm91bmQgb24gUkszNTY2IFNvQ3MKPiAKPiBUaGlzIGlzIHN0
aWxsIGEgdGV4dCBkb2N1bWVudC4KPiByb2IrZHQgaGFzIG5vdyBzY3JpcHRzIHRoYXQgY2hlY2sg
Zm9yIHVuZG9jdW1lbnRlZCBjb21wYXRpYmlsaXR5Cj4gc3RyaW5ncywgc28gZmlyc3QgY29udmVy
dCByb2NrY2hpcC1kd21hYy50eHQgdG8gWUFNTCBhbmQgdGhlbiBhZGQgdGhpcwo+IGluIGEgc2Vw
YXJhdGVkIHBhdGNoLgo+IAoKSXMgaXQgYSBzaG93c3RvcHBlciB0byBjb252ZXJ0IGRldmljZXRy
ZWUgYmluZGluZ3MgdG8gWUFNTCwgZm9yIGRyaXZlciBzdWJtaXNzaW9uPwoKVGhhbmtzLApFemVx
dWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE3EAC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 19:40:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A519C64E45
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 19:40:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A519C64E45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWzBONy3EyUi43Vm3iK0hJuhLQK53Fqy3IhdVQx4XcI=; b=ojUpGJ238toXbTy+k2/LKWxbq
	by0bAePqzIXChbOTY4wisEc4jwRXG3lL3D3Df+SzOQNpSsrkxZ43l6ZtZhpPxeok6w6Cad9zLzz2U
	gDsWJXhWH2QUMWHL3eHUIWGiHL2ucoCmAqSv9y8Nuy8laWrDOIrXKwLe7rhIqgSOPY7URXVChxBow
	TAt3od/iIc+GOH6lAYwxrUmQQnZgt2hpbA8W8wpjhB1ELYHVzyyOqmhSC0SBqLTscU6XgflDR/7ey
	UgQNDZzuyvY8d1Su4MOhoQcwe+FDezdc2VdbzqKrO+QWBLe53v/8f5yekhg5a1NYPoDEGbYXvYsxg
	fCBNyhEpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCSgG-0004cy-C4; Wed, 17 Feb 2021 19:40:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCSgC-0004bt-B8; Wed, 17 Feb 2021 19:40:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E062B1F45845
Message-ID: <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
Subject: Re: [PATCH v1 03/18] arm64: dts: imx8mq-evk: add reserve memory
 node for CMA region
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 16:39:49 -0300
In-Reply-To: <20210217080306.157876-4-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-4-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_144008_569763_05050D0F 
X-CRM114-Status: GOOD (  16.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQmVuamFtaW4sCgpPbiBXZWQsIDIwMjEtMDItMTcgYXQgMDk6MDIgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IERlZmluZSBhbGxvY2F0aW9uIHJhbmdlIGZvciB0aGUgZGVmYXVs
dCBDTUEgcmVnaW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdh
cmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KCkRlc3BpdGUgaXQgc2VlbXMgbGlrZSBJIHNp
Z25lZC1vZmYgdGhpcyBvbmUuLi4KCj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJp
YW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtcS1ldmsuZHRzIHwgMTUgKysrKysrKysrKysrKysrCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcS1ldmsuZHRzCj4gaW5kZXggODViMDQ1MjUzYTBlLi4wNDdkZmQ0YTFmZmQgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay5kdHMK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cwo+IEBA
IC0yMSw2ICsyMSwyMSBAQCBtZW1vcnlANDAwMDAwMDAgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmVnID0gPDB4MDAwMDAwMDAgMHg0MDAwMDAwMCAwIDB4YzAwMDAwMDA+Owo+
IMKgwqDCoMKgwqDCoMKgwqB9Owo+IAo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgcmVzbWVtOiByZXNl
cnZlZC1tZW1vcnkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3NpemUtY2VsbHMg
PSA8Mj47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJhbmdlczsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIGdsb2JhbCBhdXRvY29uZmlndXJlZCByZWdp
b24gZm9yIGNvbnRpZ3VvdXMgYWxsb2NhdGlvbnMgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgbGludXgsY21hIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1wb29sIjsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldXNhYmxlOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2l6ZSA9IDwwIDB4M2MwMDAw
MDA+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxs
b2MtcmFuZ2VzID0gPDAgMHg0MDAwMDAwMCAwIDB4NDAwMDAwMDA+Owo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGludXgsY21hLWRlZmF1bHQ7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07CgouLi4gSSdtIG5vdCBhIGZhbiBvZiB0aGUg
Y2hhbmdlIDopCgpIb3BlZnVsbHkgc29tZW9uZSBmcm9tIE5YUCBjYW4gcHJvdmlkZSBzb21lIGlu
c2lnaHQgaGVyZT8KCklmIGl0J3MgYWJzb2x1dGVseSBuZWVkZWQgZm9yIHRoZSBWUFUsIHRoZW4g
SSBndWVzcyBpdCBzaG91bGQKYmUgMSkgdmVyeSB3ZWxsIGRvY3VtZW50ZWQgYW5kIDIpIG1vdmVk
IHRvIHRoZSB0b3AtbG92ZWwgZHRzaS4KCkJ1dCBpZiB3ZSBjYW4gZHJvcCBpdCwgdGhhdCdkIGJl
IG5pY2VyLgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

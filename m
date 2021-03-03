Return-Path: <SRS0=/i9y=IC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44F5BC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 01:53:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65D6C65096
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 01:53:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65D6C65096
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fn+FbX5UcwiMHeXbr+0CSsxWU14ndkxsZHLrt3jwnvg=; b=CDEDiDvgktR65teHgNgcRDZXT
	j4Zd1snmrdV70TKDMRTYKSSIhNkpBir6Amnj/axHbMn+y/o4HejBq39I1BvvHbB4DG+P1DWbZj8ic
	WqVi/onXMSpJ7UOpwaBW5/AxJOJBKO/L32dmeCqftcXQCUK9qQFYj7PVw1kAOQ7JDPtEahK7ijL/h
	lNmjr/hieZudYLfZaKDbcFI3l0KMQMJU3a5HGSleDZF8s7vusvC4zJDeG6i1hNbZu92vWJsUjt/xn
	Uc7FEifrbUprmYZsvGC5ozJSPVFCKdYIjXR0Hgpwy4F1AKgw7rTmT1P2Sqtc4DdtSzR19Etxtvn34
	Hj7yhDbvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHdAu-007Os8-0p; Thu, 04 Mar 2021 01:53:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHZU4-006fdD-Vi; Wed, 03 Mar 2021 21:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=oy3uqvbgmHulTPAp13lRDpErNy/iNjBRf/y9LOT9WsM=; b=N/kRQC+3xWa5BlzgVJtIBeANdA
 CMikzhyUtSrKpcphVel8jjl6nkgNz8txDxDPIUm4YX/aQq/iCovF+rHhNdn12ZluKjXhFjtPuS8Uf
 oQ5TDZMh6/jeT5yIs7udk7NQCfIqp2xCYfShVpDIT531G/0DSdF96qoVXk2WRrfmf9wGDxSheVIQc
 mjrbQOm4iXsTdCvF9rhr2V+aiQC8g7fX0UPSiukN+1iGseWa31RwcfBYZTcbWFISSWrUqaF6hFfpS
 7wx6zFaHoDc2lYLyyWww99k2AuOemxeFjqXkOKmhrCyaJIsZdiGYY5ZHFtkusVP1vRDuFqIagvDBA
 WZHI5q/A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHZTx-004LUn-GZ; Wed, 03 Mar 2021 21:56:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8B8851F45F5B
Message-ID: <22a8ea464f4c7dcb7a90889f53d85f003b7c739a.camel@collabora.com>
Subject: Re: [PATCH v4 03/11] media: hantro: change hantro_codec_ops run
 prototype to return errors
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, 
 dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Wed, 03 Mar 2021 18:56:23 -0300
In-Reply-To: <20210303113952.178519-4-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
 <20210303113952.178519-4-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_215640_232128_63AAF174 
X-CRM114-Status: GOOD (  14.46  )
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

T24gV2VkLCAyMDIxLTAzLTAzIGF0IDEyOjM5ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBDaGFuZ2UgaGFudHJvX2NvZGVjX29wcyBydW4gcHJvdG90eXBlIGZyb20gJ3ZvaWQnIHRv
ICdpbnQnLgo+IFRoaXMgYWxsb3cgdG8gY2FuY2VsIHRoZSBqb2IgaWYgYW4gZXJyb3Igb2NjdXIg
d2hpbGUgY29uZmlndXJpbmcKPiB0aGUgaGFyZHdhcmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVu
amFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4g
wqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuY8KgwqDCoMKgIHzCoCA0
ICsrKy0KPiDCoC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzFfaDI2NF9kZWMuYyB8
wqAgNiArKysrLS0KPiDCoC4uLi9tZWRpYS9oYW50cm8vaGFudHJvX2cxX21wZWcyX2RlYy5jwqDC
oMKgwqDCoMKgwqAgfMKgIDQgKysrLQo+IMKgLi4uL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19nMV92cDhfZGVjLmPCoCB8wqAgNiArKysrLS0KPiDCoC4uLi9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9faDFfanBlZ19lbmMuYyB8wqAgNCArKystCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19ody5owqDCoMKgwqDCoCB8IDE5ICsrKysrKysrKystLS0tLS0tLS0K
PiDCoC4uLi9tZWRpYS9oYW50cm8vcmszMzk5X3ZwdV9od19qcGVnX2VuYy5jwqDCoMKgwqAgfMKg
IDQgKysrLQo+IMKgLi4uL21lZGlhL2hhbnRyby9yazMzOTlfdnB1X2h3X21wZWcyX2RlYy5jwqDC
oMKgIHzCoCA0ICsrKy0KPiDCoC4uLi9tZWRpYS9oYW50cm8vcmszMzk5X3ZwdV9od192cDhfZGVj
LmPCoMKgwqDCoMKgIHzCoCA2ICsrKystLQo+IMKgOSBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRp
b25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IGluZGV4IGU1ZjIwMGU2NDk5My4uYWMxNDI5ZjAwYjMzIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBAQCAtMTYxLDcgKzE2
MSw5IEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiDCoAo+IMKgwqDCoMKg
wqDCoMKgwqB2NGwyX20ybV9idWZfY29weV9tZXRhZGF0YShzcmMsIGRzdCwgdHJ1ZSk7Cj4gwqAK
PiAtwqDCoMKgwqDCoMKgwqBjdHgtPmNvZGVjX29wcy0+cnVuKGN0eCk7Cj4gK8KgwqDCoMKgwqDC
oMKgaWYgKGN0eC0+Y29kZWNfb3BzLT5ydW4oY3R4KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVy
bjsKPiDCoAo+IMKgZXJyX2NhbmNlbF9qb2I6Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX2gyNjRfZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19nMV9oMjY0X2RlYy5jCj4gaW5kZXggODQ1YmVmNzNkMjE4Li5mY2Q0
ZGIxM2M5ZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZzFfaDI2NF9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2cxX2gyNjRfZGVjLmMKPiBAQCAtMjczLDEzICsyNzMsMTMgQEAgc3RhdGljIHZvaWQgc2V0
X2J1ZmZlcnMoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiDCoMKgwqDCoMKgwqDCoMKgdmRwdV93
cml0ZV9yZWxheGVkKHZwdSwgY3R4LT5oMjY0X2RlYy5wcml2LmRtYSwgRzFfUkVHX0FERFJfUVRB
QkxFKTsKPiDCoH0KPiDCoAo+IC12b2lkIGhhbnRyb19nMV9oMjY0X2RlY19ydW4oc3RydWN0IGhh
bnRyb19jdHggKmN0eCkKPiAraW50IGhhbnRyb19nMV9oMjY0X2RlY19ydW4oc3RydWN0IGhhbnRy
b19jdHggKmN0eCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGhhbnRyb19kZXYgKnZw
dSA9IGN0eC0+ZGV2Owo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFByZXBhcmUgdGhlIEgyNjQg
ZGVjb2RlciBjb250ZXh0LiAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoaGFudHJvX2gyNjRfZGVj
X3ByZXBhcmVfcnVuKGN0eCkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
bjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7CgpUaGlz
IHNob3VsZCBiZSByZXR1cm5pbmcgdGhlIHZhbHVlIGZyb20gaGFudHJvX2gyNjRfZGVjX3ByZXBh
cmVfcnVuLgoKVGhhbmtzIQpFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

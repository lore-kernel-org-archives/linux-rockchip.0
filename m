Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFE3C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:44:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E08026146D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:44:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E08026146D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=akAbkqlg/1cb0lvtv0eLveJjyxOnws3+Se+/DdPNFaI=; b=mrjMIE74QmaIpjjHoxHpH4PEN
	KgC36oBD6ekvIq8AJgqgnvjUgJ5R3CyHBG5qeJsEDWSoEoxnL2t8JkJuS98XNuJU6sCE/pDo1gwlo
	7vvVHjvNexx6TALHM3UzLyr8USa7lbEGYkFwWoLoJOE3v1BvgRND2BJPgxIozQvMaFgx4pd2ave7S
	M8N3JffRS0SsIRKAun/b9CdkarkT4fTnnaUYL4gE9MXV9h+C+i2OmS/HFcfwbe/SFeLiRN5yGxdvL
	ek4otNq0Gr6wpnP20gPKIfMH4HjYG6lPUfsONbhPnlR2E8FY+N3tzkImFsxk58IMyTELG8JVjuRAZ
	aXhvO6yHQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTgB-0002pr-B4; Wed, 17 Feb 2021 20:44:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTg6-0002oo-N3; Wed, 17 Feb 2021 20:44:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 92D2E1F44763
Message-ID: <b7338896a344ac06f41d782b6b56db227e359348.camel@collabora.com>
Subject: Re: [PATCH v1 18/18] arm64: dts: imx8mq: Add node to G2 hardware
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:43:53 -0300
In-Reply-To: <20210217080306.157876-19-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-19-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_154406_970388_92742B72 
X-CRM114-Status: GOOD (  13.04  )
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAzICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBTcGxpdCBWUFUgbm9kZSBpbiB0d286IG9uZSBmb3IgRzEgYW5kIG9uZSBmb3IgRzIgc2lu
Y2UgdGhleSBhcmUKPiBkaWZmZXJlbnQgaGFyZHdhcmUgYmxvY2tzLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+
IC0tLQo+IMKgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgfCA0MyAr
KysrKysrKysrKysrKysrKy0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtcS5kdHNpCj4gaW5kZXggZDlkOWVmYzg1OTJkLi4zY2FiM2YwYjkxMzEgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQo+IEBAIC0xMjg3LDE3ICsxMjg3
LDE2IEBAIHZwdV9yZXNldDogdnB1LXJlc2V0QDM4MzIwMDAwIHsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHZwdTogdmlkZW8tY29kZWNAMzgzMDAwMDAgewo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB2cHVfZzE6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gIm54
cCxpbXg4bXEtdnB1IjsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgzODMxMDAwMCAweDEwMDAw
PjsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZy1u
YW1lcyA9ICJnMSIsICJnMiI7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwK
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8R0lDX1NQSSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0LW5hbWVz
ID0gImcxIiwgImcyIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnLW5hbWVzID0gImcxIjsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8R0lDX1NQ
SSA3IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0LW5hbWVzID0gImcxIjsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9ja3MgPSA8JmNsayBJTVg4TVFf
Q0xLX1ZQVV9HMV9ST09UPiwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD47
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jay1u
YW1lcyA9ICJnMSIsICJnMiI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0cyX1JPT1Q+
LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jay1uYW1lcyA9ICJnMSIsICJn
MiIsICJidXMiOwoKSG93IGNvbWUgdGhlIEcxIGJsb2NrIG5lZWRzIHRoZSBHMiBjbG9jaz8KCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYXNzaWduZWQt
Y2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzE+LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzI+LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfQlVTPiwKPiBAQCAtMTMwNiwxMiArMTMwNSwzNiBAQCB2
cHU6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZjbGsgSU1YOE1RX1ZQVV9QTExfT1VUPiwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjbGsgSU1YOE1RX1NZUzFfUExMXzgwME0+LAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNsayBJTVg4TVFfVlBVX1BM
TD47Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhc3Np
Z25lZC1jbG9jay1yYXRlcyA9IDw2MDAwMDAwMDA+LCA8NjAwMDAwMDAwPiwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFzc2lnbmVkLWNsb2NrLXJhdGVz
ID0gPDYwMDAwMDAwMD4sIDwzMDAwMDAwMDA+LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDw4MDAwMDAwMDA+LCA8MD47Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVzZXRzID0gPCZ2cHVfcmVzZXQgSU1YOE1RX1JFU0VUX1ZQ
VV9SRVNFVF9HMT47Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcG93ZXItZG9tYWlucyA9IDwmcGdjX3ZwdT47Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB9Owo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZwdV9n
MjogdmlkZW8tY29kZWNAMzgzMTAwMDAgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdS1nMiI7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHgzODMx
MDAwMCAweDEwMDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlZy1uYW1lcyA9ICJnMiI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVycnVwdC1uYW1lcyA9ICJnMiI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMV9ST09UPiwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCgpEaXR0bywgdGhlIEcyIGJsb2Nr
IG5lZWRzIHRoZSBHMSBjbG9jaz8KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

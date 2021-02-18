Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44000C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 14:48:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC7BF64E85
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 14:48:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC7BF64E85
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=udUwl9e2lipILJckxoWTHjI6ZD/AuItZh/Pt5ENFPWM=; b=Bx7dRHQcAAzUDAf3S8Qiqw4yg
	2bFh5Y1z8Qjjqi1+3gVOzZ0exYE7l0939qYl8C5m8gQbeynJ2ow7BBMZiSjOqy9oY89qQtveRf9OH
	uqi2dZL2tlRsq9/Ax3zR6tFHsof8yePXF9DoZwQhWxp0QkVBifpY6+AEBXbCkPa1ees85dr5gmIM0
	zfHHUo+U+L+A5AnbI2xvrZFd62i1Ae/KCNNqWKnSWUyAbqrFcEqDKv2ZLCDb/EvPrzVsvgf7kcHn2
	GVWcpKR3XTMyEs2qEW+1KHSz1D2cMMRCsY6yrmfkDmsWa4HAZQhfRcJ+Ec5tcaHsNwuzAAZy3Drv9
	7Egp7Zm8A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCkbf-0000Qh-HH; Thu, 18 Feb 2021 14:48:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCkbX-0000OS-0l; Thu, 18 Feb 2021 14:48:31 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e] (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BDA2E1F44926;
 Thu, 18 Feb 2021 14:48:28 +0000 (GMT)
Subject: Re: [PATCH v1 17/18] dt-bindings: media: nxp,imx8mq-vpu: Update
 bindings
To: Rob Herring <robh@kernel.org>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-18-benjamin.gaignard@collabora.com>
 <20210217224839.GA2888647@robh.at.kernel.org>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <0a12de91-e6c9-642a-9c43-207041996c22@collabora.com>
Date: Thu, 18 Feb 2021 15:48:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210217224839.GA2888647@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_094831_289953_54A2F72E 
X-CRM114-Status: GOOD (  20.02  )
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, kernel@pengutronix.de,
 s.hauer@pengutronix.de, mripard@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzAyLzIwMjEgw6AgMjM6NDgsIFJvYiBIZXJyaW5nIGEgw6ljcml0wqA6Cj4gT24gV2Vk
LCBGZWIgMTcsIDIwMjEgYXQgMDk6MDM6MDVBTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IFRoZSBpbnRyb2R1Y3Rpb24gb24gSEVWQyBkZWNvZGVyIGxlYWQgdG8gdXBkYXRlIHRo
ZSBiaW5kaW5ncwo+PiB0byBzdXBwb3J0IGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+PiAtLS0K
Pj4gICAuLi4vYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUueWFtbCAgICAgICAgfCA1NCAr
KysrKysrKysrKystLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyks
IDE4IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUueWFtbAo+PiBpbmRleCA3NjJi
ZTNmOTZjZTkuLjQ2ODQzNWM3MGVlZiAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwKPj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwKPj4g
QEAgLTE1LDI0ICsxNSwyNSBAQCBkZXNjcmlwdGlvbjoKPj4gICAKPj4gICBwcm9wZXJ0aWVzOgo+
PiAgICAgY29tcGF0aWJsZToKPj4gLSAgICBjb25zdDogbnhwLGlteDhtcS12cHUKPj4gKyAgICBl
bnVtOgo+PiArICAgICAgLSBueHAsaW14OG1xLXZwdQo+PiArICAgICAgLSBueHAsaW14OG1xLXZw
dS1nMgo+PiAgIAo+PiAgICAgcmVnOgo+PiAtICAgIG1heEl0ZW1zOiAzCj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4gICAKPj4gICAgIHJlZy1uYW1lczoKPj4gLSAgICBpdGVtczoKPj4gLSAgICAgIC0g
Y29uc3Q6IGcxCj4+IC0gICAgICAtIGNvbnN0OiBnMgo+PiAtICAgICAgLSBjb25zdDogY3RybAo+
PiArICAgIGVudW06Cj4+ICsgICAgICAtIGcxCj4+ICsgICAgICAtIGcyCj4gVGhpcyBpc24ndCBh
IGNvbXBhdGlibGUgY2hhbmdlLiBZb3UgbmVlZCB0byBzdGF0ZSB3aHkgdGhhdCdzIG9rYXkgaWYg
aXQKPiBpcyBva2F5LgoKSSB3aWxsIGNoYW5nZSB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gdGhpcyBp
biB0aGUgbmV4dCB2ZXJzaW9uOgpUaGUgY3VycmVudCBiaW5kaW5ncyBzZWVtIHRvIG1ha2UgdGhl
IGFzc3VtcHRpb24gdGhhdCB0aGUKdHdvIFZQVXMgaGFyZHdhcmUgYmxvY2tzIChHMSBhbmQgRzIp
IGFyZSBvbmx5IG9uZSBzZXQgb2YKcmVnaXN0ZXJzLgpBZnRlciBpbXBsZW1lbnRpbmcgdGhlIFZQ
VSByZXNldCBkcml2ZXIgYW5kIEcyIGRlY29kZXIgZHJpdmVyCml0IHNob3dzIHRoYXQgYWxsIHRo
ZSBWUFVzIGFyZSBpbmRlcGVuZGVudCBhbmQgZG9uJ3QgbmVlZCB0bwprbm93IGFib3V0IHRoZSBy
ZWdpc3RlcnMgb2YgdGhlIG90aGVyIGJsb2Nrcy4KUmVtb3ZlIGZyb20gdGhlIGJpbmRpbmdzIHRo
ZSBuZWVkIHRvIHNldCBhbGwgYmxvY2tzIHJlZ2lzdGVyCmJ1dCBrZWVwIHJlZy1uYW1lcyBwcm9w
ZXJ0eSBiZWNhdXNlIHJlbW92aW5nIGl0IGZyb20gdGhlIGRyaXZlcgptYXkgYWZmZWN0IG90aGVy
IHZhcmlhbnRzLgoKQmVuamFtaW4KCj4KPj4gICAKPj4gICAgIGludGVycnVwdHM6Cj4+IC0gICAg
bWF4SXRlbXM6IDIKPj4gKyAgICBtYXhJdGVtczogMQo+PiAgIAo+PiAgICAgaW50ZXJydXB0LW5h
bWVzOgo+PiAtICAgIGl0ZW1zOgo+PiAtICAgICAgLSBjb25zdDogZzEKPj4gLSAgICAgIC0gY29u
c3Q6IGcyCj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gZzEKPj4gKyAgICAgIC0gZzIKPj4gICAK
Pj4gICAgIGNsb2NrczoKPj4gICAgICAgbWF4SXRlbXM6IDMKPj4gQEAgLTQ2LDYgKzQ3LDkgQEAg
cHJvcGVydGllczoKPj4gICAgIHBvd2VyLWRvbWFpbnM6Cj4+ICAgICAgIG1heEl0ZW1zOiAxCj4+
ICAgCj4+ICsgIHJlc2V0czoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICAgcmVxdWlyZWQ6
Cj4+ICAgICAtIGNvbXBhdGlibGUKPj4gICAgIC0gcmVnCj4+IEBAIC01NCw2ICs1OCw3IEBAIHJl
cXVpcmVkOgo+PiAgICAgLSBpbnRlcnJ1cHQtbmFtZXMKPj4gICAgIC0gY2xvY2tzCj4+ICAgICAt
IGNsb2NrLW5hbWVzCj4+ICsgIC0gcmVzZXRzCj4+ICAgCj4+ICAgYWRkaXRpb25hbFByb3BlcnRp
ZXM6IGZhbHNlCj4+ICAgCj4+IEBAIC02MSwxOSArNjYsMzIgQEAgZXhhbXBsZXM6Cj4+ICAgICAt
IHwKPj4gICAgICAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9pbXg4bXEtY2xvY2su
aD4KPj4gICAgICAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxl
ci9hcm0tZ2ljLmg+Cj4+ICsgICAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9pbXg4
bXEtdnB1LXJlc2V0Lmg+Cj4+ICAgCj4+IC0gICAgICAgIHZwdTogdmlkZW8tY29kZWNAMzgzMDAw
MDAgewo+PiArICAgICAgICB2cHVfZzE6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPj4gICAgICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdSI7Cj4+IC0gICAgICAgICAg
ICAgICAgcmVnID0gPDB4MzgzMDAwMDAgMHgxMDAwMD4sCj4+IC0gICAgICAgICAgICAgICAgICAg
ICAgPDB4MzgzMTAwMDAgMHgxMDAwMD4sCj4+IC0gICAgICAgICAgICAgICAgICAgICAgPDB4Mzgz
MjAwMDAgMHgxMDAwMD47Cj4+IC0gICAgICAgICAgICAgICAgcmVnLW5hbWVzID0gImcxIiwgImcy
IiwgImN0cmwiOwo+PiAtICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3IElS
UV9UWVBFX0xFVkVMX0hJR0g+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8R0lD
X1NQSSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiAtICAgICAgICAgICAgICAgIGludGVycnVw
dC1uYW1lcyA9ICJnMSIsICJnMiI7Cj4+ICsgICAgICAgICAgICAgICAgcmVnID0gPDB4MzgzMDAw
MDAgMHgxMDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgcmVnLW5hbWVzID0gImcxIjsKPj4gKyAg
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKPj4gKyAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAiZzEiOwo+PiArICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JPT1Q+LAo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0cyX1JPT1Q+LAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0RFQ19ST09UPjsK
Pj4gKyAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJnMSIsICJnMiIsICJidXMiOwo+PiAr
ICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBnY192cHU+Owo+PiArICAgICAgICAg
ICAgICAgIHJlc2V0cyA9IDwmdnB1X3Jlc2V0IElNWDhNUV9SRVNFVF9WUFVfUkVTRVRfRzE+Owo+
PiArICAgICAgICB9Owo+PiArCj4+ICsgICAgICAgIHZwdV9nMjogdmlkZW8tY29kZWNAMzgzMTAw
MDAgewo+PiArICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUtZzIi
Owo+PiArICAgICAgICAgICAgICAgIHJlZyA9IDwweDM4MzEwMDAwIDB4MTAwMDA+Owo+PiArICAg
ICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJnMiI7Cj4+ICsgICAgICAgICAgICAgICAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDggSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsgICAgICAgICAgICAg
ICAgaW50ZXJydXB0LW5hbWVzID0gImcyIjsKPj4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0g
PCZjbGsgSU1YOE1RX0NMS19WUFVfRzFfUk9PVD4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0cyX1JPT1Q+LAo+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4+ICAgICAgICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gImcxIiwgImcyIiwgImJ1cyI7Cj4+ICAgICAgICAgICAgICAgICAg
IHBvd2VyLWRvbWFpbnMgPSA8JnBnY192cHU+Owo+PiArICAgICAgICAgICAgICAgIHJlc2V0cyA9
IDwmdnB1X3Jlc2V0IElNWDhNUV9SRVNFVF9WUFVfUkVTRVRfRzI+Owo+PiAgICAgICAgICAgfTsK
Pj4gLS0gCj4+IDIuMjUuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

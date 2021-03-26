Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5565EC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:26:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E621F61A05
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:26:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E621F61A05
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9fpLoG6ztAlJEdl1U7xk+14gbKt4WNlSHwnIrRvj5xA=; b=FKXe2Hob0CKxLkUk8M8yUIYTQ
	JdJ77wpgC3K+bqx1n4Kbu/YUgTYDpZKMRMYmoUKUswBiG70pukGofoeVorRWhpUTW8GkieRhPGZZ9
	UVg0S5E5RvAu8Crsrlk50yKiDxBEJQfMcgz6QXG/LbBLknTl3gBRMZgipeN/fnuM1mxactH0huygf
	4hcNJWevrMcFF3Afqnz87DUCQabRdcH/8UKzVBtmMRmXeg6cZg1o3WjruD5iHRqzrP9VdEBIUPZ1f
	1pVatx14no6uNnWm3i8JZT86gQSEunLlLFv+r5FGxG7FBrYBSRKnpVsjgNbB09XPxD6uzM0r/bmj+
	9u6SISQlg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnPz-003m9r-OJ; Fri, 26 Mar 2021 14:26:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnPn-003m7d-UP; Fri, 26 Mar 2021 14:26:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 98B0A1F46FC8
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
To: Philipp Zabel <pza@pengutronix.de>
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com, kernel@pengutronix.de,
 linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
 <20210326141156.GA8441@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
Date: Fri, 26 Mar 2021 15:26:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210326141156.GA8441@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_142620_015785_27F72DAE 
X-CRM114-Status: GOOD (  21.11  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI2LzAzLzIwMjEgw6AgMTU6MTEsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIE1hciAxOCwgMjAyMSBhdCAwOToyMDozNUFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gSW50cm9kdWNpbmcgRzIgaGV2YyB2aWRlbyBkZWNvZGVyIGxlYWQgdG8gbW9kaWZ5
IHRoZSBiaW5kaW5ncyB0byBhbGxvdwo+PiB0byBnZXQgb25lIG5vZGUgcGVyIFZQVXMuCj4+IFZQ
VXMgc2hhcmUgb25lIGhhcmR3YXJlIGNvbnRyb2wgYmxvY2sgd2hpY2ggaXMgcHJvdmlkZWQgYXMg
YSBwaGFuZGxlIG9uCj4+IGFuIHN5c2Nvbi4KPj4gRWFjaCBub2RlIGdvdCBub3cgb25lIHJlZyBh
bmQgb25lIGludGVycnVwdC4KPj4gQWRkIGEgY29tcGF0aWJsZSBmb3IgRzIgaGFyZHdhcmUgYmxv
Y2s6IG54cCxpbXg4bXEtdnB1LWcyLgo+Pgo+PiBUbyBiZSBjb21wYXRpYmxlIHdpdGggb2xkZXIg
RFQgdGhlIGRyaXZlciBpcyBzdGlsbCBjYXBhYmxlIHRvIHVzZSAnY3RybCcKPj4gcmVnLW5hbWUg
ZXZlbiBpZiBpdCBpcyBkZXByZWNhdGVkIG5vdy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiB2
ZXJzaW9uIDU6Cj4+IC0gVGhpcyB2ZXJzaW9uIGRvZXNuJ3QgYnJlYWsgdGhlIGJhY2t3YXJkIGNv
bXBhdGliaWx0eSBiZXR3ZWVuIGtlcm5lbAo+PiAgICBhbmQgRFQuCj4+Cj4+ICAgLi4uL2JpbmRp
bmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwgICAgICAgIHwgNTMgKysrKysrKysrKysrLS0t
LS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwKPj4gaW5kZXggNzYyYmUzZjk2Y2U5Li43OTUw
MmZjOGJkZTUgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sCj4+IEBAIC0xNSwyMiArMTUs
MTggQEAgZGVzY3JpcHRpb246Cj4+ICAgCj4+ICAgcHJvcGVydGllczoKPj4gICAgIGNvbXBhdGli
bGU6Cj4+IC0gICAgY29uc3Q6IG54cCxpbXg4bXEtdnB1Cj4+ICsgICAgb25lT2Y6Cj4+ICsgICAg
ICAtIGNvbnN0OiBueHAsaW14OG1xLXZwdQo+PiArICAgICAgLSBjb25zdDogbnhwLGlteDhtcS12
cHUtZzIKPj4gICAKPj4gICAgIHJlZzoKPj4gLSAgICBtYXhJdGVtczogMwo+PiAtCj4+IC0gIHJl
Zy1uYW1lczoKPj4gLSAgICBpdGVtczoKPj4gLSAgICAgIC0gY29uc3Q6IGcxCj4+IC0gICAgICAt
IGNvbnN0OiBnMgo+PiAtICAgICAgLSBjb25zdDogY3RybAo+PiArICAgIG1heEl0ZW1zOiAxCj4+
ICAgCj4+ICAgICBpbnRlcnJ1cHRzOgo+PiAtICAgIG1heEl0ZW1zOiAyCj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4gICAKPj4gICAgIGludGVycnVwdC1uYW1lczoKPj4gLSAgICBpdGVtczoKPj4gKyAg
ICBvbmVPZjoKPj4gICAgICAgICAtIGNvbnN0OiBnMQo+PiAgICAgICAgIC0gY29uc3Q6IGcyCj4+
ICAgCj4+IEBAIC00NiwxNCArNDIsMTggQEAgcHJvcGVydGllczoKPj4gICAgIHBvd2VyLWRvbWFp
bnM6Cj4+ICAgICAgIG1heEl0ZW1zOiAxCj4+ICAgCj4+ICsgIG54cCxpbXg4bXEtdnB1LWN0cmw6
Cj4+ICsgICAgZGVzY3JpcHRpb246IFNwZWNpZmllcyBhIHBoYW5kbGUgdG8gc3lzY29uIFZQVSBo
YXJkd2FyZSBjb250cm9sIGJsb2NrCj4+ICsgICAgJHJlZjogIi9zY2hlbWFzL3R5cGVzLnlhbWwj
L2RlZmluaXRpb25zL3BoYW5kbGUiCj4+ICsKPiBTaG91bGQgd2UgZHJvcCB0aGUgJ3EnIGhlcmUs
IGkuZS4gbnhwLGlteDhtLXZwdS1jdHJsIHNvIHdlIGNhbiB1c2UgdGhlIHNhbWUKPiBiaW5kaW5n
IGZvciBpLk1YOE1NIGxhdGVyPwoKSSBkb24ndCBrbm93IGlmIHRoZSBjb250cm9sIGJsb2NrIGlz
IHRoZSBzYW1lIG9yIG5vdCBvbiBJTVg4TU0sIHNvIEkgaGF2ZSBvbmx5CnB1dCBhIGNvbXBhdGli
bGUgdGFyZ2V0aW5nIElNWDhNUS4KCj4KPj4gICByZXF1aXJlZDoKPj4gICAgIC0gY29tcGF0aWJs
ZQo+PiAgICAgLSByZWcKPj4gLSAgLSByZWctbmFtZXMKPj4gICAgIC0gaW50ZXJydXB0cwo+PiAg
ICAgLSBpbnRlcnJ1cHQtbmFtZXMKPj4gICAgIC0gY2xvY2tzCj4+ICAgICAtIGNsb2NrLW5hbWVz
Cj4+ICsgIC0gbnhwLGlteDhtcS12cHUtY3RybAo+PiAgIAo+PiAgIGFkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQo+PiAgIAo+PiBAQCAtNjIsMTggKzYyLDMzIEBAIGV4YW1wbGVzOgo+PiAgICAg
ICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2lteDhtcS1jbG9jay5oPgo+PiAgICAg
ICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMu
aD4KPj4gICAKPj4gLSAgICAgICAgdnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICsgICAg
ICAgIHZwdV9jdHJsOiBzeXNjb25AMzgzMjAwMDAgewo+PiArICAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gIm54cCxpbXg4bXEtdnB1LWN0cmwiLCAic3lzY29uIjsKPj4gKyAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MzgzMjAwMDAgMHgxMDAwMD47Cj4+ICsgICAgICAgIH07Cj4+ICsKPj4g
KyAgICAgICAgdnB1X2cxOiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICAgICAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUiOwo+PiAtICAgICAgICAgICAgICAgIHJl
ZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgIDwweDM4
MzEwMDAwIDB4MTAwMDA+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgIDwweDM4MzIwMDAwIDB4
MTAwMDA+Owo+PiAtICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJnMSIsICJnMiIsICJjdHJs
IjsKPj4gLSAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgOCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gLSAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMg
PSAiZzEiLCAiZzIiOwo+PiArICAgICAgICAgICAgICAgIHJlZyA9IDwweDM4MzAwMDAwIDB4MTAw
MDA+Owo+PiArICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3IElSUV9UWVBF
X0xFVkVMX0hJR0g+Owo+PiArICAgICAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJnMSI7
Cj4+ICsgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzFfUk9P
VD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJf
Uk9PVD4sCj4gRG9lcyB0aGUgRzEgVlBVIHJlcXVpcmUgdGhlIEcyIGNsb2NrIGFuZCB2aWNlIHZl
cnNhPwoKWWVzIGVpdGhlciB0aGUgY29udHJvbCBoYXJkd2FyZSBibG9jayB3b24ndCB3b3JrLgoK
QmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlwcAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

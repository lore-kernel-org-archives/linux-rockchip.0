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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5441EC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:33:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB935619F2
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:33:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB935619F2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fS3NJngCPsLwjoH1psmvO4EdbYZuBVITpbF8kMM8XvU=; b=bxroTkoNgeddnm6M377FI4Dhb
	yHTbDl/xyhkPINvVSfNCJNrcYpi20/DhVbk6c7WFKqiFVJTgGjEUgqhPk8x9yxk4n4yqnXzjn7YYz
	Ozvq+M6xcWLLJdj3uikQjtm8tGaxoNMFf9JgHmqHfeW20ktdJY5bJzW4n0kzPT9a3AXju5QDvEacV
	ENcv13swXBdl1gmVW8WjXxmxV+gInJgZtLpldjHDRIARIUZ002nHHozWpTq9tYNgKfSJYGb7E9pJU
	D3qjCHviRUoNG/DcRIvpm4GW+sKA/1mkKWZpdAiwOKWW+Ffp/RFJVSd9I+839nmjl3TY/Tp8nQTz+
	k89OC5wXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnWt-003mwg-6t; Fri, 26 Mar 2021 14:33:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnWg-003mvZ-QZ; Fri, 26 Mar 2021 14:33:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 41A5E1F40DAB
Subject: Re: [PATCH v6 13/13] arm64: dts: imx8mq: Add node to G2 hardware
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
 <20210318082046.51546-14-benjamin.gaignard@collabora.com>
 <20210326142440.GD8441@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <4df3c9e4-0983-6007-f3b3-323882f903cf@collabora.com>
Date: Fri, 26 Mar 2021 15:33:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210326142440.GD8441@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_143326_960162_39A8DC1C 
X-CRM114-Status: GOOD (  18.22  )
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

CkxlIDI2LzAzLzIwMjEgw6AgMTU6MjQsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIE1hciAxOCwgMjAyMSBhdCAwOToyMDo0NkFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gU3BsaXQgVlBVIG5vZGUgaW4gdHdvOiBvbmUgZm9yIEcxIGFuZCBvbmUgZm9yIEcy
IHNpbmNlIHRoZXkgYXJlCj4+IGRpZmZlcmVudCBoYXJkd2FyZSBibG9ja3MuCj4+IEFkZCBzeXNj
b24gZm9yIGhhcmR3YXJlIGNvbnRyb2wgYmxvY2suCj4+IFJlbW92ZSByZWctbmFtZXMgcHJvcGVy
dHkgdGhhdCBpcyB1c2VsZXNzLgo+PiBFYWNoIFZQVSBub2RlIG9ubHkgbmVlZCBvbmUgaW50ZXJy
dXB0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IHZlcnNpb24gNToKPj4gICAtIHVzZSBzeXNj
b24gaW5zdGVhZCBvZiBWUFUgcmVzZXQKPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaSB8IDQzICsrKysrKysrKysrKysrKysrKy0tLS0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4+IGluZGV4IDE3YzQ0OWUxMmMyZS4u
YjUzN2QxNTNlYmJkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQo+PiBAQCAtMTMyOSwxNSArMTMyOSwxNiBAQCB1c2IzX3BoeTE6IHVzYi1waHlAMzgy
ZjAwNDAgewo+PiAgIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAgCQl9Owo+PiAgIAo+PiAt
CQl2cHU6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPj4gKwkJdnB1X2N0cmw6IHN5c2NvbkAzODMy
MDAwMCB7Cj4+ICsJCQljb21wYXRpYmxlID0gIm54cCxpbXg4bXEtdnB1LWN0cmwiLCAic3lzY29u
IjsKPj4gKwkJCXJlZyA9IDwweDM4MzIwMDAwIDB4MTAwMDA+Owo+PiArCQl9Owo+PiArCj4+ICsJ
CXZwdV9nMTogdmlkZW8tY29kZWNAMzgzMDAwMDAgewo+PiAgIAkJCWNvbXBhdGlibGUgPSAibnhw
LGlteDhtcS12cHUiOwo+PiAtCQkJcmVnID0gPDB4MzgzMDAwMDAgMHgxMDAwMD4sCj4+IC0JCQkg
ICAgICA8MHgzODMxMDAwMCAweDEwMDAwPiwKPj4gLQkJCSAgICAgIDwweDM4MzIwMDAwIDB4MTAw
MDA+Owo+PiAtCQkJcmVnLW5hbWVzID0gImcxIiwgImcyIiwgImN0cmwiOwo+PiAtCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4+IC0JCQkJICAgICA8R0lD
X1NQSSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiAtCQkJaW50ZXJydXB0LW5hbWVzID0gImcx
IiwgImcyIjsKPj4gKwkJCXJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+Owo+PiArCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsJCQlpbnRlcnJ1cHQt
bmFtZXMgPSAiZzEiOwo+PiAgIAkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JP
T1Q+LAo+PiAgIAkJCQkgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICAgCQkJCSA8
JmNsayBJTVg4TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4+IEBAIC0xMzUwLDkgKzEzNTEsMzMgQEAg
dnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICAgCQkJCQkJIDwmY2xrIElNWDhNUV9WUFVf
UExMX09VVD4sCj4+ICAgCQkJCQkJIDwmY2xrIElNWDhNUV9TWVMxX1BMTF84MDBNPiwKPj4gICAJ
CQkJCQkgPCZjbGsgSU1YOE1RX1ZQVV9QTEw+Owo+PiAtCQkJYXNzaWduZWQtY2xvY2stcmF0ZXMg
PSA8NjAwMDAwMDAwPiwgPDYwMDAwMDAwMD4sCj4+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9
IDw2MDAwMDAwMDA+LCA8MzAwMDAwMDAwPiwKPiBJJ2QgbGlrZSB0byBzZWUgdGhpcyBtZW50aW9u
ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKWWVzIEkgd291bGQgZG8gdGhhdC4KVGhlIHZhbHVl
IGNvbWVzIGZyb20gdGhlIGRhdGFzaGVldC4KCj4KPj4gKwkJCQkJICAgICAgIDw4MDAwMDAwMDA+
LCA8MD47Cj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1PjsKPj4gKwkJCW54cCxpbXg4
bXEtdnB1LWN0cmwgPSA8JnZwdV9jdHJsPjsKPj4gKwkJfTsKPj4gKwo+PiArCQl2cHVfZzI6IHZp
ZGVvLWNvZGVjQDM4MzEwMDAwIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUt
ZzIiOwo+PiArCQkJcmVnID0gPDB4MzgzMTAwMDAgMHgxMDAwMD47Cj4+ICsJCQlpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJCWludGVycnVwdC1uYW1l
cyA9ICJnMiI7Cj4+ICsJCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMV9ST09UPiwK
Pj4gKwkJCQkgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICsJCQkJIDwmY2xrIElN
WDhNUV9DTEtfVlBVX0RFQ19ST09UPjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImcxIiwgImcyIiwg
ICJidXMiOwo+PiArCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzE+
LAo+IENhbiB0aGUgRzEgY2xvY2sgY29uZmlndXJhdGlvbiBiZSBkcm9wcGVkIGZyb20gdGhlIEcy
IGRldmljZSBub2RlIGFuZAo+IHRoZSBHMiBjbG9jayBjb25maWd1cmF0aW9uIGZyb20gdGhlIEcx
IGRldmljZSBub2RlPyBJdCBsb29rcyB3ZWlyZCB0aGF0Cj4gdGhlc2UgZGV2aWNlcyBjb25maWd1
cmUgZWFjaCBvdGhlcidzIGNsb2Nrcy4KCk5vIGJlY2F1c2UgaWYgb25seSBvbmUgZGV2aWNlIG5v
ZGUgaXMgZW5hYmxlZCB3ZSBuZWVkIHRvIGNvbmZpZ3VyZSB0aGUgYm90aApjbG9ja3MgYW55d2F5
LgoKQmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlwcAo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39A1C433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 15:47:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5962564D9A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 15:47:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5962564D9A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9q5LHig6e3D1h1oyU34imrRUNleO/0bBlySNZRpuDKg=; b=u9CBCO95ZevMtbxfsKaAYuqsG
	G5HiHDygzlXNZsV2jN8dS2iW9kivoH9Wjsn5DX/D02Hux4MOYkBOCkg5s3lDNtST743udfToQzAba
	vfsgmow2eHPhTTegR63PSjgfOSNz3l9JoHt/6DBmPSLxPSdn1OAsz7Oc26uSDcKo/z/iK83bbQncE
	v3Es1Tkbj4rwp6ObdTfVuEEkRFc5/I8e13Wstb216+neGwu//UHtUXdoFKhHqdqaTmW7NuvwJvCSz
	HHABsWETBaLktb/V78X68wyPXDQcrBVgrFADupHfREKOjSBmdMxU6ZZmESw2GlmmuvOsJm6zLeq4n
	hlisn7Wgg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lClWP-0005xl-Bp; Thu, 18 Feb 2021 15:47:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lClWL-0005wm-2j; Thu, 18 Feb 2021 15:47:14 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e] (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AFFDF1F45D55;
 Thu, 18 Feb 2021 15:47:10 +0000 (GMT)
Subject: Re: [PATCH v1 18/18] arm64: dts: imx8mq: Add node to G2 hardware
To: Ezequiel Garcia <ezequiel@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-19-benjamin.gaignard@collabora.com>
 <b7338896a344ac06f41d782b6b56db227e359348.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <49b162a6-5b13-5b55-4c84-2d6e354a8ad4@collabora.com>
Date: Thu, 18 Feb 2021 16:47:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b7338896a344ac06f41d782b6b56db227e359348.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_104713_379892_7CB1B817 
X-CRM114-Status: GOOD (  16.37  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzAyLzIwMjEgw6AgMjE6NDMsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IE9u
IFdlZCwgMjAyMS0wMi0xNyBhdCAwOTowMyArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6
Cj4+IFNwbGl0IFZQVSBub2RlIGluIHR3bzogb25lIGZvciBHMSBhbmQgb25lIGZvciBHMiBzaW5j
ZSB0aGV5IGFyZQo+PiBkaWZmZXJlbnQgaGFyZHdhcmUgYmxvY2tzLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4K
Pj4gLS0tCj4+ICDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwg
NDMgKysrKysrKysrKysrKysrKystLS0tLS0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2Vy
dGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaQo+PiBpbmRleCBkOWQ5ZWZjODU5MmQuLjNjYWIzZjBiOTEzMSAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPj4gQEAgLTEy
ODcsMTcgKzEyODcsMTYgQEAgdnB1X3Jlc2V0OiB2cHUtcmVzZXRAMzgzMjAwMDAgewo+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3Jlc2V0LWNlbGxz
ID0gPDE+Owo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+PiAgIAo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2cHVfZzE6IHZpZGVvLWNvZGVjQDM4
MzAwMDAwIHsKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUiOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+LAo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDB4MzgzMTAwMDAgMHgxMDAwMD47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmVnLW5hbWVzID0gImcxIiwgImcyIjsKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPEdJQ19TUEkgOCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlcnJ1cHQtbmFtZXMgPSAiZzEiLCAiZzIiOwo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAw
MDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
Zy1uYW1lcyA9ICJnMSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0
LW5hbWVzID0gImcxIjsKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JPT1Q+LAo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiOwo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNsayBJTVg4
TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiLCAiYnVzIjsKPiBIb3cgY29t
ZSB0aGUgRzEgYmxvY2sgbmVlZHMgdGhlIEcyIGNsb2NrPwoKSXQgZG9lc24ndCwgSSB3aWxsIHJl
bW92ZSBpdCBpbiB2MgoKPgo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzE+LAo+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMj4sCj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0JVUz4sCj4+
IEBAIC0xMzA2LDEyICsxMzA1LDM2IEBAIHZwdTogdmlkZW8tY29kZWNAMzgzMDAwMDAgewo+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9WUFVf
UExMX09VVD4sCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZj
bGsgSU1YOE1RX1NZUzFfUExMXzgwME0+LAo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9WUFVfUExMPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw2MDAw
MDAwMDA+LCA8NjAwMDAwMDAwPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw2MDAwMDAwMDA+LCA8MzAwMDAw
MDAwPiwKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDw4MDAwMDAwMDA+
LCA8MD47Cj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXNldHMgPSA8JnZwdV9yZXNldCBJTVg4TVFfUkVTRVRfVlBVX1JFU0VUX0cxPjsKPj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBvd2VyLWRvbWFp
bnMgPSA8JnBnY192cHU+Owo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+
PiAgIAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnB1X2cyOiB2aWRlby1jb2Rl
Y0AzODMxMDAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdS1nMiI7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MzgzMTAwMDAgMHgxMDAw
MD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVn
LW5hbWVzID0gImcyIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHQt
bmFtZXMgPSAiZzIiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JPT1Q+LAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4gRGl0dG8sIHRoZSBHMiBibG9jayBuZWVk
cyB0aGUgRzEgY2xvY2s/Cj4KPiBUaGFua3MsCj4gRXplcXVpZWwKPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

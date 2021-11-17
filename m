Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B6C9C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 11:34:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 26B8261875
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 11:34:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 26B8261875
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4K1s20fBGpHRUvbmX/rlDGp2rumYjk29ouIVPZgzeug=; b=YfBlTNhm60eRePMZIj7pFglblm
	7R7OGiDAjWFfa0239NClCoK7Dp1v6Lup1/HZxssawV1YSe3mXbPKE4DFgb5ZYyVQ+M+65G/PBGECs
	rW1/HaoqopivrNdHJm5M49I+ZoQFQ2qqPTTg+r4tqSj1i0qkg/g1U/qGDchzsP1so8Sgk2rGzW937
	UcFPizWdjmAH7jP9m+JbChUJbrwTNbRIVARe7FpoJF0koXfzMkOwrbKBB2FQ8BhlMaxd7KJBdUrco
	EO9tYved1cORHgMqvnq1MLqEfNI+m0fGYaNJ/+zJLnohYbqMJYaGZPzq6RyHPoSzmfiLNjFOSjYFj
	tXaJk/pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnJCO-004c6P-8m; Wed, 17 Nov 2021 11:33:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnJC9-004c1l-Vk; Wed, 17 Nov 2021 11:33:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E119D1F45A21
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637148814; bh=A4pYsgInc6hmH+rf5WuMyPL2m41bZ1WToRtl1fmxA+Q=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=oBheq0QgHZSLcrwy6Y86/nyKLGer6gkFIG9O/vTGsSkBV9MCbotdMSMA+gYGwrWoT
 IYKpVefzndbFdexPY7eiD+aEClLcqaU+VMoal2lliOpJoiw+xQoAajspflXKT/7XrO
 +RE/y0BKmypr+10ZvBtmGIIAQE+3vQojHyYNMDIX6W7gEqDOiF+U9oDwMOKla+ZwzU
 6nVGkg2KB37y9zm8VQTDIgl4ia/RTaGrDPiEdXsbykNeaCA/ILSlYpV9GZmUUhXYF4
 97JTbwMHrT3fFj6WfRcmcLB5hWxnLh7JBrVLm7lWr/DkNUF7bLO3NTrYwmDoSpFw+P
 79J6LIrImmLjg==
Subject: Re: [PATCH v7 00/11] VP9 codec V4L2 control interface
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <9db47ebc-cb95-872d-feb4-d6432a74f2cb@xs4all.nl>
 <29f27bad-28ae-12ff-eed6-79902bd5b722@collabora.com>
 <b8f8ee2e-ea98-4700-f4ca-f0af68c9de5c@xs4all.nl>
 <cdbbe5e6-0811-1276-1f62-fc7ad2628a30@collabora.com>
 <4da113ef-7b12-3729-0186-f746901c892a@xs4all.nl>
 <69f16bb0-4b5a-18b3-e244-60deb029d239@collabora.com>
 <2cd7a7f0-72d6-1a0e-b5d2-87ff809c2acd@xs4all.nl>
 <63429780-9e39-f8ab-40c2-0f1b57553850@collabora.com>
 <ccc29c1f-e2a1-f7c9-77ad-6e9fc1a57c95@collabora.com>
Message-ID: <75b64c8e-01aa-d3bd-b3b8-5729b33f4087@collabora.com>
Date: Wed, 17 Nov 2021 12:33:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ccc29c1f-e2a1-f7c9-77ad-6e9fc1a57c95@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_033342_298235_27D536AD 
X-CRM114-Status: GOOD (  20.94  )
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

SGkgSGFucywKClcgZG5pdSAxNy4xMS4yMDIxIG/CoDExOjUxLCBBbmRyemVqIFBpZXRyYXNpZXdp
Y3ogcGlzemU6Cj4gSGkgYWdhaW4sCj4gCj4gVyBkbml1IDE3LjExLjIwMjEgb8KgMTE6NDksIEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiBwaXN6ZToKPj4gSGksCj4+Cj4+IFcgZG5pdSAxNy4xMS4yMDIx
IG/CoDEwOjU5LCBIYW5zIFZlcmt1aWwgcGlzemU6Cj4+PiBPbiAxNi8xMS8yMDIxIDE0OjE0LCBB
bmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBXIGRuaXUgMTYu
MTEuMjAyMSBvwqAwOToyMSwgSGFucyBWZXJrdWlsIHBpc3plOgo+Pj4+PiBPbiAxNi8xMS8yMDIx
IDA5OjA5LCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4+PiBIaSBIYW5zLAo+Pj4+
Pj4KPj4+Pj4+IFcgZG5pdSAxNS4xMS4yMDIxIG/CoDIyOjE2LCBIYW5zIFZlcmt1aWwgcGlzemU6
Cj4+Pj4+Pj4gT24gMTUvMTEvMjAyMSAxODoxNCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3Rl
Ogo+Pj4+Pj4+PiBIaSBIYW5zLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXIGRuaXUgMTUuMTEuMjAyMSBv
wqAxNjowNywgSGFucyBWZXJrdWlsIHBpc3plOgo+Pj4+Pj4+Pj4gQW5kcnplaiwKPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBDYW4geW91IHJlYmFzZSB0aGlzIHNlcmllcyBvbiB0b3Agb2YgdGhlIG1hc3Rl
ciBicmFuY2ggb2YKPj4+Pj4+Pj4+IGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhX3N0YWdl
LmdpdC8gPyBVbmZvcnR1bmF0ZWx5IHRoaXMgdjcgbm8gbG9uZ2VyCj4+Pj4+Pj4+PiBhcHBsaWVz
LiBTcGVjaWZpY2FsbHkgInJrdmRlYzogQWRkIHRoZSBWUDkgYmFja2VuZCIgZmFpbGVkIGluIGEg
Cj4+Pj4+Pj4+PiBub24tdHJpdmlhbAo+Pj4+Pj4+Pj4gbWFubmVyLgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBUaGlzIGlzIGEgYnJhbmNoIGZvciB5b3U6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGh0dHBzOi8vZ2l0
bGFiLmNvbGxhYm9yYS5jb20vbGludXgvZm9yLXVwc3RyZWFtLy0vdHJlZS92cDktdWFwaQo+Pj4+
Pj4+Cj4+Pj4+Pj4gSSdtIGdldHRpbmcgYSBidW5jaCBvZiBzcGFyc2Uvc21hdGNoIHdhcm5pbmdz
Ogo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzIGZvciBmaW5kaW5nIHRoaXMsIEkgd2lsbCBy
ZS1jcmVhdGUgdGhlIGJyYW5jaCBhbmQgbGV0IHlvdSBrbm93IG9uIGlyYy4KPj4+Pj4+IFNvbWUg
b2YgdGhlIGJlbG93IGFyZSAiZmFsc2UgcG9zaXRpdmVzLCBuYW1lbHk6Cj4+Pj4+Pgo+Pj4+Pj4g
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9vbWFwM2lzcC9vbWFwM2lzcC5oCj4+Pj4+PiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vdmVudXMvY29yZS5oCj4+Pj4+Cj4+Pj4+IEFoLCBzb3JyeSwg
SSB0aG91Z2ggSSBoYWQgZmlsdGVyZWQgdGhvc2Ugb3V0LiBPYnZpb3VzbHkgeW91IGNhbiBpZ25v
cmUgdGhvc2UuCj4+Pj4+Cj4+Pj4+IFBsZWFzZSBwb3N0IGEgdjguIFRoYXQgd2F5IHRoZSBzZXJp
ZXMgaXMgYXJjaGl2ZWQgb24gbG9yZS4gQW5kIGl0IHdvcmtzIGJldHRlcgo+Pj4+PiB3aXRoIHBh
dGNod29yay4KPj4+Pgo+Pj4+IFN1cmUsIG5vIHByb2JsZW0uIEFsc28gcGxlYXNlIHNlZSBiZWxv
dy4KPj4+Pgo+Pj4+Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoEhhbnMKPj4+
Pj4KPj4+Pj4+Cj4+Pj4+PiB3aGljaCBhcmUgbm90IHRvdWNoZWQgYnkgdGhlIHNlcmllcy4KPj4+
Pj4+Cj4+Pj4+PiBSZWdhcmRzLAo+Pj4+Pj4KPj4+Pj4+IEFuZHJ6ZWoKPj4+Pj4+Cj4+Pj4+Pj4g
c3BhcnNlOgo+Pj4+Pj4+IHJrdmRlYy9ya3ZkZWMtdnA5LmM6MTkwOjQzOiB3YXJuaW5nOiB2YXJp
YWJsZSAnZGVjX3BhcmFtcycgc2V0IGJ1dCBub3QgCj4+Pj4+Pj4gdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KPj4+Pj4+PiBya3ZkZWMvcmt2ZGVjLXZwOS5jOjI0NTo0Mzogd2Fybmlu
ZzogdmFyaWFibGUgJ2RlY19wYXJhbXMnIHNldCBidXQgbm90IAo+Pj4+Pj4+IHVzZWQgWy1XdW51
c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+Pj4+Pj4gU1BBUlNFOmhhbnRyby9oYW50cm9fcG9zdHBy
b2MuYyBoYW50cm8vaGFudHJvX3Bvc3Rwcm9jLmM6Mzc6MzU6IHdhcm5pbmc6IAo+Pj4+Pj4+IHN5
bWJvbCAnaGFudHJvX2cxX3Bvc3Rwcm9jX3JlZ3MnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBp
dCBiZSBzdGF0aWM/Cj4+Pj4+Pj4KPj4+Pj4+PiBzbWF0Y2g6Cj4+Pj4+Pj4gcmt2ZGVjL3JrdmRl
Yy12cDkuYzoxOTA6NDM6IHdhcm5pbmc6IHZhcmlhYmxlICdkZWNfcGFyYW1zJyBzZXQgYnV0IG5v
dCAKPj4+Pj4+PiB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+Pj4+Pj4+IHJrdmRl
Yy9ya3ZkZWMtdnA5LmM6MjQ1OjQzOiB3YXJuaW5nOiB2YXJpYWJsZSAnZGVjX3BhcmFtcycgc2V0
IGJ1dCBub3QgCj4+Pj4+Pj4gdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4+Pj4+
PiBya3ZkZWMvcmt2ZGVjLXZwOS5jOiBya3ZkZWMvcmt2ZGVjLXZwOS5jOjIzNiBpbml0X2ludHJh
X29ubHlfcHJvYnMoKSAKPj4+Pj4+PiBlcnJvcjogYnVmZmVyIG92ZXJmbG93ICdwdHInIDkwIDw9
IDkxCj4+Pj4KPj4+PiB0aGlzIGxvb2tzIGEgZmFsc2UgcG9zaXRpdmUuCj4+Pj4KPj4+PiBBIHBv
cnRpb24gb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgcHRyIGlzIGluZGV4ZWQgd2l0aCBpICogMjMg
KyBtLAo+Pj4+IHdoZXJlIGkgcmFuZ2VzIGZyb20gMCB0byAzLCBpbmNsdXNpdmUsIGFuZCBtIHJh
bmdlcyBmcm9tIDAgdG8gMjIsCj4+Pj4gaW5jbHVzaXZlIGlmIGkgPCAzLCBvdGhlcndpc2UgbSBy
YW5nZXMgZnJvbSAwIHRvIDIwLCBpbmNsdXNpdmUuCj4+Pj4gU28gdGhlIGxhcmdlc3QgaW5kZXgg
dmFsdWUgd2UgY29tcHV0ZSBlcXVhbHMgODkgKDMgKiAyMyArIDIwKS4KPj4+PiBCZWNhdXNlIHB0
ciBwb2ludHMgdG8gc29tZXRoaW5nIHRoYXQgaXMgYXQgbGVhc3QgOTAgYnl0ZXMgbGFyZ2UsCj4+
Pj4gODkgaXMgYSB2YWxpZCBpbmRleCBhbmQgbm8gZ3JlYXRlciBpbmRleCB3aWxsIGJlIGV2ZXIg
Y29tcHV0ZWQuCj4+Pgo+Pj4gQnV0IHdlIGRvIG5lZWQgdG8gZ2V0IHJpZCBvZiB0aGlzIHNtYXRj
aCB3YXJuaW5nLCBvdGhlcndpc2UgaXQgd2lsbCBwb2xsdXRlIHRoZQo+Pj4gbGlzdCBvZiBzbWF0
Y2ggd2FybmluZ3MuCj4+Pgo+Pj4gSSB3YXMgbG9va2luZyBhdCB0aGUgY29kZSBhbmQgd29uZGVy
IGlmIGl0IHdvdWxkbid0IG1ha2UgbW9yZSBzZW5zZSB0bwo+Pj4gbW92ZSB3cml0aW5nIHRvIHJr
cHJvYnMtPmludHJhX21vZGVbaV0udXZfbW9kZVtdIGludG8gYSBzZXBhcmF0ZSBmb3IgbG9vcDoK
Pj4+Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHY0bDJf
dnA5X2tmX3V2X21vZGVfcHJvYik7IGkrKykKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJrcHJvYnMtPmludHJhX21vZGVbaSAvIDIzXS51dl9tb2RlW2kgJSAyM10gPSAKPj4+
IHY0bDJfdnA5X2tmX3V2X21vZGVfcHJvYltpXTsKPj4+Cj4+PiBXb3VsZG4ndCB0aGF0IGRvIHRo
ZSBzYW1lIGFzIHRoZSBjdXJyZW50IGNvZGU/IEl0IGxvb2tzIHNpbXBsZXIgYXMgd2VsbC4KPj4+
Cj4+Cj4+IEkgdGhpbmsgaXQgd291bGQsIGJ1dCBJIHdvdWxkIHNsaWdodGx5IGNoYW5nZSB0aGUg
bG9vcDoKPj4KPj4gwqDCoMKgwqDCoGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHY0bDJfdnA5
X2tmX3V2X21vZGVfcHJvYik7IGkrKykgewo+IAo+IGFjdHVhbGx5LCBzaXplb2YodjRsMl92cDlf
a2ZfdXZfbW9kZV9wcm9iKQo+IAo+IAo+IAo+PiDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHU4ICpw
dHIgPSAoY29uc3QgdTggKil2NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2I7Cj4+Cj4+IMKgwqDCoMKg
wqDCoMKgwqAgcmtwcm9icy0+aW50cmFfbW9kZVtpIC8gMjNdLnV2X21vZGVbaSAlIDIzXSA9IHB0
cltpXTsKPj4gwqDCoMKgwqDCoH0KPj4KPj4gYmVjYXVzZSB2NGwyX3ZwOV9rZl91dl9tb2RlX3By
b2IgaXMgYWN0dWFsbHkgYSB1OFsxMF1bOV0uCj4+Cj4+IEkgd2lsbCBtYWtlIHN1Y2ggYSBjaGFu
Z2UgbG9jYWxseSBhbmQgdGVzdCB3aGV0aGVyIGl0IGNhdXNlcyByZWdyZXNzaW9ucy4KClRoaXMg
d29ya2VkLCBubyByZWdyZXNzaW9uczoKCglmb3IgKGkgPSAwOyBpIDwgc2l6ZW9mKHY0bDJfdnA5
X2tmX3V2X21vZGVfcHJvYik7ICsraSkgewoJCWNvbnN0IHU4ICpwdHIgPSAoY29uc3QgdTggKil2
NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2I7CgoJCXJrcHJvYnMtPmludHJhX21vZGVbaSAvIDIzXS51
dl9tb2RlW2kgJSAyM10gPSBwdHJbaV07Cgl9CgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

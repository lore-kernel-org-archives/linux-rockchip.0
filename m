Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A60C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 20:13:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E371A60C3D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 20:13:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E371A60C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KBAE82d8PNS+07UaXEo3mp0E4cDht9YlSi5vLibweM8=; b=QoQrdXNrZJB9fXgJixct3HUpk
	PFZpJyigPc8GL3XQXLD1xnzu24dyUZ5mOiDoNmGMIc3fnL/FoA+vy/AH41ABtRK2j+68BQuLmYyX1
	nARDnBcUuvJaTf8uTLymbueVfQ1CQWcDroiywPrbBKGtJkSdRUCOf4swk3DKFzjMIy3Cn0wk8ryHs
	yxD03COZuGRivKHMcCS7c+z5Oc6UlAeC2qhOTBc9Bq1Che2V8a9XuU8cMNvzD3/XwAVYUq9cgtJ9J
	/pBHaAkYv0jQ5TwCqooSgrOxtcu9LF0X924gQ4jXaTDCx80pK0C5Df4Xq9zhS1YIsA7VKHpb0AUGl
	RZNJjZnfQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEHaT-0006LD-9K; Mon, 22 Feb 2021 20:13:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEHaO-0006Jh-TC; Mon, 22 Feb 2021 20:13:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BEDC61F44AA3
Message-ID: <4a58c2122096b0ea43614e0ad44dbb1d77584782.camel@collabora.com>
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, John Cox
 <jc@kynesim.co.uk>
Date: Mon, 22 Feb 2021 17:13:28 -0300
In-Reply-To: <6364fa8a-db6a-af43-3660-7f0a7a3e0b79@collabora.com>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
 <9ql73glgbnjaqqsp8ulqenae5n82kfk0o3@4ax.com>
 <6364fa8a-db6a-af43-3660-7f0a7a3e0b79@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_151341_046557_A21D7ADF 
X-CRM114-Status: GOOD (  24.63  )
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
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDE3OjI4ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiAKPiBMZSAyMi8wMi8yMDIxIMOgIDE3OjE2LCBKb2huIENveCBhIMOpY3JpdMKgOgo+ID4g
PiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRz
IHRvIHNraXAgYXQKPiA+ID4gdGhlIGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+ID4g
PiBUaGF0IGlzIGEgaGFyZHdhcmUgc3BlY2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVk
aWNhdGVkIGNvbnRyb2wKPiA+ID4gdGhhdCB0aGlzIHB1cnBvc2UuCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3Jh
LmNvbT4KPiA+ID4gLS0tCj4gPiA+IGluY2x1ZGUvdWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250
cm9scy5oIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPiA+ID4gaW5jbHVkZS91YXBpL2xpbnV4
L3Y0bDItY29udHJvbHMuaMKgwqDCoMKgwqDCoMKgIHzCoCA1ICsrKysrCj4gPiA+IDIgZmlsZXMg
Y2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+ID4gPiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVk
ZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xzLmgKPiA+ID4gCj4gPiA+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMuaCBiL2luY2x1ZGUv
dWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250cm9scy5oCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzBiMTk5OWI3YWYzCj4gPiA+IC0tLSAvZGV2
L251bGwKPiA+ID4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xz
LmgKPiA+ID4gQEAgLTAsMCArMSwyMCBAQAo+ID4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAgV0lUSCBMaW51eC1zeXNjYWxsLW5vdGUgKi8KPiA+ID4gKwo+ID4gPiArI2lm
bmRlZiBfX1VBUElfSEFOVFJPX1Y0TDJfQ09OWVRST0xTX0hfXwo+ID4gPiArI2RlZmluZSBfX1VB
UElfSEFOVFJPX1Y0TDJfQ09OWVRST0xTX0hfXwo+ID4gPiArCj4gPiA+ICsjaW5jbHVkZSA8bGlu
dXgvdjRsMi1jb250cm9scy5oPgo+ID4gPiArI2luY2x1ZGUgPG1lZGlhL2hldmMtY3RybHMuaD4K
PiA+ID4gKwo+ID4gPiArI2RlZmluZSBWNEwyX0NJRF9IQU5UUk9fSEVWQ19FWFRSQV9ERUNPREVf
UEFSQU1TwqDCoMKgwqDCoMKgwqAoVjRMMl9DSURfVVNFUl9IQU5UUk9fQkFTRSArIDApCj4gPiA+
ICsKPiA+ID4gKy8qKgo+ID4gPiArICogc3RydWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9w
YXJhbXMgLSBleHRyYSBkZWNvZGUgcGFyYW1ldGVycyBmb3IgaGFudHJvIGRyaXZlcgo+ID4gPiAr
ICogQGhldmNfaGRyX3NraXBfbGVuZ2h0OsKgwqDCoMKgwqDCoGhlYWRlciBmaXJzdCBiaXRzIG9m
ZnNldAo+ID4gPiArICovCj4gPiA+ICtzdHJ1Y3QgaGFudHJvX2hldmNfZXh0cmFfZGVjb2RlX3Bh
cmFtcyB7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoF9fdTMywqDCoMKgaGV2Y19oZHJfc2tpcF9sZW5n
aHQ7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoF9fdTjCoMKgwqDCoHBhZGRpbmdbNF07Cj4gPiA+ICt9
Owo+ID4gQ2FuIHlvdSBjbGFyaWZ5IGhvdyBoZXZjX2hkcl9za2lwX2xlbmd0aCBkaWZmZXJzIGZy
b20KPiA+IHY0bDJfY3RybF9oZXZjX3NsaWNlX3BhcmFtcy5kYXRhX2JpdF9vZmZzZXQ/wqAgQXQg
Zmlyc3Qgc2lnaHQgdGhleSB3b3VsZAo+ID4gYXBwZWFyIHRvIGJlIHZlcnkgc2ltaWxhci4KPiAK
PiBoZXZjX2hkcl9za2lwX2xlbmd0aCBpcyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBzdGFy
dCBwb3NpdGlvbnMgb2YgMiBuYWxzLgo+IHY0bDJfY3RybF9oZXZjX3NsaWNlX3BhcmFtcy5kYXRh
X2JpdF9vZmZzZXQgaXMgdGhlIG9mZnNldCBvZiB0aGUgZGF0YSBpbiB0aGUgbmFsLgo+IAoKSSB0
aGluayB0aGUgaGFyZHdhcmUgaXMgd2VpcmQgZW5vdWdoIHRoYXQgd2Ugc2hvdWxkIGhhdmUgZGV0
YWlsZWQKZG9jdW1lbnRhdGlvbiB0byB0aGUgZXhhY3QgZXhwZWN0YXRpb24gZm9yIHRoaXMgY29u
dHJvbCwgaS5lLiBkZXRhaWxpbmcKZXhhY3RseSB3aGF0IHN5bnRheCBlbGVtZW50cyB1c2Vyc3Bh
Y2UgaXMgZXhwZWN0ZWQgdG8gcGFzcyB0aGUgZGlzdGFuY2UuCgpNYXliZSBkb2N1bWVudGluZyB0
aGlzIHNvbWV3aGVyZSBpbiBEb2N1bWVudGF0aW9uLy4uLi9tZWRpYS9zb21ldGhpbmcsCmFuZCB0
aGVuIGxpbmtpbmcgdGhhdCBpbiB0aGUga2VybmVsLWRvYyBjb21tZW50IGZvciBoYW50cm9faGV2
Y19leHRyYV9kZWNvZGVfcGFyYW1zLgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

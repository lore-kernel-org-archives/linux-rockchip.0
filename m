Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E0ADC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 20:16:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C168364D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 20:16:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C168364D99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ek3mHZgo72BjIeuQZOpgOpCJMfSjVtyaNJ409Y2RO2k=; b=AoFyLHVtxYLGJuNPpY4MqtC46
	iDcREI1+IjneNxnMD7qA2krpJsKJDlI1ZzMzgSuGx060IfwqFBdOMyT5jEei86ZCWcT0kTtz3osyq
	GZ5vx6hSaZtv7991Z96EKyRp3TI6LpgfICDIQfajpJ4rPjTQSb6vuLkrG+MgOZAHX2zhZJ1uToWhU
	m3PFK9r1sCxK1/7kYhuIrCwUmLDnZ+Ge1ngfqxERvpVZvphqAT/SY+OXPxRJ2WpRIjpGHp2gRCoLA
	vLXAL3pltLCpstBYQ3OL8DPzDBbZ6ywTr3BT7Od5WAwXM2oBLE+0DR/usFAEqNHKvH6bXOXb7fMEn
	fouKUG5mQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEHcy-0006eX-II; Mon, 22 Feb 2021 20:16:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEHcu-0006db-3i; Mon, 22 Feb 2021 20:16:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 72CF91F44ADB
Message-ID: <fbf2e6b4793f2f09d7ef7b0fe68f56f0ff49a3f1.camel@collabora.com>
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, John Cox
 <jc@kynesim.co.uk>
Date: Mon, 22 Feb 2021 15:16:02 -0500
In-Reply-To: <6364fa8a-db6a-af43-3660-7f0a7a3e0b79@collabora.com>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
 <9ql73glgbnjaqqsp8ulqenae5n82kfk0o3@4ax.com>
 <6364fa8a-db6a-af43-3660-7f0a7a3e0b79@collabora.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_151616_250842_0A4B5F5F 
X-CRM114-Status: GOOD (  27.98  )
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
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgbHVuZGkgMjIgZsOpdnJpZXIgMjAyMSDDoCAxNzoyOCArMDEwMCwgQmVuamFtaW4gR2FpZ25h
cmQgYSDDqWNyaXTCoDoKPiAKPiBMZSAyMi8wMi8yMDIxIMOgIDE3OjE2LCBKb2huIENveCBhIMOp
Y3JpdMKgOgo+ID4gPiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51
bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPiA+ID4gdGhlIGJlZ2lubmluZyBvZiB0aGUgc2xpY2Ug
aGVhZGVyLgo+ID4gPiBUaGF0IGlzIGEgaGFyZHdhcmUgc3BlY2lmaWMgcmVxdWlyZW1lbnQgc28g
Y3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPiA+ID4gdGhhdCB0aGlzIHB1cnBvc2UuCj4gPiA+
IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KPiA+ID4gLS0tCj4gPiA+IGluY2x1ZGUvdWFwaS9saW51eC9oYW50
cm8tdjRsMi1jb250cm9scy5oIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPiA+ID4gaW5jbHVk
ZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaMKgwqDCoMKgwqDCoMKgIHzCoCA1ICsrKysrCj4g
PiA+IDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+ID4gPiBjcmVhdGUgbW9kZSAx
MDA2NDQgaW5jbHVkZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xzLmgKPiA+ID4gCj4g
PiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMu
aAo+ID4gPiBiL2luY2x1ZGUvdWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250cm9scy5oCj4gPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzBiMTk5OWI3
YWYzCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2hh
bnRyby12NGwyLWNvbnRyb2xzLmgKPiA+ID4gQEAgLTAsMCArMSwyMCBAQAo+ID4gPiArLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgV0lUSCBMaW51eC1zeXNjYWxsLW5vdGUgKi8K
PiA+ID4gKwo+ID4gPiArI2lmbmRlZiBfX1VBUElfSEFOVFJPX1Y0TDJfQ09OWVRST0xTX0hfXwo+
ID4gPiArI2RlZmluZSBfX1VBUElfSEFOVFJPX1Y0TDJfQ09OWVRST0xTX0hfXwo+ID4gPiArCj4g
PiA+ICsjaW5jbHVkZSA8bGludXgvdjRsMi1jb250cm9scy5oPgo+ID4gPiArI2luY2x1ZGUgPG1l
ZGlhL2hldmMtY3RybHMuaD4KPiA+ID4gKwo+ID4gPiArI2RlZmluZQo+ID4gPiBWNEwyX0NJRF9I
QU5UUk9fSEVWQ19FWFRSQV9ERUNPREVfUEFSQU1TwqDCoMKgwqDCoMKgwqAoVjRMMl9DSURfVVNF
Ul9IQU5UUk9fQkFTRQo+ID4gPiArIDApCj4gPiA+ICsKPiA+ID4gKy8qKgo+ID4gPiArICogc3Ry
dWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJhbXMgLSBleHRyYSBkZWNvZGUgcGFyYW1l
dGVycyBmb3IKPiA+ID4gaGFudHJvIGRyaXZlcgo+ID4gPiArICogQGhldmNfaGRyX3NraXBfbGVu
Z2h0OsKgwqDCoMKgwqDCoGhlYWRlciBmaXJzdCBiaXRzIG9mZnNldAo+ID4gPiArICovCj4gPiA+
ICtzdHJ1Y3QgaGFudHJvX2hldmNfZXh0cmFfZGVjb2RlX3BhcmFtcyB7Cj4gPiA+ICvCoMKgwqDC
oMKgwqDCoF9fdTMywqDCoMKgaGV2Y19oZHJfc2tpcF9sZW5naHQ7Cj4gPiA+ICvCoMKgwqDCoMKg
wqDCoF9fdTjCoMKgwqDCoHBhZGRpbmdbNF07Cj4gPiA+ICt9Owo+ID4gQ2FuIHlvdSBjbGFyaWZ5
IGhvdyBoZXZjX2hkcl9za2lwX2xlbmd0aCBkaWZmZXJzIGZyb20KPiA+IHY0bDJfY3RybF9oZXZj
X3NsaWNlX3BhcmFtcy5kYXRhX2JpdF9vZmZzZXQ/wqAgQXQgZmlyc3Qgc2lnaHQgdGhleSB3b3Vs
ZAo+ID4gYXBwZWFyIHRvIGJlIHZlcnkgc2ltaWxhci4KPiAKPiBoZXZjX2hkcl9za2lwX2xlbmd0
aCBpcyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBzdGFydCBwb3NpdGlvbnMgb2YgMiBuYWxz
Lgo+IHY0bDJfY3RybF9oZXZjX3NsaWNlX3BhcmFtcy5kYXRhX2JpdF9vZmZzZXQgaXMgdGhlIG9m
ZnNldCBvZiB0aGUgZGF0YSBpbiB0aGUKPiBuYWwuCgpNb3JlIHByZWNpc2VseSAoYW5kIGRvYyBz
aG91bGQgcmVmbGVjdCB0aGlzIHBsZWFzZSksIHRoZSBIYW50cm8gc2tpcCBpcyB0aGUKZGlzdGFu
Y2UgaW4gYml0cyBmb3IgZGF0YSBpbiB0aGUgc2xpY2Vfc2VnbWVudF9oZWFkZXIoKSBoZWFkZXIg
c3ludGF4IGFmdGVyCidzbGljZV90eXBlJy4gVGhlIHNsaWNlX3NlZ21lbnRfaGVhZGVyX2V4dGVu
c2lvbl9sZW5ndGggYW5kIGJ5dGVzIHNlZW1zIGV4Y2x1ZGVkCmZyb20gcmVhZGluZyB0aGUgcmVm
ZXJlbmNlIGNvZGUsIHdlIGRvbid0IGtub3cgaWYgdGhpcyBpcyBiZWNhdXNlIHRoaXMgZXh0ZW5k
ZWQKaGVhZGVyIGlzIHNpbXBseSBub3Qgc3VwcG9ydGVkIG9yIGlmIGl0J3MgYmVpbmcgcGFyc2Vk
IGJ5IHRoZSBIVy4gSSBiZWxpZXZlIHdlCm5lZWQgdG8gY2xhcmlmeSB0aGlzIGJlZm9yZSBtZXJn
aW5nIHRoZSBjb250cm9sLgoKSWYgZGVwZW5kZW50X3NsaWNlX3NlZ21lbnRfZmxhZyBpcyBzZXQs
IHRoZW4gdGhpcyBvZmZzZXRzIHNlZW1zIHRvIGJlIDAuIFRoaXMKZmFjdCBhbHNvIG5lZWRzIGZ1
cnRoZXIgaW52ZXN0aWdhdGlvbiBzaW5jZSB0aGlzIGZsYWcsIGFzIHlvdSBtZW50aW9uLCBpc24n
dApwYXNzZWQgYW5kIGlzIG5lZWRlZCB0byBkZWNpZGUgd2hldGhlciB0byBwYXJzZSBvciBub3Qg
dGhlIHNsaWNlX3R5cGUuCgpCZW5qYW1pbiwgSSB0aGluayB3ZSBuZWVkIHNvbWUgSFcgZmFjdCBj
aGVja2luZyBmb3IgYWxsIHRoZXNlLCBhbmQgZmluYWxseQpiZXR0ZXIgZG9jdW1lbnRhdGlvbi4K
Cj4gCj4gCj4gQmVuamFtaW4KPiAKPiA+IAo+ID4gUmVnYXJkcwo+ID4gCj4gPiBKb2huIENveAo+
ID4gCj4gPiA+ICsjZW5kaWYKPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC92
NGwyLWNvbnRyb2xzLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdjRsMi0KPiA+ID4gY29udHJvbHMu
aAo+ID4gPiBpbmRleCAwMzljMGQ3YWRkMWIuLmNlZDc0ODZjN2Y0NiAxMDA2NDQKPiA+ID4gLS0t
IGEvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+ID4gPiArKysgYi9pbmNsdWRl
L3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oCj4gPiA+IEBAIC0yMDksNiArMjA5LDExIEBAIGVu
dW0gdjRsMl9jb2xvcmZ4IHsKPiA+ID4gwqAgKiBXZSByZXNlcnZlIDEyOCBjb250cm9scyBmb3Ig
dGhpcyBkcml2ZXIuCj4gPiA+IMKgICovCj4gPiA+ICNkZWZpbmUgVjRMMl9DSURfVVNFUl9DQ1Nf
QkFTRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChWNEwyX0NJRF9VU0VSX0JB
U0UgKwo+ID4gPiAweDEwZjApCj4gPiA+ICsvKgo+ID4gPiArICogVGhlIGJhc2UgZm9yIEhBTlRS
TyBkcml2ZXIgY29udHJvbHMuCj4gPiA+ICsgKiBXZSByZXNlcnZlIDMyIGNvbnRyb2xzIGZvciB0
aGlzIGRyaXZlci4KPiA+ID4gKyAqLwo+ID4gPiArI2RlZmluZSBWNEwyX0NJRF9VU0VSX0hBTlRS
T19CQVNFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChWNEwyX0NJRF9VU0VSX0JBU0UgKwo+
ID4gPiAweDExNzApCj4gPiA+IAo+ID4gPiAvKiBNUEVHLWNsYXNzIGNvbnRyb2wgSURzICovCj4g
PiA+IC8qIFRoZSBNUEVHIGNvbnRyb2xzIGFyZSBhcHBsaWNhYmxlIHRvIGFsbCBjb2RlYyBjb250
cm9scwo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

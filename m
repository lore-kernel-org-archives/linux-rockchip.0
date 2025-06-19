Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E35CC7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 17:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bekZ2KkSkP2orUG62jLbd5VISQfZbiq9plbc7BD14M=; b=VWr6AsxQZTMx5D
	z03NbgTa/Eb8GPh42WCkhAluh377wF2828bZKsPdXoOOWoG5KjvvLeAMbHJFVBkSk80bqvRQ0DNQN
	JGFeMzzajHmgNHRUfvBl5K9hIkn+Sdm7dcOwajPlnZ/q7MR0khFvgMLJdkp9eCcW4ICCKJlaP9boi
	D88LQ8DYHTLeWxf7I+D+Bk4wCXMpBlG6uFf1acndFjQHVVqP+tcw3V5cRFD7M1B36WeIZI9nIgJkb
	ObM9OLOWaco2dxkSGcCxW6Dp916U8CI3Rj2FrPjunZcQgQnViynwiJRs2FXgP26moDqLF0OJ7OtVG
	y/1bWfO4NGcpFo/5klxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSIgt-0000000Dhpr-2etj;
	Thu, 19 Jun 2025 17:04:43 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSH03-0000000DNxP-0dv0;
	Thu, 19 Jun 2025 15:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750346180;
	bh=XqbG1XOiL6qsyT/mbeOSE4rpnh2l2DOkWH/Yqj+Cv9o=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=kelXxDEN/QdNHQKOrU58SnIzr+lEWmj8NR0M3TjYD6c4pwh5GIDWFI6zPOOZq6hYe
	 w0olGxtPwgdjA2DGyxuRYVsrbZea59M+zKjKQ9X68Iwwp7UUE90klv8B8zWX4Uaq0f
	 YWPngXinkEPdoYEw5W0qp+lpTYMIE1P4beue8AMetujUtz74DwMlVzV7A7WRKDBZyw
	 NB+ZWX/7jK2YuH4+hIDKk8uDDFLgl/HrabTZeSbqPRwAu/7HbSI8CSQWcpmbsA5YVb
	 Ln1wJXr5BuZlzx+PjI38u8eaO87Ub10ebGV5WC3CdovpObP+75yuTB8+J/GtACu/BP
	 KGwyjN9daMBqg==
Received: from [IPv6:2606:6d00:17:b699::5ac] (unknown [IPv6:2606:6d00:17:b699::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D137217E09F0;
	Thu, 19 Jun 2025 17:16:16 +0200 (CEST)
Message-ID: <a66e3d27ee427710ed3de8ce89fa3aca40dced03.camel@collabora.com>
Subject: Re: [PATCH v4 4/6] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
	20250325213303.826925-5-detlev.casanova@collabora.com
Cc: alchark@gmail.com, andrzej.p@collabora.com, cassel@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org,
 dmitry.perchanov@intel.com, 	dsimic@manjaro.org,
 ezequiel@vanguardiasur.com.ar, gregkh@linuxfoundation.org, 
	heiko@sntech.de, hverkuil@xs4all.nl, jacopo.mondi@ideasonboard.com, 
	jeanmichel.hautbois@ideasonboard.com, jonas@kwiboo.se,
 kernel@collabora.com, 	kieran.bingham@ideasonboard.com, krzk+dt@kernel.org,
 	laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, Jianfeng
 Liu	 <liujianfeng1994@gmail.com>, mchehab@kernel.org,
 naush@raspberrypi.com, 	robh@kernel.org, sakari.ailus@linux.intel.com,
 sebastian.reichel@collabora.com, 	tomi.valkeinen@ideasonboard.com,
 umang.jain@ideasonboard.com
Date: Thu, 19 Jun 2025 11:16:15 -0400
In-Reply-To: <5900973.DvuYhMxLoT@trenzalore>
References: <9f098eab-7b98-4827-8538-3cab0e8d7c63@gmail.com>
	 <5900973.DvuYhMxLoT@trenzalore>
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_081623_348839_EF73B3CD 
X-CRM114-Status: GOOD (  20.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

TGUgamV1ZGkgMTkganVpbiAyMDI1IMOgIDEwOjM5IC0wNDAwLCBEZXRsZXYgQ2FzYW5vdmEgYSDD
qWNyaXTCoDoKPiBIaSBKaWFuZmVuZywKPiAKPiBUaGlzIHBhdGNoIHNldCBpcyBub3cgYcKgIGJp
dCBvdXRkYXRlZC4gSSB3aWxsIHNvb24gc2VuZCBhIG5ldyB2ZXJzaW9uIHRoYXQgeW91IAo+IGNh
biBmaW5kIGF0IFsxXS4KPiBUaGF0IGJlaW5nIHNhaWQsIHlvdSBtYXkgYmUgcmlnaHQuIHdpdGhv
dXQgYW4gaW9tbXUsIGl0IHdvdWxkIHBhbmljIGhlcmUgCj4gKGFsdGhvdWdoIHRoZSBpb21tdSBz
aG91bGQgcmVhbGx5IGJlIHVzZWQpLgoKTGV0J3MgbWFrZSBzdXJlIHRvIHRlc3QgaXQgaW4gdGhl
IG5leHQgc2VyaWVzLiBPbmUgc2hvdWxkIGJlIGFibGUgdG8gY29tbWVudCBvdXQKdGhlIG1tdSBu
b2RlIGluIHRoZSBEVCwgYW5kIHRoZW4gaXQgc2hvdWxkIHdvcmsgd2l0aCBDTUEgdHJhbnNwYXJl
bnRseS4KCnRoYW5rcywKTmljb2xhcwoKPiAKPiBbMV06IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9y
YS5jb20vZGV0bGV2L2xpbnV4Ly0vdHJlZS9hZGQtdmRwdTM4MS1hbmQtMzgzLXRvLXJrdmRlYwo+
IAo+IFJlZ2FyZHMsCj4gRGV0bGV2Cj4gCj4gT24gVGh1cnNkYXksIDE5IEp1bmUgMjAyNSAwNTox
OTozMiBFRFQgSmlhbmZlbmcgTGl1IHdyb3RlOgo+ID4gSGkgRGV0bGV2LAo+ID4gCj4gPiBPbiBU
dWUsIDI1IE1hciAyMDI1IDE3OjIyOjIwIC0wNDAwLCBEZXRsZXYgQ2FzYW5vdmEgd3JvdGU6Cj4g
PiDCoD4rwqDCoMKgwqDCoMKgwqAgY2FzZSBSS1ZERUMyX0FMTE9DX1NSQU06Cj4gPiDCoD4rwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB2aXJ0X2FkZHIgPSAodW5zaWduZWQgbG9uZyljdHgtPnJjYl9i
dWZzW2ldLmNwdTsKPiA+IMKgPisKPiA+IMKgPivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlvbW11
X3VubWFwKHJrdmRlYy0+aW9tbXVfZG9tYWluLCB2aXJ0X2FkZHIsIHJjYl9zaXplKQo+ID4gCj4g
PiBJJ20gdGVzdGluZyB5b3VyIHBhdGNoIHdpdGggZmZtcGVnIHBhdGNoZWQgd2l0aCB2NGwyLXJl
cXVlc3QgcGF0Y2hlc1sxXSwKPiA+IGFuZCBJIHVzdWFsbHkKPiA+IAo+ID4gZ2V0IGtlcm5lbCBw
YW5pYyBoZXJlLiBBZnRlciBjaGVja2luZyBya3ZkZWMtPmlvbW11X2RvbWFpbiBiZWZvcmUKPiA+
IHJ1bm5pbmcgaW9tbXVfdW5tYXAsCj4gPiAKPiA+IEkgY2FuIHBhc3MgZmx1c3RlciBmZm1wZWcg
djRsMi1yZXF1ZXN0IHRlc3QuIEhlcmUgaXMgbXkgcGF0Y2ggYmFzZWQgb24KPiA+IHlvdXIgY29t
bWl0Ogo+ID4gCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JrdmRlYzIvcmt2ZGVjMi5jCj4gPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmt2ZGVjMi9ya3ZkZWMyLmMKPiA+IGluZGV4IDc1NzY4NTYxMzk5Li4xMjJiY2RjZWJk
NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVj
Mi9ya3ZkZWMyLmMKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2
ZGVjMi9ya3ZkZWMyLmMKPiA+IEBAIC02ODEsOCArNjgxLDggQEAgc3RhdGljIHZvaWQgcmt2ZGVj
Ml9mcmVlX3JjYihzdHJ1Y3Qgcmt2ZGVjMl9jdHggKmN0eCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN3aXRjaCAoY3R4LT5yY2JfYnVmc1tpXS50eXBlKSB7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNlIFJLVkRFQzJfQUxMT0NfU1JBTToKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2aXJ0X2Fk
ZHIgPSAodW5zaWduZWQgbG9uZyljdHgtPnJjYl9idWZzW2ldLmNwdTsKPiA+IC0KPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpb21tdV91bm1hcChya3Zk
ZWMtPmlvbW11X2RvbWFpbiwgdmlydF9hZGRyLAo+ID4gcmNiX3NpemUpOwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChya3ZkZWMtPmlvbW11X2Rv
bWFpbikKPiA+ICsgaW9tbXVfdW5tYXAocmt2ZGVjLT5pb21tdV9kb21haW4sIHZpcnRfYWRkciwg
cmNiX3NpemUpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGdlbl9wb29sX2ZyZWUoY3R4LT5kZXYtPnNyYW1fcG9vbCwgdmlydF9hZGRyLAo+ID4g
cmNiX3NpemUpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJyZWFrOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSBS
S1ZERUMyX0FMTE9DX0RNQToKPiA+IAo+ID4gCj4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL2Ft
YXppbmdmYXRlL0ZGbXBlZy9jb21taXRzL242LjEuMS1uZXctcGF0Y2hlcy8KPiA+IAo+ID4gCj4g
PiBCZXN0IHJlZ2FyZHMsCj4gPiAKPiA+IEppYW5mZW5nCj4gCj4gCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1367C433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 10:53:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DD1C20771
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 10:53:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CSq3fTSG";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="rvbUPfLG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DD1C20771
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yHH0wyGcKyfb6aFSROQp1uQSNgjmkePtjGOE3BqM1dA=; b=CSq3fTSGYAZZ+z7VqDA1L7oqj
	iBei1af4eodTKie04Xq/kcABAXYOeMD+9XLX0izmpwCXNa1iiwMR8TB30S/LMhbTo3M97c64l2FGX
	7ZevFvYgg7LrUT3tpsXVuT9Y+4xWuA/YFWIkrxEvkRDyQJErdAdRdhKu40km6BW2z0IZHk591Kuis
	XBrCKByIBgk1AkT2hx/p7w2XQ/lD9/iYtLG03i5OFNFNnw/04/9zYEVBLy3yPnS273wwYZ5GJpi+a
	9okf5s6zBw49sGAzeGTscGNsQGJfYD9h52d9dQhmuSzGHPk+u4Na0ldNulAe8e+yqK/IaFSP+XJeU
	qGKs/2oRw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6ArW-00072n-6C; Thu, 13 Aug 2020 10:53:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6ArS-00071x-P7
 for linux-rockchip@lists.infradead.org; Thu, 13 Aug 2020 10:53:31 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 21FE3551;
 Thu, 13 Aug 2020 12:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597316009;
 bh=0h0xRWiirvzccj+w77A9EqiAIwgMnUAgTTYO4/jWh2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rvbUPfLGsqUkw0SK0tLPRIX4S8fIBZaRn2fBtODdGf7olurCOBzM/AXaBkNRW6fOT
 jyd1TXpVJsW4OIHeMQzMI/tkZ+w6EQb6ScDy4peqU7LwwHuZPB/gKameKOqYpDBtLF
 i/k4E7/qFDMauJywO0+re1c4rmfuIswPpfZvx2Wk=
Date: Thu, 13 Aug 2020 13:53:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
Message-ID: <20200813105314.GA6258@pendragon.ideasonboard.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
 <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
 <e680474a-1b47-7904-b7ab-5a026d0db05f@collabora.com>
 <CAAFQd5CHK+c=zED-evW3sqgF+WpuAYW6M8kvPZCVCrf2_KHG8A@mail.gmail.com>
 <16ea1aba-0b0d-6bcf-8e72-5e253ead9218@arm.com>
 <4d90a5d1-25a7-ab49-f3e5-2d54b6b8ecba@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d90a5d1-25a7-ab49-f3e5-2d54b6b8ecba@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_065330_954139_99DDE97D 
X-CRM114-Status: GOOD (  34.77  )
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
Cc: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpPbiBUaHUsIEF1ZyAxMywgMjAyMCBhdCAxMjo0NDozNVBNICswMjAwLCBEYWZuYSBI
aXJzY2hmZWxkIHdyb3RlOgo+IEFtIDI2LjA2LjIwIHVtIDE4OjU4IHNjaHJpZWIgUm9iaW4gTXVy
cGh5Ogo+ID4gT24gMjAyMC0wNi0yNiAxNjo1OSwgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gPj4gT24g
RnJpLCBKdW4gMjYsIDIwMjAgYXQgNTo0OCBQTSBEYWZuYSBIaXJzY2hmZWxkIHdyb3RlOgo+ID4+
PiBPbiAyNi4wNi4yMCAxNjowMywgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gPj4+PiBPbiBGcmksIEp1
biAyNiwgMjAyMCBhdCAzOjMyIFBNIFJvYmluIE11cnBoeSB3cm90ZToKPiA+Pj4+PiBPbiAyMDIw
LTA2LTI1IDE4OjQyLCBEYWZuYSBIaXJzY2hmZWxkIHdyb3RlOgo+ID4+Pj4+PiBJbiB0aGUgc3Rv
cF9zdHJlYW1pbmcgY2FsbGJhY2sgJ3JraXNwMV9wYXJhbXNfdmIyX3N0b3Bfc3RyZWFtaW5nJwo+
ID4+Pj4+PiB0aGVyZSBpcyBubyBuZWVkIHRvIHJlbGVhc2UgdGhlIGxvY2sgJ2NvbmZpZ19sb2Nr
JyBhbmQgdGhlbiBhY3F1aXJlCj4gPj4+Pj4+IGl0IGFnYWluIGF0IGVhY2ggaXRlcmF0aW9uIHdo
ZW4gcmV0dXJuaW5nIGFsbCBidWZmZXJzLgo+ID4+Pj4+PiBUaGlzIGlzIGJlY2F1c2UgdGhlIHN0
cmVhbSBpcyBhYm91dCB0byBlbmQgYW5kIHRoZXJlIGlzIG5vIG5lZWQKPiA+Pj4+Pj4gdG8gbGV0
IHRoZSBpc3IgYWNjZXNzIGEgYnVmZmVyLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYS5oaXJzY2hmZWxkQGNvbGxhYm9yYS5jb20+Cj4gPj4+
Pj4+IC0tLQo+ID4+Pj4+PiDCoMKgwqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lz
cDEtcGFyYW1zLmMgfCA3ICstLS0tLS0KPiA+Pj4+Pj4gwqDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkKPiA+Pj4+Pj4KPiA+Pj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtcGFyYW1zLmMKPiA+Pj4+Pj4gaW5kZXggYmYw
MDZkYmVlZTJkLi41MTY5YjAyNzMxZjEgMTAwNjQ0Cj4gPj4+Pj4+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4gPj4+Pj4+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4gPj4+Pj4+IEBAIC0xNDg4LDE5
ICsxNDg4LDEzIEBAIHN0YXRpYyB2b2lkIHJraXNwMV9wYXJhbXNfdmIyX3N0b3Bfc3RyZWFtaW5n
KHN0cnVjdCB2YjJfcXVldWUgKnZxKQo+ID4+Pj4+PiDCoMKgwqDCoMKgwqDCoCAvKiBzdG9wIHBh
cmFtcyBpbnB1dCBmaXJzdGx5ICovCj4gPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19p
cnFzYXZlKCZwYXJhbXMtPmNvbmZpZ19sb2NrLCBmbGFncyk7Cj4gPj4+Pj4+IMKgwqDCoMKgwqDC
oMKgIHBhcmFtcy0+aXNfc3RyZWFtaW5nID0gZmFsc2U7Cj4gPj4+Pj4+IC3CoMKgwqDCoCBzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZwYXJhbXMtPmNvbmZpZ19sb2NrLCBmbGFncyk7Cj4gPj4+Pj4+
Cj4gPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBSS0lTUDFfSVNQX1BBUkFN
U19SRVFfQlVGU19NQVg7IGkrKykgewo+ID4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNwaW5fbG9ja19pcnFzYXZlKCZwYXJhbXMtPmNvbmZpZ19sb2NrLCBmbGFncyk7Cj4gPj4+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWxpc3RfZW1wdHkoJnBhcmFtcy0+
cGFyYW1zKSkgewo+ID4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJ1ZiA9IGxpc3RfZmlyc3RfZW50cnkoJnBhcmFtcy0+cGFyYW1zLAo+ID4+Pj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgcmtpc3AxX2J1ZmZl
ciwgcXVldWUpOwo+ID4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxpc3RfZGVsKCZidWYtPnF1ZXVlKTsKPiA+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcGFyYW1z
LT5jb25maWdfbG9jaywKPiA+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZs
YWdzKTsKPiA+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4g
Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnBhcmFtcy0+Y29uZmlnX2xvY2ssCj4gPj4+Pj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmbGFncyk7Cj4gPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4gPj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB9Cj4gPj4+Pj4KPiA+Pj4+PiBKdXN0IHNraW1taW5nIHRocm91Z2gg
b3V0IG9mIGlkbGUgY3VyaW9zaXR5IEkgd2FzIGdvaW5nIHRvIGNvbW1lbnQgdGhhdAo+ID4+Pj4+
IGlmIHlvdSBlbmQgdXAgd2l0aCB0aGlzIHBhdHRlcm46Cj4gPj4+Pj4KPiA+Pj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgaWYgKCF4KSB7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAvL2RvIHN0dWZmCj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4g
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPiA+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgfQo+ID4+Pj4+Cj4gPj4+Pj4gaXQgd291bGQgYmUgYmV0dGVyIGFz
Ogo+ID4+Pj4+Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh4KQo+ID4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgIC8vZG8gc3R1ZmYKPiA+Pj4+Pgo+ID4+Pj4+IEhvd2V2ZXIgSSB0aGVuIHdlbnQgYW5k
IGxvb2tlZCBhdCB0aGUgd2hvbGUgZnVuY3Rpb24gYW5kIGZyYW5rbHkgaXQncyBhCj4gPj4+Pj4g
Yml0IG9mIGEgV1RGLiBBcyBiZXN0IEkgY291bGQgZGVjaXBoZXIsIHRoaXMgd2hvbGUgY3Jhenkg
bG9vcCBhcHBlYXJzIHRvCj4gPj4+Pj4gYmUgYSBiYXJvcXVlIHJlaW52ZW50aW9uIG9mOgo+ID4+
Pj4+Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSgm
cGFyYW1zLT5wYXJhbXMsIC4uLiwgYnVmKSB7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBsaXN0X2RlbCgmYnVmLT5xdWV1ZSk7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YjJfYnVmZmVyX2RvbmUoJmJ1Zi0+dmIudmIyX2J1Ziwg
VkIyX0JVRl9TVEFURV9FUlJPUik7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiA+Pj4g
SGksIGluZGVlZCB0aGlzIGlzIGEgbXVjaCBzaW1wbGVyIGltcGxlbWVudGF0aW9uLCBncmVwaW5n
ICdyZXR1cm5fYWxsX2J1ZmZlcnMnCj4gPj4+IEkgc2VlIHRoYXQgbWFueSBkcml2ZXJzIGltcGxl
bWVudCBpdCB0aGlzIHdheS4KPiA+Pj4gdGhhbmtzIQo+ID4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gKGFz
c3VtaW5nIGZyb20gY29udGV4dCB0aGF0IHRoZSBsaXN0IHNob3VsZCBuZXZlciBjb250YWluIG1v
cmUgdGhhbgo+ID4+Pj4+IFJLSVNQMV9JU1BfUEFSQU1TX1JFUV9CVUZTX01BWCBlbnRyaWVzIGlu
IHRoZSBmaXJzdCBwbGFjZSkKPiA+Pj4+Cj4gPj4+PiBPciBpZiB3ZSB3YW50IHRvIGF2b2lkIGRp
c2FibGluZyB0aGUgaW50ZXJydXB0cyBmb3IgdGhlIHdob2xlCj4gPj4+PiBpdGVyYXRpb24sIHdl
IGNvdWxkIHVzZSBsaXN0X3NwbGljZSgpIHRvIG1vdmUgYWxsIHRoZSBlbnRyaWVzIG9mCj4gPj4+
Cj4gPj4+IEJ1dCB0aGlzIGNvZGUgcnVucyB3aGVuIHVzZXJzcGFjZSBhc2tzIHRvIHN0b3AgdGhl
IHN0cmVhbWluZyBzbyBJIGRvbid0Cj4gPj4+IHRoaW5rIGl0IGlzIGltcG9ydGFudCBhdCB0aGF0
IHN0YWdlIHRvIGFsbG93IHRoZSBpbnRlcnJ1cHRzLgo+ID4+Cj4gPj4gSXQncyBnZW5lcmFsbHkg
YSBnb29kIHByYWN0aWNlIHRvIHJlZHVjZSB0aGUgdGltZSBzcGVudCB3aXRoCj4gPj4gaW50ZXJy
dXB0cyBkaXNhYmxlZC4gRGlzYWJsaW5nIHRoZSBpbnRlcnJ1cHRzIHByZXZlbnRzIHRoZSBzeXN0
ZW0gZnJvbQo+ID4+IGhhbmRsaW5nIGV4dGVybmFsIGV2ZW50cywgaW5jbHVkaW5nIHRpbWVyIGlu
dGVycnVwdHMsIGFuZCBzY2hlZHVsaW5nCj4gPj4gaGlnaGVyIHByaW9yaXR5IHRhc2tzLCBpbmNs
dWRpbmcgcmVhbCB0aW1lIG9uZXMuIEhvdyBtdWNoIHRoZSBzeXN0ZW0KPiA+PiBydW5zIHdpdGgg
aW50ZXJydXB0cyBkaXNhYmxlZCBpcyBvbmUgb2YgdGhlIGZhY3RvcnMgZGV0ZXJtaW5pbmcgdGhl
Cj4gPj4gZ2VuZXJhbCBzeXN0ZW0gbGF0ZW5jeS4KPiA+IAo+ID4gUmlnaHQsIHdpdGggdGhlIHdh
eSB3ZSBoYW5kbGUgaW50ZXJydXB0IGFmZmluaXR5IG9uIEFybSBhbiBJUlEgY2FuJ3QKPiA+IHRh
cmdldCBtdWx0aXBsZSBDUFVzIGluIGhhcmR3YXJlLCBzbyBhbnkgdGltZSBzcGVudCB3aXRoIElS
UXMKPiA+IGRpc2FibGVkIG1pZ2h0IGJlIHByZXZlbnRpbmcgb3RoZXIgZGV2aWNlcycgaW50ZXJy
dXB0cyBmcm9tIGJlaW5nCj4gPiB0YWtlbiBldmVuIGlmIHRoZXkncmUgbm90IGV4cGxpY2l0bHkg
YWZmaW5lIHRvIHRoZSBjdXJyZW50IENQVS4KPiA+IAo+ID4gTm93IHRoYXQgSSd2ZSBsb29rZWQs
IGl0IGFwcGVhcnMgdGhhdCB2YjJfYnVmZmVyX2RvbmUoKSBtaWdodCBlbmQgdXAKPiA+IHBlcmZv
cm1pbmcgYSBETUEgc3luYyBvbiB0aGUgYnVmZmVycywgd2hpY2gsIGlmIGl0IGhhcyB0byBkbwo+
ID4gb3JkZXItb2YtbWVnYWJ5dGVzIHdvcnRoIG9mIGNhY2hlIG1haW50ZW5hbmNlIGZvciBsYXJn
ZSBmcmFtZXMsIGlzCj4gPiB0aGUga2luZCBvZiByZWxhdGl2ZWx5IHNsb3cgb3BlcmF0aW9uIHRo
YXQgcmVhbGx5IGRvZXNuJ3Qgd2FudCB0byBiZQo+ID4gZG9uZSB3aXRoIElSUXMgZGlzYWJsZWQg
KG9yIHVuZGVyIGEgbG9jayBhdCBhbGwsIGlkZWFsbHkpIHVubGVzcyBpdAo+ID4gYWJzb2x1dGVs
eSAqaGFzKiB0byBiZS4gSWYgdGhlIGxvY2sgaXMgb25seSBuZWVkZWQgaGVyZSB0byBwcm90ZWN0
Cj4gPiBtb2RpZmljYXRpb25zIHRvIHRoZSBwYXJhbXMgbGlzdCBpdHNlbGYsIHRoZW4gbW92aW5n
IHRoZSB3aG9sZSBsaXN0Cj4gPiBhdCBvbmNlIHRvIGRvIHRoZSBjbGVhbnVwICJvZmZsaW5lIiBz
b3VuZHMgbGlrZSBhIGdyZWF0IGlkZWEgdG8gbWUuCgpPdWNoLgoKPiBvaywgdGhhdCBtaWdodCBi
ZSBhIHByb2JsZW0gaW4gdjRsMiBpbiBnZW5lcmFsIHNpbmNlIHZiMl9idWZmZXJfZG9uZQo+IGlz
IGFjdHVhbGx5IG9mdGVuIHVzZWQgaW5zaWRlIGFuIGlycSBoYW5kbGVyCgpDb3JyZWN0LiBUaGUg
RE1BIHN5bmMgc2hvdWxkIGJlIG1vdmVkIHRvIERRQlVGIHRpbWUsIHRoZXJlIHNob3VsZG4ndCBi
ZQphbnkgcmVhc29uIHRvIGRvIGl0IGluIHRoZSBJUlEgaGFuZGxlci4gSSB0aG91Z2h0IHRoaXMg
aGFkIGFscmVhZHkgYmVlbgpmaXhlZCA6LSgKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFy
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

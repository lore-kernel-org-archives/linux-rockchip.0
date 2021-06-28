Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4541FC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:14:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03B3761C49
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:14:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03B3761C49
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jo3NAkbu/pE3fU7IhEfYZqpN6ljYl7taEfitRu1YjlQ=; b=HcFcKwMP+JVeGL
	a/jsFJKjmCLhsu42Z3C2li0xX4SLDezUGvVcwpoBZQWjsvXA6JO7pvYBMTcbXn97CPlzrmLPFp5ux
	Iz2qJqXsJB7XKPHYiD1P2Bb2W1eSMLwIE290xAlisosqKMH/uLu3fA5IfDiXsaWXssloUBYlBGM5E
	SddEZ2FA+I6HuYvzWAnzw2FRI3yyVWtmse5irH5U/hgcB1r0SKu2EhBMqboIFZEaG2a6rF3WpV29Z
	E4b4fa5EA0FYCL7XETrDGeidNram10Af/XgefxTn3GSn6heP4GWEoYhW+2IA6637oMLUMlr7hdb3o
	REas1wxLIdZHjUepHsJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxq9L-007tnz-P9; Mon, 28 Jun 2021 12:14:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxq9H-007tla-Et
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 12:14:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 6A7771F41A03
Message-ID: <ccd40da84dba10f13f5d385850afaa7470b72105.camel@collabora.com>
Subject: Re: [PATCH 2/2] media: rkisp1: cap: initialize dma buf address in
 'buf_init' cb
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, 
 linux-media@vger.kernel.org, helen.koike@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, 
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
Date: Mon, 28 Jun 2021 09:13:45 -0300
In-Reply-To: <YNl3TPzoNhUTpkDO@pendragon.ideasonboard.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
 <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
 <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
 <YNl3TPzoNhUTpkDO@pendragon.ideasonboard.com>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_051359_655418_5C45BDA9 
X-CRM114-Status: GOOD (  28.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTA2LTI4IGF0IDEwOjE2ICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3Rl
Ogo+IE9uIEZyaSwgSnVuIDI1LCAyMDIxIGF0IDEwOjA4OjQ0UE0gLTAzMDAsIEV6ZXF1aWVsIEdh
cmNpYSB3cm90ZToKPiA+IE9uIEZyaSwgMjAyMS0wNi0yNSBhdCAxMToyMyArMDMwMCwgRGFmbmEg
SGlyc2NoZmVsZCB3cm90ZToKPiA+ID4gSW5pdGlhbGl6aW5nIHRoZSBkbWEgYWRkcmVzc2VzIG9m
IHRoZSBjYXB0dXJlIGJ1ZmZlcnMgY2FuCj4gPiA+IG1vdmUgdG8gdGhlICdidWZfaW5pdCcgY2Fs
bGJhY2ssIHNpbmNlIGl0IGlzIGVub3VnaCB0byBkbwo+ID4gPiBpdCBvbmNlIGZvciBlYWNoIGJ1
ZmZlciBhbmQgbm90IGV2ZXJ5IHRpbWUgaXQgaXMgcXVldWVkLgo+ID4gCj4gPiBBcmUgeW91IGFi
bGUgdG8gbWVhc3VyZSBhbnkgaW1wYWN0IHdpdGggdGhpcyBjaGFuZ2U/Cj4gPiAKPiA+ID4gU2ln
bmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEu
Y29tPgo+ID4gPiAtLS0KPiA+ID4gwqAuLi4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3Ax
L3JraXNwMS1jYXB0dXJlLmPCoCB8IDEyICsrKysrKysrKysrLQo+ID4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1
cmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0
dXJlLmMKPiA+ID4gaW5kZXggNjBjZDIyMDBlN2FlLi40MTk4OGViMGVjMGEgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0
dXJlLmMKPiA+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEv
cmtpc3AxLWNhcHR1cmUuYwo+ID4gPiBAQCAtNzUwLDcgKzc1MCw3IEBAIHN0YXRpYyBpbnQgcmtp
c3AxX3ZiMl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICpxdWV1ZSwKPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoHJldHVybiAwOwo+ID4gPiDCoH0KPiA+ID4gwqAKPiA+ID4gLXN0YXRpYyB2b2lk
IHJraXNwMV92YjJfYnVmX3F1ZXVlKHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPiA+ID4gK3N0YXRp
YyBpbnQgcmtpc3AxX3ZiMl9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gPiA+IMKg
ewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqdmJ1ZiA9IHRv
X3ZiMl92NGwyX2J1ZmZlcih2Yik7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgcmtpc3Ax
X2J1ZmZlciAqaXNwYnVmID0KPiA+IAo+ID4gU2luY2UgeW91IGFyZSBpbnRlcmVzdGVkIGF0IHRo
ZXNlIGtpbmQgb2YgY2xlYW51cHMsIHlvdSBjYW4KPiA+IGRvIHNvbWV0aGluZyBsaWtlOgo+ID4g
Cj4gPiArZW51bSBya2lzcDFfcGxhbmUgewo+ID4gK8KgwqDCoMKgwqDCoCBSS0lTUDFfUExBTkVf
WcKgID0gMCwKPiA+ICvCoMKgwqDCoMKgwqAgUktJU1AxX1BMQU5FX0NCID0gMSwKPiA+ICvCoMKg
wqDCoMKgwqAgUktJU1AxX1BMQU5FX0NSID0gMiwKPiA+ICvCoMKgwqDCoMKgwqAgUktJU1AxX05V
TV9QTEFORVMgPSAzCj4gPiArfTsKPiA+ICsKPiA+IMKgLyoKPiA+IMKgICogc3RydWN0IHJraXNw
MV9idWZmZXIgLSBBIGNvbnRhaW5lciBmb3IgdGhlIHZiMiBidWZmZXJzIHVzZWQgYnkgdGhlIHZp
ZGVvIGRldmljZXM6Cj4gPiDCoCAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGFyYW1zLCBzdGF0cywgbWFpbnBhdGgsIHNlbGZwYXRoCj4gPiBAQCAtMTYwLDcg
KzE2Nyw3IEBAIHN0cnVjdCBya2lzcDFfdmRldl9ub2RlIHsKPiA+IMKgc3RydWN0IHJraXNwMV9i
dWZmZXIgewo+ID4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZiMl92NGwyX2J1ZmZlciB2YjsKPiA+
IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBsaXN0X2hlYWQgcXVldWU7Cj4gPiAtwqDCoMKgwqDCoMKg
IHUzMiBidWZmX2FkZHJbVklERU9fTUFYX1BMQU5FU107Cj4gPiArwqDCoMKgwqDCoMKgIHUzMiBi
dWZmX2FkZHJbUktJU1AxX05VTV9QTEFORVNdOwo+ID4gwqB9Owo+ID4gCj4gPiBBbmQgdGhlbiB5
b3UgY2FuIGdldCByaWQgb2YgdGhlIG1lbXNldCwgYW5kIHJlbHkgb24KPiA+IHZiMl9kbWFfY29u
dGlnX3BsYW5lX2RtYV9hZGRyIHJldHVybmluZyBOVUxMLgo+ID4gCj4gPiBAQCAtNzU5LDggKzc1
Myw3IEBAIHN0YXRpYyB2b2lkIHJraXNwMV92YjJfYnVmX3F1ZXVlKHN0cnVjdCB2YjJfYnVmZmVy
ICp2YikKPiA+IMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBs
YW5lICpwaXhtID0gJmNhcC0+cGl4LmZtdDsKPiA+IMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGlu
dCBpOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqAgbWVtc2V0KGlzcGJ1Zi0+YnVmZl9hZGRyLCAw
LCBzaXplb2YoaXNwYnVmLT5idWZmX2FkZHIpKTsKPiA+IC3CoMKgwqDCoMKgwqAgZm9yIChpID0g
MDsgaSA8IHBpeG0tPm51bV9wbGFuZXM7IGkrKykKPiA+ICvCoMKgwqDCoMKgwqAgZm9yIChpID0g
MDsgaSA8IFJLSVNQMV9OVU1fUExBTkVTOyBpKyspCj4gCj4gVGhpcyBzaG91bGQgdXNlIEFSUkFZ
X1NJWkUoKS4KPiAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpc3BidWYtPmJ1
ZmZfYWRkcltpXSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9hZGRyKHZiLCBpKTsKPiAKPiBC
dXQgd2lsbCB2YjJfZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkcigpIGJlIGhhcHB5IHdoZW4gaSBp
cyBsYXJnZXIgdGhhbgo+IHRoZSBudW1iZXIgb2YgcGxhbmVzID8KPiAKCldlbGwsIHZiMl9wbGFu
ZV9jb29raWUgaGFuZGxlcyBpdC4gVEJILCBub3Qgc3VyZSBpdCdzIGEgYmVoYXZpb3Igd2Ugc2hv
dWxkCnJlbHkgb24sIGJ1dCBpdCdzIHRoZXJlLgotLSAKS2luZGx5LApFemVxdWllbAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

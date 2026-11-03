Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046A9606A324
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B7GtKfho;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=MJPlYex+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=56CVdV+YEV+3CHcSFWgJhS+oCnYTpaubGRQOuc1/AJI=; b=B7GtKfhoh4UlsM51IIESzQwC45
	tfEb7FTotgM/2Fy5c9BHIycG8Ebwbj2LYkJVCtGGph4yGngcc18lV8mXcweSrRM3+a0QuaI0jEyKl
	1c0FalSn4fjYyJU8rCoCxHlFSCuiwUpWiL0HkY2dtRSUnayoIY0Y5aRyhWqr7rw5uibu6Ffe0pF8A
	vpp3KG9O4AGnqnrHAD+DqXIqoKyoKYHNCWIeg0OMHoJNvn2Fyuaidatcl0N7JtnxDQcqS7e5xrtiL
	KX925BOgtPWCzSny1+e/sM4xrTP7uSq3NwdB1mAnGZE3QgCHDhvun0eg1MOP6nMu1ZdVr3sVPrz4S
	+5LJouxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOHuS-00000003Fy1-2rOc;
	Tue, 03 Nov 2026 17:02:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOHuP-00000003FwV-3aya;
	Tue, 03 Nov 2026 17:02:55 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F165BC;
	Tue,  3 Nov 2026 18:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1793725231;
	bh=A6obJZZta6E1OekhE9aXtMecDxGPKWNSTu2IvnivtSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJPlYex+4z2SjIh/V8BR6Voqv1LjuDOKzdSCRItwyAW+BjAZluZH4sOsi/NHsknOB
	 3bMiWSr9OuyIr7ea2gPv2Agy93GPmJsRm0s3iyC3j4OyDUpCc4e4iN0NaVG7mudKvU
	 gGOqRUl/mv0gxJnGfW2zzLKrab55zrLy4HMlvbSU=
Date: Tue, 3 Nov 2026 19:02:47 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dan Scally <dan.scally@ideasonboard.com>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
	"Gjorgji Rosikopulos (Consultant)" <gjorgji.rosikopulos@oss.qualcomm.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 02/16] media: v4l2-device: Add struct v4l2_device.flags
Message-ID: <20261103170247.GA3716866@killaraus.ideasonboard.com>
References: <20261103-rkisp1-suspend-and-resume-v1-0-08f863b6fdc5@ideasonboard.com>
 <20261103-rkisp1-suspend-and-resume-v1-2-08f863b6fdc5@ideasonboard.com>
 <25952c4c-36db-4361-9ab6-0ca1b1f960bf@oss.qualcomm.com>
 <3478043661b8d89ba5089f56383926785570b7b3.camel@ndufresne.ca>
 <d78d7ee3-0c48-484a-a5b0-9ba44ebf9171@ideasonboard.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d78d7ee3-0c48-484a-a5b0-9ba44ebf9171@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_090254_043803_615F7873 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBOb3YgMDMsIDIwMjYgYXQgMDI6NDI6MzBQTSArMDAwMCwgRGFuaWVsIFNjYWxseSB3
cm90ZToKPiBPbiAwMy8xMS8yMDI2IDEzOjUxLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+ID4g
TGUgbWFyZGkgMDMgbm92ZW1icmUgMjAyNiDDoCAxMDowOSArMDIwMCwgR2pvcmdqaSBSb3Npa29w
dWxvcyAoQ29uc3VsdGFudCkgYQo+ID4gw6ljcml0wqA6Cj4gPj4gT24gMTEvMy8yMDI2IDk6NDAg
QU0sIERhbmllbCBTY2FsbHkgd3JvdGU6Cj4gPj4+IEFkZCBhIGZsYWdzIGZpZWxkIHRvIHN0cnVj
dCB2NGwyX2RldmljZSwgYWxvbmcgd2l0aCBhIHNpbmdsZSBmbGFnCj4gPj4+IHZhbHVlIHRoYXQg
aXMgZGVzaWduZWQgdG8gdGVsbCB2NGwyLWFzeW5jIGluIHdoaWNoIGRpcmVjdGlvbiBkYXRhCj4g
Pj4+IGZsb3dzIGZvciB0aGlzIHY0bDIgZGV2aWNlIHNvIHRoYXQgaXQga25vd3MgaG93IHRvIHNl
dCB1cCBkZXZpY2UKPiA+Pj4gbGlua3MgYmV0d2VlbiBzdWJkZXZpY2VzIGNvbm5lY3RlZCB1c2lu
ZyB0aGUgYXN5bmMgQVBJcy4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjYWxs
eSA8ZGFuLnNjYWxseUBpZGVhc29uYm9hcmQuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICBpbmNsdWRl
L21lZGlhL3Y0bDItZGV2aWNlLmggfCA3ICsrKysrKysKPiA+Pj4gICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL3Y0
bDItZGV2aWNlLmggYi9pbmNsdWRlL21lZGlhL3Y0bDItZGV2aWNlLmgKPiA+Pj4gaW5kZXggMjVm
NjliMWI4ZGIwM2QwNzdmNzU3MDQ3MWQ1YzY5MTBmY2FmZTExMC4uOWIxNzkxNmQ2MzY0MWJhNjM3
Y2Y4YzM3YWE5MjU3NDliZDRlMjEzNCAxMDA2NDQKPiA+Pj4gLS0tIGEvaW5jbHVkZS9tZWRpYS92
NGwyLWRldmljZS5oCj4gPj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2UuaAo+ID4+
PiBAQCAtMTUsNiArMTUsOSBAQAo+ID4+PiAgIAo+ID4+PiAgIHN0cnVjdCB2NGwyX2N0cmxfaGFu
ZGxlcjsKPiA+Pj4gICAKPiA+Pj4gKy8qIFNldCB0aGlzIGZsYWcgaWYgdGhpcyBWNEwyIGRldmlj
ZSBpcyBhbiAib3V0cHV0IiByYXRoZXIgdGhhbiBhbiAiaW5wdXQiLiAqLwo+ID4+PiArI2RlZmlu
ZSBWNEwyX0RFVklDRV9GTF9JU19PVVRQVVQJCQlCSVQoMCkKPiA+Pgo+ID4+IEp1c3QgZm9yIHRo
ZSBjbGFyaWZpY2F0aW9uIGRvIHdlIGNoYW5nZSB0aGUgbWVhbmluZyBvZiBvdXRwdXQtPmNhcHR1
cmUgdG8gaW5wdXQtPm91dHB1dD8KPiA+PiBJIGtub3cgdGhhdCBvdXRwdXQgaXMgY29uZnVzaW5n
IGZvciBldmVyeW9uZSBpbmNsdWRpbmcgbWUgYnV0IHNvbWVob3cgaSBnZXQgdXNlZCB0byBpdC4K
PiA+PiBIb3dldmVyIHRvIGNsYXJpZnkgd2hhdCB0aGlzIG1lYW5zIHdpbGwgYmUgaGVscGZ1bCA6
LSkKPiA+IAo+ID4gSSBhZ3JlZSB0aGlzIGlzIGNvbmZ1c2luZy4gVG8gYXZvaWQgYWxsIHRoZSBs
ZWdhY3ksIHdlIGNvdWxkIHVzZSBQUk9EVUNFUiAvCj4gPiBDT05TVU1FUiwgb3IgZG9lcyBhbnlv
bmUgaGFzIGEgYmV0dGVyIGlkZWE/Cj4gCj4gSSBoYXZlIG5vIGJldHRlciBpZGVhcyAtIG5hbWlu
ZyB0aGluZ3Mgd2FzIG5ldmVyIG15IHN0cm9uZyBzdWl0IC0gc28KPiBoYXBweSB0byB1c2UgUFJP
RFVDRVIgLyBDT05TVU1FUi4KCkhvdyBkbyB5b3UgZGVhbCB3aXRoIG1lbW9yeS10by1tZW1vcnkg
ZGV2aWNlcyB0aGF0IGFyZSBib3RoIGNvbnN1bWVycwphbmQgcHJvZHVjZXJzID8KCj4gPj4+ICsK
PiA+Pj4gICAvKioKPiA+Pj4gICAgKiBzdHJ1Y3QgdjRsMl9kZXZpY2UgLSBtYWluIHN0cnVjdCB0
byBmb3IgVjRMMiBkZXZpY2UgZHJpdmVycwo+ID4+PiAgICAqCj4gPj4+IEBAIC0zMCw2ICszMyw5
IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGFuZGxlcjsKPiA+Pj4gICAgKiBAcmVmOiBLZWVwIHRyYWNr
IG9mIHRoZSByZWZlcmVuY2VzIHRvIHRoaXMgc3RydWN0Lgo+ID4+PiAgICAqIEByZWxlYXNlOiBS
ZWxlYXNlIGZ1bmN0aW9uIHRoYXQgaXMgY2FsbGVkIHdoZW4gdGhlIHJlZiBjb3VudAo+ID4+PiAg
ICAqCWdvZXMgdG8gMC4KPiA+Pj4gKyAqIEBmbGFnczogZGV2aWNlIGZsYWdzLiBDYW4gYmU6Cj4g
Pj4+ICsgKiAgICVWNEwyX0RFVklDRV9GTF9JU19PVVRQVVQgLSBTZXQgdGhpcyBmbGFnIGlmIHRo
aXMgVjRMMiBkZXZpY2UgaXMgYW4KPiA+Pj4gKyAqICAgIm91dHB1dCIgcmF0aGVyIHRoYW4gYW4g
ImlucHV0Igo+ID4+PiAgICAqCj4gPj4+ICAgICogRWFjaCBpbnN0YW5jZSBvZiBhIFY0TDIgZGV2
aWNlIHNob3VsZCBjcmVhdGUgdGhlIHY0bDJfZGV2aWNlIHN0cnVjdCwKPiA+Pj4gICAgKiBlaXRo
ZXIgc3RhbmQtYWxvbmUgb3IgZW1iZWRkZWQgaW4gYSBsYXJnZXIgc3RydWN0Lgo+ID4+PiBAQCAt
NTQsNiArNjAsNyBAQCBzdHJ1Y3QgdjRsMl9kZXZpY2Ugewo+ID4+PiAgIAlzdHJ1Y3QgdjRsMl9w
cmlvX3N0YXRlIHByaW87Cj4gPj4+ICAgCXN0cnVjdCBrcmVmIHJlZjsKPiA+Pj4gICAJdm9pZCAo
KnJlbGVhc2UpKHN0cnVjdCB2NGwyX2RldmljZSAqdjRsMl9kZXYpOwo+ID4+PiArCXUzMiBmbGFn
czsKPiA+Pj4gICB9Owo+ID4+PiAgIAo+ID4+PiAgIC8qKgoKLS0gClJlZ2FyZHMsCgpMYXVyZW50
IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

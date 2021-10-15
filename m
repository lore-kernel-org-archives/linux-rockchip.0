Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43BEDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 15:11:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C46B6120F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 15:11:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C46B6120F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=izAglPv2+h5jtdw+cI+dTEYNNXiMGWU3rMzdLceH2ak=; b=bwyKR+pIMcaYP7E6a6C6A/yfCa
	o54Yohj9yt96fyYKVGDTnV/kVpoIOviM4/W0n+8/DC6NDzfZegBEFKms4K17hbNhIZXaGmP6RBBw1
	GcbwR/kGEfxxwsyLy9qRc3x2PilEmhiHmDVdbfOGZSFaxNP6xOINAsRDscy3RiNJKqloFUcVq+j0a
	vwE7I7qp2X+qYj+CKsv+4Ny6smNKodxVMmcj88H0E5RQUY7wU0krIowOBujLWloDx+J5ZaQL2aUJB
	/MFam0+QhQsYezaVg2RARtPvYaa2GTRrnbAV7/n6hjuT//N0fyFBsbI97tc4bE0UY2cd8aGAPvGdn
	HlsopHyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbOrr-007qNm-Ni; Fri, 15 Oct 2021 15:11:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbOaJ-007jvd-Qw; Fri, 15 Oct 2021 14:53:26 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:6fac:80cf:59ad:86b] (unknown
 [IPv6:2a01:e0a:4cb:a870:6fac:80cf:59ad:86b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C23A41F453E9;
 Fri, 15 Oct 2021 15:53:20 +0100 (BST)
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: Alex Bee <knaerzche@gmail.com>, =?UTF-8?Q?Jernej_=c5=a0krabec?=
 <jernej.skrabec@gmail.com>, mchehab@kernel.org, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, hverkuil-cisco@xs4all.nl,
 jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
 <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
 <1705005.VLH7GnMWUR@kista> <4f8f6da3-70b1-5dd8-27b7-c9f9fd37920b@gmail.com>
 <9d9645a1-9d44-4fec-55e7-5b0a1c69e7ab@collabora.com>
 <7d6df94a-e0bb-b364-5ab1-3ef4d02803dc@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <302e317c-451e-eb1d-46d9-c4f6e5245c47@collabora.com>
Date: Fri, 15 Oct 2021 16:53:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7d6df94a-e0bb-b364-5ab1-3ef4d02803dc@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_075324_178446_3B271DC5 
X-CRM114-Status: GOOD (  27.02  )
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

CkxlIDE1LzEwLzIwMjEgw6AgMTY6MTQsIEFsZXggQmVlIGEgw6ljcml0wqA6Cj4KPiBBbSAxNS4x
MC4yMSB1bSAxNjowNiBzY2hyaWViIEJlbmphbWluIEdhaWduYXJkOgo+Pgo+PiBMZSAxNS8xMC8y
MDIxIMOgIDEyOjMzLCBBbGV4IEJlZSBhIMOpY3JpdMKgOgo+Pj4gSGkgQmVuamFtaW4sIEplcm5l
ago+Pj4gQW0gMTIuMTAuMjEgdW0gMTg6MDggc2NocmllYiBKZXJuZWogxaBrcmFiZWM6Cj4+Pj4g
Q0M6IEFsZXggQmVlCj4+Pj4KPj4+PiBBbGV4LCBwbGVhc2UgdGFrZSBhIGxvb2sgdG8gdGhlc2Ug
cGF0Y2hlcyB0b28uCj4+PiBUaGVzZSBwYXRjaGVzIGRvbid0IHJlbW92ZSBhbnl0aGluZyB0aGF0
IHdvdWxkIGJlIG5lZWQgZm9yIHJrdmRlYyAKPj4+IGhldmMgLSBidXQgaW5kZWVkIC0gd2UgbmVl
ZCBzb21lIG1vcmU6Cj4+PiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50
di9ibG9iL21hc3Rlci9wcm9qZWN0cy9Sb2NrY2hpcC9wYXRjaGVzL2xpbnV4L2RlZmF1bHQvbGlu
dXgtMjAwMS12NGwtd2lwLXJrdmRlYy1oZXZjLnBhdGNoI0wyNDItTDMwNSAKPj4+Cj4+Pgo+Pj4g
djRsMl9jdHJsX2hldmNfc3BzOgo+Pj4gX191OMKgwqDCoCB2aWRlb19wYXJhbWV0ZXJfc2V0X2lk
Cj4+PiBfX3U4wqDCoMKgIHNlcV9wYXJhbWV0ZXJfc2V0X2lkCj4+Pgo+Pj4gdjRsMl9jdHJsX2hl
dmNfcHBzOgo+Pj4gX191OMKgwqDCoCBwaWNfcGFyYW1ldGVyX3NldF9pZAo+Pj4gX191MTbCoMKg
wqAgc2hvcnRfdGVybV9yZWZfcGljX3NldF9zaXplCj4+PiBfX3UxNsKgwqDCoCBsb25nX3Rlcm1f
cmVmX3BpY19zZXRfc2l6ZQo+Pj4KPj4+IEFzIGZhciBhcyBJIGNhbiBzZWUsIHRoZXkgYXJlIGFs
bCBwYXJ0IG9mIHRoZSBzcGVjIGFuZCBzaG91bGQgYmUgCj4+PiB0aGVyZWZvcmUgZ29vZCB0byBn
byBpbiB0aGUgdWFwaS4KPj4KPj4gRG8geW91IGhhdmUgYW55IHBsYW4gdG8gdXBzdHJlYW0gdGhl
c2UgZmllbGRzIGluIEhFVkMgdUFQSSA/Cj4KPiBJIG1pZ2h0IGJlIHVwc3RyZWFtaW5nIHRoZW0g
YXQgc29tZSBwb2ludCwgeWVzLgo+Cj4gV2l0aCB0aGlzIEkganVzdCB3YW50ZWQgdG8gdW5kZXJs
aW5lIEplcm5laiBzYWlkOiBIRVZDIHVhcGkgaXMgTk9UIHJlYWR5Cj4gdG8gZ2V0IHVuc3RhZ2Vk
IHlldC4KCk9rIGJ1dCB0aGUgcXVlc3Rpb24gaXMgaG93IHRvIGdldCBpdCB1bnN0YWdlZCA/ClNo
b3VsZCB3ZSBjb250aW51ZSB0byBkbyBjaGFuZ2VzIGluIHN0YWdlZCB1QVBJID8Kb3Igc2VuZCBh
IFJGQyB0byBtb3ZlIGl0IHRvIHN0YWJsZSBhbmQgcmV2aWV3IGFsbCB0aGUgbWlzc2luZyBwYXJ0
cyBhdCB0aGF0IHRpbWUgPwoKUmVnYXJkcywKQmVuamFtaW4KCj4KPj4KPj4gUmVnYXJkcywKPj4g
QmVuamFtaW4KPj4KPj4+Cj4+PiBBcyB5b3UgbWlnaHQgbm93LCBldmVuIHJrdmRlYyBpcyBhIGZy
YW1lLWJhc2VkIGRlY29kZXIsIGl0IGRvZXNuJ3QgCj4+PiBmdWxseSBwYXJzZSBzbGljZSBoZWFk
ZXJzIGluIEhXIGZvciBIRVZDIGFuZCB3ZSBuZWVkIHRvIHNldCAKPj4+IHJlZmVyZW5jZXMgaW4g
U1cgd2hpY2ggcmVxdWlyZXMgbG9vcGluZyBvdmVyIHRoZSBzbGljZXMuIERvd25zdHJlYW0gCj4+
PiB3ZSBoYXZlIGEgaGFjayB0byBnaXZlIG51bV9zbGljZXMgaW4gdjRsMl9jdHJsX2hldmNfc3Bz
IGZvciBkb2luZyB0aGF0Lgo+Pj4gVGhhdCBjb3VsZCBmdWxseSBnbyBhd2F5LCBpZiBWNEwyX0NJ
RF9NUEVHX1ZJREVPX0hFVkNfU0xJQ0VfUEFSQU1TIAo+Pj4gY291bGQgZ2V0IGR5bmFtaWMgYXJy
YXkgY29udHJvbCBzdXBwb3J0IGFuZCB3b3VsZCBtYWtlIHVwc3RyZWFtaW5nIAo+Pj4gdGhpcyBh
IGxvdCBlYXNpZXIgLSBhcyBmYXIgYXMgSSdtIGNvbmNlcmVkIHRoaXMgd291bGQgYmUgcmVxdWly
ZWQgCj4+PiBmb3IgUlBpIEhFVkMgZGVjb2RlciBhcyB3ZWxsLgo+Pj4gQXMgYSBsYXN0IHJlc29y
dCB3ZSBjb3VsZCBhbHNvIGltcGxlbWVudCBhIEhXIHNwZWNpZmMgY29udHJvbCDDoCBsYQo+Pj4g
VjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgLSBidXQgSSdkIGxpa2UgdG8g
YXZvaWQgdGhhdCwgCj4+PiBrbm93aW5nIGl0IHdvdWxkIGNlcnRhaW5seSBiZSBiZXR0ZXIgZnJv
bSBwZXJmb3JtYW5jZSBwb3YuCj4+Pgo+Pj4gQWxleC4KPj4+Pgo+Pj4+IERuZSB0b3JlaywgMTIu
IG9rdG9iZXIgMjAyMSBvYiAxNzo1Nzo1MCBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkIAo+Pj4+
IG5hcGlzYWwoYSk6Cj4+Pj4+Cj4+Pj4+IExlIDEyLzEwLzIwMjEgw6AgMTc6MzQsIEplcm5laiDF
oGtyYWJlYyBhIMOpY3JpdCA6Cj4+Pj4+PiBIaSBCZW5qYW1pbiEKPj4+Pj4+Cj4+Pj4+PiBEbmUg
dG9yZWssIDEyLiBva3RvYmVyIDIwMjEgb2IgMTY6MzU6NDggQ0VTVCBqZSBCZW5qYW1pbiBHYWln
bmFyZAo+Pj4+IG5hcGlzYWwoYSk6Cj4+Pj4+Pj4gVGhpcyBzZXJpZXMgYWltcyB0byBjbGVhbiB1
cCBSZWZlcmVuY2UgUGljdHVyZSBTZXQgdXNhZ2UgYW5kIGZsYWdzLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
TG9uZyB0ZXJtIGZsYWcgd2FzIG5hbWVkIHdpdGggUlBTIHByZWZpeCB3aGlsZSBpdCBpcyBub3Qg
dXNlZCAKPj4+Pj4+PiBmb3IgUlBTCj4+Pj4+Pj4gYnV0IGZvciBtYXJrIGxvbmcgdGVybSByZWZl
cmVuY2VzIGluIERCUC4gUmVtYW5lIGl0IGFuZCByZW1vdmUgCj4+Pj4+Pj4gdGhlIHR3bwo+Pj4+
Pj4+IG90aGVyIHVzZWxlc3MgUlBTIGZsYWdzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQ2xhcmlmeSBkb2N1
bWVudGF0aW9uIGFib3V0IFJQUyBsaXN0cyBjb250ZW50IGFuZCBtYWtlIHN1cmUgdGhhdCAKPj4+
Pj4+PiBIYW50cm8KPj4+Pj4+PiBkcml2ZXIgdXNlIHRoZW0gY29ycmVjdGx5IChpLmUgd2l0aG91
dCBsb29rIHVwIGluIERCUCkuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGVzZSBwYXRjaGVzIGFyZSB0aGUg
bGFzdCBpbiBteSBiYWNrbG9nIGltcGFjdGluZyBIRVZDIHVBUEkuCj4+Pj4+Pj4gwqAgRnJvbSBt
eSBwb2ludCBvZiB2aWV3LCBvbmNlIHRoZXkgZ2V0IG1lcmdlZCwgeW91IGNvdWxkIHN0YXJ0IAo+
Pj4+Pj4+IHRhbGtpbmcKPj4+Pj4+PiBhYm91dCBob3cgbW92ZSBIRVZDIHVBUEkgdG8gc3RhYmxl
Lgo+Pj4+Pj4gV2l0aCB5b3VyIGNoYW5nZXMsIEhFVkMgdUFQSSBjb250cm9scyBzdGlsbCB3b24n
dCBiZSBjb21wbGV0ZS4gCj4+Pj4+PiBDZWRydXMKPj4+PiBuZWVkcwo+Pj4+Pj4gZW50cnkgcG9p
bnQgY29udHJvbCwgd2hpY2ggaW4gdHVybiBuZWVkcyBkeW5hbWljIGFycmF5IHN1cHBvcnQuIAo+
Pj4+Pj4gSSdtIGEgYml0Cj4+Pj4gbGF6eQo+Pj4+Pj4gaW1wbGVtZW50aW5nIHRoYXQgY29udHJv
bCwgYnV0IEkgZ3Vlc3MgSSBjYW4gdGFrZSBhIGxvb2sgaW4gYSAKPj4+Pj4+IG1vbnRoIG9yIHNv
Lgo+Pj4+Pj4gcmt2ZGVjIGFsc28gbmVlZHMgbW9yZSBmaWVsZHMgZm9yIEhFVkMuIFdpdGggcGF0
Y2hlcyBjb2xsZWN0ZWQgaGVyZToKPj4+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9MaWJyZUVMRUMv
TGlicmVFTEVDLnR2L2Jsb2IvbWFzdGVyL3Byb2plY3RzL1JvY2tjaGlwLyAKPj4+Pj4+Cj4+Pj4+
PiBwYXRjaGVzL2xpbnV4L2RlZmF1bHQvbGludXgtMjAwMS12NGwtd2lwLXJrdmRlYy1oZXZjLnBh
dGNoCj4+Pj4+PiBmbHVzdGVyIEhFVkMgdGVzdCBzY29yZSBpcyByZXBvcnRlZGx5IDEyMS8xMzUg
KDgtYml0IHRlc3RzIG9ubHkpLgo+Pj4+Pgo+Pj4+PiBIaSBKZXJuZWosCj4+Pj4+Cj4+Pj4+IFRo
YW5rcyBmb3IgeW91ciBmZWVkYmFjaywgZ2V0dGluZyBhIGxpc3Qgb2YgbWlzc2luZyBpdGVtcyBp
biBIRVZDIAo+Pj4+PiB1QVBJCj4+Pj4+IHdpbGwgZGVmaW5pdGl2ZWx5IGhlbHAgdG8gZmlsbCB0
aGUgaG9wZS4KPj4+Pj4gVGhlIHBhdGNoIHlvdSBtZW50aW9uIGZvciBya3ZkZWMgYXJlIGFscmVh
ZHkgbWVyZ2VkIGluIG1haW5saW5lIAo+Pj4+PiBrZXJuZWwgKGF0Cj4+Pj4+IGxlYXN0IGZvciB1
QVBJIHBhcnQpLgo+Pj4+Cj4+Pj4gQXJlIHRoZXk/IFdoYXQgYWJvdXQ6Cj4+Pj4gdmlkZW9fcGFy
YW1ldGVyX3NldF9pZAo+Pj4+IHNlcV9wYXJhbWV0ZXJfc2V0X2lkCj4+Pj4gcGljX3BhcmFtZXRl
cl9zZXRfaWQKPj4+PiBzaG9ydF90ZXJtX3JlZl9waWNfc2V0X3NpemUKPj4+PiBsb25nX3Rlcm1f
cmVmX3BpY19zZXRfc2l6ZQo+Pj4+Cj4+Pj4gQXQgbGVhc3QgSSBkb24ndCBzZWUgdGhlbSBpbiBs
aW51eC1uZXh0LiBNYXliZSB0aGF0IGluZm9ybWF0aW9uIGNhbiBiZQo+Pj4+IG9idGFpbmVkIGlu
IHNvbWUgb3RoZXIgd2F5Pwo+Pj4+Cj4+Pj4+IENlZHJ1cyBuZWVkcyBhcmUgYWJvdXQgbnVtX2Vu
dHJ5X3BvaW50X29mZnNldHMsIG9mZnNldF9sZW5fbWludXMxIGFuZAo+Pj4+IGVudHJ5X3BvaW50
X29mZnNldF9taW51czFbIGkgXQo+Pj4+PiBpbiBIRVZDIHNwZWNpZmljYXRpb25zID8KPj4+Pgo+
Pj4+IFllcywgQ2VkcnVzIG5lZWRzIHRvIGtub3cgd2hvbGUgbGlzdCBvZiBlbnRyeSBwb2ludHMu
IEkgZG9uJ3QgdGhpbmsgCj4+Pj4gd2UgbmVlZCB0bwo+Pj4+IHdvcnJ5IGFib3V0IG9mZnNldF9s
ZW5fbWludXMxLCBsaXN0IGNvdWxkIGJlIHByZS1wcm9jZXNzZWQgLSBqdXN0IAo+Pj4+IG51bWJl
ciBvZgo+Pj4+IGVudHJ5IHBvaW50cyBhbmQgdGhlaXIgdmFsdWVzLgo+Pj4+Cj4+Pj4gQmVzdCBy
ZWdhcmRzLAo+Pj4+IEplcm5lago+Pj4+Cj4+Pj4+Cj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+IEJlbmph
bWluCj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSSB3b3VsZCBjZXJ0YWlubHkgd2FpdCB3aXRoIG1vdmlu
ZyBIRVZDIHVBUEkgdG8gc3RhYmxlLgo+Pj4+Pj4KPj4+Pj4+IEJlc3QgcmVnYXJkcywKPj4+Pj4+
IEplcm5lago+Pj4+Pj4KPj4+Pj4+PiB2ZXJzaW9uIDI6Cj4+Pj4+Pj4gLSBjaGFuZ2UgRFBCIGZp
ZWxkIG5hbWUgZnJvbSBycHMgdG8gZmxhZ3MKPj4+Pj4+Pgo+Pj4+Pj4+IFBsZWFzZSBub3RlIHRo
YXQgdGhlIG9ubHkgcHVycG9zZSBvZiBjb21taXRzIDMgYW5kIDQgaXMgdG8gYWxsb3cgCj4+Pj4+
Pj4gdG8gdGVzdAo+Pj4+Pj4+IEcyIGhhcmR3YXJlIGJsb2NrIGZvciBJTVg4TVEgdW50aWwgYSBw
cm9wZXIgc29sdXRpb24gaXN1aW5nIAo+Pj4+Pj4+IHBvd2VyIGRvbWFpbgo+Pj4+Pj4+IGNhbiBi
ZSBmb3VuZC4gRG8gbm90IG1lcmdlIHRoZW0uCj4+Pj4+Pj4KPj4+Pj4+PiBHU3RyZWFtZXIgSEVW
QyBwbHVnaW4gbWVyZ2UgcmVxdWVzdCBjYW4gYmUgZm91bmQgaGVyZToKPj4+Pj4+PiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVhbWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVl
c3RzLzEwNzkgCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFdpdGggdGhvc2UgcGllY2Ugb2YgY29k
ZSBmbHVzdGVyIHNjb3JlIGlzIDc3LzE0Ny4KPj4+Pj4+Pgo+Pj4+Pj4+IEJlbmphbWluCj4+Pj4+
Pj4KPj4+Pj4+PiBCZW5qYW1pbiBHYWlnbmFyZCAoNCk6Cj4+Pj4+Pj4gwqDCoMKgIG1lZGlhOiBo
ZXZjOiBSZW1vdmUgUlBTIG5hbWVkIGZsYWdzCj4+Pj4+Pj4gwqDCoMKgIG1lZGlhOiBoZXZjOiBF
bWJlZGRlZCBpbmRleGVzIGluIFJQUwo+Pj4+Pj4+IMKgwqDCoCBtZWRpYTogaGFudHJvOiBVc2Ug
c3lzY29uIGluc3RlYWQgb2YgJ2N0cmwnIHJlZ2lzdGVyCj4+Pj4+Pj4gwqDCoMKgIGFybTY0OiBk
dHM6IGlteDhtcTogQWRkIG5vZGUgdG8gRzIgaGFyZHdhcmUKPj4+Pj4+Pgo+Pj4+Pj4+IMKgwqAg
Li4uL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgMTQgKysrLS0tCj4+Pj4+Pj4gwqDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXEuZHRzacKgwqDCoMKgIHwgNDMgCj4+Pj4+Pj4gKysrKysrKysrKysrKy0tLS0KPj4+Pj4+
PiDCoMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmjCoMKgwqDCoMKgwqDC
oMKgIHzCoCA1ICstCj4+Pj4+Pj4gwqDCoCAuLi4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2cyX2hldmNfZGVjLmMgfCAyNyArKystLS0tLS0tLQo+Pj4+Pj4+IMKgwqAgZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuY8KgwqAgfCA0OCAKPj4+Pj4+PiArKysrKysr
KysrKystLS0tLS0tCj4+Pj4+Pj4gwqDCoCAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2gyNjUuY8KgIHzCoCAyICstCj4+Pj4+Pj4gwqDCoCBpbmNsdWRlL21lZGlhL2hldmMt
Y3RybHMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA2ICstLQo+
Pj4+Pj4+IMKgwqAgNyBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlv
bnMoLSkKPj4+Pj4+Pgo+Pj4+Pj4+IC0tIAo+Pj4+Pj4+IDIuMzAuMgo+Pj4+Pj4+Cj4+Pj4+Pj4K
Pj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4+Pgo+Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

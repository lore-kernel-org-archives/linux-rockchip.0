Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D4DBC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:51:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1915E61B29
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:51:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1915E61B29
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O3is9b/B+zFc198ZHBM/cfKRgi5sMH+Cx+fRTo+BElY=; b=C6u+qtR0ceT3b9mr6pjji2Uc8r
	T5mAzESB2L88KBt2NMIYk5jkiGinJPQBTsZkNClIS31VB0jUa6PIlDAU7wRjUBrFIDGU5/FYq4lfq
	be94BUx6nTn5YG3JHO60fTty9eqgzigQIFF4n6C4K3+QEhtZVRKuimTEQE97IpFgXbt/Z14LH5q2b
	WHf1WpgIPCmPRMEchpKqrV+xBBa+lWTvFogFy4SbLXRLm9TMIcDmJUsuFHo1N3XUb/z/P/cDVv9Bp
	kM+bZVgC7CK0NdRb03zGAl5+3mEFno9JDaeH2gVz+k5BA3WgbTUd6RrZRyyUgEJxooFN72MtzND84
	ysAAvSYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnf0a-007V53-Bh; Thu, 18 Nov 2021 10:51:12 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnf0M-007V0F-2L; Thu, 18 Nov 2021 10:50:59 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id E918E1F07;
 Thu, 18 Nov 2021 18:50:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11048T139933178128128S1637232636527390_; 
 Thu, 18 Nov 2021 18:50:43 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-RCPT-COUNT: 13
X-LOCAL-RCPT-COUNT: 2
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <10bc3a32f56e19b283f58911be9c68e0>
X-System-Flag: 0
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Daniel Stone <daniel@fooishbar.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
Date: Thu, 18 Nov 2021 18:50:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_025058_524255_F98B7B04 
X-CRM114-Status: GOOD (  33.36  )
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

Ck9uIDIwMjEvMTEvMTgg5LiL5Y2INTo1MywgRGFuaWVsIFN0b25lIHdyb3RlOgo+IEhpLAo+Cj4g
T24gVGh1LCAxOCBOb3YgMjAyMSBhdCAwOToyNiwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4+IEFtIERvbm5lcnN0YWcsIDE4LiBOb3ZlbWJlciAyMDIxLCAwMjoyNzox
MCBDRVQgc2NocmllYiBLZXZlciBZYW5nOgo+Pj4gSSBkb24ndCBhZ3JlZSB3aXRoIHRoaXMsIHdl
IGRvIGJlbGlldmUgeW91IGhhdmUgZG8gc29tZSBjbGVhbiB1cCB0byBtZWV0Cj4+PiB0aGUgcmVx
dWlyZW1lbnQKPj4+Cj4+PiBvZiB1cHN0cmVhbSwgYnV0IGFsbCB0aGUgZnJhbWV3b3JrIGFuZCBm
ZWF0dXJlIGltcGxlbWVudCBhcmUgZnJvbQo+Pj4gUm9ja2NoaXAgZW5naW5lZXIsCj4+Pgo+Pj4g
d2UgaGF2ZSBtYWRlIGEgZ3JlYXQgZWZmb3J0IHRvIG1ha2UgZXZlcnl0aGluZyB3b3JrIHdoaWNo
IGJsb2NrIHVzIHRvCj4+PiB1cHN0cmVhbSB0aGlzIGRyaXZlciBmb3Igbm93Lgo+PiBJIGRvbid0
IGZ1bGx5IHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbiBoZXJlIChsYW5ndWFnZSBiYXJyaWVyIHBy
b2JhYmx5KSwKPj4gYnV0IGRyb3BwaW5nIG5vbi1lc3NlbnRpYWwgZnVuY3Rpb25hbGl0eSBpbiBh
IGZpcnN0IHJvdW5kIGlzIHByZXR0eSBjb21tb24KPj4gdG8gYXQgbGVhc3QgZ2V0IGJhc2ljIGZ1
bmN0aW9uYWxpdHkgd29ya2luZyBmb3IgZXZlcnlvbmUuIFdpdGggdGhlIHNwZWNpYWwKPj4gZmVh
dHVyZXMgZ2V0dGluZyBhZGRlZCBhZ2FpbiBpbiBsYXRlciBwYXRjaGVzIG92ZXIgdGltZS4gVGhp
cyBoYXBwZW5lbmVkCj4+IG9uIHRoZSBvbGQgdm9wIGFzIHdlbGwuCj4+Cj4+IEFuZCBvZiBjb3Vy
c2UsIGhhdmluZyBhIGtlcm5lbCB0aGF0IGNhbiAianVzdCIgZG8gbm9ybWFsIGdyYXBoaWNzIHdp
dGhvdXQKPj4gdGhlIGFkZGl0aW9uYWwgZmVhdHVyZXMgaXMgc3RpbGwgcHJlZmVyYWJsZSBvdmVy
IGhhdmluZyBfTk9fIGdyYXBoaWNzIHN1cHBvcnQKPj4gYXQgYWxsIDstKQo+Pgo+Pj4gTkFLIGZv
ciB0aGlzIHNlcmllcy4KPj4gQXMgeW91IG1pZ2h0J3ZlIHNlZW4gZnJvbSBwcmV2aW91cyBncmFw
aGljcyByZWxhdGVkIHBhdGNoZXMsIHRoZXJlCj4+IGlzIGEgYmlnIG51bWJlciBvZiBwZW9wbGUg
X2FuZCBjb21wYW5pZXNfIHRoYXQgc2VlbXMgdG8gd2FudC9uZWVkCj4+IHRvIHdvcmsgd2l0aCB0
aGUgcmszNTY2L3JrMzU2OCB3aXRoIGEga2VybmVsIGJhc2VkIG9uIG1haW5saW5lLgo+Pgo+PiAt
LT4gTW9zdCBsaWtlbHkgZXZlbiBpbiByZWFsIHByb2R1Y3RzIQo+IFllcywgd2UndmUgYmVlbiB0
cnlpbmcgdG8gc2hpcCBhIHJlYWwgcHJvZHVjdCBiYXNlZCBvbiBSSzM1NnguIFdlCj4gc3RhcnRl
ZCBieSB1c2luZyB0aGUgdmVuZG9yIFZPUDIgZHJpdmVyLCBidXQgaXQgaXMgYnJva2VuIGJleW9u
ZAo+IGJlbGllZi4gVGhlIGRyaXZlciBuZWVkcyBhIGZ1bmRhbWVudGFsIGdyb3VuZC11cCByZXdv
cmssIGFuZCBhbGwgdGhlCj4gYWRkaXRpb25hbCBmZWF0dXJlcyBnZXQgaW4gdGhlIHdheSBvZiBk
b2luZyB0aGlzIGNvcmUgcmV3b3JrIHRvIG1ha2UKPiBpdCBhY3R1YWxseSBmdW5jdGlvbiBjb3Jy
ZWN0bHkuCj4KPiBTbywgTkFLIHRvIHRoZSBOQUsuIEkgd291bGQgbGlrZSB0byBzZWUgdGhlIFZP
UDIgc3VwcG9ydCBzdGFydCBzaW1wbGUsCj4gd2l0aCBtb3JlIGZlYXR1cmVzIGJlaW5nIGFkZGVk
IG9uZSBieSBvbmUuCj4KPj4gV2hpbGUgUm9ja2NoaXAgZGlkIHNheSB0aGF0IHRoZXkgd2FudCB0
byB1cHN0cmVhbSBWT1AyIHN1cHBvcnQsIHRoZXJlCj4+IGhhcyBiZWVuIF9OT18gbW92ZW1lbnQg
b3IgZXZlbiBpbmZvcm1hdGlvbiBhdCBhbGwgb24gdGhpcyBvdmVyIGF0IGxlYXN0Cj4+IHRoZSBs
YXN0IHllYXIoISksIHNvIGl0J3MgcHJldHR5IHVuZGVyc3RhbmRhYmxlIHRoYXQgZGV2ZWxvcGVy
cyB3aWxsIGRvIHRoaXMKPj4gdGhlbXNlbGYgYXQgc29tZSBwb2ludCwgYmVjYXVzZSB0aGV5IGRv
bid0IHdhbnQgdG8gd2FpdCBhbnltb3JlIGZvcgo+PiBzb21ldGhpbmcgdGhhdCBtaWdodCBuZXZl
ciBoYXBwZW4uCj4+Cj4+IFNvIGEgc2ltcGxlICJOQUsiIHdpdGhvdXQgYWRkaXRpb25hbCBpbmZv
cm1hdGlvbiBpcyBub3QgcmVhbGx5IGhlbHBmdWwgaGVyZS4KPj4KPj4gSWYgeW91IGRvbid0IGxp
a2UgU2FzY2hhJ3Mgc2VyaWVzLCBJIHJlYWxseSB3YW50IHRvIGtub3cgX1dIRU5fIFJvY2tjaGlw
Cj4+IHBsYW5zIG9uIHVwc3RyZWFtaW5nIGF0IGxlYXN0IGJhc2ljIGdyYXBoaXMgc3VwcG9ydCB0
aGVtc2VsZi4KPj4KPj4gVGhlIGtlcm5lbCBpcyBvZnRlbiBjYWxsZWQgYSBkby1vY3JhY3kgLSB0
aGUgb25lIHdobyBkb2VzIHRoZSB3b3JrLCBnZXRzCj4+IHRvIGRlY2lkZS4gU28gaWYgeW91IHJl
YWxseSBkb24ndCBsaWtlIFNhc2NoYSdzIHNlcmllcyBhdCBhbGwsIEkgZG8gZXhwZWN0Cj4+IFJv
Y2tjaGlwIHRvIHN0ZXAgdXAgYW5kIHByb3ZpZGUgYSBzb2x1dGlvbiB0aGVtc2VsZiAtIGFuZCBp
biBhIHVzYWJsZQo+PiB0aW1lZnJhbWUuCj4gRXhhY3RseSB3aGF0IEhlaWtvIHNhaWQuIElmIHlv
dSB3b3VsZCBsaWtlIHRvIHVwc3RyZWFtIHRoZSBkcml2ZXIgdGhlbgo+IHRoYXQgd291bGQgYmUg
ZmFudGFzdGljIHRvIHNlZSwgYnV0IEknbSBhZnJhaWQgeW91IGRvIG5vdCBnZXQgdG8KPiBwcmV2
ZW50IHNvbWVvbmUgZWxzZSBmcm9tIGRvaW5nIHRoZSB3b3JrIHRoZW1zZWx2ZXMuCgpGaXJzdCBv
ZiBhbGwsIHdlIG5ldmVyIHN0b3AgYW55IG9uZSB0byBkb2luZyB0aGVyZSB3b3JrIG9uIHVwc3Ry
ZWFtIGlmIAp0aGUgc291cmNlIGNvZGUgaXMgd3JpdGUgdG90YWxseSBieSB0aGVtc2VsdmVzLgoK
U2Vjb25kLCB0aGVyZSBhcmUgYWxzbyBtYW55IG1vZHVsZXMgYXJlIHVwc3RyZWFtIGJ5IGRldmVs
b3BlcnMgYmFzZWQgb24gClJvY2tjaGlwIHNvdXJjZSBjb2RlLCBwbGVhc2Ugbm90ZSB0aGF0CmFs
bCBvZiB0aGVtIGhhdmUgYmFzaWMgcmVzcGVjdCB0byBvdXIgd29yaywgdGhleSBkbyBjb21tdW5p
Y2F0ZSB3aXRoIHVzIApmaXJzdC4KCgpCdXQgdGhpcyBjb21taXR0ZXIgZG8gbm90IHRha2UgYW55
IHJlc3BlY3QgdG8gb3VyIGVuZ2luZWVycyBhbmQgdGhlaXIgCmhhcmQgd29ya2luZzoKLSBIZSBk
aWRuJ3QgY29udGFjdCB3aXRoIHVzOwotIFRoZXJlIGlzbid0wqAgYW55IGluZm9ybWF0aW9uIGFi
b3V0IG9yaWdpbmFsIGF1dGhvciBpbiB0aGUgY29tbWl0IG1lc3NhZ2U7CiDCoMKgwqAgQXMgSSBo
YXZlIGtub3duLCBpZiBJIHVzZSBzb3VyY2UgY29kZSBmcm9tIGFub3RoZXIgZGV2ZWxvcGVyLCBJ
IApuZWVkIHRvIGF0IGxlYXN0IGFkZCBhICJTaWduZWQtb2ZmLWJ5IiB3aXRoIG9yaWdpbmFsIGF1
dGhvcjsKLSBUaGlzIGNvbW1pdCBhbmQgbWFpbCBkb2VzIG5vdCBldmVuIGhhdmUgYSAnQ0MnIHRv
IG9yaWdpbmFsIGF1dGhvci4KCkkgTkFLIGJlY2F1c2UgScKgIHRoaW5rIHRoaXMgaXMgbm90IHBh
cnQgb2YgdGhlwqAgb3BlbiBzb3VyY2Ugc3Bpcml0LCBhbmQgCnRoaXMga2luZCBvZsKgIGJlaGF2
aW9yIHNob3VsZCBub3QgYmUgZW5jb3VyYWdlZC4KCgpUaGFua3MsCi0gS2V2ZXIKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

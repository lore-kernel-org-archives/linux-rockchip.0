Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D278CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 00:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/O4DWKGRjlAu9FiWC+Mvq38P7TWtu1QR1UzcMb1CiNw=; b=MwnyUi4iIu4L4P
	kW0wFq6yjvgudTgH4SgCn4mV70GSQ0IsG2BP0oZbGBxpjctx1WR39MZEQaj1TLTOoI4gUyqV5VKcT
	QG4fX92OzlI6JguzIGJrm1pAzvmGB9qrK8phwb5qq0E3HZlnMI7mkIu+RK0WQ2nyjL+MDq0WjCn4V
	BD/Jh0a6UzNWfMJ+MFPz8+UdAkuK+1a508scwewKgUea/EZCRY29nt14pYqoalfTs4A1DwjCcXUFt
	PIA4J2u/ZRpk7XzVczrtD2cziaOwgDPnOmX8Tmlh9B3j7cYgVfE8BJTrcNDd86y0quVEtt41cWw8c
	IbHs1ILW2kpKLvs4VJIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIz06-00000007vuP-2KZP;
	Wed, 12 Nov 2025 00:46:18 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIz03-00000007vtB-1ETX
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 00:46:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C8E14404C7;
	Wed, 12 Nov 2025 01:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762908372; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=if7axbwbe4fKbPUmhcwwb0aTP2Nc4YP0ZBLTIgS45yc=;
	b=L5myIdjFpLQoD27hfe5TV4E53mITkvjtquH7QPjM3Gucx6BPWXzi9hC2SJQBcw47tb2Z6T
	vfBy84RnjjCk8bZdWFghNE2OLDFvdbguSXVRV9+1CbsqvZ6zQLujRCjtYUDZx4Kpfvl87s
	nENkFwKKF2L07lC4dPziH32pOLu1nPOCSnJbbm9vyXsUVyUOuBLxUe6LIjQpnwr03Ob56o
	K2uH7el2RDRjYdO2FzqBYghoaP4x/UwItBPjhz2zvCJ2EsvVBLTq8Rgiwdvkzw3wmyFDf2
	UzouRWh33ILBIc317NFDhOf7wzV3hUHWbPw69xIH9jjVwZKhIMjCsBAQiUKiSA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org> <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
Date: Wed, 12 Nov 2025 01:46:06 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_164615_580691_E45750CC 
X-CRM114-Status: GOOD (  28.67  )
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

SGVsbG8gTmFva2ksCgpPbiBXZWRuZXNkYXksIE5vdmVtYmVyIDEyLCAyMDI1IDAwOjI2IENFVCwg
RlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPiBPbiAxMS8xMS8yNSAyMzoz
MywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+ID4gT24gVHVlc2RheSwgTm92ZW1iZXIgMTEsIDIwMjUg
MTI6NTIgQ0VULCBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+ID4+IE9u
IDExLzYvMjUgMDI6NDgsIEpvc2VwaCBLb2d1dCB3cm90ZToKPiA+Pj4gT24gV2VkLCBOb3YgNSwg
MjAyNSBhdCA0OjE14oCvQU0gRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToK
PiA+Pj4+IEknZCBsaWtlIHRvIGNsYXJpZnkgdGhlIHNpdHVhdGlvbiByZWdhcmRpbmcgdGhlIHY2
IHBhdGNoIHNlcmllcyBJIHN1Ym1pdHRlZC4KPiA+Pj4+Cj4gPj4+PiBUaGUgb3JpZ2luYWwgZGV2
aWNlIHRyZWUgd29yayBmb3IgdGhlIFJhZHhhIENNNSBhbmQgSU8gQm9hcmQgd2FzCj4gPj4+PiBh
dXRob3JlZCBieSBKb3NlcGggS29ndXQuIEkgdG9vayBvdmVyIHRoZSByZXNwb25zaWJpbGl0eSBv
ZiBnZXR0aW5nIGl0Cj4gPj4+PiB1cHN0cmVhbWVkIHdpdGggaGlzIGFncmVlbWVudC4KPiA+Pj4K
PiA+Pj4gSSdsbCBjb25maXJtIHRoaXMuIEkndmUgYmVlbiBpbiBjb21tdW5pY2F0aW9uIHdpdGgg
TmFva2kuIFRoZXkgbWFkZSBhCj4gPj4+IGxhcmdlIG51bWJlciBvZiByZXZpc2lvbnMgdG8gbXkg
b3JpZ2luYWwgcGF0Y2ggc2VyaWVzLCB3aGljaCBJIHRoaW5rCj4gPj4+IGhhdmUgdGVjaG5pY2Fs
IG1lcml0LiBJIHN1Z2dlc3RlZCB0aGV5IHN1Ym1pdCB0aGUgcGF0Y2hlcyB0aGVtc2VsdmVzLAo+
ID4+PiBhbmQgZ2F2ZSB0aGVtIGV4cGxpY2l0IHBlcm1pc3Npb24gdG8gYWRkIG15IFNpZ25lZC1v
ZmYtYnkgYW5kIENDIG1lLgo+ID4+Pgo+ID4+PiBJIGFzc3VtZSB0aGlzIHdhcyB0aGUgY29ycmVj
dCB3YXkgZm9yIHRoZW0gdG8gY29udGludWUgdGhlIHdvcmsgSQo+ID4+PiBzdGFydGVkLCBidXQg
aWYgbm90LCBwbGVhc2UgbGV0IHVzIGtub3cgdGhlIGJlc3Qgd2F5IHRvIHByb2NlZWQuCj4gPj4K
PiA+PiBDYW4gYW55b25lIGhlbHAgdXM/Cj4gPiAKPiA+IEknbSBub3QgZXhhY3RseSBzdXJlIGhv
dyB0byByZXNvbHZlIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgYnV0IGZvcgo+ID4gU2lnbmVkLW9m
Zi1ieSB0YWdzIHRvIGJlIHByZXNlbnQsIGluIHRoaXMgY2FzZSB5b3UnZCBuZWVkIHRvIGhhdmUK
PiA+IENvLWRldmVsb3BlZC1ieSB0YWdzIGFzIHdlbGwsIGJlY2F1c2UgdGhlIGZpbmFsIHBhdGNo
IHZlcnNpb25zLAo+ID4gd2hpY2ggd291bGQgYmUgc3VibWl0dGVkIGJ5IE5hb2tpLCB3b3VsZCBk
aWZmZXIgc2lnbmlmaWNhbnRseSBmcm9tCj4gPiB0aGUgdmVyc2lvbnMgdGhhdCBKb3NlcGggYWN0
aXZlbHkgd29ya2VkIG9uLCBpZiBJIHVuZGVyc3Rvb2QKPiA+IGV2ZXJ5dGhpbmcgY29ycmVjdGx5
LiAgVGhvdWdoLCBmb3IgSm9zZXBoJ3MgU2lnbmVkLW9mZi1ieSB0YWdzIHRvCj4gPiBiZSBpbmNs
dWRlZCB0aGVyZSwgaGUgd291bGQgYWxzbyBuZWVkIHRvIHBhcnRpY2lwYXRlIGFjdGl2ZWx5IGlu
Cj4gPiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIGZpbmFsIHBhdGNoIHZlcnNpb25zLgo+IAo+IGh0
dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1w
YXRjaGVzLmh0bWwjd2hlbi10by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVsb3BlZC1ieQo+
IAo+IElmCj4gLS0tLQo+IEZyb206IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtvZ3V0QGdtYWlsLmNv
bT4KPiAKPiA8Y2hhbmdlbG9nPgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBLb2d1dCA8am9z
ZXBoLmtvZ3V0QGdtYWlsLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IEZVS0FVTUkgTmFva2kgPG5h
b2tpQHJhZHhhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4
YS5jb20+Cj4gLS0tLQo+IHRoZW4gSSBjYW4gc3VibWl0IG15IHBhdGNoIHNlcmllcz8KCkFjdHVh
bGx5LCB0aGUgQ28tZGV2ZWxvcGVkLWJ5IHRhZ3Mgd291bGQgYmUgcG9pbnRpbmcgdG8gSm9zZXBo
CmluIHRoYXQgY2FzZSwgYnV0IGFzIEkgZGVzY3JpYmVkIGl0IGFib3ZlLCB0aGlzIGFwcHJvYWNo
IGJhc2ljYWxseQpjYW5ub3QgYmUgdXNlZCwgYmVjYXVzZSBKb3NlcGgncyBvcmlnaW5hbCB3b3Jr
IGRpZmZlcnMgYSBsb3QgZnJvbQp3aGF0IHlvdSdkIGFjdHVhbGx5IHN1Ym1pdCB0byB0aGUgbWFp
bGluZyBsaXN0KHMpLgoKPiBPciwKPiAKPiA+IEFub3RoZXIgb3B0aW9uLCB0ZWNobmljYWxseSBh
IGJpdCBzaW1wbGVyLCB3b3VsZCBiZSB0byBpbmNsdWRlIGp1c3QKPiA+IE9yaWdpbmFsbHktYnkg
dGFncyBmb3IgSm9zZXBoLCB3aGljaCB3b3VsZCBpbmRpY2F0ZSB0aGF0IEpvc2VwaCBnYXZlCj4g
PiB1cCBvbiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIHBhdGNoZXMgYW5kIGhhbmRlZCB0aGVtIG92
ZXIgdG8gTmFva2kKPiA+IGZvciBmdXR1cmUgZGV2ZWxvcG1lbnQgYW5kIHN1Ym1pc3Npb24gdG8g
dGhlIG1haWxpbmcgbGlzdHMuIFRob3VnaCwKPiA+IHRoYXQgd291bGQgcmVxdWlyZSBKb3NlcGgg
dG8gcHVibGljbHkgc3RhdGUgZXhhY3RseSB0aGF0Lgo+IAo+IEkgY2Fubm90IGZpbmQgYW55IGRv
Y3VtZW50YXRpb24gYWJvdXQgIk9yaWdpbmFsbHktYnkiLgo+IElzIHRoaXMgY29ycmVjdD8KPiAt
LS0tCj4gPGNoYW5nZWxvZz4KPiAKPiBPcmlnaW5hbGx5LWJ5OiBKb3NlcGggS29ndXQgPGpvc2Vw
aC5rb2d1dEBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lA
cmFkeGEuY29tPgo+IC0tLS0KClRoYXQgYXBwcm9hY2ggaXMgdGhlIG9ubHkgSSBzZWUgYXBwbGlj
YWJsZSBpbiB0aGlzIGNhc2UuICBIb3dldmVyLApsZXQncyBoZWFyIG9waW5pb25zIGZyb20gb3Ro
ZXIgcGVvcGxlIGFzIHdlbGwuCgpCeSB0aGUgd2F5LCB3aGF0IHlvdSBjYWxsZWQgY2hhbmdlbG9n
cyBpbiB0aGUgZXhhbXBsZXMgYWJvdmUgaXMKdXN1YWxseSBjYWxsZWQgcGF0Y2ggZGVzY3JpcHRp
b25zLiAgV2hlbiB0aGV5IGJlY29tZSBtZXJnZWQsIHRoZXkKYmVjb21lIGNhbGxlZCBjb21taXQg
ZGVzY3JpcHRpb25zIG9yLCBzb21ldGltZXMsIGNvbW1pdCBtZXNzYWdlcy4KVXNpbmcgdGhlIHN0
YW5kYXJkIGxpbmdvIHVzdWFsbHkgaGVscHMuIDopCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

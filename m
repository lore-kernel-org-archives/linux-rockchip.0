Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A677CC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 13:31:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9592D619B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 13:31:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9592D619B4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2EI2x7DzhEVvY2QlbDP4VmcuAW9vf8I+vN+ECuz1GIM=; b=fhvW/S87KEYUUY0Iev9l7Hp15
	V8aksyFlTyvCmQ4R9PnkUHClEZgfH9xpNcpZ9ZJ1HaETTK6PZpDVZ3nVThyC5AkpJNyQVGX/WnS1v
	Mg2DhQVNx18+6PMhTxi96TGIyvyyRjYr2lFSPkt2Hc6cgwq19TvPH2k5hps9p8Ic7iM0qM8Sa2FTq
	fk8nPrJBJzdYpDx+CqupqHBKzN7LzdAvwy33HKYqlMrPnh9slMmpsCDkSydRUz9yANMcxFpN8IVfT
	/j+WO308EVBC0lnaO2bojhEVi5gf1wz8UIyi2cdTC4GOW9D74qrkwGfWk6/3DheABVr8iRlYLtV7I
	qXrrBvt0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP3bu-00H9jd-Mo; Wed, 24 Mar 2021 13:31:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP3bg-00H9hU-OU; Wed, 24 Mar 2021 13:31:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP3ba-0000T8-Q0; Wed, 24 Mar 2021 14:31:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "elaine.zhang" <zhangqing@rock-chips.com>, robh+dt@kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com
Subject: Re: [PATCH v4 2/4] dt-bindings: power: rockchip: Convert to
 json-schema
Date: Wed, 24 Mar 2021 14:31:25 +0100
Message-ID: <2066097.irdbgypaU6@diego>
In-Reply-To: <f1323618-7990-9bb7-a8c2-a7321a4034f8@collabora.com>
References: <20210324071609.7531-1-zhangqing@rock-chips.com>
 <40a7fad3-17bb-9275-ed4a-2e3d526d05a1@collabora.com>
 <f1323618-7990-9bb7-a8c2-a7321a4034f8@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_133132_984044_7E222BCD 
X-CRM114-Status: GOOD (  30.12  )
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

QW0gTWl0dHdvY2gsIDI0LiBNw6RyeiAyMDIxLCAxMTozMjo0MiBDRVQgc2NocmllYiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhOgo+IAo+IE9uIDI0LzMvMjEgMTE6MjUsIEVucmljIEJhbGxldGJvIGkg
U2VycmEgd3JvdGU6Cj4gPiBIaSBFbGFpbmUsCj4gPiAKPiA+IE9uIDI0LzMvMjEgMTE6MTgsIGVs
YWluZS56aGFuZyB3cm90ZToKPiA+PiBIaSwgIEVucmljCj4gPj4KPiA+PiDlnKggMjAyMS8zLzI0
IOS4i+WNiDU6NTYsIEVucmljIEJhbGxldGJvIGkgU2VycmEg5YaZ6YGTOgo+ID4+PiBIaSBFbGFp
bmUsCj4gPj4+Cj4gPj4+IFRoaXMgaXMgbm90IHRoZSBleGFjdCB2ZXJzaW9uIEkgc2VudCwgYW5k
IHlvdSByZWludHJvZHVjZWQgYSAicHJvYmxlbSIgdGhhdCB3ZXJlCj4gPj4+IGFscmVhZHkgc29s
dmVkL2Rpc2N1c3NlZCBvbiBwcmV2aW91cyB2ZXJzaW9ucy4gU2VlIGJlbG93Ogo+ID4+Pgo+ID4+
PiBPbiAyNC8zLzIxIDg6MTYsIEVsYWluZSBaaGFuZyB3cm90ZToKPiA+Pj4+IENvbnZlcnQgdGhl
IHNvYy9yb2NrY2hpcC9wb3dlcl9kb21haW4udHh0IGJpbmRpbmcgZG9jdW1lbnQgdG8KPiA+Pj4+
IGpzb24tc2NoZW1hIGFuZCBtb3ZlIHRvIHRoZSBwb3dlciBiaW5kaW5ncyBkaXJlY3RvcnkuCj4g
Pj4+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMu
YmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiA+Pj4gSWYgeW91IGRvIHNpZ25pZmljYW50IGlzIGEg
Z29vZCBwcmFjdGljZSBzaG9ydGx5IGRlc2NyaWJlIHRoZW0gd2l0aGluIFtdIGhlcmUuCj4gPj4+
Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBz
LmNvbT4KPiA+Pj4gTm90ZSB0aGF0IG15IGxhc3QgdmVyc2lvbiBhbHJlYWR5IGhhZCB0aGUKPiA+
Pj4KPiA+Pj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPj4+
Cj4gPj4+IFdoaWNoIHNob3VsZCBiZSBmaW5lIGZvciBtZXJnaW5nICh3aXRoIHByb2JhYmx5IG9u
bHkgbWlub3IgY2hhbmdlcykgYW5kIHlvdQo+ID4+PiBjb3VsZCBtYWludGFpbiBpZiB5b3UgZG9u
J3QgZG8gc2lnbmlmaWNhbnQgY2hhbmdlcywgYnV0IHRoYXQncyBub3QgdGhlIGNhc2UsIGFzCj4g
Pj4+IEkgc2FpZCwgeW91IGFyZSByZWludHJvZHVjaW5nIG9uZSBwcm9ibGVtLiBQbGVhc2UgcmV2
aWV3IHRoZSBjb21tZW50cyBhbHJlYWR5Cj4gPj4+IHJlY2VpdmVkIG9uIHRoaXMgcGF0Y2hzZXQg
b3Igc2ltaWxhciBwYXRjaHNldHMgdG8gYXZvaWQgdGhpcy4KPiA+Pj4KPiA+Pj4+IC0tLQo+ID4+
Pj4gICAuLi4vcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sICAgICAgfCAyODQg
KysrKysrKysrKysrKysrKysrCj4gPj4+PiAgIC4uLi9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvcG93
ZXJfZG9tYWluLnR4dCAgICB8IDEzNiAtLS0tLS0tLS0KPiA+Pj4+ICAgMiBmaWxlcyBjaGFuZ2Vk
LCAyODQgaW5zZXJ0aW9ucygrKSwgMTM2IGRlbGV0aW9ucygtKQo+ID4+Pj4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQKPiA+Pj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9y
b2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwKPiA+Pj4+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0
Cj4gPj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL3Bv
d2VyX2RvbWFpbi50eHQKPiA+Pj4+Cj4gPj4+PiBkaWZmIC0tZ2l0Cj4gPj4+PiBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVy
LnlhbWwKPiA+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jv
Y2tjaGlwLHBvd2VyLWNvbnRyb2xsZXIueWFtbAo+ID4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uYTIyMDMyMmM1MTM5Cj4gPj4+PiAtLS0gL2Rldi9u
dWxsCj4gPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIv
cm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sCj4gPj4+PiBAQCAtMCwwICsxLDI4NCBAQAo+
ID4+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ID4+Pj4gKyVZ
QU1MIDEuMgo+ID4+Pj4gKy0tLQo+ID4+Pj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sIwo+ID4+Pj4gKyRzY2hl
bWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4+Pj4g
Kwo+ID4+Pj4gK3RpdGxlOiBSb2NrY2hpcCBQb3dlciBEb21haW5zCj4gPj4+PiArCj4gPj4+PiAr
bWFpbnRhaW5lcnM6Cj4gPj4+PiArICAtIEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hp
cHMuY29tPgo+ID4+Pj4gKyAgLSBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+ID4+
PiBVcCB0byBSb2IsIGJ1dCBJIGRvbid0IHRoaW5rIFJvYiB3b3VsZCBsaWtlIHRvIGJlIHRoZSBt
YWludGFpbmVyLiBJIHRoaW5rIHlvdQo+ID4+PiBjYW4gb25seSBpbmNsdWRlIHlvdXJzZWxmIGFu
ZCBIZWlrby4KPiA+Pj4KPiA+Pj4KPiA+Pj4+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPiA+Pj4+ICsKPiA+Pj4+ICtkZXNjcmlwdGlvbjogfAo+ID4+Pj4gKyAgUm9ja2No
aXAgcHJvY2Vzc29ycyBpbmNsdWRlIHN1cHBvcnQgZm9yIG11bHRpcGxlIHBvd2VyIGRvbWFpbnMg
d2hpY2ggY2FuIGJlCj4gPj4+PiArICBwb3dlcmVkIHVwL2Rvd24gYnkgc29mdHdhcmUgYmFzZWQg
b24gZGlmZmVyZW50IGFwcGxpY2F0aW9uIHNjZW5hcmlvcyB0bwo+ID4+Pj4gc2F2ZSBwb3dlci4K
PiA+Pj4+ICsKPiA+Pj4+ICsgIFBvd2VyIGRvbWFpbnMgY29udGFpbmVkIHdpdGhpbiBwb3dlci1j
b250cm9sbGVyIG5vZGUgYXJlIGdlbmVyaWMgcG93ZXIgZG9tYWluCj4gPj4+PiArICBwcm92aWRl
cnMgZG9jdW1lbnRlZCBpbgo+ID4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3Bvd2VyL3Bvd2VyLWRvbWFpbi55YW1sLgo+ID4+Pj4gKwo+ID4+Pj4gKyAgSVAgY29yZXMgYmVs
b25naW5nIHRvIGEgcG93ZXIgZG9tYWluIHNob3VsZCBjb250YWluIGEgInBvd2VyLWRvbWFpbnMi
Cj4gPj4+PiArICBwcm9wZXJ0eSB0aGF0IGlzIGEgcGhhbmRsZSBmb3IgdGhlIHBvd2VyIGRvbWFp
biBub2RlIHJlcHJlc2VudGluZyB0aGUgZG9tYWluLgo+ID4+Pj4gKwo+ID4+Pj4gK3Byb3BlcnRp
ZXM6Cj4gPj4+PiArICAkbm9kZW5hbWU6Cj4gPj4+PiArICAgIGNvbnN0OiBwb3dlci1jb250cm9s
bGVyCj4gPj4+PiArCj4gPj4+PiArICBjb21wYXRpYmxlOgo+ID4+Pj4gKyAgICBlbnVtOgo+ID4+
Pj4gKyAgICAgIC0gcm9ja2NoaXAscHgzMC1wb3dlci1jb250cm9sbGVyCj4gPj4+PiArICAgICAg
LSByb2NrY2hpcCxyazMwMzYtcG93ZXItY29udHJvbGxlcgo+ID4+Pj4gKyAgICAgIC0gcm9ja2No
aXAscmszMDY2LXBvd2VyLWNvbnRyb2xsZXIKPiA+Pj4+ICsgICAgICAtIHJvY2tjaGlwLHJrMzEy
OC1wb3dlci1jb250cm9sbGVyCj4gPj4+PiArICAgICAgLSByb2NrY2hpcCxyazMxODgtcG93ZXIt
Y29udHJvbGxlcgo+ID4+Pj4gKyAgICAgIC0gcm9ja2NoaXAscmszMjI4LXBvd2VyLWNvbnRyb2xs
ZXIKPiA+Pj4+ICsgICAgICAtIHJvY2tjaGlwLHJrMzI4OC1wb3dlci1jb250cm9sbGVyCj4gPj4+
PiArICAgICAgLSByb2NrY2hpcCxyazMzMjgtcG93ZXItY29udHJvbGxlcgo+ID4+Pj4gKyAgICAg
IC0gcm9ja2NoaXAscmszMzY2LXBvd2VyLWNvbnRyb2xsZXIKPiA+Pj4+ICsgICAgICAtIHJvY2tj
aGlwLHJrMzM2OC1wb3dlci1jb250cm9sbGVyCj4gPj4+PiArICAgICAgLSByb2NrY2hpcCxyazMz
OTktcG93ZXItY29udHJvbGxlcgo+ID4+Pj4gKwo+ID4+Pj4gKyAgIiNwb3dlci1kb21haW4tY2Vs
bHMiOgo+ID4+Pj4gKyAgICBjb25zdDogMQo+ID4+Pj4gKwo+ID4+Pj4gKyAgIiNhZGRyZXNzLWNl
bGxzIjoKPiA+Pj4+ICsgICAgY29uc3Q6IDEKPiA+Pj4+ICsKPiA+Pj4+ICsgICIjc2l6ZS1jZWxs
cyI6Cj4gPj4+PiArICAgIGNvbnN0OiAwCj4gPj4+PiArCj4gPj4+PiArcGF0dGVyblByb3BlcnRp
ZXM6Cj4gPj4+PiArICAiXnBkX1swLTlhLXpfXXsyLDEwfUBbMC05YS1mXSskIjoKPiA+Pj4+ICsg
ICAgdHlwZTogb2JqZWN0Cj4gPj4+PiArICAgIGRlc2NyaXB0aW9uOiB8Cj4gPj4+PiArICAgICAg
UmVwcmVzZW50cyB0aGUgcG93ZXIgZG9tYWlucyB3aXRoaW4gdGhlIHBvd2VyIGNvbnRyb2xsZXIg
bm9kZSBhcwo+ID4+Pj4gZG9jdW1lbnRlZAo+ID4+Pj4gKyAgICAgIGluIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9wb3dlci1kb21haW4ueWFtbC4KPiA+Pj4+ICsKPiA+
Pj4gVGhlIG5vZGUgbmFtZXMgbXVzdCBiZSBnZW5lcmljLCBhcyB0aGlzIGlzIHBvd2VyLWRvbWFp
biBtdXN0IGJlIGluIHRoZSBmb3JtOgo+ID4+Pgo+ID4+PiArcGF0dGVyblByb3BlcnRpZXM6Cj4g
Pj4+ICsgICJecG93ZXItZG9tYWluQFswLTlhLWZdKyQiOgo+ID4+IEluIHRoaXMgd2F5LCBkdGJz
X2NoZWNrIGNhbm5vdCBiZSBwYXNzZWQsIGFuZCBhbGwgdGhlIHVzYWdlIG1ldGhvZHMgaW4gZHRz
IG9mCj4gPj4gUm9ja2NoaXAgbmVlZCB0byBiZSBjb3JyZWN0ZWQsIHdoaWNoIEkgdGhpbmsgaXMg
YSBiaWdnZXIgY2hhbmdlLgo+ID4gCj4gPiBXZWxsLCB0aGUgcHJvYmxlbSBpcyBpbiB0aGUgUm9j
a2NoaXAgZHRicywgc28gbmVlZHMgdG8gYmUgZml4ZWQgdGhlcmUuIFRoZQo+ID4gYmluZGluZ3Mg
bXVzdCBkZXNjcmliZSBoYXJkd2FyZSBpbiBhIGdlbmVyaWMgd2F5LCBub3QgZGVzY3JpYmUgdGhl
IGFjdHVhbCBkdGJzCj4gPiB0byBub3QgcmVwb3J0IGVycm9ycy4KPiA+IAo+IAo+IEZXSVcgSSBy
ZW1lbWJlciBJIGRpZCBzb21ldGhpbmcgcmVnYXJkaW5nIHRoaXMgYnV0IG5ldmVyIHNlbnQgdG8g
dXBzdHJlYW0sIGZlZWwKPiBmcmVlIHRvIHBpY2sgaWYgeW91IGZpbmQgdXNlZnVsLgo+IAo+ICoK
PiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2ViYWxsZXRiby9saW51eC8tL2NvbW1pdC8x
MjQ5OWYyMjNlM2QzMzYwMjQ0OWI5MTAyNDA0ZmU1NzNmYjgwNGY1Cj4gKgo+IGh0dHBzOi8vZ2l0
bGFiLmNvbGxhYm9yYS5jb20vZWJhbGxldGJvL2xpbnV4Ly0vY29tbWl0LzEyNDk5ZjIyM2UzZDMz
NjAyNDQ5YjkxMDI0MDRmZTU3M2ZiODA0ZjUKPiAqCj4gaHR0cHM6Ly9naXRsYWIuY29sbGFib3Jh
LmNvbS9lYmFsbGV0Ym8vbGludXgvLS9jb21taXQvNDkyYmYyMjEzYzM0MTE1MmExYzI0MjMyNDJj
NTYzNGI5ZTUzZmYyNwoKbG9va3MgZ29vZCB0aGF0IHdheS4gSSBkaWQgbG9vayBhdCB0aGUgcG93
ZXItZG9tYWluIGRyaXZlciBhbmQKd2UncmUgKG9mIGNvdXJzZSkgbm90IGRvaW5nIGFueXRoaW5n
IHdpdGggdGhlIG5hbWUgaW4gZnJvbnQgb2YgdGhlIEAgOi0pIC4KClNvIEknZCBiZSBoYXBweSB0
byBnZXQgdGhlc2UuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

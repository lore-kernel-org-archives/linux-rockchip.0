Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024CC388F7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 12:18:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1FDBF21734
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 12:18:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AemrOohq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1FDBF21734
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=txnrJklXFnTBLdolukpKuNUcGdX3adpEfM686s9Yi8g=; b=AemrOohq3lpO31INRWhiOxq+M
	WPq8wmPMWm55BUyoB5bNJhUBU7lqtl/AuTG5NkLeBuYm55Li0/lfy48HqGsJpej8EusHg+Imq46sJ
	yAZQpt9jG2E7QC4xz6Av0GL/sJVGs3gPL4fz/ExYEYpr88JqMGqOcU8GcfdGaGWhkWxNWDUqEVRoJ
	Rmi4NTkMpNNm87AwPruUK2lyPLjmHQlIo4pdHCz1Hv204jDct6G3/Cu3Dk/f556iB4w/Gn2lsbtKc
	O0Pf+dH3T4XM5XFNgWQrTHWe0yZ0lt9RhMKstIgH0KCcX7YJc9la9iA8Kox042H/ZqBFCeUpE0L7N
	jCcASWZyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaHjq-0005CX-HU; Wed, 04 Nov 2020 12:18:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaHjm-0005BF-Iz; Wed, 04 Nov 2020 12:18:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87CF61474;
 Wed,  4 Nov 2020 04:17:59 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE70B3F719;
 Wed,  4 Nov 2020 04:17:57 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
To: Markus Reichl <m.reichl@fivetechno.de>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
 <4984701.vSXMUKeAfh@diego>
 <4f4a83f2-3c9b-9549-0acf-057257b4255d@fivetechno.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a3f0a710-91d8-0c05-35ab-9994fba16c82@arm.com>
Date: Wed, 4 Nov 2020 12:17:57 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <4f4a83f2-3c9b-9549-0acf-057257b4255d@fivetechno.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_071802_701485_83BF6C74 
X-CRM114-Status: GOOD (  26.18  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 dianders@chromium.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC0xMS0wNCAxMToxNSwgTWFya3VzIFJlaWNobCB3cm90ZToKPiBIaSBIZWlrbywKPiAK
PiBBbSAwNC4xMS4yMCB1bSAxMTo1MSBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+PiBIaSBNYXJr
dXMsCj4+Cj4+IEFtIE1pdHR3b2NoLCA0LiBOb3ZlbWJlciAyMDIwLCAxMDo0OTo0NSBDRVQgc2No
cmllYiBNYXJrdXMgUmVpY2hsOgo+Pj4gUmVjZW50bHkgaW50cm9kdWNlZCBhc3luYyBwcm9iZSBv
biBtbWMgZGV2aWNlcyBjYW4gc2h1ZmZsZSBibG9jayBJRHMuCj4+PiBQaW4gdGhlbSB0byBmaXhl
ZCB2YWx1ZXMgdG8gZWFzZSBib290aW5nIGluIGV2aXJvbm1lbnRzIHdoZXJlIFVVSURzCj4+PiBh
cmUgbm90IHByYWN0aWNhbC4gVXNlIG5ld2x5IGludHJvZHVjZWQgYWxpYXNlcyBmb3IgbW1jYmxr
IGRldmljZXMgCj4+PiBmcm9tIFsxXS4KPj4+Cj4+PiBbMV0KPj4+IGh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcGF0Y2gvMTE3NDc2NjkvCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFya3Vz
IFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4KPj4+IC0tLQo+Pj4gwqBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaSB8IDUgKysrKysKPj4+IMKgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaSAKPj4+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4+IGluZGV4IGU3YTQ1OWZh
NDMyMi4uYmM5NDgyYjU5NDI4IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpCj4+PiBAQCAtMTMsNiArMTMsMTEgQEAgLyB7Cj4+
PiDCoMKgwqDCoCBtb2RlbCA9ICJGaXJlZmx5IFJPQy1SSzMzOTktUEMgQm9hcmQiOwo+Pj4gwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJmaXJlZmx5LHJvYy1yazMzOTktcGMiLCAicm9ja2NoaXAscmsz
Mzk5IjsKPj4+Cj4+PiArwqDCoMKgIGFsaWFzZXMgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIG1tYzAg
PSAmc2RtbWM7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbW1jMSA9ICZzZGhjaTsKPj4+ICvCoMKgwqAg
fTsKPj4+ICsKPj4KPj4gQW55IHJlYXNvbiBmb3IgdGhpcyBvZGVyaW5nPwo+IAo+IFdpdGhvdXQg
cGlubmluZyByb2MtcGMgbW9zdGx5IGJvb3RlZCBhcwo+IG1tY2JsazAgPSBzZG1tYyA9IMK1U0QK
PiBtbWNibGsxID0gc2RoY2kgPSBlTU1DCj4gc28gSSBrZXB0IHRoaXMgYmVoYXZpb3VyIGluIGFs
aWFzZXMKPiAKPiByb2MtcGMtbWV6emFuaW5lIHdpdGggcG9wdWxhdGVkIFNESU8tTTItc2xvdCBi
b290ZWQKPiBtbWMwID0gc2RpbyA9IChubyBtbWNibGspCj4gbW1jYmxrMSA9IHNkbW1jID0gwrVT
RAo+IG1tY2JsazIgPSBzZGhjaSA9IGVNTUMKCkZXSVcgdGhhdCdzIGFsc28gaG93IG15IE5hbm9Q
Qy1UNCBiZWhhdmVzLiBHaXZlbiB0aGF0IGl0J3MgdGhlIG9yZGVyIAp0aGV5IGFwcGVhciBpbiB0
aGUgRFQsIG5vdCB0b28gc3VycHJpc2luZyA7KQoKUm9iaW4uCgo+IFdpdGggbXkgYWxpYXNlcyBi
b3RoIGJvYXJkcyBiZWhhdmUgdGhlIHNhbWUgbm93IGFuZCB0aGUgb3B0aW9uYWwgU0RJTyBzbG90
Cj4gZ29lcyBvdXQgb2YgdGhlIHdheSB0byBtbWMyLgo+IAo+Pgo+PiBJLmUuIHNvbWUgcHJldmlv
dXMgaW5jYXJuYXRpb25zIGhhZCBpdCBvcmRlcmVkIGFzIChlbW1jLCBtbWMsIHNkaW8pLgo+PiBU
aGlzIGlzIGFsc28gdHJ1ZSBmb3IgdGhlIENocm9tZU9TIG91dC1vZi10cmVlIHVzYWdlIG9mIHRo
b3NlLCB0aGUKPj4gcmszMzk5IGR0cyBpbiB0aGUgY2hyb21lb3MtNC40IHRyZWUgYWxzbyBvcmRl
cnMgdGhpcyBhcyBzZGhjaSwgc2RtbWMsIAo+PiBzZGlvLgo+IAo+IFRoZSBib2FyZHMgZnJvbSBt
eSB6b28gKGV4eW5vcywgcmszMzk5KSBtb3N0bHkgY29tZSB1cCB3aXRoIFNELWNhcmQgYXMgbW1j
MAo+IGFuZCBlTU1DIGFzIG1tYzEgaW4gbWFpbmxpbmUgYXMgb3Bwb3NlZCBpbiBzb21lIHZlbmRv
ciBrZXJuZWxzLgo+IGJ1dCBJIGhhdmUgbm8gb2JqZWN0aW9uIHRvIHNldCBpdCB0aGUgb3RoZXIg
d2F5IHJvdW5kIGlmIHRoaXMgaXMgbW9yZSAKPiBjb21tb24KPiB3aXRoIHJrMzM5OSBib2FyZHMu
Cj4gCj4+Cj4+IEFuZCBJIGd1ZXNzIGEgZnVydGhlciBxdWVzdGlvbiB3b3VsZCBiZSB3aGVuIHdl
J3JlIGRvaW5nIGFyYml0YXJ5IAo+PiBvcmRlcmluZ3MKPj4gYW55d2F5LCB3aHkgaXMgdGhpcyBu
b3QgaW4gcmszMzk5LmR0c2kgOy0pID8KPiAKPiBJIHJlc3RyaWN0ZWQgdGhlIG9yZGVyaW5nIHRv
IHRoZSBib2FyZHMgSSBoYXZlLCBub3QgdG8gY29uZnVzZSBvdGhlciAKPiBlc3RhYmxpc2hlZAo+
IHVzZSBjYXNlcywgYnV0IGlmIGEgc3RhbmRhcmQgb3JkZXJpbmcgaXMgZGVzaXJlZCB0aGlzIGNh
biBnbyB0byAKPiByazMzOTkuZHRzaS4KPiAKPj4KPj4KPj4gSGVpa28KPj4KPj4KPiAKPiBHcnXD
nywKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

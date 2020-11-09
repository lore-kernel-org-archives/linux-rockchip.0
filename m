Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C641C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 12:00:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B876F20789
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 12:00:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tXJR0vBe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B876F20789
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=je0nsdKJ4O058ROoVAA8T3DntoBVudPLr0QBoKb50d4=; b=tXJR0vBex9eZxggkkPu51FOrl
	U3tjyaxGql5Cuc+nXt2VZaTVjeh1qjoTCivU3FiC2hv8zJtiSPQqKgIiujIxTJ2leJLMxAKzXx7m/
	TeMfRZC6VlPRfRq1iwO7iPVlpX2F8NUWWtgiUDnpvHR17isFHuurf5jyzps5H1Tf6OhCfAaGvP+X7
	TCTveaFp24AmXEquzVrSZWwIVCZ8LtRTvR8bARMPIB6vq0tZfN6o9wrLaO1gOnvV1SYcPCUyuK9AE
	n76QbJDaaWEztBc9ozK8qHCn1yn26ty6NEk6jV5pIJKsXQk9fQOxAp3PAvg4GqgQ6ez0ff2+8eni6
	57cQ9xwtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kc5qu-0005pz-Pa; Mon, 09 Nov 2020 12:00:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc5qq-0005oa-HC; Mon, 09 Nov 2020 12:00:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2CF9101E;
 Mon,  9 Nov 2020 04:00:45 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5087A3F718;
 Mon,  9 Nov 2020 04:00:44 -0800 (PST)
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
To: Qu Wenruo <wqu@suse.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
 <e8a91353-49ab-7581-f2a8-b8b4729072bf@suse.com>
 <4885f7f6-f71e-7d07-6096-7eb061001815@arm.com>
 <b96b1149-d2fd-c131-c329-3e1c0cf3689d@suse.com>
 <510f7f70-f6cf-0a5f-4aef-500619f237f2@suse.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <74abf5b6-4595-fc72-6029-e4475fef1a1f@arm.com>
Date: Mon, 9 Nov 2020 12:00:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <510f7f70-f6cf-0a5f-4aef-500619f237f2@suse.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_070048_697234_4CBC619B 
X-CRM114-Status: GOOD (  30.75  )
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC0xMS0wNyAxMzozMCwgUXUgV2VucnVvIHdyb3RlOgo+IAo+IAo+IE9uIDIwMjAvMTEv
NyDkuIvljYg4OjU0LCBRdSBXZW5ydW8gd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIwMjAvMTEvNyDkuIvl
jYg4OjQ3LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+PiBPbiAyMDIwLTExLTA3IDExOjM2LCBRdSBX
ZW5ydW8gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDIwMTkvMTEvMjEg5LiK5Y2IMTowNSwgTG9y
ZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4+Pj4+IE9uIFNhdCwgTm92IDE2LCAyMDE5IGF0IDEyOjU0
OjE5UE0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+Pj4+IFRoZSAwVjkgYW5kIDFWOCBz
dXBwbGllcyBwb3dlciB0aGUgUENJZSBibG9jayBpbiB0aGUgU29DIGl0c2VsZiwgYW5kCj4+Pj4+
PiBhcmUgdGh1cyBmdW5kYW1lbnRhbCB0byBQQ0llIGJlaW5nIHVzYWJsZSBhdCBhbGwuIEFzIHN1
Y2gsIGl0IG1ha2VzCj4+Pj4+PiBzZW5zZSB0byB0cmVhdCB0aGVtIGFzIG5vbi1vcHRpb25hbCBh
bmQgcmVseSBvbiBkdW1teSByZWd1bGF0b3JzIGlmCj4+Pj4+PiBub3QgZXhwbGljaXRseSBkZXNj
cmliZWQuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5t
dXJwaHlAYXJtLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgfCA2OQo+Pj4+Pj4gKysrKysrKystLS0tLS0tLS0tLS0t
Cj4+Pj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDQ0IGRlbGV0aW9u
cygtKQo+Pj4+Pgo+Pj4+PiBBcHBsaWVkIHRvIHBjaS9yb2NrY2hpcCwgdGhhbmtzLgo+Pj4+Cj4+
Pj4gU29ycnksIHRoaXMgY29tbWl0IGlzIGNhdXNlIHJlZ3Jlc3Npb24gZm9yIFJLMzM5OSBib2Fy
ZHMgdW5hYmxlIHRvCj4+Pj4gZGV0ZWN0IHRoZSBjb250cm9sbGVyIGFueW1vcmUuCj4+Pj4KPj4+
PiBUaGUgMXY4IChhbmQgMHY5KSBpcyBjYXVzaW5nIC01MTcgYW5kIHJlamVjdCB0aGUgY29udHJv
bGxlcgo+Pj4+IGluaXRpYWxpemF0aW9uLgo+Pj4KPj4+IFRoYXQncyAtRVBST0JFX0RFRkVSLCB3
aGljaCBtdXN0IG1lYW4gdGhhdCBhIHJlZ3VsYXRvciAqaXMqIGRlc2NyaWJlZCwKPj4+IGJ1dCB5
b3UncmUgbWlzc2luZyB0aGUgcmVsZXZhbnQgZHJpdmVyIC0gdGhhdCdzIGFuIGlzc3VlIHdpdGgg
eW91cgo+Pj4gY29uZmlnL2luaXRyZC4gQmVpbmcgb3B0aW9uYWwgc2hvdWxkIG9ubHkgY2hhbmdl
IHRoZSBiZWhhdmlvdXIgaWYgdGhlCj4+PiBzdXBwbHkgaXMgdG90YWxseSBhYnNlbnQgKGkuZS4g
eW91IGdldCAtRU5PREVWIGluc3RlYWQgb2YgYSBkdW1teQo+Pj4gcmVndWxhdG9yKSwgc28gSSBk
b24ndCBzZWUgdGhhdCBpdCB3b3VsZCBtYWtlIGFueSBkaWZmZXJlbmNlIGluIHRoaXMKPj4+IHNp
dHVhdGlvbiBhbnl3YXkgOi8KPj4+Cj4+Pj4gSSdtIG5vdCBhIFBDSSBndXksIGJ1dCBhIHF1aWNr
IGdvb2dsZSBzZWFyY2ggc2hvd3MgdGhlc2UgdHdvIHZvbHRhZ2VzCj4+Pj4gYXJlIG5vdCByZWxh
dGVkIHRvIFBDSUUgY29yZSBmdW5jdGlvbmFsaXR5LCBlc3BlY2lhbGx5IGNvbnNpZGVyaW5nIHRo
ZQo+Pj4+IGNvbnRyb2xsZXIgdXNlZCBpbiBSSzMzOTkgYXJlIG1vc3RseSB0byBwcm92aWRlIE5W
TUUgc3VwcG9ydC4KPj4+Cj4+PiBVbmxpa2UgdGhlIDEyViBhbmQgM1YzIHN1cHBsaWVzIHRvIHRo
ZSBzbG90LCB0aGVzZSBzdXBwbGllcyBhcmUgdG8gdGhlCj4+PiBQQ0lFX0FWRERfMFY5IGFuZCBQ
Q0lFX0FWRERfMVY4IHBpbnMgb24gdGhlIFNvQyBpdHNlbGYsIHdoaWNoIHRoZQo+Pj4gZGF0YXNo
ZWV0IGRlc2NyaWJlIGFzICJTdXBwbHkgdm9sdGFnZSBmb3IgUENJRSIuIEhhdmluZyBwb3dlciBp
cyBraW5kIG9mCj4+PiBpbXBvcnRhbnQgZm9yIHRoZSBJL08gY2lyY3VpdHMgb24gYWxsIHRoZSBz
aWduYWwgcGlucyB0byB3b3JrLgo+Pj4KPj4+IE5vdyBpdCdzIGFsbW9zdCBjZXJ0YWlubHkgdHJ1
ZSB0aGF0IHRoZXNlIHN1cHBsaWVzIHRlY2huaWNhbGx5IGJlbG9uZyB0bwo+Pj4gdGhlIHBoeSBy
YXRoZXIgdGhhbiB0aGUgY29udHJvbGxlciwgYnV0IGl0J3MgYSBiaXQgbGF0ZSB0byBjaGFuZ2Ug
dGhlCj4+PiBiaW5kaW5ncyBmb3IgdGhlIHNha2Ugb2Ygc2VtYW50aWNzLgo+Pj4KPj4+PiBUaGlz
IGJ1ZyBtYWtlcyBhbGwgUkszMzk5IHVzZXJzIHdobyBwdXQgcm9vdCBmcyBpbnRvIE5WTUUgZHJp
dmVyIHVuYWJsZQo+Pj4+IHRvIGJvb3QgdGhlIGRldmljZS4KPj4+Pgo+Pj4+IEkgcmVhbGx5IGhv
cGUgc29tZSBvbmUgY291bGQgdGVzdCB0aGUgcGF0Y2ggYmVmb3JlIGFmZmVjdGluZyB0aGUgZW5k
Cj4+Pj4gdXNlcnMgb3IgYXQgbGVhc3QgdHJ5IHRvIHVuZGVyc3RhbmQgaG93IG1vc3QgdXNlcnMg
d291bGQgdXNlIHRoZSBQQ0lFCj4+Pj4gaW50ZXJmYWNlIGZvci4KPj4+Cj4+PiBJICphbSogdGhh
dCBlbmQgdXNlciBpbiB0aGlzIGNhc2UgLSBJIHVzZSBhbiBNLjIgTlZNRSBvbiBteSBib2FyZCwg
d2hpY2gKPj4+IHByb21wdGVkIG1lIHRvIHRha2UgYSBsb29rIGF0IHRoZSByZWd1bGF0b3IgaGFu
ZGxpbmcgaGVyZSBpbiB0aGUgZmlyc3QKPj4+IHBsYWNlLCB0byBzZWUgaWYgaXQgbWlnaHQgYmUg
cG9zc2libGUgdG8gc2h1dCB1cCB0aGUgYW5ub3lpbmcgbWVzc2FnZQo+Pj4gYWJvdXQgYSAxMlYg
c3VwcGx5IHRoYXQgaXMgZW50aXJlbHkgaXJyZWxldmFudCB0byBhIGJvYXJkIHdpdGhvdXQgYQo+
Pj4gZnVsbC1zaXplIFBDSWUgc2xvdC4gSSB1c2UgYSBtYWlubGluZS1iYXNlZCBkaXN0cm8sIHNv
IEkndmUgYmVlbiBydW5uaW5nCj4+PiB0aGlzIGNoYW5nZSBmb3IgbmVhcmx5IGEgeWVhciBzaW5j
ZSBpdCBsYW5kZWQgaW4gdjUuNSwgYW5kIEknbSBzdXJlIG1hbnkKPj4+IG90aGVycyBoYXZlIHRv
by4gSSd2ZSBub3QgaGVhcmQgb2YgYW55IG90aGVyIGNvbXBsYWludHMgaW4gdGhhdCB0aW1lLi4u
Cj4+Cj4+IFNvcnJ5IGZvciB0aGUgd3Jvbmcgd29yZGluZywgdGhhbmsgeW91IGZvciB5b3VyIGNv
bnRyaWJ1dGlvbiBmaXJzdC4KPj4KPj4gSXQgcmVhbGx5IG1ha2VzIFJLMzM5OSB0aGUgcHJpbWFy
eSB0ZXN0aW5nIGJlZCBmb3IgNjRLIHBhZ2Ugc2l6ZSwgYW5kCj4+IHNhdmUgbWUgYSBsb3Qgb2Yg
dGltZS4KPj4KPj4gSSdtIHdvbmRlcmluZyBob3cgdGhlIC1FUFJPQkVfREVGRVIgaGFwcGVucy4K
Pj4gSSBoYXZlIG9ubHkgdGVzdGVkIHR3byBrZXJuZWwgdmVyc2lvbnMsIHY1LjktcmM0IGFuZCB2
NS4xMC1yYzIuCj4+IFRoZSBjb25maWcgd29ya3MgZm9yIHJjNCwgdW5sZXNzIHNvbWV0aGluZyBi
aWcgY2hhbmdlZCBpbiByYzIsIGl0Cj4+IHNob3VsZG4ndCBjaGFuZ2UgbXVjaCwgcmlnaHQ/Cj4+
Cj4+IFRoZSAxdjggYW5kIDB2OSBpcyBqdXN0IGFsd2F5c29uIHJlZ3VsYXRvciwgSU1ITyBpdCBk
b2Vzbid0IHJlYWxseSBuZWVkCj4+IHNwZWNpYWwgZHJpdmVyLgo+PiBPciBkb2VzIGl0Pwo+IAo+
IE5vdCBhIHJlZ3VsYXRvciBndXlzIGJ5IGFsbCBtZWFucywgYnV0IHRoZSBkdHNpIHNob3dzIHRo
ZSAxdjggYW5kIDB2OQo+IGFyZSBhbGwgcHJvdmlkZWQgYnkgcms4MDgsIHdoaWxlIHRoZSBkbWVz
ZyBzaG93czoKPiAKPiBbICAgIDAuMTk1NjA0XSByZWctZml4ZWQtdm9sdGFnZSB2Y2MzdjMtcGNp
ZS1yZWd1bGF0b3I6IExvb2tpbmcgdXAKPiB2aW4tc3VwcGx5IGZyb20gZGV2aWNlIHRyZWUKPiBb
ICAgIDAuMTk2MDk2XSByZWctZml4ZWQtdm9sdGFnZSB2Y2MzdjMtcGNpZS1yZWd1bGF0b3I6IHZj
YzN2M19wY2llCj4gc3VwcGx5aW5nIDMzMDAwMDB1Vgo+IFsgICAgMC4xOTc3MjRdIHJlZy1maXhl
ZC12b2x0YWdlIHZjYzV2MC1ob3N0LXJlZ3VsYXRvcjogTG9va2luZyB1cAo+IHZpbi1zdXBwbHkg
ZnJvbSBkZXZpY2UgdHJlZQo+IFsgICAgMC4xOTgyMTFdIHJlZy1maXhlZC12b2x0YWdlIHZjYzV2
MC1ob3N0LXJlZ3VsYXRvcjogdmNjNXYwX2hvc3QKPiBzdXBwbHlpbmcgMHVWCj4gWyAgICAwLjE5
ODU4MV0gcmVnLWZpeGVkLXZvbHRhZ2UgdmNjNXYwLXR5cGVjLXJlZ3VsYXRvcjogTG9va2luZyB1
cAo+IHZpbi1zdXBwbHkgZnJvbSBkZXZpY2UgdHJlZQo+IFsgICAgMC4xOTkwODJdIHJlZy1maXhl
ZC12b2x0YWdlIHZjYzV2MC10eXBlYy1yZWd1bGF0b3I6IHZjYzV2MF90eXBlYwo+IHN1cHBseWlu
ZyAwdVYKPiBbICAgIDAuMTk5Mzk1XSByZWctZml4ZWQtdm9sdGFnZSB2Y2MzdjMtcGh5LXJlZ3Vs
YXRvcjogdmNjX2xhbiBzdXBwbHlpbmcKPiAzMzAwMDAwdVYKPiBbICAgIDEuMDc0MjUzXSByb2Nr
Y2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6IG5vIHZwY2llMTJ2IHJlZ3VsYXRvciBmb3VuZAo+IFsg
ICAgMS4wODY0NzBdIHB3bS1yZWd1bGF0b3IgdmRkLWxvZzogTG9va2luZyB1cCBwd20tc3VwcGx5
IGZyb20gZGV2aWNlIHRyZWUKPiBbICAgIDEuMDg2NDg0XSBwd20tcmVndWxhdG9yIHZkZC1sb2c6
IExvb2tpbmcgdXAgcHdtLXN1cHBseSBwcm9wZXJ0eSBpbgo+IG5vZGUgL3ZkZC1sb2cgZmFpbGVk
Cj4gWyAgICAxLjA4NjUwMV0gdmRkX2xvZzogc3VwcGxpZWQgYnkgcmVndWxhdG9yLWR1bW15Cj4g
WyAgICAxLjQwMjUwMF0gcms4MDgtcmVndWxhdG9yIHJrODA4LXJlZ3VsYXRvcjogdGhlcmUgaXMg
bm8gZHZzMCBncGlvCj4gWyAgICAxLjQwMzEwNF0gcms4MDgtcmVndWxhdG9yIHJrODA4LXJlZ3Vs
YXRvcjogdGhlcmUgaXMgbm8gZHZzMSBncGlvCj4gWyAgICAxLjQxOTg1Nl0gcms4MDggMC0wMDFi
OiBmYWlsZWQgdG8gcmVnaXN0ZXIgMTIgcmVndWxhdG9yCj4gWyAgICAxLjQyMjgwMV0gcms4MDgt
cmVndWxhdG9yOiBwcm9iZSBvZiByazgwOC1yZWd1bGF0b3IgZmFpbGVkIHdpdGgKPiBlcnJvciAt
MjIKPiAKPiBTbyB0aGlzIG1lYW5zIHNvbWV0aGluZyB3cm9uZyB3aXRoIHRoZSByazgwOCwgcmVz
dWx0aW5nIG5vIHZvbHRhZ2UKPiBwcm92aWRlZCBmcm9tIHJrODA4IGFuZCBzY3Jld2luZyB1cCB0
aGUgcGNpZSBjb250cm9sbGVyPwoKRnJhbmtseSBQQ0llIGlzIHRoZSBsZWFzdCBvZiB5b3VyIHdv
cnJpZXMgdGhlcmUgLSBpZiB0aGUgc3lzdGVtIFBNSUMgaXMgCmZhaWxpbmcgdG8gcHJvYmUgdGhl
biBwcmV0dHkgbXVjaCBldmVyeXRoaW5nIHdpbGwgYmUgZGVncmFkZWQ6IGNwdWZyZXEgCndvbid0
IHdvcmssIHNvbWUgU0QgY2FyZCBtb2RlcyB3b24ndCB3b3JrLCBvbiBzb21lIGJvYXJkcyBlbnRp
cmUgCnBlcmlwaGVyYWxzIGxpa2UgZXRoZXJuZXQgbWlnaHQgbm90IHdvcmsgaWYgdGhleSdyZSB3
aXJlZCB1cCB0byB1c2UgdGhlIApvcHBvc2l0ZSBJL08gZG9tYWluIHZvbHRhZ2Ugc2V0dGluZyBm
cm9tIHRoZSBTb0MncyBwb3dlci1vbiBkZWZhdWx0LgoKRm9jdXNpbmcgb24gUENJZSBnZXR0aW5n
IHByb2JlLWRlZmVycmVkIHNlZW1zIGEgYml0IGxpa2UgY29tcGxhaW5pbmcgCnRoYXQgdGhlIGNh
cnBldHMgb24gdGhlIFRpdGFuaWMgYXJlIHdldCA7KQoKUm9iaW4uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

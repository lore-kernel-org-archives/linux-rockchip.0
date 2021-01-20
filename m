Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26C9C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:20:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99C94233E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:20:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99C94233E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5FR/6jS6kL5eItYGGz7HIsbdCFpvmXWN0whXA22IAeA=; b=Ym8nBapkveIpc4z/txs21Hviy
	qEbEr6kArfiLswJpBIY+Y4YfmG2ADi8ivttvhHpArjDY5lpHFZc6dKMCu7rvEPfQDJ9jlflp254mS
	BrkBCqdvujogAMKhAJyC6OXowdwAt98gRR0pSqhAhKCu8ibBdxmEHzW6WSnhklwfd2FLbaFAJMBb5
	RHCkTCmWWmtriU8ywGerLk3sBEDXTTGZIEh+QDDwEE++7KXHIIkMteN8H2eti3nS60aSqVTpsd7zA
	kTMBdlIZt3MsjNh6GRD/s3k8dFsM+tzFQ4lzgtlLcIB1cuw3BDMw0QdQq+D/G96VWr1E8wjLXtT4i
	0HWIsdb1g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GDK-0007NC-I7; Wed, 20 Jan 2021 16:20:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GDH-0007MH-Lk
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:20:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9822731B;
 Wed, 20 Jan 2021 08:20:06 -0800 (PST)
Received: from [10.57.39.58] (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC27D3F68F;
 Wed, 20 Jan 2021 08:20:04 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <c9ff67c7-ca1d-d4a6-aef5-4c75688ed6d3@arm.com>
 <CAL_JsqK=roMm7vb=WAcLUsiru5qwFg=Sc_po1gD8oJu=JipZbg@mail.gmail.com>
 <3792680.3daJWjYHZt@diego>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0f83d344-c257-a576-ed38-8f9299047f73@arm.com>
Date: Wed, 20 Jan 2021 16:20:03 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <3792680.3daJWjYHZt@diego>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_112007_944450_6E6F0FCB 
X-CRM114-Status: GOOD (  25.53  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue <xxm@rock-chips.com>,
 PCI <linux-pci@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0wMS0yMCAxNDo1NCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIwLiBKYW51YXIgMjAyMSwgMTU6MTY6MjUgQ0VUIHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4+IE9u
IFR1ZSwgSmFuIDE5LCAyMDIxIGF0IDEyOjQwIFBNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+IHdyb3RlOgo+Pj4KPj4+IE9uIDIwMjEtMDEtMTkgMTU6MTEsIEpvaGFuIEpvbmtl
ciB3cm90ZToKPj4+PiBIaSBTaW1vbiwgSGVpa28sCj4+Pj4KPj4+PiBPbiAxLzE5LzIxIDI6MTQg
UE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+PiBIaSBKb2hhbiwKPj4+Pj4KPj4+Pj4gQW0g
RGllbnN0YWcsIDE5LiBKYW51YXIgMjAyMSwgMTQ6MDc6NDEgQ0VUIHNjaHJpZWIgSm9oYW4gSm9u
a2VyOgo+Pj4+Pj4gSGkgU2ltb24sCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmsgeW91IGZvciB0aGlzIHBh
dGNoIGZvciByazM1NjggcGNpZS4KPj4+Pj4+Cj4+Pj4+PiBJbmNsdWRlIHRoZSBSb2NrY2hpcCBk
ZXZpY2UgdHJlZSBtYWludGFpbmVyIGFuZCBhbGwgb3RoZXIgcGVvcGxlL2xpc3RzCj4+Pj4+PiB0
byB0aGUgQ0MgbGlzdC4KPj4+Pj4+Cj4+Pj4+PiAuL3NjcmlwdHMvY2hlY2twYXRjaC5wbCAtLXN0
cmljdCA8cGF0Y2gxPiA8cGF0Y2gyPgo+Pj4+Pj4KPj4+Pj4+ICAgIC4vc2NyaXB0cy9nZXRfbWFp
bnRhaW5lci5wbCAtLW5vcm9sZXMgLS1ub3JvbGVzdGF0cyAtLW5vZ2l0LWZhbGxiYWNrCj4+Pj4+
PiAtLW5vZ2l0IDxwYXRjaDE+IDxwYXRjaDI+Cj4+Pj4+Pgo+Pj4+Pj4gZ2l0IHNlbmQtZW1haWwg
LS1zdXBwcmVzcy1jYyBhbGwgLS1kcnktcnVuIC0tYW5ub3RhdGUgLS10bwo+Pj4+Pj4gaGVpa29A
c250ZWNoLmRlIC0tY2MgPC4uPiA8cGF0Y2gxPiA8cGF0Y2gyPgo+Pj4+Pj4KPj4+Pj4+IFRoaXMg
U29DIGhhcyBubyBzdXBwb3J0IGluIG1haW5saW5lIGxpbnV4IGtlcm5lbCB5ZXQuCj4+Pj4+PiBJ
biBhbGwgdGhlIGZvbGxvd2luZyB5YW1sIGRvY3VtZW50cyBmb3IgcmszNTY4IHdlIG5lZWQgaGVh
ZGVycyB3aXRoCj4+Pj4+PiBkZWZpbmVzIGZvciBjbG9ja3MgYW5kIHBvd2VyIGRvbWFpbnMsIGV0
Yy4KPj4+Pj4+Cj4+Pj4+PiBGb3IgZXhhbXBsZToKPj4+Pj4+ICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9jbG9jay9yazM1NjgtY3J1Lmg+Cj4+Pj4+PiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIv
cmszNTY4LXBvd2VyLmg+Cj4+Pj4+Pgo+Pj4+Pj4gQ291bGQgUm9ja2NoaXAgc3VibWl0IGZpcnN0
IGNsb2NrcyBhbmQgcG93ZXIgZHJpdmVycyBlbnRyaWVzIGFuZCBhIGJhc2ljCj4+Pj4+PiByazM1
NjguZHRzaSArIGV2YiBkdHM/Cj4+Pj4+PiBJbmNsdWRlIGEgcGF0Y2ggdG8gdGhpcyBzZXJpZSB3
aXRoIDMgcGNpZSBub2RlcyBhZGRlZCB0byByazM1NjguZHRzaS4KPj4+Pj4+Cj4+Pj4+PiBBIGR0
YnNfY2hlY2sgb25seSB3b3JrcyB3aXRoIGEgY29tcGxldGUgZHRzaSBhbmQgZXZiIGR0cy4KPj4+
Pj4+Cj4+Pj4+PiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+Pj4+Pj4gRFRfU0NIRU1BX0ZJ
TEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNp
ZS55YW1sCj4+Pj4+Pgo+Pj4+Pj4gT24gMS8xOC8yMSAxMDoxNyBBTSwgU2ltb24gWHVlIHdyb3Rl
Ogo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+
Pj4+Pj4+IC0tLQo+Pj4+Pj4+ICAgIC4uLi9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55
YW1sICAgICAgICB8IDEwMSArKysrKysrKysrKysrKysrKysKPj4+Pj4+PiAgICAxIGZpbGUgY2hh
bmdlZCwgMTAxIGluc2VydGlvbnMoKykKPj4+Pj4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwK
Pj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4+Pj4+Pj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPj4+Pj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmZhNjY0Y2ZmZmIyOQo+Pj4+Pj4+
IC0tLSAvZGV2L251bGwKPj4+Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+Pj4+Pj4+IEBAIC0wLDAgKzEsMTAxIEBA
Cj4+Pj4+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNs
YXVzZSkKPj4+Pj4+PiArJVlBTUwgMS4yCj4+Pj4+Pj4gKy0tLQo+Pj4+Pj4+ICskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwjCj4+Pj4+
Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1s
Iwo+Pj4+Pj4+ICsKPj4+Pj4+PiArdGl0bGU6IERlc2lnbldhcmUgYmFzZWQgUENJZSBSQyBjb250
cm9sbGVyIG9uIFJvY2tjaGlwIFNvQ3MKPj4+Pj4+PiArCj4+Pj4+Pgo+Pj4+Pj4+ICttYWludGFp
bmVyczoKPj4+Pj4+PiArICAtIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+
Pj4+Pj4+ICsgIC0gU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+Pj4+Pgo+Pj4+Pj4g
bWFpbnRhaW5lcnM6Cj4+Pj4+PiAgICAgLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
Pgo+Pj4+Pj4KPj4+Pj4+IEFkZCBvbmx5IHBlb3BsZSB3aXRoIG1haW50YWluZXIgcmlnaHRzLgo+
Pj4+Pgo+Pj4+PiBJJ2QgZGlzYWdyZWUgb24gdGhpcyA7LSkKPj4+Pgo+Pj4+IEFsbCByb2FkcyBs
ZWFkcyB0byBIZWlrby4uLiA7KQo+Pj4+Cj4+Pj4gSXQgdGFrZXMgbG9uZyB0ZXJtIGNvbW1pdG1l
bnQuCj4+Pj4gWWVhciBpbiwgeWVhciBvdXQuCj4+Pj4gS2VlcGluZyB5b3Vyc2VsZiB1cCB0byBk
YXRlIHdpdGggdGhlIGxhdGVzdCBwY2VpIGRldmVsb3BtZW50Lgo+Pj4+IENvbW11bmljYXRlIGlu
IEVuZ2xpc2guCj4+Pj4gQmUgYWJsZSB0byBzdWJtaXQgcGF0Y2hlcyB3aXRob3V0IGVycm9ycy4u
LiA7KQo+Pj4+IFJldmlldyBvdGhlciBwZW9wbGVzIHBhdGNoZXMuCj4+Pj4gUmVzcG9uZCBpbiBz
aG9ydCB0aW1lLgo+Pj4+IEJ1ZyBmaXhpbmcuCj4+Pgo+Pj4gQ3Jpa2V5LCBpdCdzIG9ubHkgYSBE
VCBiaW5kaW5nLi4uIDovCj4+Pgo+Pj4+IElmIHRoYXQncyB3aGF0IHlvdSByZWFsbHkgd2FudCwg
dGhlbiB5b3UgbXVzdCBpbmNsdWRlIGEgcGF0Y2ggdG8gdGhpcwo+Pj4+IHNlcmllIGZvciBNQUlO
VEFJTkVSUy4KPj4+Cj4+PiBJIHRoaW5rIGlmIEJqb3JuIGFuZCBMb3JlbnpvIHdhbnQgYSBzcGVj
aWZpY2FsbHkgbmFtZWQgc3ViLW1haW50YWluZXIKPj4+IGZvciB0aGUgZHJpdmVyIGl0c2VsZiwg
d2UgY2FuIGxldCB0aGVtIHNheSBzbyByYXRoZXIgdGhhbiBwcmVzdW1lLgo+Pgo+PiBGb3IgdGhl
IGJpbmRpbmcgaXQncyBteSBjYWxsLiA6KQo+Pgo+PiBUaGlzIHNob3VsZCBiZSBzb21lb25lIHdo
byBjYXJlcyBhbmQga25vd3MgdGhlIGgvdy4gSU9XLCBpZiBJIHdhbnQgdG8KPj4gZGVsZXRlIHRo
ZSBiaW5kaW5nLCBzb21lb25lIHdobyB3aWxsIG9iamVjdC4KPj4KPj4gT2YgY291cnNlLCBJJ2Qg
bGlrZSB0aGF0IHNvbWVvbmUgdG8gaGF2ZSBhbGwgdGhlIGFib3ZlIHF1YWxpdGllcyB0b28uCj4g
Cj4gSSBndWVzcyB0aGF0IHdvdWxkIGJlIHNlcGFyYXRlIGVudGl0ZXMgdGhlbiAuLi4KCll1cCwg
dGhhdCdzIHRoZSBwb2ludCBJIHdhcyB0cnlpbmcgdG8gY2xhcmlmeSAtIGJpbmRpbmcgbWFpbnRh
aW5lciBhbmQgCmRyaXZlciBtYWludGFpbmVyIGFyZSB0ZWNobmljYWxseSBkaXN0aW5jdCByb2xl
cy4gT2YgY291cnNlIGlmIHNvbWVvbmUgCmlzIGEgZHJpdmVyIG1haW50YWluZXIgdGhlbiBpdCdz
IHVzdWFsIC0gYW5kIHByZWZlcmFibGUgLSBmb3IgdGhlbSB0byAKbWFpbnRhaW4gdGhlIHJlbGV2
YW50IGJpbmRpbmdzIGFzIHdlbGwsIHNvIE1BSU5UQUlORVJTIGVudHJpZXMgZm9yIApkcml2ZXJz
IHR5cGljYWxseSBhbHNvIGNvdmVyIHRob3NlIGZvciBjb252ZW5pZW5jZSBhbmQgcHJlLXNjaGVt
YSAKaGlzdG9yaWNhbCByZWFzb25zLiBIb3dldmVyLCBzb21lb25lIGNhbiB0YWtlIHJlc3BvbnNp
YmlsaXR5IGZvciBhIApiaW5kaW5nIHdpdGhvdXQgc2lnbmluZyB1cCB0byBleHBsaWNpdGx5IG1h
aW50YWluIGEgY29ycmVzcG9uZGluZyBkcml2ZXIgCihJIGtub3cgSSBoYXZlKSwgYW5kIGluIHRo
YXQgY2FzZSB0aGUgc2NoZW1hIG1ha2VzIHRoZSBiaW5kaW5nIApzZWxmLWRvY3VtZW50aW5nIGFs
cmVhZHkgLSB3ZSBkb24ndCBoYXZlIE1BSU5UQUlORVJTIGVudHJpZXMgdGhhdCAqb25seSogCmNv
dmVyIGJpbmRpbmdzLCBvdGhlciB0aGFuIHRoZSB0b3AtbGV2ZWwgb25lIHRoYXQgc2F5cyBSb2In
cyBpbiBjaGFyZ2UgCm92ZXJhbGwgOikKClJvYmluLgoKPiBTaGF3biBhbmQgU2ltb24ga25vdyB0
aGUgaGFyZHdhcmUgd2F5IGJldHRlciwgdGhvdWdoIEknbSBub3Qgc3VyZSBpZiB0aGVpcgo+IHdv
cmsgY29tbWl0bWVudHMgd2lsbCBhbGxvdyB0aGVtIHRvIGtlZXAgdHJhY2sgb2YgYmluZGluZyBk
ZWxldGlvbnMKPiAKPiBTbyBtYXliZSBhbGwgMyBvZiB1cyA7LSkKPiAKPiBIZWlrbwo+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

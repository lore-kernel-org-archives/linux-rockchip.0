Return-Path: <SRS0=OM03=ON=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1892C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 19:49:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7721B61241
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 19:49:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7721B61241
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sHPyPOxz2kqQllFoeSnLtqHRA+jCoOaakhJrXtrfh10=; b=ry0ANErJK/vOroxxd7jvwHL9QE
	fcn6eB+OCdeRheH+GokJgbiWLZz6EnE1hNioPlVzSqopTlj1/CSur8ikr9tR+7WsqQB51s9g+7yAx
	ndipB5Shdo6EZq6w9PsqDWS8wAubFM9H1QaUSCiYmv0rvGlH4Yp1Lr1bK00X/j9x2/0VCc7bPrVTY
	tMbg14wiGqBh6hnWU0ExkvUdkKG7zVqh11V+ObZsH2FLCqrz4h8sudzRJ90YVmLee38bUUufhTb5R
	it5PG/ytAUQ4JpzH3RI8ZOFsCCCz8Tu4LTebHF0DaZ6dsuquiXQ5h0LlZDvKoEsoCOTicE/rJW0Th
	7WVzsDyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTUiS-00CUoD-7x; Thu, 23 Sep 2021 19:49:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTUiP-00CUmz-LC
 for linux-rockchip@lists.infradead.org; Thu, 23 Sep 2021 19:49:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mTUiF-0000Qq-7x; Thu, 23 Sep 2021 21:48:55 +0200
Subject: Re: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Arnd Bergmann <arnd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20210917110528.24454-1-michael.riesch@wolfvision.net>
 <2397289.mVTDCA6dLn@diego>
 <ce3f2ece-4c30-ad01-fd51-8a3e46297234@pengutronix.de>
 <8375423.X1v87zm6sT@diego>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8a775b61-dc70-aba7-8d23-888851af29a6@pengutronix.de>
Date: Thu, 23 Sep 2021 21:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8375423.X1v87zm6sT@diego>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_124905_747261_436DB168 
X-CRM114-Status: GOOD (  32.61  )
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

SGVsbG8gSGVpa28sCgpPbiAyMi4wOS4yMSAxODo1MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4g
SGkgQWhtYWQsCj4gCj4gQW0gTWl0dHdvY2gsIDIyLiBTZXB0ZW1iZXIgMjAyMSwgMTU6NDA6MzMg
Q0VTVCBzY2hyaWViIEFobWFkIEZhdG91bToKPj4gSGVsbG8gSGVpa28sCj4+Cj4+IE9uIDE3LjA5
LjIxIDE0OjAxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEhpIE1pY2hhZWwsCj4+Pgo+Pj4g
QW0gRnJlaXRhZywgMTcuIFNlcHRlbWJlciAyMDIxLCAxMzowNToyOCBDRVNUIHNjaHJpZWIgTWlj
aGFlbCBSaWVzY2g6Cj4+Pj4gSW4gb3JkZXIgdG8gZW5zdXJlIGRldGVybWluaXN0aWMgcHJvYmUg
b3JkZXIgb3ZlciBkaWZmZXJlbnQgYm9hcmRzLAo+Pj4+IG1vdmUgdGhlIGFsaWFzZXMgb2Ygb24t
U29DIGNvbXBvbmVudHMgdG8gdGhlIGNvcnJlc3BvbmRpbmcgZHRzaQo+Pj4+IGZpbGVzLgo+Pj4K
Pj4+IHBsZWFzZSByZWFkIHRoZSBnaXQgaGlzdG9yeSBvbiB0aGUgb3RoZXIgUm9ja2NoaXAgU29D
cy4gV2UganVzdCBtb3ZlZAo+Pj4gdGhlIGFsaWFzZXMgb24gdGhlbSBfdG9fIHRoZSBib2FyZC1m
aWxlcywgYXMgcmVxdWVzdGVkIGJ5Cj4+PiBhcm0tc29jIG1haW50YWluZXJzIDstKQo+Pgo+PiBb
QWRkaW5nIEFybmQgdG8gQ0NdCj4+Cj4+IEZvciBvbGQgYm9hcmRzLCBjaGFuZ2luZyB0aGUgYWxp
YXNlcyBtYXkgaW50cm9kdWNlIGJyZWFrYWdlIHRoYXQgb3V0d2VpZ2hzCj4+IHRoZSBiZW5lZml0
IG9mIGhhdmluZyBjb25zaXN0ZW50IG51bWJlcmluZy4gVGhpcyBkb2Vzbid0IHNlZW0gdG8gYXBw
bHkgaGVyZToKPj4gcmszNTY2LmR0c2kgaXMgYSBuZXcgZGV2aWNlIHRyZWUgbm90IHlldCBpbiB2
NS4xNS1yYzIgYW5kIHJrMzU2OCBpcyBuZXcgaW4KPj4gdjUuMTQgYW5kIGhhcyBvbmx5IG9uZSBi
b2FyZCBwYXJ0aWFsbHkgc3VwcG9ydGVkLCBzbyBpZiB3ZSB3ZXJlIHRvIGRvIHRoaXMKPj4gY2hh
bmdlIHdlIHNob3VsZCBkbyBpdCBub3cuIEJvYXJkcyB3aWxsIHN0aWxsIGJlIGZyZWUgdG8gb3Zl
cnJpZGUgdGhlIGFsaWFzZXMsCj4+IGJ1dCB0aG9zZSB0aGF0IGRvbid0IHdpbGwgaGF2ZSBjb25z
aXN0ZW50IG51bWJlcmluZyByZWdhcmRsZXNzIG9mIHdoZXRoZXIKPj4gbm9kZXMgYXJlIGVuYWJs
ZWQsIGNhcmRzIGFyZSBkZXRlY3RlZCBvciBwcm9iZSBvcmRlci4KPiAKPiB0aGUgcmVxdWVzdCBm
cm9tIEFybmQgd2FzIGFjdHVhbGx5IHRvIG1vdmUgdGhpbmdzIGxpa2UgbW1jIGFsaWFzZXMgX3Rv
Xwo+IGJvYXJkIGZpbGVzIGF3YXkgZnJvbSB0aGUgc29jLWxldmVsIGR0c2kuCgpZZXMsIEkgdW5k
ZXJzdG9vZCB0aGF0LiBCdXQgSSB0aGluayBmb3IgbmV3IFNvQ3MsIHRoZXJlIGlzIGEgY29udmlu
Y2luZwpjYXNlIGZvciBoYXZpbmcgdGhlbSBpbiB0aGUgU29DIGR0c2kuCgo+IFN1cHBvc2VkbHkg
dG8gcHJldmVudCBob2xlcyBpbgo+IHRoZSBudW1iZXJpbmcgZm9yIGV4YW1wbGUgaWYgdGhlIHNk
bW1jIGlzIG1tYzAsIGVtbWMgaXMgbW1jMSwKPiBidXQgc2RtbWMgbm90IHVzZWQgb24gYSBib2Fy
ZCwgd2hpY2ggd291bGQgdGhlbiBsZWF2ZSBtbWMwIGVtcHR5IC4KCldpdGhvdXQgYWxpYXNlcywg
dGhlIG51bWJlcmluZyBvZiB0aGUgTU1DIGRldmljZXMgaW4gTGludXggY2FuJ3QgYmUgcmVsaWVk
Cm9uLiBwYXJ0dXVpZHMgZG9uJ3Qgd29yayB3aGVuIHlvdSBoYXZlIHRoZSBzYW1lIGltYWdlIG9u
IGUuZy4gZU1NQyBhbmQgU0QKYW5kIGluaXRyYW1mcyBtYXkgYmUgb3ZlcmtpbGwuIEknZCB0aHVz
IHNheSBpdCdzIHJlY29tbWVuZGVkIHRvIGhhdmUgYWxpYXNlcwpmb3IgZXZlcnkgTU1DIGRlc2Ny
aWJlZCBpbiBhIGRldmljZSB0cmVlLgoKQXJndWFibHksIHRoZSBtYWpvcml0eSBvZiBwZW9wbGUg
YXJlIGZpbmUgd2l0aCB0aGUgbnVtYmVyaW5nIHVzZWQgYnkgdGhlClNvQyB2ZW5kb3IgYW5kIGhh
dmluZyBhbnkgbnVtYmVyaW5nIHdpbGwgcHJldmVudCBzY3JpcHRzIGZyb20gYnJlYWtpbmcgYWZ0
ZXIKdXBkYXRlcy4gQm9hcmQgdmVuZG9ycyB0aGF0IG1pbmQgdGhlIGhvbGVzIG9yIHdhbnQgdG8g
cmVudW1iZXIgdGhlIE1NQ3MgY2FuCmp1c3Qgb3ZlcnJpZGUgdGhlIGFsaWFzZXMgb24gYm9hcmQg
bGV2ZWwuCgpDaGVlcnMsCkFobWFkCgo+IAo+IAo+IEhlaWtvCj4gCj4gCj4gCj4+PiBIZWlrbwo+
Pj4KPj4+Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5y
aWVzY2hAd29sZnZpc2lvbi5uZXQ+Cj4+Pj4gLS0tCj4+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzIHwgNiAtLS0tLS0KPj4+PiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYuZHRzaSAgICAgICAgICAgfCA0ICsrKysKPj4+PiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAuZHRzICAgfCA3IC0t
LS0tLS0KPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSAgICAg
ICAgICAgfCA1ICsrKysrCj4+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4
LmR0c2kgICAgICAgICAgIHwgMiArKwo+Pj4+ICA1IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlv
bnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMKPj4+PiBpbmRleCBhMjQ0ZjdiODdl
MzguLjE1NmJiYjhhYTRjNCAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzCj4+Pj4gQEAgLTEwLDEyICsxMCw2IEBA
Cj4+Pj4gIAltb2RlbCA9ICJQaW5lNjQgUkszNTY2IFF1YXJ0ejY0LUEgQm9hcmQiOwo+Pj4+ICAJ
Y29tcGF0aWJsZSA9ICJwaW5lNjQscXVhcnR6NjQtYSIsICJyb2NrY2hpcCxyazM1NjYiOwo+Pj4+
ICAKPj4+PiAtCWFsaWFzZXMgewo+Pj4+IC0JCWV0aGVybmV0MCA9ICZnbWFjMTsKPj4+PiAtCQlt
bWMwID0gJnNkbW1jMDsKPj4+PiAtCQltbWMxID0gJnNkaGNpOwo+Pj4+IC0JfTsKPj4+PiAtCj4+
Pj4gIAljaG9zZW46IGNob3NlbiB7Cj4+Pj4gIAkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAw
MDAwbjgiOwo+Pj4+ICAJfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2
LmR0c2kKPj4+PiBpbmRleCAzODM5ZWVmNWU0ZjcuLmMxYjM4NDFjYWE3NyAxMDA2NDQKPj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni5kdHNpCj4+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYuZHRzaQo+Pj4+IEBAIC00LDYgKzQs
MTAgQEAKPj4+PiAgCj4+Pj4gIC8gewo+Pj4+ICAJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
NjYiOwo+Pj4+ICsKPj4+PiArCWFsaWFzZXMgewo+Pj4+ICsJCWV0aGVybmV0MCA9ICZnbWFjMTsK
Pj4+PiArCX07Cj4+Pj4gIH07Cj4+Pj4gIAo+Pj4+ICAmcG93ZXIgewo+Pj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4+PiBpbmRleCAx
ODRlMmFhMjQxNmEuLjIxOGY4NWFmNzMwYyAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4+PiBAQCAtMTMsMTMgKzEz
LDYgQEAKPj4+PiAgCW1vZGVsID0gIlJvY2tjaGlwIFJLMzU2OCBFVkIxIEREUjQgVjEwIEJvYXJk
IjsKPj4+PiAgCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWV2YjEtdjEwIiwgInJvY2tj
aGlwLHJrMzU2OCI7Cj4+Pj4gIAo+Pj4+IC0JYWxpYXNlcyB7Cj4+Pj4gLQkJZXRoZXJuZXQwID0g
JmdtYWMwOwo+Pj4+IC0JCWV0aGVybmV0MSA9ICZnbWFjMTsKPj4+PiAtCQltbWMwID0gJnNkbW1j
MDsKPj4+PiAtCQltbWMxID0gJnNkaGNpOwo+Pj4+IC0JfTsKPj4+PiAtCj4+Pj4gIAljaG9zZW46
IGNob3NlbiB7Cj4+Pj4gIAkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAwMDAwbjgiOwo+Pj4+
ICAJfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4+PiBp
bmRleCAyZmQzMTNhMjk1ZjguLmRkMGU4MDBjZjc1MiAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+Pj4+IEBAIC04LDYgKzgsMTEgQEAKPj4+PiAg
LyB7Cj4+Pj4gIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OCI7Cj4+Pj4gIAo+Pj4+ICsJ
YWxpYXNlcyB7Cj4+Pj4gKwkJZXRoZXJuZXQwID0gJmdtYWMwOwo+Pj4+ICsJCWV0aGVybmV0MSA9
ICZnbWFjMTsKPj4+PiArCX07Cj4+Pj4gKwo+Pj4+ICAJcW9zX3BjaWUzeDE6IHFvc0BmZTE5MDA4
MCB7Cj4+Pj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtcW9zIiwgInN5c2NvbiI7
Cj4+Pj4gIAkJcmVnID0gPDB4MCAweGZlMTkwMDgwIDB4MCAweDIwPjsKPj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPj4+PiBpbmRleCBlNDJmYmFjNjE0N2IuLmJi
MDU0MGQzMDA4YyAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2eC5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NnguZHRzaQo+Pj4+IEBAIC0yOSw2ICsyOSw4IEBACj4+Pj4gIAkJaTJjMyA9ICZpMmMzOwo+Pj4+
ICAJCWkyYzQgPSAmaTJjNDsKPj4+PiAgCQlpMmM1ID0gJmkyYzU7Cj4+Pj4gKwkJbW1jMCA9ICZz
ZG1tYzA7Cj4+Pj4gKwkJbW1jMSA9ICZzZGhjaTsKPj4+PiAgCQlzZXJpYWwwID0gJnVhcnQwOwo+
Pj4+ICAJCXNlcmlhbDEgPSAmdWFydDE7Cj4+Pj4gIAkJc2VyaWFsMiA9ICZ1YXJ0MjsKPj4+Pgo+
Pj4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4+Pgo+Pgo+Pgo+Pgo+IAo+
IAo+IAo+IAo+IAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAg
ICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAg
fCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

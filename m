Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D80AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 12:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCNbpfvhKhvKPUNtsCL2dEVIcAHnFPGnLUXj278RhRA=; b=pp3q5tSLxaWyPb
	kGtv8VW2BT+/IQUxUq8dcxtql+kTZsYkRNiRh+g9cNI2NHSO3Ub9aJcMW3A9I5RVssxSIpWLXE/7B
	W7irD8gs1/JRG4jGi9WO3VYlAhlmXsB4fY62+Qf1+tz/IDwI5YUSkGSzkGiOENZlMo9QSzQE3nMfO
	f6dYoccSxZXFIneocxWKKUq1PM1ru3q0/DdNoXUp05mMQk11m4qexePssHkaRQhhwsFr5sxZa9rpv
	+21Yc0eyZy9N1brlSPsju3WjHNUEomEQMp5F0FTmKRvmHmqwYdVkCcKRU7DvZREw684j5flgI0QF/
	n9DcEq7D/AQeDVkVKEHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np7lN-00Biog-27; Thu, 12 May 2022 12:17:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np7lB-00Bim1-Kf; Thu, 12 May 2022 12:17:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1383A106F;
 Thu, 12 May 2022 05:17:32 -0700 (PDT)
Received: from [10.57.80.111] (unknown [10.57.80.111])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84F843F66F;
 Thu, 12 May 2022 05:17:29 -0700 (PDT)
Message-ID: <a85eca2e-61f0-8d4b-64db-dfcc2b97d6f7@arm.com>
Date: Thu, 12 May 2022 13:17:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, kernel test robot <lkp@intel.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_051737_796217_1E6762DB 
X-CRM114-Status: GOOD (  23.23  )
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

T24gMjAyMi0wNS0wOCAxNzo1MywgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiBTdW4sIE1heSA4LCAy
MDIyIGF0IDk6NDAgQU0gUGlvdHIgT25pc3pjenVrCj4gPHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5j
b20+IHdyb3RlOgo+Pgo+Pgo+Pgo+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMjIuMDQuMjAyMiwgbyBnb2R6
LiAwOToyODoKPj4+Cj4+PiBGcm9tOiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29s
ZnZpc2lvbi5uZXQ+Cj4+Pgo+Pj4gRW5hYmxlIHRoZSBSSzM1NnggVmlkZW8gT3V0cHV0IFByb2Nl
c3NvciAoVk9QKSAyIG9uIHRoZSBSYWR4YQo+Pj4gUk9DSzMgTW9kZWwgQS4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+
Cj4+PiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+PiBM
aW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjIwMzEwMjEwMzUyLjQ1MTEzNi00LW1p
Y2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1
ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+PiAtLS0KPj4KPj4gU2FzY2hhLCBNaWNoYWVs
LAo+IAo+IEdvb2QgQWZ0ZXJub29uLAo+Pgo+PiBJJ20gdXNpbmcgdjExIHNlcmllcyBvbiA1LjE4
LXJjNSBvbiByazM1NjYgdHZib3ggd2l0aCBncmVhdCBzdWNjZXNzLgo+PiBSZWNlbnRseSBpIHN0
YXJ0ZWQgdG8gd29yayBvbiByb2NrMy1hIChyazM1NjgpLgo+PiB2MTEgZ2l2ZXMgbWUgdmlkZW8s
IGF1ZGlvIC0gYnV0IGNlYyBpcyBub3Qgd29ya2luZyBvbiByb2NrMy1hLgo+Pgo+PiBJIHdhcyB0
b2xkOgo+Pgo+PiAzMmsgY2xvY2sgbmVlZGVkIGZvciBjZWMgYW5kIHRoaXMgY2xvY2sgaXMgZ2Vu
ZXJhdGVkIGJ5IHRoZSBydGMgd2hpY2ggaXMgZW1iZWRkZWQgaW4gdGhlIHJrOHh4IHJlZ3VsYXRv
ci4KPj4gU28geW91IHNob3VsZCBtYWtlIHN1cmUgaXQgaXMgZW5hYmxlZCB3aGVuIGhkbWkgaXMg
cG93ZXJkIG9uLCBlZyBhZGRpbmcgaXQgdG8gdGhlIFJLMzU2OF9QRF9WTyBwb3dlcmRvbWFpbiBz
aG91bGQgaGVscAo+Pgo+PiBJIHdhcyB0cnlpbmcgdG8gZG8gdGhpcyBpbiBkdHMgaHR0cHM6Ly9w
YXN0ZWJpbi5jb20vNjd3dTlRckggYnV0IGNlYyBpcyBzdGlsbCBub24tZnVuY3Rpb25hbAo+Pgo+
PiBNYXliZSBZb3UgaGF2ZSBzb21lIGhpbnRzL3BvaW50ZXJzIGhlcmU/Cj4gCj4gQWRkIHRoZSBm
b2xsb3dpbmcgdG8gdGhlIEhETUkgbm9kZToKPiBhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBDTEtf
SERNSV9DRUM+Owo+IGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDMyNzY4PjsKPiAKPiBUaGUgaXNz
dWUgaXMgdGhlIGNsa19ydGMzMmtfZnJhYyBjbG9jayB0aGF0IGZlZWRzIGNsa19ydGNfMzJrIHdo
aWNoCj4gZmVlZHMgY2xrX2hkbWlfY2VjIGlzIDI0bWh6IGF0IGJvb3QsIHdoaWNoIGlzIHRvbyBo
aWdoIGZvciBDRUMgdG8KPiBmdW5jdGlvbi4KPiBJIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIGhhdmUg
dGhlIGhkbWkgZHJpdmVyIGhhbmRsZSB0aGlzLCBidXQgaXQgYnJva2UKPiBvdGhlciBTb0NzIGJl
Y2F1c2UgMzJrIGlzIGFuIG9wdGlvbmFsIGNsb2NrLgo+IFNpbmNlIHRoaXMgaXMgdGhlIGNhc2Us
IEknZCBsaWtlIFJvYmluIHRvIHdlaWdoIGluIG9uIGdvaW5nIHRoZQo+IGFzc2lnbmVkLWNsb2Nr
IHJvdXRlIGFnYWluLgoKKGRpZCB5b3UgbWVhbiB0byBDQyBtZSBvciBoYXZlIEkgbWlzc2VkIGFu
b3RoZXIgdGhyZWFkIGVsc2V3aGVyZT8pCgpGV0lXIEkgc3RpbGwgdGhpbmsgaXQgd291bGQgYmUg
Z29vZCB0byBmaXggdGhlIGNsb2NrIGRyaXZlcihzKSBhbmQvb3IgCkRUcyB0byBjb3JyZWN0bHkg
ZGVhbCB3aXRoIHRoZSBhdmFpbGFiaWxpdHkgYW5kIGNvbmZpZ3VyYXRpb24gb2YgeGluXzMyayAK
d2hlcmUgYXBwcm9wcmlhdGUuIEhvd2V2ZXIsIG11Y2ggbGlrZSB0aGUgSENMS19WTyBtZXNzIEkg
Z3Vlc3MgdGhhdCdzIGEgCmxhcmdlciBjbGVhbnVwIHRhbmdlbnQgaW4gaXRzIG93biByaWdodCwg
c28gdXNpbmcgImFzc2lnbmVkLWNsb2NrcyIgZm9yIAp0aGlzIG9uZSBjYXNlIGluIHRoZSBtZWFu
dGltZSBkb2Vzbid0IHNlZW0gdW5yZWFzb25hYmxlLiBJIHdhcyAKb3B0aW1pc3RpYyBmb3IgdGhl
IGNsZWFuZXN0LCBtb3N0IGdlbmVyaWMgc29sdXRpb24sIGJ1dCBpZiByZWFsaXR5IGdldHMgCmlu
IHRoZSB3YXkgdGhlbiBvaCB3ZWxsLgoKSnVkZ2luZyBieSB0aGUgZGF0YXNoZWV0LCBSSzM1Njgg
bWlnaHQgYWN0dWFsbHkgaGF2ZSBhIHNpbWlsYXIgc2l0dWF0aW9uIAp3aXRoIGl0cyBjbGszMmtf
aW4gcGluLCBzbyB5b3UgbWF5IHdhbnQgImFzc2lnbmVkLWNsb2NrLXBhcmVudHMiIGFzIHdlbGwg
CnRvIGVuc3VyZSB0aGUgd2hvbGUgY2xrX3J0YzMyayBicmFuY2ggaXMgcmVhbGx5IHNldCB1cCB0
aGUgd2F5IHlvdSAKY3VycmVudGx5IGV4cGVjdCAtIGJha2luZyBhbnkgbW9yZSBhc3N1bXB0aW9u
cyBpbnRvIERUQnMgbm93IG9ubHkgc2VlbXMgCnRvIGFkZCBwb3RlbnRpYWwgZm9yIGJyZWFrYWdl
IGlmIGtlcm5lbCBiZWhhdmlvdXIgY2hhbmdlcyBpbiBmdXR1cmUuCgpSb2Jpbi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A641C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 12:22:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2ABBD2256F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 12:22:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2ABBD2256F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mIcb77xihBLyZZdwMWEb2L1oZJ1+sfaV0KsN7ze5H40=; b=Cij27Xq6tk+9K57qYU4WljX9y
	bO+K/t5m5/IQY4uOLyPhCADhsXdhubqqLoYei1R9eD8PzW1B+RE7d3LySFy6WiJKXbUKC5pbCrGg3
	P2tCXMGKTm3N21cSkYeLOOLwBXr/+TAMBw+kmccCsF3h36y3Cabbk/qCH45qW8RTGArGIHDThYBFb
	6Q5HCyUzTKjBVyF1jCc+PoUsJVw4YQDxzJdmZOmhMEZCQJzkkT8DWPB9jzzvgH/z1zpksa9Bq8R67
	Lv9wGGvEkIhVtA290ZI/Sg1ZDKsrxWBJzP7dlH7b8GKFZQIaca8NZDf9CyyD9pwoq1DI/fGQHXoTq
	WyNn1/WpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0O7T-0002xt-Ax; Fri, 15 Jan 2021 12:22:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0O6i-0002UP-DA
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 12:21:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E6E361F45ECD
Message-ID: <d194755d07ee6949d6577d8d08402548dbcd75cc.camel@collabora.com>
Subject: Re: [PATCH v3 2/2] media: rockchip: rkisp1: extend uapi array sizes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>, dafna.hirschfeld@collabora.com, 
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Date: Fri, 15 Jan 2021 09:21:25 -0300
In-Reply-To: <20210115112351.208011-3-heiko@sntech.de>
References: <20210115112351.208011-1-heiko@sntech.de>
 <20210115112351.208011-3-heiko@sntech.de>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_072136_617314_A92DF575 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, tfiga@chromium.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAyMDIxLTAxLTE1IGF0IDEyOjIzICswMTAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMu
Y29tPgo+IAo+IExhdGVyIHZhcmlhbnRzIG9mIHRoZSBya2lzcDEgYmxvY2sgdXNlIG1vcmUgZW50
cmllcyBpbiBzb21lIGFycmF5czoKPiAKPiBSS0lTUDFfQ0lGX0lTUF9BRV9NRUFOX01BWMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI1IC0+IDgxCj4gUktJU1AxX0NJRl9JU1BfSElT
VF9CSU5fTl9NQVjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNiAtPiAzMgo+IFJLSVNQMV9D
SUZfSVNQX0dBTU1BX09VVF9NQVhfU0FNUExFU8KgwqDCoMKgwqDCoCAxNyAtPiAzNAo+IFJLSVNQ
MV9DSUZfSVNQX0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRSAyOCAtPiA4MQo+IAo+IGFuZCB3
ZSBjYW4gc3RpbGwgZXh0ZW5kIHRoZSB1YXBpIGR1cmluZyB0aGUgNS4xMS1yYyBjeWNsZSwgc28g
ZG8gdGhhdAo+IG5vdyB0byBiZSBvbiB0aGUgc2FmZSBzaWRlLgo+IAo+IFYxMCBhbmQgVjExIG9u
bHkgbmVlZCB0aGUgc21hbGxlciBzaXplcywgd2hpbGUgVjEyIGFuZCBWMTMgbmVlZGVkCj4gdGhl
IGxhcmdlciBzaXplcy4KPiAKPiBXaGVuIGFkZGluZyB0aGUgYmlnZ2VyIHNpemVzIG1ha2Ugc3Vy
ZSwgdmFsdWVzIGZpbGxlZCBmcm9tIGhhcmR3YXJlCj4gdmFsdWVzIGFuZCB0cmFuc21pdHRlZCB0
byB1c2Vyc3BhY2UgZG9uJ3QgbGVhayBrZXJuZWwgZGF0YSBieSB6ZXJvaW5nCj4gdGhlbSBiZWZv
cmVoYW5kLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5l
ckB0aGVvYnJvbWEtc3lzdGVtcy5jb20+CgpSZXZpZXdlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxl
emVxdWllbEBjb2xsYWJvcmEuY29tPgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA43EC48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 19:38:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9B0361284
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 19:38:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9B0361284
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh0OYq/XSoPXdVwER//CZ9APAdfgVCqGjDzQsHfh39E=; b=1Po/P/iRc1Jq/n
	Xw1C+a7dq01R9kmnbzDiiuoFaUBHIeclTEl/FKORCBw6gHp8mLSulabf+PvZAwqV5mawZyMe3x63m
	Tp3COrOmiX91gUJL+BXKijGXAejnMKO6mqzUZPFZ/ghj93TOIDJrhApT6fPfiJzUEarx41KDG+9r1
	WQJrNTxrCKWDNf2bosQBVWDG2cncLDdiM+aMJoFiAHs8QAsxY1/fUgVawIHJoWsAFM/r/fYD9Yp7W
	KmXx55iR3imTCKMAjjnKbAn6JEWnzUe7c0Zh2KBigXx9/Bq59VYvtc2nFQjuqZch+VJDzaw6n84SS
	yAEffyYA+iIuzLKDO/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luKKA-00FLHg-Q7; Fri, 18 Jun 2021 19:38:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luKJy-00FLG4-96; Fri, 18 Jun 2021 19:38:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5F2001F44CE8
Message-ID: <fbf31c292fde2f7dafb1441fc85a1ead34fdf96d.camel@collabora.com>
Subject: Re: [PATCH v3 4/8] media: Add P010 video format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 18 Jun 2021 16:38:17 -0300
In-Reply-To: <20210618131526.566762-5-benjamin.gaignard@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-5-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_123830_492994_E924015A 
X-CRM114-Status: GOOD (  13.71  )
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

SGkgQmVuamFtaW4sCgpPbiBGcmksIDIwMjEtMDYtMTggYXQgMTU6MTUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IFAwMTAgaXMgYSBZVVYgZm9ybWF0IHdpdGggMTAtYml0cyBwZXIg
cGl4ZWwgd2l0aCBpbnRlcmxlYXZlZCBVVi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiB2ZXJzaW9u
IDI6Cj4gwqAtIEFkZCBkb2N1bWVudGF0aW9uIGFib3V0IFAwMTAgcGFkZGluZwo+IMKgLSBGaXgg
dGhlIG51bWJlciBvZiBiaXRzIHBlciBjb21wb25lbnQgKDE2KQo+IAo+IMKgLi4uL21lZGlhL3Y0
bC9waXhmbXQteXV2LXBsYW5hci5yc3TCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDc4ICsrKysrKysr
KysrKysrKysrKy0KPiDCoGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmPCoMKg
wqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9j
dGwuY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSArCj4gwqBpbmNsdWRlL3VhcGkvbGludXgvdmlk
ZW9kZXYyLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+IMKgNCBmaWxl
cyBjaGFuZ2VkLCA3OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3BpeGZtdC15dXYtcGxh
bmFyLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvcGl4Zm10LXl1
di1wbGFuYXIucnN0Cj4gaW5kZXggMDkwYzA5MWFmZmQyLi5hZjQwMGQzN2M4ZmQgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9waXhmbXQteXV2LXBs
YW5hci5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3Bp
eGZtdC15dXYtcGxhbmFyLnJzdAo+IEBAIC0xMDAsOCArMTAwLDEzIEBAIEFsbCBjb21wb25lbnRz
IGFyZSBzdG9yZWQgd2l0aCB0aGUgc2FtZSBudW1iZXIgb2YgYml0cyBwZXIgY29tcG9uZW50Lgo+
IMKgwqDCoMKgwqDCoCAtIENiLCBDcgo+IMKgwqDCoMKgwqDCoCAtIE5vCj4gwqDCoMKgwqDCoMKg
IC0gNjR4MzIgbWFjcm9ibG9ja3MKPiAtCj4gLcKgwqDCoMKgwqDCoMKgIEhvcml6b250YWwgWiBv
cmRlcgo+ICvCoMKgwqAgKiAtIFY0TDJfUElYX0ZNVF9QMDEwCgpEbyB3ZSBoYXZlIHN1cHBvcnQg
aW4gR1N0cmVhbWVyIChvciBlbHNld2hlcmUpIGZvciB0aGlzPwoKVGhhbmtzLApFemVxdWllbAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

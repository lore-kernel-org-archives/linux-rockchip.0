Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D6EC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 13:20:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7928323358
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 13:20:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7928323358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TVu1Q4jiTRndX3GqqoaTbNo+Gy7ypD/H34zyeDUelBM=; b=DLEWEXhtzCKVmAs4Ci9IZVWi/
	UnXjSa7/IC2KDSakGPXFE1jixj3DVFo7jPoxrqdpjPr69GboHxR3tr5cJ7MI6mpYKTGPkz87DDUjd
	F4UKqrHGKp+DvI5wNcdygF7+NN2FkCtXQFn0McC56oHhSjaBSFd6uz9PKRA+3BwdUwJ1pniotq56I
	x7FIAGJ2x04aoDchogRwGcuFWOTsH89IJh0rZT3/6opwtii2Paisfv2HFxpQvkiMzsRcke0mYWPZl
	QrgQqzVx3UJxycle0O3MZe3UsnIRfQ24ziPtpH5AOtNDSOXaXzG3Qg1+7OB+iDQPYRaMuvNxDo3hG
	gCUFHJCmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0P1g-0003gq-Gp; Fri, 15 Jan 2021 13:20:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0P1d-0003fc-QI
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 13:20:26 +0000
Received: from [IPv6:2003:c7:cf1c:ce00:50c3:215:f597:23ab]
 (p200300c7cf1cce0050c30215f59723ab.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:ce00:50c3:215:f597:23ab])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A879B1F45E0E;
 Fri, 15 Jan 2021 13:20:24 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] media: rockchip: rkisp1: extend uapi array sizes
To: Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, helen.koike@collabora.com, linux-media@vger.kernel.org,
 mchehab@kernel.org, Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
References: <20210115112351.208011-1-heiko@sntech.de>
 <20210115112351.208011-3-heiko@sntech.de>
 <d194755d07ee6949d6577d8d08402548dbcd75cc.camel@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <771f6491-e3c4-a845-e845-11e71d7044f4@collabora.com>
Date: Fri, 15 Jan 2021 14:20:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d194755d07ee6949d6577d8d08402548dbcd75cc.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_082025_962212_5BC37138 
X-CRM114-Status: GOOD (  13.54  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpBbSAxNS4wMS4yMSB1bSAxMzoyMSBzY2hyaWViIEV6ZXF1aWVsIEdhcmNpYToKPiBPbiBGcmks
IDIwMjEtMDEtMTUgYXQgMTI6MjMgKzAxMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+PiBGcm9t
OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+
Pgo+PiBMYXRlciB2YXJpYW50cyBvZiB0aGUgcmtpc3AxIGJsb2NrIHVzZSBtb3JlIGVudHJpZXMg
aW4gc29tZSBhcnJheXM6Cj4+Cj4+IFJLSVNQMV9DSUZfSVNQX0FFX01FQU5fTUFYwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjUgLT4gODEKPj4gUktJU1AxX0NJRl9JU1BfSElTVF9C
SU5fTl9NQVjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNiAtPiAzMgo+PiBSS0lTUDFfQ0lG
X0lTUF9HQU1NQV9PVVRfTUFYX1NBTVBMRVPCoMKgwqDCoMKgwqAgMTcgLT4gMzQKPj4gUktJU1Ax
X0NJRl9JU1BfSElTVE9HUkFNX1dFSUdIVF9HUklEU19TSVpFIDI4IC0+IDgxCj4+Cj4+IGFuZCB3
ZSBjYW4gc3RpbGwgZXh0ZW5kIHRoZSB1YXBpIGR1cmluZyB0aGUgNS4xMS1yYyBjeWNsZSwgc28g
ZG8gdGhhdAo+PiBub3cgdG8gYmUgb24gdGhlIHNhZmUgc2lkZS4KPj4KPj4gVjEwIGFuZCBWMTEg
b25seSBuZWVkIHRoZSBzbWFsbGVyIHNpemVzLCB3aGlsZSBWMTIgYW5kIFYxMyBuZWVkZWQKPj4g
dGhlIGxhcmdlciBzaXplcy4KPj4KPj4gV2hlbiBhZGRpbmcgdGhlIGJpZ2dlciBzaXplcyBtYWtl
IHN1cmUsIHZhbHVlcyBmaWxsZWQgZnJvbSBoYXJkd2FyZQo+PiB2YWx1ZXMgYW5kIHRyYW5zbWl0
dGVkIHRvIHVzZXJzcGFjZSBkb24ndCBsZWFrIGtlcm5lbCBkYXRhIGJ5IHplcm9pbmcKPj4gdGhl
bSBiZWZvcmVoYW5kLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28u
c3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IAo+IFJldmlld2VkLWJ5OiBFemVxdWll
bCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogRGFmbmEgSGly
c2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPgoKVGhhbmtzLApEYWZuYQoK
PiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

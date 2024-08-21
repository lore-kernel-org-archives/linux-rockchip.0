Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62429C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 09:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bv6FoE9ZXbGBWhtEi26RfLcO3T+u7QGQfFkpWl8fyDk=; b=ehyswHHDed2krTyBFkdJIBUhg/
	56YObVNkG0Gpr2dNf2U+3BKcSpGkuJBQGzj3NZiOtOy3t+LSdZGquye548buCDFjfrRtHVwxBAFR9
	gvujgHMf14+w4R+0vv6ngWhYf+MeaXEBVV2dQwmkSRvKZHW7cCYbKIGirf02LYrnUsjMxILswu9Cw
	nbttYgVX+QXjpsSnkVFl4GVvb/L0XkJIi+Iwb1la2JHBcrLTMxKxEoWkYgX/dYjydcKuiTsJ11Jn3
	ggDXNUwJN5MpelNrT1gwsz2lVpuKm+1f3uTwnTpXL4E4DbZMMnG9g0eKR6u2UgChf8uMf69u2rf1f
	Nz1Jlr3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghTk-00000008DdD-3jGY;
	Wed, 21 Aug 2024 09:18:08 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghTQ-00000008DZg-0uSs
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 09:17:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724231866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qy/w03qNS063JlFtToFjjh16XzCuDft+i16gvV94rdw=;
	b=iddb+ygqM1XXhSJspdGXqAZcHbG8wWKgDuEMwYWo9bTr1fRQUXaK8z38LWPJgK39c7kj3W
	khp0/Ke0wvSdA5eCYBh5C8ZnEwO8qqjRJ4gpf2XmeCn84DbEx7vY43UAac6ezwl5SFifWx
	Z10S3oxTQxwxOcAmhny8NZ6YVN689GJIZr2WB4r37pfJ6xV93gYyL7Ms56ocsgNbTvbuNj
	bTXdXxcVBbaXeAqlHzGi6l8YBdZnFt/3sWP7yLg1lzqUuDKjbouoA6l9GX7UQSCqeDuEKK
	4Z8hqaDiDLcZZWiNhjlL9N7MI93oVbwQCYIXBYw/IT2zzmZ3q5weIWisJp9quA==
Date: Wed, 21 Aug 2024 11:17:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/6] arm64: dts: rockchip: enable USB 2.0 on NanoPC-T6
 LTS
In-Reply-To: <4d46d225-ac71-405f-a5a6-54933c71a010@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-1-e0138bb10042@linaro.org>
 <1975383.fIoEIV5pvu@diego> <4d46d225-ac71-405f-a5a6-54933c71a010@linaro.org>
Message-ID: <05aa7269abb1a760c00f56b4aa121505@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_021748_447654_ECCC507B 
X-CRM114-Status: GOOD (  11.63  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gTWFyY2luLAoKT24gMjAyNC0wOC0yMSAxMToxNCwgTWFyY2luIEp1c3praWV3aWN6IHdy
b3RlOgo+IE9uIDIxLjA4LjIwMjQgMTA6NTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBN
aXR0d29jaCwgMjEuIEF1Z3VzdCAyMDI0LCAxMDoyNTozMCBDRVNUIHNjaHJpZWIgTWFyY2luIAo+
PiBKdXN6a2lld2ljejoKPj4+IEZyaWVuZGx5RUxFQyBpbnRyb2R1Y2VkIG5ldyB2ZXJzaW9uIG9m
IE5hbm9QQy1UNiBTQkMuCj4+IAo+PiBJZiB0aGlzIGNoYW5nZSBpcyBzcGVjaWZpYyB0byB0aGUg
bmV3ICJMVFMiIGJvYXJkIHZhcmlhbnQsIHdoeSBpcyBpdCAKPj4gaW4KPj4gdGhlIG1haW4gYm9h
cmQgZHRzIG5vdz8KPiAKPiBJIGhhdmUgbm90IHNlZW4gZmlybXdhcmUgYnVpbGRzIHdoaWNoIGhh
bmRsZSAnaXMgaXQgTFRTIG9yIG5vdCcKPiB2ZXJzaW9uIG9mIGJvYXJkLgo+IAo+PiBJLmUuIHdp
dGggdGhpcyBjaGFuZ2UgeW91IGVuYWJsZSBpdCBvbiBfYWxsXyBOYW5vUEMtVDYgYm9hcmRzLCBl
dmVuIAo+PiB0aGUKPj4gb25lcyB3aXRob3V0IHRob3NlIGNvbXBvbmVudHM/Cj4gCj4gVGhlIG5v
bi1MVFMgdmVyc2lvbiBoYXMgdXNiMjBfaG9zdF9wd3JlbiBsaW5lIG5vdCBjb25uZWN0ZWQuIFNv
Cj4gZW5hYmxpbmcgaXQgZG9lcyBub3QgYWZmZWN0IHRoZSBib2FyZC4gU2ltaWxhciB0byA0Z19s
dGVfcHdyZW4gbGluZQo+IHdoaWNoIGlzIHByZXNlbnQgb24gTmFub1BDLVQ2IG5vbi1MVFMgYW5k
IG5vdCBjb25uZWN0ZWQgb24gTFRTIG9uZS4KPiAKPiBMb29rcyBsaWtlIHZlbmRvciB0b29rIGNh
cmUgdG8ga2VlcCBib3RoIHZlcnNpb25zIG9mIGJvYXJkIHRvIHdvcmsgd2l0aCAKPiBvbmUgRFQu
CgpJJ2Qgc3VnZ2VzdCB0aGF0IHlvdSBpbnRyb2R1Y2UgYSBuZXcgYm9hcmQgZHRzIGZpbGUsIHNw
ZWNpZmljIHRvIHRoZSBMVFMKdmVyc2lvbiBvZiB0aGlzIGJvYXJkLiAgVGhlIERUIGRlc2NyaWJl
cyBhY3R1YWwgaGFyZHdhcmUsIHNvIGl0IHNob3VsZCAKYmUKYXMgc3RyaWN0IGFuZCBhcyBzcGVj
aWZpYyBhcyBwb3NzaWJsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

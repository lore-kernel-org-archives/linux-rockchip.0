Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8616CC28B2F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 16:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yboLbq5XAGFn47sf8GC6+niPQoG+Qd6TR53yBXtJru0=; b=xp3LVGwwLidPBN
	qmsAIMseyzz9Orp2aWt3Hj7HyjBEfooHRejVw9L+smaNARMLAJAD5ltcM4uSKcgXlQD+FNTwJJzKW
	qc6msWiTxGdiDEUxNWYIK38BtcGOv3oEbLCgIHyzeNMxIKlSJdHLCDPV54Xo+nr+jxgF7YHaLle7m
	wm8E//UIfYVpVhlTU/VMRaV+exwhmLwt05+WH/OK6gh4eU7IaXx2pt+ITFnitMVxMN0ddWjFIGzIc
	JHqNxngrsvZ1COYYLZScIw40fD55QPmM11VMFxhkSPjlM5rlKUDN4GlfwPkKP11r7EJzs6JOdJOgi
	EYAri/+tIajgy2FMpeQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqE4q-0000000BU1M-0Tqi;
	Thu, 06 Mar 2025 16:28:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqE1h-0000000BT5p-0lnA
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 16:24:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741278274; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fYWr6dlfBopZYtEVg2WVCTt+2CnpilKMolUDQGbPbDpEYZTppAkCSPLfOjrGzbrCIZKbgEyVJKd5KGiOc03qCFzUu7aprWjKuYTu0nZ6Fsc3fk3vlHQ+ONm6OQRCMZTRZhVOLkxJiIG5bQwQb5o3r+WNi5/VExmRlDjJihB2vhM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741278274; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xvxYduVFYl3X9Opku3Ljw9Ut8BVpYJ9gpFoUg4cVVaE=; 
	b=SKXmVvEbNZ0LLv1Pppb6Tozb8NfacNKGwR5elYlWEC4tUPaFpTa9h+B+NwDaqFLO1ZJFqXknvgtScjXR0TwYlnQTrd9Xb51JEmy7wuRMu/lIkdbTiHB8LWdh5O7ffn2MP2fIWlvH9STdC59jgNOkXJqpqLamwS6GMBrrdtd0Dlo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741278274;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=xvxYduVFYl3X9Opku3Ljw9Ut8BVpYJ9gpFoUg4cVVaE=;
	b=BhRt9yrLqCObz9my61SnB8MefVOuVkWvay600WprbHm6cP5+dDDdTlnMNaPAWKAh
	0Up6eKd/PwW5il+HBFTI5j6ir5z588cjGfh2P+NQ7PBe+hxIUP/6NoNjHfwfcm+hCNc
	p1yebKmAtrkLg5kSk1LzzDFIP+sVtbazDH5xcb/s=
Received: by mx.zohomail.com with SMTPS id 1741278271741820.4467682880896;
	Thu, 6 Mar 2025 08:24:31 -0800 (PST)
Message-ID: <3f5da931-081a-4859-8833-655a5b5a3b9d@collabora.com>
Date: Thu, 6 Mar 2025 19:24:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/3] arm64: dts: rockchip: Add device tree support for
 HDMI RX Controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <9489391.T7Z3S40VBb@diego>
 <f5f3dd36-0f90-47dd-bc12-1e2f0207fe7d@collabora.com>
 <3216426.Mh6RI2rZIc@diego>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <3216426.Mh6RI2rZIc@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_082449_289909_69562C0D 
X-CRM114-Status: GOOD (  11.24  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMy82LzI1IDE5OjE2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+PiArCQlwaW5jdHJsLTAg
PSA8JmhkbWltMV9yeD47Cj4+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+IGht
bSwgdGhpcyBtaWdodCBiZSBiZXR0ZXIgbGl2aW5nIGluIHRoZSBib2FyZCBkdHM/Cj4+IEhETUkg
UlggY29udHJvbGxlciBpcyBhIHBhcnQgb2YgdGhlIFNvQywgaXQncyBub3Qgc3BlY2lmaWMgdG8g
YQo+PiBwYXJ0aWN1bGFyIGJvYXJkLiBJZiB5b3UgbWVhbmluZyBtb3ZlIGl0IGludG8gcm9jazVi
LmR0cywgdGhlbiB3ZQo+PiBkZWZpbml0ZWx5IHNob3VsZG4ndCBkbyBpdC4gSXQncyBsaWtlIG1v
dmluZyBQQ0llIGNvbnRyb2xsZXIgbm9kZSBpbnRvIGEKPj4gYm9hcmQgRFQg8J+Zggo+IHNvcnJ5
LCBzaG91bGQndmUgYmVlbiBjbGVhcmVyLiBJIG1lYW50IHRoZSBwaW5jdHJsLgo+IFRoZXJlIGFy
ZSB0d28gc2V0cyBvZiBwaW5zIGhkbWltMC1yeCBhbmQgaGRtaW0xLXJ4IHdoaWNoIG9uZSBpcyB1
c2VkIGlzCj4gYm9hcmQgc3BlY2lmaWMuCj4gCj4gQ2FuIHlvdSBjaGVjayBpZiAibW9zdCIgYm9h
cmRzIHVzZSB0aGUgTTEgdmFyaWFudD8KPiAKPiBSYXRpb25hbGUgYmVpbmcsIHRoYXQgaWYgd2Ug
a25vdyB0aGF0IG1vc3QgYm9hcmRzIHVzZSB0aGUgc2FtZSBzZXQgb2YKPiBwaW5zLCBpdCdzIGxp
a2VseSBvayB0byBqdXN0IGhhdmUgdGhlIG1pbm9yaXR5IGJvYXJkcyBvdmVycmlkZSBpdC4KCldp
bGwgY2hlY2ssIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24hCgotLSAKQmVzdCByZWdhcmRz
LApEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

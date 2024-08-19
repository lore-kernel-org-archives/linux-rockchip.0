Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFA60C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6aphUJdyFpvPVT09ttaiEA7T3BDofc532phmwGRSKU=; b=U73vJjZUPn6VKe
	/oX2ZQdjyrenmqLISk9bQZbR15VCwEWYDJY4VnoHD5fwxA5YW0nrrtZ4BLaxsX+1QphvI86cLwTi2
	p3xkSuSfBny4oogabgtX6qStEl41u4YZK5e6ohSxzgRhh+4AfXhxjyMA+0359+9SJKyYBHHcALg+R
	oMEbg6A0PuGDozA3n7JJloo8pjjf0jXJIMa0pSdS7OLrXxTd35l+gOF1mTboqkQpGrUhSj4Pb06HM
	CTcPRqWnh2An5eluHWNRYl1N74N7fjpj26CvXR6kbsFzRgSLSFHCGI6PE0aRjQR8No6zo9yjdGbKd
	vGWGahtn6kP78j+jlzQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg6f0-00000002UU3-1hj5;
	Mon, 19 Aug 2024 17:59:18 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg6ew-00000002UTY-1FZM;
	Mon, 19 Aug 2024 17:59:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724090294; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=J6r5s7/Z8JeFN/26tvSLxRD9tuH13mCXG//biHkwArz4lxH9bEabeMCfhvwX1Jz6HI+dw6snHomGANxT1hNZ4gmBIBpe1s52pgQDfjLJDsrus4+aGyRLSHZwiI1OK2/btb4jej9p9puqNR4b+OuBMRSzaUI9Cizfk+2ugLtMiTM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724090294; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pNG01ooGieLYITjXohGoGYVq/b4PMFucDskno7kh9Yo=; 
	b=Booe36Q8WD2x0h5CZNUq1hzMG6xAMF+j7zKV9UZBzEgUZVpK2heJBENHFKJBiZ5VchEQOO9xOMfac2H4zjNZ29O+Ta1PtcMbgpD9GzE0e8GO3yc06cHXQorKxx8AcbAjkuNOop7F20t0Y3nLwoNJomZM+it9Ecc2Y4ZP1JOhqJ0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724090294;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=pNG01ooGieLYITjXohGoGYVq/b4PMFucDskno7kh9Yo=;
	b=MM8rOpdcrt7xe+eScEzW5zHxUcQjxiueHE/FDnRu8/Pe0U3Af0w1LI2u+gCz+/G/
	975sA/Tg6i+P+y1npppA4SDz/yTTZtVhb8uieAVLaVB2m/QZkDJVs3FboGR/vh1tRmR
	2i9Gfc92wHxxstL1Gg65syWLiCQzCrdWZmGFAAi8=
Received: by mx.zohomail.com with SMTPS id 17240902923861007.2839847459757;
	Mon, 19 Aug 2024 10:58:12 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Lee Jones <lee@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Muhammed Efe Cetin <efectn@protonmail.com>, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov <alchark@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-serial@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 09/10] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Mon, 19 Aug 2024 13:59:45 -0400
Message-ID: <23696360.6Emhk5qWAg@trenzalore>
In-Reply-To: <21547916.mFnZMskM5D@diego>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <20240802214612.434179-10-detlev.casanova@collabora.com>
 <21547916.mFnZMskM5D@diego>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_105914_582331_EF652C21 
X-CRM114-Status: GOOD (  13.75  )
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

T24gV2VkbmVzZGF5LCAxNCBBdWd1c3QgMjAyNCAxMTozMTowNCBFRFQgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gSGkgRGV0bGV2LAo+IAo+IEFtIEZyZWl0YWcsIDIuIEF1Z3VzdCAyMDI0LCAyMzo0
NTozNiBDRVNUIHNjaHJpZWIgRGV0bGV2IENhc2Fub3ZhOgo+ID4gVGhpcyBkZXZpY2UgdHJlZSBj
b250YWlucyBhbGwgZGV2aWNlcyBuZWNlc3NhcnkgZm9yIGJvb3RpbmcgZnJvbSBuZXR3b3JrCj4g
PiBvciBTRCBDYXJkLgo+ID4gCj4gPiBJdCBzdXBwb3J0cyBDUFUsIENSVSwgUE0gZG9tYWlucywg
ZG1hLCBpbnRlcnJ1cHRzLCB0aW1lcnMsIFVBUlQgYW5kCj4gPiBTREhDSSAoZXZlcnl0aGluZyBu
ZWNlc3NhcnkgdG8gYm9vdCBMaW51eCBvbiB0aGlzIHN5c3RlbSBvbiBjaGlwKSBhcwo+ID4gd2Vs
bCBhcyBFdGhlcm5ldCwgSTJDLCBTUEkgYW5kIE9UUC4KPiA+IAo+ID4gQWxzbyBhZGQgdGhlIG5l
Y2Vzc2FyeSBEVCBiaW5kaW5ncyBmb3IgdGhlIFNvQy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
TGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGaW5sZXkg
WGlhbyA8ZmlubGV5LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZaWZl
bmcgWmhhbyA8eWlmZW5nLnpoYW9Acm9jay1jaGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBF
bGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPiA+IFtyZWJhc2UsIHNxdWFz
aCBhbmQgcmV3b3JkIGNvbW1pdCBtZXNzYWdlXQo+ID4gU2lnbmVkLW9mZi1ieTogRGV0bGV2IENh
c2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiAKPiBsb29rcyBsaWtlIChz
aW5jZSAyMDE5KSB0aGVyZSBpcyBhIHN0cm9uZyBzdWdnZXN0aW9uIGZvciBoYXZpbmcgYSBzb2Mg
bm9kZS4KPiAKPiBTZWUgS3J6eXN6dG9mJ3MgbWFpbCBpbgo+ICAgIAo+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC82MzIwZTRmMy1lNzM3LTQ3ODctOGE3Mi03YmQzMTRiYTg4M2NAa2VybmVs
Lm9yZwo+IC8gdGhhdCByZWZlcmVuY2VzCj4gICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy93cml0aW5nLWJpbmRpbmdzLnJzdCBbMF0KPiAKPiBTbyBJIGd1ZXNzIHdlIHNob3Vs
ZCBwcm9iYWJseSBmb2xsb3cgdGhhdCAtIGF0IGxlYXN0IGZvciBuZXcgc29jcyBmb3Igbm93LgoK
VGhhdCBtYWtlIHNlbnNlLCBidXQgd2hhdCBpcyBleGFjdGx5IGNvdmVyZWQgYnkgTU1JTyBkZXZp
Y2VzID8gZXZlcnl0aGluZyAKZXhjZXB0IGNwdXMsIGZpcm13YXJlLCBwc2NpIGFuZCB0aW1lciA/
Cgo+IEhlaWtvCj4gCj4gWzBdCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
MTEtcmMxL3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvCj4gYmluZGluZ3Mvd3JpdGlu
Zy1iaW5kaW5ncy5yc3QjTDkwCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

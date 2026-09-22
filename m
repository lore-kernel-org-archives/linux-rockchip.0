Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D169C982FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 01:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwCDkN2g8rlNA4+jwMNdrRUMB/ROGlIIWyzjQ6Kh1tc=; b=YLiMbl4UHxtg0Z
	wr/0XsYWYlLEHApd1pjGVHRAc1zVgOTIwitjJPE2Jwtf+PvE0N1uASGy4RrT0ya2RQXQuPWLyNsG5
	kP0fBYO5NGqrPgXrGF2QHCefICo+0AobyD/9ub3njQU7Hx+AhOgLTZ8PxQUrAqLs2iA1DDD353HOh
	a266FAJsEPOklYfX0DetC+u/MQpZtbflNlXXgh+qwiN7iRuBAeNMa8e54ngXME5wcVs6Aw4G5JIE/
	rqTGHuyLRmLzDPYDsIa2LfB6ez50c+01TNz1s0AqZ3W6JxP6qYYWc3sjWmNGsb6EHLhPfiwRIfeX8
	ZTPVWB7QN6Z49XSgty+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8pIr-00000003tJY-3YgV;
	Tue, 22 Sep 2026 01:28:13 +0000
Received: from mail-m81156.xmail.ntesmail.com ([156.224.81.156])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8pIo-00000003tIj-32nH;
	Tue, 22 Sep 2026 01:28:12 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea47cc08;
	Tue, 22 Sep 2026 09:28:05 +0800 (GMT+08:00)
Message-ID: <86d0a09c-f1e1-4310-aa39-6526268bdc76@rock-chips.com>
Date: Tue, 22 Sep 2026 09:28:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 09/14] pmdomain: rockchip: add optional per-domain
 power-on settle delay
To: Heiko Stuebner <heiko@sntech.de>
Cc: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>,
 royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, diederik@cknow-tech.com, alchark@flipper.net,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260915104328.45901-1-gahing@gahingwoo.com>
 <20260915104328.45901-10-gahing@gahingwoo.com> <15844283.tv2OnDr8pf@phil>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <15844283.tv2OnDr8pf@phil>
X-HM-Tid: 0aa0c6ba2f2d03a7kunmeb9776bc9d1cf
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSk4eVkxDGR9JGEoYHUhCTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=W0odU1OOloYr55qtR7C7tVj3QAyYPL77i/h4ftBbKvQbI3quKMF5KR+1/q1L6P/K/JX8O6nCNzM53G0WqUmyiLvn/yBNzFcM8m8+KlASYIQ18AARR77yMJC5J/mQMpDGdfyoYrFpsjaJBgVfNbWDNJolVVt1Llx0m7JRklgsMiE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bEMNftgPUsUp/chMEhUbfGL5eAcx9DDwnaTufeKfD2w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_182811_585436_CCBCF7BD 
X-CRM114-Status: GOOD (  17.13  )
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

SGkgSGVpa28sIEppYXhpbmcsCgpPbiA5LzIyLzIwMjYgNjowNiBBTSwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gSGksCj4gCj4gQW0gRGllbnN0YWcsIDE1LiBTZXB0ZW1iZXIgMjAyNiwgMTI6NDM6
MjMgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+PiBU
aGUgUkszNTc2IE5QVSBkb21haW5zIG5lZWQgYSBzaG9ydCBzZXR0bGUgdGltZSBhZnRlciB0aGUg
aWRsZSByZXF1ZXN0IGlzCj4+IHJlbGVhc2VkIGJlZm9yZSB0aGUgcmVnaXN0ZXJzIGJlaGluZCB0
aGUgZG9tYWluIGFuc3dlci4gV2l0aG91dCBpdCB0aGUgUW9TCj4+IHdyaXRlcyB0aGF0IHJvY2tj
aGlwX3BtdV9yZXN0b3JlX3FvcygpIGlzc3VlcyBsYW5kIHdoaWxlIHRoZSBkb21haW4gaXMKPj4g
c3RpbGwgY29taW5nIHVwLCBhbmQgdGhlIE5QVSB0aHJvd3MgYW4gYXN5bmMgU0Vycm9yIG9uIHRo
ZSBmaXJzdCBjb2xkCj4+IHBvd2VyLW9uLgo+IAo+IGFyZSB5b3UgcmVhbGx5IHJlYWxseSBzdXJl
LCB0aGlzIGlzIHRoZSBmYXVsdCBvZiB0aGUgZG9tYWluIGl0c2VsZj8KPiAKPiBUaGUgcmVndWxh
dG9yIGFsc28gY2FuIGp1c3QgbmVlZCBhIGxvbmdlciB0aW1lIHRvIGJyaW5nIHVwIHRoZSBwb3dl
ci4KPiBMb29raW5nIGF0IFswXSwgaXQgc2VlbXMgSSBhY3R1YWxseSBlbmNvdW50ZXJlZCB0aGUg
c2FtZSB0aGluZyBiYWNrCj4gb24gdGhlIFJLMzU4OC4KPiAKPiBPbmx5IGRpZmZlcmVuY2UgaXMs
IG9uIFJLMzU4OCBhIGZhbjUzNTUtdHlwZSByZWd1bGF0b3Igbm9ybWFsbHkgZG9lcwo+IHByb3Zp
ZGUgdGhlIG5wdSBzdXBwbHksIHdoaWxlIG9uIHlvdXIgYm9hcmQgaXQgY29tZXMgZnJvbSB0aGUg
bWFpbiBwbWljLgo+IAo+IENhbiB5b3UgcGxlYXNlIHRyeSB0aGUgZm9sbG93aW5nOgo+IC0gc2V0
IHlvdXIgcG93ZXItZG9tYWluIHJlZ3VsYXRvciB0byBhbHdheXMtb24gaW4gdGhlIERUIChzbyBp
dCBzdGF5cwo+ICAgb24gZXZlbiB3aGVuIHRoZSBkb21haW4gZ2V0cyB0dXJuZWQgb2ZmKQo+IC0g
dHJ5IHRvIHJlcHJvZHVjZSB5b3VyIFNFcnJvciBpc3N1ZSBhbmQgc2VlIGlmIGl0IHN0aWxsIGFw
cGVhcnMKPiAKPiAKPiBBbmQgZm9yIHRoZSBvdGhlciBjYXNlLCBsb29rIHRocm91Z2ggdGhlIHBt
aWMgZGF0YXNoZWV0IHRvIGZpbmQgdGhlCj4gZW5hYmxlLXRpbWUgdmFsdWVzIGFuZCBkbyBzb21l
dGhpbmcgc2ltaWxhciBmb3IgdGhlIFJLODA2Lgo+IAo+IAoKVGhhbmsgeW91IGZvciB5b3VyIGF0
dGVudGlvbiB0byB0aGlzIHNlcmllcy4KClByb3ZpZGluZyBzb21lIGJhY2tncm91bmQgaGVyZTog
dGhpcyBkZWxheSBpcyByZXF1aXJlZCBieSB0aGUgcG1kb21haW4KZGVzaWduIGl0c2VsZiwgcmF0
aGVyIHRoYW4gYmVpbmcgZGVwZW5kZW50IG9uIHRoZSBleHRlcm5hbCBSSzgwNiBzdGF0ZS4gClRh
a2luZyB0aGUgTlBVIGFzIGFuIGV4YW1wbGUsIGFmdGVyIGl0cyBwbWRvbWFpbiBpcyBwb3dlcmVk
IG9uLCBzb21lIAppbnRlcm5hbCBwcmVwYXJhdGlvbiBpcyBuZWVkZWQsIHdoaWNoIHRha2VzIGFw
cHJveGltYXRlbHkgMTV1cy4gCkFuZCBkdXJpbmcgdGhpcyBwZXJpb2QsIHRoZSBRT1MgcmVnaXN0
ZXJzICptdXN0KiBub3QgYmUgYWNjZXNzZWQsIApvdGhlcndpc2UgaXQgd2lsbCBjYXVzZSBhIGhh
bmcuCgotLSAKQmVzdCwgCkNoYW95aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9160C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 17:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSpzvFgFCHWHfYEo7uzQV/2eHkS9Sitol56PJ/f7axw=; b=axAm1oIqmk30LK
	w8fiYDTa6svday8Q6vNTkb76qlsY8Gc3fxJtnBluqwjwCO6pzUD5O5MH1ei50SE3YPA+DEiOV6U5X
	tuBW/M4voGRE0uVJlcBBrP2Tz0hvZ+ILFO3aWVNldgXZsWFKgi53hMZUrf5E1XPDvqRSyR7ots23z
	08WPuin7dvwlpTpSP8EqN25CAMPvHPyLdRPLB0XPoXxu9ShQ7bRAnqUp7vJ+R/qJGGhBSbfVFsI7Z
	QBgbr38iZW/BtgRRPX5FKyuSRdDTxm9EhOhyC73G3R+8n8QpplXnlEtYykKjb9MHwhQmaW5/NPqX3
	i9H8hTXWin5K4QpKvV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD4vi-00000001MvJ-1AHr;
	Thu, 08 May 2025 17:21:06 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD3so-00000001Fee-28m1;
	Thu, 08 May 2025 16:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=81aBPS6yBfZnl27zRH7ZXiOuAu20NzRTJepaZfWeHBs=;
	b=nO8XRuLaqeMEuHMiGg9pJfKjkfKjM+1nBX1d2T192PZgLu6UTTHVGO6dXzLDW0
	cf/AsM6lG5pEV67BuhdNNSy0k9bRt19USAk9majVuVTNoA4jdIixL8ThyfVnZqF0
	HUDD0DJf8rE0C9zNyn9/2YPnlyot7ejFIaDGGmtjL04wY=
Received: from [192.168.71.93] (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wAXJmHo1xxoaC4OAA--.307S2;
	Fri, 09 May 2025 00:12:25 +0800 (CST)
Message-ID: <25c89e3c-9625-49ac-b816-945ab9145f87@163.com>
Date: Fri, 9 May 2025 00:12:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
To: Niklas Cassel <cassel@kernel.org>
Cc: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, lpieralisi@kernel.org,
 kw@linux.com, bhelgaas@google.com, heiko@sntech.de,
 manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com,
 neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
 <b364eed2-047d-4c74-9f30-45291305bc4b@163.com> <aBybUYYhrmlOeLAj@ryzen>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <aBybUYYhrmlOeLAj@ryzen>
X-CM-TRANSID: _____wAXJmHo1xxoaC4OAA--.307S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jr18XF48WF4Uur1kXF1xAFb_yoWkCrbE9r
	9IkrWxC3WUGan7Crs7Krn3ArWqqayDZ345W34Fy3y3A3s8ArW5uFs0k3ZaqF1rtay3KF4q
	kryYvF1jkrW29jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbku45UUUUU==
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwpGo2gbipOKhwACsF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_091402_937006_CF722486 
X-CRM114-Status: GOOD (  15.55  )
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

CgpPbiAyMDI1LzUvOCAxOTo1MywgTmlrbGFzIENhc3NlbCB3cm90ZToKPiBIZWxsbyBIYW5zLAo+
IAo+IE9uIFRodSwgTWF5IDA4LCAyMDI1IGF0IDEyOjQ3OjEyQU0gKzA4MDAsIEhhbnMgWmhhbmcg
d3JvdGU6Cj4+IE9uIDIwMjUvNS84IDAwOjM2LCBQYWxpIFJvaMOhciB3cm90ZToKPj4+Cj4+PiBT
b3JyeSwgYnV0IEkgc3RvcHBlZCBkb2luZyBhbnkgdGVzdGluZyBvZiB0aGUgYWFyZHZhcmsgZHJp
dmVyIHdpdGggdGhlCj4+PiBtYWlubGluZSBrZXJuZWwgYWZ0ZXIgUENJIG1haW50YWluZXJzIHN0
b3BwZWQgdGFraW5nIGZpeGVzIGZvciB0aGUKPj4+IGRyaXZlciBhbmQgc3RvcHBlZCByZXNwb25k
aW5nLgo+Pj4KPj4+IEknbSBub3QgZ29pbmcgdG8gZGVidWcgc2FtZSBpc3N1ZXMgYWdhaW4sIHdo
aWNoIEkgaGF2ZSBhbmFseXplZCwKPj4+IHByZXBhcmVkIGZpeGVzLCBzZW50IHBhdGNoZXMgYW5k
IHNlZSBubyBwcm9ncmVzcyB0aGVyZS4KPj4+Cj4+PiBTZWVtcyB0aGF0IHRoZXJlIGlzIGEgc3Rh
dHVzIHF1bywgYW5kIEknbSBub3QgZ29pbmcgdG8gY2hhbmdlIGl0Lgo+Pgo+PiBEZWFyIE5pa2xh
cywKPj4KPj4gRG8geW91IGhhdmUgYW55IG9waW5pb24gb24gUGFsaSdzIHJlcGx5PyBTaG91bGQg
cGF0Y2ggMy8zIGJlIGRpc2NhcmRlZD8KPiAKPiBXaGlsZSBJIGRvIGhhdmUgYW4gb3Bpbmlvbiwg
SSdtIG5vdCBnb2luZyB0byBzaGFyZSBpdCBvbiBhIHB1YmxpYyBtYWlsaW5nCj4gbGlzdCA6KQo+
IAo+IFdpdGggcmVnYXJkcyB0byB5b3VyIHBhdGNoIDMvMywgSSB0aGluayB0aGF0IHlvdXIgcGF0
Y2ggbG9va3MgZmluZSwgYnV0IGlmCj4gdGhlIGRyaXZlciBtYWludGFpbmVyIGRvZXMgbm90IHdh
bnQgdGhlIGNsZWFudXAgZm9yID5yZWFzb25zKiwgdGhhdCBpcyB0b3RhbGx5Cj4gZmluZSB3aXRo
IG1lLiBIb3dldmVyLCBJJ20gbm90IGEgUENJIG1haW50YWluZXIsIHNvIG15IG9waW5pb24gZG9l
cyBub3QgcmVhbGx5Cj4gbWF0dGVyLiBJdCdzIHRoZSBQQ0kgbWFpbnRhaW5lcnMgdGhhdCBkZWNp
ZGUuCj4gCgpEZWFyIE5pa2xhcywKClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgcmVwbHku
IExldCdzIHdhaXQgZm9yIHRoZSBkZWNpc2lvbiBvZiB0aGUgClBDSSBtYWludGFpbmVyIG9uIHRo
aXMgc2VyaWVzIG9mIHBhdGNoZXMuCgpCZXN0IHJlZ2FyZHMsCkhhbnMKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

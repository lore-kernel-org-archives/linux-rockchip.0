Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 190D5D44145
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 08:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDG1wGI4YqcBTPMxWkaIiNjldnve29/bylvqdg4uZnI=; b=JGPhvdWExUMX7k
	Tns3t5yj9PxLuFQROln66iXx2Yi2abpei/LoYDfoFS9KizByg7BG/WaXLGR3UEsO65j9zOzzoX8Ph
	mf32DLTj7YqHIC144sr9sXLxHMjwjuGhLQhEMpWgL8UtfDrvaGiwgTsgOy84ap/ILH7GLUpqxrmIN
	1kISKw5abIbV8JM6Q+hIQhe+RRExyGbbSnHmiNTW+F7J9HmVzaS5f6Z0tsIESSlOoRFKubU0oZVYR
	mFg+5dXWPp1pygO37BYVhoOqyT/TKJbmbD1hvCZ7umr7NpebYs1DoVrmzknuXOzLN3Iaj9LtZBLOz
	5mpHQztUj0mXxjJxR5Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTysx-00000000HoQ-2set;
	Fri, 12 Dec 2025 08:52:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTysv-00000000Hnx-0QsE;
	Fri, 12 Dec 2025 08:52:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765529517; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=G2a/yMRoNYEYX32qsSh9klxJhkz42oM/Rs6xEqUkj0GCib3cTPtgakDODcACfn3fPOSdTjp5nCQ4HrmJngxT8hhyZf7P9E6vA3a5QwC4fSg7T189qetTRc0W3hnqp3yRgbsWkW2LxdAe1R679CZ3AROCYtTbM3vG2pMgTd1muF8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765529517; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xnItVhoY0Lh4ZLV1sF8rYZtnMRWqPjsgUKn0khqX+aY=; 
	b=BI76Zs6kc6v3+Stj5VlhmI+2TOP8RS8JG2lFviNZwApLZgZGTiGjkPb3B23h98BKyjHhWOwR5elzisMyHTr9GLo9tG3k6uQhHC4Zpk8IjIMrPvqVV99Ra4CWOpcZwPRvjoLuY6va0bntFhXR45YVOngOmGaOFbGTDj19AAmBGEE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765529517;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=xnItVhoY0Lh4ZLV1sF8rYZtnMRWqPjsgUKn0khqX+aY=;
	b=frIILijI+V7VsU7x9gFc0FgCtswAJVCRHVYaKIzxLkHrpO68qTVpwrcmRFR3+WkL
	mt4ffUw6Br0SsK57xAw4CqvUYtbl0gczF3m/vK4EvR/LI05DhyHqQ76aHxc/37MVr5V
	VI/8jNg2/7GGPYhGECQCln5VIG2Jznk0GfV7S9cA=
Received: by mx.zohomail.com with SMTPS id 1765529515530660.6512833937438;
	Fri, 12 Dec 2025 00:51:55 -0800 (PST)
Message-ID: <ea3241f1-14a4-44a0-9d85-3fa2a2f6f1ae@collabora.com>
Date: Fri, 12 Dec 2025 09:51:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 iommu@lists.linux.dev, jgg@ziepe.ca, joro@8bytes.org, kernel@collabora.com,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, robh@kernel.org,
 robin.murphy@arm.com
References: <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <20251212033157.3036182-1-liujianfeng1994@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20251212033157.3036182-1-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_005221_199431_192E924A 
X-CRM114-Status: GOOD (  10.36  )
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

CkxlIDEyLzEyLzIwMjUgw6AgMDQ6MzEsIEppYW5mZW5nIExpdSBhIMOpY3JpdMKgOgo+IEhpLAo+
Cj4gT24gVGh1LCAxMSBTZXAgMjAyNSAxNzo1NzoxMyArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQg
d3JvdGU6Cj4+ICsjaWZkZWYgQ09ORklHX1ZTSV9JT01NVQo+PiArdm9pZCB2c2lfaW9tbXVfcmVz
dG9yZV9jdHgoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluKTsKPj4gKyNlbHNlCj4+ICtzdGF0
aWMgaW5saW5lIHZvaWQgdnNpX2lvbW11X3Jlc3RvcmVfY3R4KHN0cnVjdCBpb21tdV9kb21haW4g
KmRvbWFpbikge30KPj4gKyNlbmRpZgo+IEFmdGVyIGFwcGx5aW5nIHRoaXMgcGF0Y2ggdG8gdjYu
MTgsIEkgZ2V0IGVycm9yIHdoZW4gYnVpbGRpbmcgdGhpcyBkcml2ZXIKPiBhcyBtb2R1bGU6Cj4K
PiBkcml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jOjU0MTo2OiBlcnJvcjogcmVkZWZpbml0aW9uIG9m
ICd2c2lfaW9tbXVfcmVzdG9yZV9jdHgnCj4gICAgNTQxIHwgdm9pZCB2c2lfaW9tbXVfcmVzdG9y
ZV9jdHgoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluKQo+ICAgICB8ICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+Cj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvaW9tbXUvdnNpLWlv
bW11LmM6MzE6Cj4gLi9pbmNsdWRlL2xpbnV4L3ZzaS1pb21tdS5oOjE4OjIwOiBub3RlOiBwcmV2
aW91cyBkZWZpbml0aW9uIG9mICd2c2lfaW9tbXVfcmVzdG9yZV9jdHgnIHdpdGggdHlwZSAndm9p
ZChzdHJ1Y3QgaW9tbXVfZG9tYWluICopJwo+IDE4IHwgc3RhdGljIGlubGluZSB2b2lkIHZzaV9p
b21tdV9yZXN0b3JlX2N0eChzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4pIHt9Cj4gICAgIHwg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+Cj4gSSBoYXZlIHRvIHVz
ZToKPiAjaWYgSVNfRU5BQkxFRChDT05GSUdfVlNJX0lPTU1VKQo+IGluc3RlYWQuCgpJIGhhdmUg
Zml4IGluIG15IGludGVybmFsIHYxMCBicmFuY2g6Cmh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5j
b20vbGludXgvZm9yLXVwc3RyZWFtLy0vY29tbWl0cy92ZXJpc2lsaWNvbl9tbXVfdjEwCkkgZG9u
J3QgcGxhbiB0byBzZW5kIHRoaXMgdXBkYXRlIGJlY2F1c2UgdGhhdCB3aWxsIGNoYW5nZSBub3Ro
aW5nIGFib3V0IGNvZGUgZHVwbGljYXRpb24gcmVtYXJrcy4KClRoYW5rcyBmb3IgdGhlIHJlcG9y
dC4KUmVnYXJkcywKQmVuamFtaW4KCj4gQmVzdCByZWdhcmRzLAo+IEppYW5mZW5nCj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

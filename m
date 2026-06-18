Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB95CD98F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 14:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mq7JusdFtozetfOniCUDOwSQBL4TJf4YJ8qsdPGS/+4=; b=yKx5H5BgYKalgb
	3lq39YIxWM7WamnNQ0q8vUr8GBkspPyLzS3VLD3hKQAFw/HALZ7j3mcV8TDYz+G5GhLNgVVQGOIYF
	NhWKG8nLouZgsrmzDeUmptdYy/zvoymA9BF7Oxl4/xkY1X5mmUDFsk3z4MNd16IQb9vvIgqCPQShI
	R8WgnkYuGR3ArXMabtegpDlpff4MMV4fdPVHsJPcqgmKrWffFP/L4OtkQf5dZnFoI250WcoeZVGtv
	rnHgv1dYPlbzX48AxftHz+xLu/zRqWkmlVQ/kLp11mreM2t7ILVaa91IeyfVVcw3AGZk8Lr9rvSuG
	wzkSpol2G1LRJUwaxVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waDuU-00000001RGS-2Uda;
	Thu, 18 Jun 2026 14:40:02 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waDuS-00000001RFI-32jl
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jun 2026 14:40:01 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c07ea058c1aso102025866b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2026 07:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781793598; cv=none;
        d=google.com; s=arc-20240605;
        b=bjBcyyKOcdr7z4k8DFtvcThO6krmSOk4C29Nqj17VHafWdulH2GjxqQO+I4MRVnrgT
         9gQSgnuJ5+KpTSwj9ppbrOdis5Xfd7dVppu9c6QsOYY1Z1AMvFDY/XE0C5djn+hMd+XN
         dlRu0/xnfk1vKAukGABRXQJPxYU6t2k54E1dB7O1pc37+3wPb34nqk1nWGQf5AXmfhFe
         sx0OwqNa7C0ZfFLjQmkS4fDngYFvc0ge2BPXQwp7CbevxwFLZBwHqGJZyZm1oqR0B5/D
         k6OC0z4yBQqWzH6t6j2Ye3Tid7ln9GMgzY5LkRkzzbxtjCAifcPYWaRkUKb4yD89vjPe
         wCWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        fh=Cj8qanHCUwYqK108+5jUP/oHE7pELcgvDoLqc8IL1ro=;
        b=KjNa+QJiSJ7r/nsKBsxyjF6ebSw65xeczxkRyMLauorH3WbA5xZvvLgdLn3xPAJWQZ
         NkEkUpLNZxMrHeYVZ6qYlD8ZDzuId8XV8f8O6DHjf2lo6ll+j2kr5A1sv+86PR6jITNz
         pdHUZZJJykFybv0Gd81Kfpxijtviu2MSQJqFkJQJwBGvicw0fzHub6KUebsTTGnnTkFZ
         1+eF3NS3vHq3Mnz9a3WUC4VOo/cVDVkoFKit8jBsJkEltO9DFcrDVkoFTazxRFvZDTQa
         bLN6oKuLvDsjN98MApvJvfS34b66P1VIapONiU3ssy8IdOQQtXxR6HONcAfWA1edLM3z
         +mDQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781793598; x=1782398398; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        b=7v+iGvUWiKKZA35zA540yJtNVV7zdEjC3LHKsCu5PYxf24q869ZbB5k2oqenpVKvDk
         KaCxgyp4vRj0kXkmf5D7GXBhTqQEt5xH985q8VO3xhY2n9SGrPULUo3sT12l6oXZcw7q
         ijHnJ04G3/gtZj+nXegxbpJFstb/HduCf99IPLk3OIrIn2zNWb2utA7zW8jMan1vBiHp
         U3XlWKbyzgX0K/zAa4SCpltQ7uALTslZFZtBDpKxa98GzGmcezLtWEW2xp9zKSy09Gw4
         IJRkn0GVKACm1an3BtV1dt5FLKtNzCypokrOuPaZIXLmAB45bwN0MHxT+c47kDj8IGBO
         md5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781793598; x=1782398398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        b=D9Js3FUH9sd+K+/+kq5mk8hEJYuktfuIeliBLmiyFcF3JnXhi4rdVc5wnEgzScFNwH
         X/TZyk4ASvEtxGONTyaGXvdxdoKTVyMOdmA9X/UXWg/fKwXVEewRoklUYlRBOB2vdqbF
         Uf6wq96BziD3uxnkmYKGjulyy+dfrHAWG0r+hUdE7nGRlhLB5xZZ91aiuC/+8q11AgXW
         K/X/b33RXKdX2TAUiNo0huoe/oaiHfBm3k84sCNtUWboQoV2vTgFpnxLsYWtqXdr0v0W
         vlZURNWdIL4BFhn8QDBOFnzjLJttnJjbECyZWNI2LRUFsPsZGD3wIJfwNAxSqMfooiXT
         c9ew==
X-Forwarded-Encrypted: i=1; AFNElJ/p4r/HTXSJedaDtpr3gkZfyVAj3PqWqVPfaKA+yxkT90RIE2k0semjc3z6zDu9WIWeGs8DCyNrMOf135n4sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBcur/3X86VKGlEsZQVodNq2uADdzWmWV/mDPWiHEZCBGcNo7Q
	7zxhZShYD464ZyoakDj66nmWyx+nmBo8ZoluTR0weY8w7TbKBNYPpdx9/Wb0qeuq3KwUOPIf2Pl
	Qtv4DvElUrcgEFRPA03ozrVvBFLNcO82KLq4qDMqsZA==
X-Gm-Gg: AfdE7cl/4w//xG7m3ggyJbuDaQyG5V0ODAZoRnXXDhE1v+fpfEZTLF2VipYaE9G81HM
	cyvYvh58KI/VGk1bdF1s67m56aQKX9r8KNcDonyccPMyUhkelw7vdcJYdz+y5uibBZGtW8tlXWH
	ljp03c5I9vcIlsbYPCeoQVdFzQJE+YFSk2Ln5YiDSb+rxVBgPGuk0A9ERUqUWLQJpeM3XkWBc2M
	MEkycNnpSmaRNXwvvWcPksEv1sGFDbuHZ+bYKys4qJSkdaQFbsXwXimDTa9j7rBiS1/zSDD3a9e
	5lBMRuU2FmVfsqxjb35Rbv7gCnadYA==
X-Received: by 2002:a17:906:209a:b0:c07:6950:4490 with SMTP id
 a640c23a62f3a-c07695ff1c8mr122729166b.42.1781793598164; Thu, 18 Jun 2026
 07:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
 <20260612-dh2300-mcu-v1-3-ab8db1617bc0@flipper.net> <20260618124034.GI1672911@google.com>
In-Reply-To: <20260618124034.GI1672911@google.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 18 Jun 2026 18:39:51 +0400
X-Gm-Features: AVVi8Ccbf4bgucBpzfdBMYf6dTmoR9eMWMyjmKeq_8LMA4KsT1l7bFz4pMkxg6A
Message-ID: <CAKTNdwEta01QjuaqfJ339pCTKMT_4K9QbmvFu9OBt=M8-JSDKQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] mfd: Add support for UGREEN NASync DH2300 MCU
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_074000_789234_5DE407BD 
X-CRM114-Status: GOOD (  19.23  )
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

T24gVGh1LCBKdW4gMTgsIDIwMjYgYXQgNDo0MOKAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Cj4gT24gRnJpLCAxMiBKdW4gMjAyNiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4KPiA+IEFkZCBhIGRyaXZlciBmb3IgdGhlIEhDMzJGMDA1IE1DVSB1c2VkIGFzIGFuIGVtYmVk
ZGVkIGNvbnRyb2xsZXIgb24gdGhlCj4gPiBVR1JFRU4gTkFTeW5jIERIMjMwMCBOQVMuCj4gPgo+
ID4gVGhpcyBwYXJ0IHByb3ZpZGVzIHRoZSBzaGFyZWQgSTJDIHJlZ21hcCB0byBiZSB1c2VkIGJ5
IGZ1bmN0aW9uLXNwZWNpZmljCj4gPiBzdWItZGV2aWNlcywgYW5kIGluc3RhbnRpYXRlcyB0aGUg
U0FUQSBkcml2ZS1iYXkgcG93ZXIgZ2F0ZSByZWd1bGF0b3IuCj4gPiBJbXBsZW1lbnRlZCBhcyBh
biBNRkQgdG8gYWxsb3cgZm9yIG90aGVyIGZ1bmN0aW9ucyBvZiB0aGUgTUNVIHRvIGJlIGFkZGVk
Cj4gPiBsYXRlcjogdmVuZG9yIGJpbmFyaWVzIGltcGx5IHRoYXQgaXQgYWxzbyBwcm92aWRlcyBh
IGhhcmR3YXJlIHdhdGNoZG9nCj4gPiBhbmQgc29tZWhvdyBzZXJ2ZXMgYXMgYSB3YWtlIHNvdXJj
ZSwgYnV0IHNvIGZhciBvbmx5IHRoZSBTQVRBIHBvd2VyIGdhdGluZwo+ID4gZnVuY3Rpb24gaGFz
IGJlZW4gY29uZmlybWVkIGluIGFic2VuY2Ugb2YgZG9jdW1lbnRhdGlvbiBhbmQgc291cmNlcyBm
b3IgdGhlCj4gPiB2ZW5kb3IgZmlybXdhcmUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5
IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiAtLS0KPiA+ICBNQUlOVEFJTkVSUyAg
ICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAg
ICAgICAgfCAxNiArKysrKysrKysrKwo+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAg
ICAgfCAgMSArCj4gPiAgZHJpdmVycy9tZmQvdWdyZWVuLWRoMjMwMC1tY3UuYyB8IDYwICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgNCBmaWxlcyBjaGFuZ2Vk
LCA3OCBpbnNlcnRpb25zKCspCj4KPiBEaWQgeW91IHNlZTogZHJpdmVycy9tZmQvc2ltcGxlLW1m
ZC1pMmMuYyA/CgpPaC4gTm93IEkgZGlkIDotRAoKSXQncyBleGFjdGx5IHdoYXQgSSBuZWVkZWQs
IHRoYW5rcyBhIGxvdCBmb3IgdGhlIHBvaW50ZXIuIFdpbGwgZHJvcAp0aGUgYm9pbGVycGxhdGUg
aW4gdjIgYW5kIGluc3RlYWQgaW5zdGFudGlhdGUgbXkgdGlueSBjaGlsZCBkZXZpY2UKZnJvbSB0
aGVyZS4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9057FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 08:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PnsppvJl/QbHnPmaDcwrRmqnQfswcGJQWccrk+nNoM0=; b=FwY8ozeR+2dN3HuAWP+44vFA71
	mlQZiRUj39TVoYv+8hHavh1L3xYThVFXa0cRbiOCugYcIIPMkp/XsbB2as4NyrLSRXYid4sCwbhkm
	FK09qDlZONBfbkvOjen+20Ijhn31LNjSqpb/VMDwhDTTbAU1GDMGUbvl3r30C/mXXb7ROv4wFcY6U
	0pFfIZWoQBecWogzNTgVm380/F4RvH2u0Q9ue/Y3f27HY6ZVP+N0nQBliF3L546UzWHkiZPveGspl
	REQCPryTfOmUHLpB3LoRww+6+2wXb0DU7beKB1m6D5tBT8ikXi79c1RTgJGwaxhIu9CWvYSol0YMb
	/P5bZo0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpnbH-004FG9-8b; Wed, 24 Nov 2021 08:25:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpnb3-004FDQ-LL; Wed, 24 Nov 2021 08:25:43 +0000
Received: from [IPv6:2a01:e0a:120:3210:4f87:f4f0:a34a:671f] (unknown
 [IPv6:2a01:e0a:120:3210:4f87:f4f0:a34a:671f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9972E1F4546D;
 Wed, 24 Nov 2021 08:25:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637742337; bh=vRI49dQQwsck28Fum3XIvDQAfd/iwxihc8UsPhq3ZWc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=XG2omBbppW8i4p4VZZh1zKY+NKk5++WhfkWyQiJIuKIlXVAOQPC+cjbVPK5t7bsQb
 xCRax8AIOAlAbTRBRWrqvW60/yjDajFXff7pxQy3o1FHmrrzwPM2vMRvBYHFEFoNYh
 MYbMb5tWSyVjhCopdaVHw3kCoTD3MNRT69MiA/dDeUSDZEG4eij3LrzYeJdae/Bx3K
 docplAecOWcrrQl34BYSo0XivLSkF8zQENSIOgoy8RWp3U50+ZC85K58tYYXUOsam1
 06nT7sN39xkGlt97eFiXI3wUXXDGCMkTmstZdcmZoTofxr3iLfn+L3yfgdXr9zccyk
 wbdG6MQdHuEhA==
Subject: Re: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
To: Alex Bee <knaerzche@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211124021325.858139-1-knaerzche@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <ce137254-eee4-3241-a977-84cccb44b7cd@collabora.com>
Date: Wed, 24 Nov 2021 09:25:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211124021325.858139-1-knaerzche@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_002541_893706_D5D1F8D6 
X-CRM114-Status: GOOD (  23.25  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI0LzExLzIwMjEgw6AgMDM6MTMsIEFsZXggQmVlIGEgw6ljcml0wqA6Cj4gV2l0aCB0aGUg
c3VibWlzc2lvbiBvZiBpb21tdSBkcml2ZXIgZm9yIFJLMzU2OCBhIHN1YnRsZSBidWcgd2FzCj4g
aW50cm9kdWNlZDogUEFHRV9ERVNDX0hJX01BU0sxIGFuZCBQQUdFX0RFU0NfSElfTUFTSzIgaGF2
ZSB0byBiZQo+IHRoZSBvdGhlciB3YXkgYXJyb3VuZCAtIHRoYXQgbGVhZHMgdG8gcmFuZG9tIGVy
cm9ycywgZXNwZWNpYWxseSB3aGVuCj4gYWRkcmVzc2VzIGJleW9uZCAzMiBiaXQgYXJlIHVzZWQu
Cj4KPiBGaXggaXQuCj4KPiBGaXhlczogYzU1MzU2YzUzNGFhICgiaW9tbXU6IHJvY2tjaGlwOiBB
ZGQgc3VwcG9ydCBmb3IgaW9tbXUgdjIiKQo+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFl
cnpjaGVAZ21haWwuY29tPgoKVGhhbmtzIGZvciB0aGUgZml4LgoKUmV2aWV3ZWQtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPgo+
IEkndmUgZm91bmQgdGhpcyBidWcsIHdoZW4gdGVzdGluZyB0aGUgcmVjZW50IFZPUDIgc3VibWlz
c2lvbiwgd2hpY2ggaXMKPiB0aGUgZmlyc3QgcGVycGhlcmlhbCB3aGljaCB1c2VzIGlvbW11IGZv
ciBSSzM1NnguIEkgY291bGQgdXNlIGl0IG9uIG15Cj4gcXVhcnR6NjQgOEdCIGJvYXJkIG9ubHks
IHdoZW4gbGltaXRpbmcgdGhlIGF2YWlsYWJsZSBtZW1vcnkgdG8gbGVzcyA0R0IuCj4KPiBUaGlz
IHBhdGNoIGZpeGVzIGl0Lgo+Cj4gICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgfCA0
ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVy
cy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gaW5kZXggNWNiMjYwODIwZWRhLi43ZjIzYWQ2MWMw
OTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gKysrIGIv
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gQEAgLTIwMCw4ICsyMDAsOCBAQCBzdGF0
aWMgaW5saW5lIHBoeXNfYWRkcl90IHJrX2R0ZV9wdF9hZGRyZXNzKHUzMiBkdGUpCj4gICAjZGVm
aW5lIERURV9ISV9NQVNLMglHRU5NQVNLKDcsIDQpCj4gICAjZGVmaW5lIERURV9ISV9TSElGVDEJ
MjQgLyogc2hpZnQgYml0IDggdG8gYml0IDMyICovCj4gICAjZGVmaW5lIERURV9ISV9TSElGVDIJ
MzIgLyogc2hpZnQgYml0IDQgdG8gYml0IDM2ICovCj4gLSNkZWZpbmUgUEFHRV9ERVNDX0hJX01B
U0sxCUdFTk1BU0tfVUxMKDM5LCAzNikKPiAtI2RlZmluZSBQQUdFX0RFU0NfSElfTUFTSzIJR0VO
TUFTS19VTEwoMzUsIDMyKQo+ICsjZGVmaW5lIFBBR0VfREVTQ19ISV9NQVNLMQlHRU5NQVNLX1VM
TCgzNSwgMzIpCj4gKyNkZWZpbmUgUEFHRV9ERVNDX0hJX01BU0syCUdFTk1BU0tfVUxMKDM5LCAz
NikKPiAgIAo+ICAgc3RhdGljIGlubGluZSBwaHlzX2FkZHJfdCBya19kdGVfcHRfYWRkcmVzc192
Mih1MzIgZHRlKQo+ICAgewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

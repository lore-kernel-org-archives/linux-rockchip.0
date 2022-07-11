Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B787C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 11:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oeIOPo6W4tWwZJYOEJWpdlTtYZHq3j5UFG1Zp5v7fM=; b=S3uD3jBSHV/Zy2
	JaiNXMBE19DBS34hTPhsMJkgsEvzMxbe5f4xnBEwO0y5OKf0L08g6gSCZhnQfxdMs8a7vzvVzfyu1
	NH5/SHTAT1xZ6GVq2VdqQY3nFP0ZDQndc+0f3/2ByqxVwmatlJmy1jKiHj6uCXwCA/0MzS9VPeIQW
	HOmiAqQjDs+V2OYUJI3uF8KOVK9wycEP4y+mZG8YT3VLND1rTjnOmaR16U1XYE0E82qUUzXMfLGoF
	z6Tuz1tDUC3XG4yR8LWNW5PkuKJXks4hs4kRCvC5lROEATtYLTLKDIwcEwICGjWcWIk0WijOQ3oRR
	LKu9SGECiU5+onl6EvRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oArgy-0015IP-6P; Mon, 11 Jul 2022 11:35:08 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oArgm-0015FP-62; Mon, 11 Jul 2022 11:34:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A92252B;
	Mon, 11 Jul 2022 04:34:50 -0700 (PDT)
Received: from [10.57.85.194] (unknown [10.57.85.194])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21B843F792;
	Mon, 11 Jul 2022 04:34:47 -0700 (PDT)
Message-ID: <9645c413-af05-c47f-dfb5-5b0e7f511d9c@arm.com>
Date: Mon, 11 Jul 2022 12:34:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
Content-Language: en-GB
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, kernel test robot <lkp@intel.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
 <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
 <27F4BA6C-9C56-446D-AB82-A691E7C54772@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <27F4BA6C-9C56-446D-AB82-A691E7C54772@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_043456_325421_81A12AC7 
X-CRM114-Status: GOOD (  11.99  )
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

T24gMjAyMi0wNy0xMSAxMjowNCwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IAo+IAo+PiBXaWFk
b21vxZvEhyBuYXBpc2FuYSBwcnpleiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29t
PiB3IGRuaXUgMTEuMDcuMjAyMiwgbyBnb2R6LiAxMjo0MToKPj4KPj4gT24gMjAyMi0wNi0yNSAx
NjozMSwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+Pj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHBy
emV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+IHcgZG5pdSAyNS4wNi4yMDIyLCBv
IGdvZHouIDE2OjAwOgo+Pj4+Cj4+Pj4KPj4+PiBUaGUgZmlyc3QgaXNzdWUgeW91IGhhdmUgaXMg
dGhlIFRWIGlzbid0IHJlc3BvbmRpbmcgdW50aWwgdGhlIGFic29sdXRlCj4+Pj4gZW5kLgo+Pj4g
SSBzdXNwZWN0IHRoaXMgaXMgYmVjYXVzZSBsYWNrIG9uIGlkbGUgZ2FwcyBiZXR3ZWVuIGNlYyBj
b21tYW5kcyBzZW50IGZyb20gYm9hcmQgdG8gdHYuCj4+PiBNYXliZSBUViBzdy4gY2FuJ3QgZGVh
bCB3aXRoIGNvbnNlY3V0aXZlIGNvbW1hbmRzIHdpdGhvdXQgYW55IGlkbGUgYmV0d2VlbiB0aGVt
Pwo+Pj4gSXQgaXMgaW50ZXJlc3RpbmcgdGhhdCBkaXNjb25uZWN0aW5nIFRWIC0gc28gQ0VDIGxp
bmUgaXMgZHJpdmVuIG9ubHkgYnkgYm9hcmQgLSByb2NrM2Egc3RpbGwgZG9uJ3QgaGF2ZSBhbnkg
aWRsZSBnYXBzIHdoaWxlIHJvY2szYiAoYW5kIHJhZHhhIDQuMTkgYnNwKSBoYXMgdGhlbSAodmVy
eSBzaW1pbGFyIGJldHdlZW4gNS4xOG1haWxpbmUgYW5kIDQuMTkgYnNwKS4KPj4+IEhvdyB0aGlz
IGlzIHBvc3NpYmxlIHRoYXQgY2hhbmdlIEkvTyBmcm9tIG0wLT5tMSBpbXBhY3RzIF90aW1pbmdz
XyBvbiBmcmVlIGhhbmdpbmcgQ0VDIGxpbmU/Cj4+Cj4+IENoZWNrIGFsbCB0aGUgcGluY3RybCBz
ZXR0aW5ncyBiZXlvbmQganVzdCB0aGUgZnVuY3Rpb24gbXV4IC0gcHVsbHMsIGRyaXZlIHN0cmVu
Z3RoLCBvdXRwdXQgdHlwZSwgZXRjLiAtIHRoZSBkZWZhdWx0cyB0ZW5kIHRvIGJlIGFsbCBvdmVy
IHRoZSBwbGFjZSwgYW5kIHJhcmVseSB3aGF0IHlvdSB3YW50Lgo+Pgo+PiBSb2Jpbi4KPiAKPiBS
b2JpbiwKPiAKPiBJJ20gbm90IHN1cmUgZG8gSSBsb29rZWQgaW4gcmlnaHQgcGxhY2UuLi4KPiAK
PiBidXQ6Cj4gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvc3RhYmxlL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXBpbmN0cmwuZHRzaT9oPXY1LjE4LjEwI243ODgKPiAKPiB2cy4KPiAKPiBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXguZ2l0L3Ry
ZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGluY3RybC5kdHNpP2g9djUu
MTguMTAjbjc5NQo+IAo+IGFyZSBsb29raW5nIG9rPwoKSSBtZWFudCBtb3JlIGluIHRlcm1zIG9m
IGR1bXBpbmcgb3V0IHRoZSBhY3R1YWwgaGFyZHdhcmUgc3RhdGUgdG8gCmNvbXBhcmUgYWNyb3Nz
IGJvdGggYXhlcyBvZiBjZWNfbTAgdnMuIGNlY19tMSBhbmQgbWFpbmxpbmUgdnMuIEJTUC4gCkhv
d2V2ZXIgZnJvbSBhIHF1aWNrIHNraW0gb2YgdGhlIFJvY2szIHNjaGVtYXRpYyB0aGVyZSBkb2Vz
bid0IGFwcGVhciB0byAKYmUgYW4gZXh0ZXJuYWwgcHVsbC11cCwgc28gdGhlIGludGVybmFsIHB1
bGwtdXAgYWxzbyBiZWluZyBkaXNhYmxlZCBpcyBhIApjbGVhciBzdXNwZWN0IHRvIHN0YXJ0IHdp
dGguCgpSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

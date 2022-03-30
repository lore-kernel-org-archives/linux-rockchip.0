Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5134AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dGqd8U+G5zcNUTcsP6Ccz5zyF+E0rotgxYWqvl5uS5w=; b=qqu33ngxEspYhv+60oE8EuqbfR
	N6oXNsdj1pc7bLZbEYsTu/lE7B95Gwu02YwHK2GUodyQ0CWi6Ach1PYfJcn4qY4o1HLaXXL5/aoNm
	/bKUHW/ARiqTF4gIrollO7tPiBAcpwLx5MZtRhHAfRnE2BSMkFdkogTHGQcHIq/ujoP4aSyNhEnfT
	zVHP0+4R5eX9qNgVu8ixSNamy7q/FrnAWt5OPAHNh1PcxXLPt2U0WG4LgFDfzW+2Qe/mvCTzR09G4
	xYfVETuC3fSsoWKGe18BWkzrILjjeBbfcxlTrPpTRxEtcobrUXmGYvTD975an5/Jr2NdBdvxyNoFa
	1sysqZDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSyp-00EdqB-2g; Wed, 30 Mar 2022 07:42:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSym-00EdpK-SF
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:42:58 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9D4621F44389;
 Wed, 30 Mar 2022 08:42:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648626174;
 bh=pIoevYhcg4lXfHAB+gBSklOntW3daq2OPWaaIDxIW6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iq4UZjhSaV+ZYTcSkGHAm9xbaJifda92sZT/0xu0mlaErqEDx8q3PQxXGnLazpxux
 cYxJ0F5vFVwS0NTOWzswdqbTz5Xcg0uUJTgsI1CLRwaXKZ567UbHDi9cVdgKM375nf
 0LkAlezqhGvsdXF+y6a6XwurlLaHoBzC+bADyP00qoc4ba6ZNP4O9S0ctMldo/tEeS
 TDodJrL12LoM5I1OFg4jb3a/mVQ5a9MbM4EBID2itedr3abZRzrpiaVDkeGqGUD3dO
 Z9xhsyqcA0f+fvtn+L2xGODoKGBsgMpFJFhWgnDvM76lUM06dyCOEtxJw4BS4sGmvO
 Pz4S9HYRbGMpw==
Date: Wed, 30 Mar 2022 09:42:50 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 21/24] media: hantro: Stop using H.264 parameter pic_num
Message-ID: <20220330074250.jqyljbr53fgeci6q@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-22-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-22-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_004257_073083_4C3F67B7 
X-CRM114-Status: GOOD (  14.71  )
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

SGV5IE5pY29sYXMsCgpUaGUgdGVybSBwaWNfbnVtIGlzIG5vdyBvbmx5IHByZXNlbnQgaW4gdGhl
IGZvbGxvd2luZyBmaWxlczoKYGBgCuKdryByZyAncGljX251bScKc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvcmt2ZGVjLWgyNjQuYwo3NjY6CSAqIEFzc2lnbiBhbiBpbnZhbGlkIHBpY19udW0gaWYgRFBC
IGVudHJ5IGF0IHRoYXQgcG9zaXRpb24gaXMgaW5hY3RpdmUuCjc2ODoJICogcmVmZXJlbmNlIHBp
Y3R1cmUgd2l0aCBwaWNfbnVtIDAsIHRyaWdnZXJpbmcgb3V0cHV0IHBpY3R1cmUKCm1lZGlhL3Bs
YXRmb3JtL2FtcGhpb24vdnB1X3dpbmRzb3IuYwo0ODU6CXUzMiBwaWNfbnVtOwoKbWVkaWEvcGxh
dGZvcm0vbWVkaWF0ZWsvdmNvZGVjL3ZkZWMvdmRlY19oMjY0X3JlcV9pZi5jCjk3Ogl1bnNpZ25l
ZCBzaG9ydCBwaWNfbnVtOwozNDY6CQlkc3RfZW50cnktPnBpY19udW0gPSBzcmNfZW50cnktPnBp
Y19udW07CgptZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMKMTQzOgkgKiBidXQgd2l0aCBmcmFt
ZV9udW0gKHdyYXBwZWQpLiBBcyBmb3IgZnJhbWUgdGhlIHBpY19udW0gYW5kIGZyYW1lX251bQoz
MDY6CQkvKiB0aGlzIGlzIHBpY19udW0gZm9yIGZyYW1lIGFuZCBmcmFtZV9udW0gKHdyYXBwZWQp
IGZvciBmaWVsZCwKMzA3OgkJICogYnV0IGZvciBmcmFtZSBwaWNfbnVtIGlzIGVxdWFsIHRvIGZy
YW1lX251bSAod3JhcHBlZCkuCmBgYAoKSW4gdjRsMi1oMjY0IGFuZCBya3ZkZWMtaDI2NCBpdCBp
cyBvbmx5IHByZXNlbnQgYXMgY29tbWVudCBhbmQgdGhlIHRlcm0KaXMgbm90IHBhcnQgb2YgdGhl
IHNwZWNpZmljYXRpb24uCkluIHZwdV93aW5kc29yIGl0IGlzIGFjdHVhbGx5IG5ldmVyIHVzZWQu
CkFuZCBmb3IgdGhlIG1lZGlhdGVrIGRyaXZlciB0aGUgc2FtZSBtaWdodCBhcHBseS4KSXQgbWln
aHQgYmUgd29ydGggaXQgdG8gZ2V0IHJpZCBvZiB0aGF0IHRlcm0gYWxsIHRvZ2V0aGVyIHdoaWxl
IHlvdSBhcmUKYXQgaXQuCgpPbiAyOC4wMy4yMDIyIDE1OjU5LCBOaWNvbGFzIER1ZnJlc25lIHdy
b3RlOgo+VGhlIGhhcmR3YXJlIGV4cGVjdHMgRnJhbWVOdW1XcmFwIG9yIGxvbmdfdGVybV9mcmFt
ZV9pZHguIFBpY3R1cmUKPm51bWJlcnMgYXJlIHBlciBmaWVsZCwgYW5kIGFyZSBtb3N0bHkgdXNl
ZCBkdXJpbmcgdGhlIG1lbW9yeQo+bWFuYWdlbWVudCBwcm9jZXNzLCB3aGljaCBpcyBkb25lIGlu
IHVzZXJsYW5kLiBUaGlzIGZpeGVzIHR3bwo+SVRVIGNvbmZvcm1hbmNlIHRlc3RzOgo+Cj4gIC0g
TVI2X0JUX0IKPiAgLSBNUjhfQlRfQgo+Cj5TaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClJldmlld2VkLWJ5OiBTZWJhc3RpYW4g
RnJpY2tlIDxzZWJhc3RpYW4uZnJpY2tlQGNvbGxhYm9yYS5jb20+CgpHcmVldGluZ3MsClNlYmFz
dGlhbgo+LS0tCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faDI2NC5jIHwg
MiAtLQo+IDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faDI2NC5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9faDI2NC5jCj5pbmRleCAwYjRkMjQ5MWJlM2IuLjIyODYyOWZi
M2NkZiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2gy
NjQuYwo+KysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faDI2NC5jCj5A
QCAtMzU0LDggKzM1NCw2IEBAIHUxNiBoYW50cm9faDI2NF9nZXRfcmVmX25icihzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4LCB1bnNpZ25lZCBpbnQgZHBiX2lkeCkKPgo+IAlpZiAoIShkcGItPmZsYWdz
ICYgVjRMMl9IMjY0X0RQQl9FTlRSWV9GTEFHX0FDVElWRSkpCj4gCQlyZXR1cm4gMDsKPi0JaWYg
KGRwYi0+ZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfTE9OR19URVJNKQo+LQkJcmV0
dXJuIGRwYi0+cGljX251bTsKPiAJcmV0dXJuIGRwYi0+ZnJhbWVfbnVtOwo+IH0KPgo+LS0gCj4y
LjM0LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

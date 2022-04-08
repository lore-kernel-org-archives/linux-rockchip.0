Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FD5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 18:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EKgcpaaeA1xMohN7MibSXUZ2vpGbh/MuoUXMO2SKoM=; b=UK6UDF7gEamk/Y
	KTOTHSzSlGUZCo+X1SOFyHmrOiTkEYak4wKSdDkyK46PAKvc2e6eiNCJmP2YSOmtZqhgiRtA1VLjR
	FmvfR8psFHm+LhhqBef5agTJ5L4I8Qvw0/2co2V8JusMuz0vH2uNQAaCJl3Umpfz2y9JB5qmafsHg
	Y9+sD0ddgIj3h7SovUD95xT/mSj8vSECLfmFYyoIUjGEyYAZ9IuduHyFQThgZ5U48u2odtrdn2vA5
	Fy9dL7C1otkH9iBZ05cN6xUh7w9LX6VUWwKyh3tTE0MvnNYUizeZTBG9L5IGY442r2os42eYxgZZn
	b6UphAB3IANeuVR1yBpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nctjt-0010uX-Or; Fri, 08 Apr 2022 18:53:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nctji-0010sD-Qg; Fri, 08 Apr 2022 18:53:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 4BC421F473B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649444012;
 bh=r1uTA7u5ZuBHwJEYWmnZvWNMO0Xo6FFVj0EubH+YtL8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=EJS6kkAybGAyLEkOzvKZh2fHTuNEdkEE+Ex+3qrvSsAZhQ97MVT27SOT+RkuBLMUX
 znygWl9zx1gXJbSdl5xK/rU+TJ/xbcP+hAg7lq2v6UucrPUJfYVUJ0R5llQcz93WC8
 T3zPcxkuvtXod9cWJ6SmV4a7DGlg3mywiIxuAaJ5YwlUUVxYvbmm0NDtPg2FEeKAdt
 Mie+pssSYeft3zi7Bb26OBcaX0BNxV1U13dyROoqPeiEwLXnpuW4abIxkatu/T4/L7
 285bmIhO01AeomMxQFI3bG9F4cjVY29kBwdwmJsiWgHa8DRh7DXlcmgfVcm0+Y5kmF
 LLchSBfC5EMSg==
Message-ID: <3179e400d52704d11dd150bf4270dab4c1064cad.camel@collabora.com>
Subject: Re: [PATCH v5 09/17] media: uapi: HEVC: Define
 V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 sebastian.fricke@collabora.com
Date: Fri, 08 Apr 2022 14:53:20 -0400
In-Reply-To: <20220407152940.738159-10-benjamin.gaignard@collabora.com>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
 <20220407152940.738159-10-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_115335_119268_A3D1B99A 
X-CRM114-Status: GOOD (  16.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgamV1ZGkgMDcgYXZyaWwgMjAyMiDDoCAxNzoyOSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQg
YSDDqWNyaXTCoDoKPiBNYWtlIGV4cGxpY2l0IHRoYXQgVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNf
U0xJQ0VfUEFSQU1TIGNvbnRyb2wgaXMKPiBhIGR5bmFtaWMgYXJyYXkgY29udHJvbCB0eXBlLgo+
IFNvbWUgZHJpdmVycyBtYXkgYmUgYWJsZSB0byByZWNlaXZlIG11bHRpcGxlIHNsaWNlcyBpbiBv
bmUgY29udHJvbAo+IHRvIGltcHJvdmUgZGVjb2RpbmcgcGVyZm9ybWFuY2UuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0
cmxzLWNvZGVjLnJzdCB8IDIgKysKPiAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gaW5kZXggN2ZjYzZjMmJhYzRjLi4x
YWFmM2I4NGI1ODQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21l
ZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gQEAgLTI5NjQsNiArMjk2NCw4
IEBAIGVudW0gdjRsMl9tcGVnX3ZpZGVvX2hldmNfc2l6ZV9vZl9sZW5ndGhfZmllbGQgLQo+ICAg
ICAgVGhlc2UgYml0c3RyZWFtIHBhcmFtZXRlcnMgYXJlIGRlZmluZWQgYWNjb3JkaW5nIHRvIDpy
ZWY6YGhldmNgLgo+ICAgICAgVGhleSBhcmUgZGVzY3JpYmVkIGluIHNlY3Rpb24gNy40LjcgIkdl
bmVyYWwgc2xpY2Ugc2VnbWVudCBoZWFkZXIKPiAgICAgIHNlbWFudGljcyIgb2YgdGhlIHNwZWNp
ZmljYXRpb24uCj4gKyAgICBUaGlzIGNvbnRyb2wgaXMgYSBkeW5hbWljYWxseSBzaXplZCAxLWRp
bWVuc2lvbmFsIGFycmF5LAo+ICsgICAgVjRMMl9DVFJMX0ZMQUdfRFlOQU1JQ19BUlJBWSBmbGFn
IG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4gIAo+ICAuLiBjOnR5cGU6OiB2NGwyX2N0cmxf
aGV2Y19zbGljZV9wYXJhbXMKPiAgCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1j
dHJscy5oIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiBpbmRleCA5NmE5YjcxZDFkZWYu
LjI4MDQ5ZTFhOGEwNyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+
ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gQEAgLTMxNCw2ICszMTQsOSBAQCBz
dHJ1Y3QgdjRsMl9oZXZjX3ByZWRfd2VpZ2h0X3RhYmxlIHsKPiAgLyoqCj4gICAqIHY0bDJfY3Ry
bF9oZXZjX3NsaWNlX3BhcmFtcyAtIEhFVkMgc2xpY2UgcGFyYW1ldGVycwo+ICAgKgo+ICsgKiBU
aGlzIGNvbnRyb2wgaXMgYSBkeW5hbWljYWxseSBzaXplZCAxLWRpbWVuc2lvbmFsIGFycmF5LAo+
ICsgKiBWNEwyX0NUUkxfRkxBR19EWU5BTUlDX0FSUkFZIGZsYWcgbXVzdCBiZSBzZXQgd2hlbiB1
c2luZyBpdC4KPiArICoKCkknbSBub3Qgc3VyZSBhYm91dCB0aGlzIGNvbW1lbnQsIGJ1dCBJJ20g
c3VyZSB5b3UgZm9yZ290OgoKCi0tLSBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3Ry
bHMtZGVmcy5jCisrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5j
CkBAIC0xNTA1LDYgKzE1MDUsNyBAQCB2b2lkIHY0bDJfY3RybF9maWxsKHUzMiBpZCwgY29uc3Qg
Y2hhciAqKm5hbWUsIGVudW0KdjRsMl9jdHJsX3R5cGUgKnR5cGUsCiAgICAgICAgICAgICAgICBi
cmVhazsKICAgICAgICBjYXNlIFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX1NMSUNFX1BBUkFNUzoK
ICAgICAgICAgICAgICAgICp0eXBlID0gVjRMMl9DVFJMX1RZUEVfSEVWQ19TTElDRV9QQVJBTVM7
CisgICAgICAgICAgICAgICAqZmxhZ3MgfD0gVjRMMl9DVFJMX0ZMQUdfRFlOQU1JQ19BUlJBWTsK
ICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgIGNhc2UgVjRMMl9DSURfU1RBVEVMRVNTX0hF
VkNfU0NBTElOR19NQVRSSVg6CiAgICAgICAgICAgICAgICAqdHlwZSA9IFY0TDJfQ1RSTF9UWVBF
X0hFVkNfU0NBTElOR19NQVRSSVg7CgpBbHNvLCBpbiBBVjEgd2UgaGF2ZSBWNEwyX0FWMV9NQVhf
VElMRV9DT1VOVCwgd2hpY2ggY2FuIGJlIHVzZWQgaW4gY2ZnLmRpbXMsCnNvbWV0aGluZyB0aGUg
ZHJpdmVyIHdpbGwgYWN0dWFsbHkgc2V0LiBXZSBjb3VsZCBoYXZlCgojZGVmaW5lIFY0TDJfSEVW
Q19NQVhfVElMRV9DT1VOVCA2MDAKCkFuZCBkcml2ZXMgY2FuIHNldDoKCiAgIC5kaW1zID0geyBW
NEwyX0hFVkNfTUFYX1RJTEVfQ09VTlQgfSwKCkluIHRoZSBjb250cm9sIGNvbmZpZy4KCj4gICAq
IEBiaXRfc2l6ZTogc2l6ZSAoaW4gYml0cykgb2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0YQo+ICAg
KiBAZGF0YV9iaXRfb2Zmc2V0OiBvZmZzZXQgKGluIGJpdHMpIHRvIHRoZSB2aWRlbyBkYXRhIGlu
IHRoZSBjdXJyZW50IHNsaWNlIGRhdGEKPiAgICogQG5hbF91bml0X3R5cGU6IHNwZWNpZmllcyB0
aGUgY29kaW5nIHR5cGUgb2YgdGhlIHNsaWNlIChCLCBQIG9yIEkpCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

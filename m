Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 619A2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 09:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8iyBg0btXT9fhKJ6+mEbCS6RwE39Ebs/DPpbxVAQ834=; b=DwWE4JQJ7r+fcM7FIOb4LvzPfJ
	pC8URkRa52Qa+rB9rp5f8yoYZ7mPtaccuveNOg7oNgkwaQIcQ6YnATZAxuV11mzbaZHY6veLWdeav
	I1QMvCRRZhPl1483OxpWwCFkSVHC7vMXWbExpGsLl4ZuPTns779JFwISAGWYEROcedZM1Mmf0P+Vj
	DU6hd/PqrAKst23h+Zwy7olBFwz9J+jIaazzgsKP0LG3FBpRTEgUXOHPeMCmlYq4VxspVE+mR/r9O
	bZOI1GnTjyNzJZiL6QMZD7R/K84Dj12AxXV0F0ZFa/KmJ5jxV0vL7EYc7SSXnsHuFwM/gqubyzbNd
	tBBFq0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msLuV-007wNM-Bb; Wed, 01 Dec 2021 09:28:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msLuH-007wGp-Fi; Wed, 01 Dec 2021 09:28:07 +0000
Received: from [IPv6:2a01:e0a:120:3210:81b0:4101:d4f2:ecb7] (unknown
 [IPv6:2a01:e0a:120:3210:81b0:4101:d4f2:ecb7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D03FE1F456A8;
 Wed,  1 Dec 2021 09:28:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638350881; bh=GOanvQHnMURC6UIEgHUa/+fTqbcJzEywsBQPZpD0MJA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=St1k4d/bgtbXVPjdtfbYA9aV4V9ZWSYVYtYwv4/c4FjJvQMSIbZKlzc18tl6VVxys
 +9+W64Jyao7xM80jFjcykCzfwQDYjw89p7rBHr5qi0Cc1R05nxmVPzOT0jlpRb9rG9
 6FBaB7Bag9wbRydqBhvX98QQGE9a6Xra6HO0xPpuZqDpIwqp6DeX9+mhrm8A+8cnl+
 HvLVl0bZkut7JlsYbQhDgdZw4Nt7bFrJQEyef6DumdrKef6n2MMUspFScI6081vh7B
 kaRZc9wY5l5YgSoO6GU2a0YWVRzaKeCyY+7HBAIl0LGQcQfDovjeL7PEXy/4stwN8y
 kMEDbFLZRlL9g==
Subject: Re: [RFC V2 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, hverkuil@xs4all.nl, tharvey@gateworks.com, 
 nicolas@ndufresne.ca, aford@beaconembedded.com,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
References: <20211201013329.15875-1-aford173@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <a07677bc-0a18-c910-222d-d6faee3fe5a0@collabora.com>
Date: Wed, 1 Dec 2021 10:27:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201013329.15875-1-aford173@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_012805_681538_C0255848 
X-CRM114-Status: GOOD (  26.59  )
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

CkxlIDAxLzEyLzIwMjEgw6AgMDI6MzMsIEFkYW0gRm9yZCBhIMOpY3JpdMKgOgo+IFRoZSBpLk1Y
OE0gaGFzIHR3byBIYW50cm8gdmlkZW8gZGVjb2RlcnMsIGNhbGxlZCBHMSBhbmQgRzIgd2hpY2gg
YXBwZWFyCj4gdG8gYmUgcmVsYXRlZCB0byB0aGUgdmlkZW8gZGVjb2RlcnMgdXNlZCBvbiB0aGUg
aS5NWDhNUSwgYnV0IGJlY2F1c2Ugb2YKPiBob3cgdGhlIE1pbmkgaGFuZGxlcyB0aGUgcG93ZXIg
ZG9tYWlucywgdGhlIFZQVSBkcml2ZXIgZG9lcyBub3QgbmVlZCB0bwo+IGhhbmRsZSBhbGwgdGhl
IGZ1bmN0aW9ucywgbm9yIGRvZXMgaXQgc3VwcG9ydCB0aGUgcG9zdC1wcm9jZXNzb3IsCj4gc28g
YSBuZXcgY29tcGF0aWJsZSBmbGFnIGlzIHJlcXVpcmVkLgo+Cj4gV2l0aCB0aGUgc3VnZ2VzdGlv
biBmcm9tIEhhbnMgVmVya3VpbCwgSSB3YXMgYWJsZSB0byBnZXQgdGhlIEcyIHNwbGF0IHRvIGdv
IGF3YXkKPiB3aXRoIGNoYW5nZXMgdG8gRk9SQ0VfTUFYX1pPTkVPUkRFUiwgYnV0IEkgZm91bmQg
SSBjb3VsZCBhbHNvIHNldCBjbWE9NTEyTSwgaG93ZXZlcgo+IGl0J3MgdW5jbGVhciB0byBtZSBp
ZiB0aGF0J3MgYW4gYWNjZXB0YWJsZSBhbHRlcm5hdGl2ZS4KPgo+IEF0IHRoZSBzdWdnZXN0aW9u
IG9mIEV6ZXF1aWVsIEdhcmNpYSBhbmQgTmljb2xhcyBEdWZyZXNuZSBJIGhhdmUgc29tZQo+IHJl
c3VsdHMgZnJvbSBGbHVzdGVyLiBIb3dldmVyLCB0aGUgRzIgVlBVIGFwcGVhcnMgdG8gZmFpbCBt
b3N0IHRlc3RzLgo+Cj4gLi9mbHVzdGVyLnB5IHJ1biAtZEdTdHJlYW1lci1ILjI2NC1WNEwyU0wt
R3N0MS4wCj4gUmFuIDkwLzEzNSB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiA3
Ni40MzEgc2Vjcwo+Cj4gICAuL2ZsdXN0ZXIucHkgcnVuIC1kIEdTdHJlYW1lci1WUDgtVjRMMlNM
LUdzdDEuMAo+IFJhbiA1NS82MSB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiAy
MS40NTQgc2Vjcwo+Cj4gLi9mbHVzdGVyLnB5IHJ1biAtZCBHU3RyZWFtZXItVlA5LVY0TDJTTC1H
c3QxLjAKPiBSYW4gMC8zMDMgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gMjAu
MDE2IHNlY3MKPgo+IEVhY2ggZGF5IHNlZW1zIHRvIHNob3cgbW9yZSBhbmQgbW9yZSBHMiBzdWJt
aXNzaW9ucywgYW5kIGdzdHJlYW1lciBzZWVtcyB0byBiZQo+IHN0aWxsIHdvcmtpbmcgb24gdGhl
IFZQOSwgc28gSSBhbSBub3Qgc3VyZSBpZiBJIHNob3VsZCBkcm9wIEcyIGFzIHdlbGwuCgpJIHRo
aW5rIGl0IGlzIGdvaW5nIGluIHRoZSBnb29kIGRpcmVjdGlvbi4KSSdtIHRyeWluZyB0byBkbyB0
aGUgc2FtZSBvbiBJTVg2TVEgYnV0IHN0aWxsIGhhdmUgaGFuZyBpc3N1ZSBvbiBHMi4KClJlZ2Fy
ZHMsCkJlbmphbWluCgo+Cj4gQWRhbSBGb3JkICgyKToKPiAgICBtZWRpYTogaGFudHJvOiBBZGQg
c3VwcG9ydCBmb3IgaS5NWDhNIE1pbmkKPiAgICBhcm02NDogZHRzOiBpbXg4bW06IEVuYWJsZSBW
UFUtRzEgYW5kIFZQVS1HMgo+Cj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bW0uZHRzaSAgIHwgNDEgKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyAgIHwgIDIgKwo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9faHcuaCAgICB8ICAyICsKPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaW14OG1fdnB1X2h3LmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysKPiAgIDQgZmlsZXMg
Y2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKykKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

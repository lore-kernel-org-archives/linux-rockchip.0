Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3BEAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 01:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spchEieXEBDI8SmFtBNUN9IuYK0De0+TwMEFWeHF9ps=; b=Xg3Sq9lRxXoA3t
	kCSe7kCtV4wtkt1Cb19u/t01d8mLNLpL7eb4TrXxPpR5a2X4hE8TdpX3mn0dEKramBdwkRRSwIahB
	fzG6rpT9WROzJxarpCUv0yPjhNkxE2FaeiFBKHe4lbUKevHTVPIyd9O2724ZXcICsiUnlhamkgl8r
	gvomBqzakbeq4Elol9U5AfGJV2R4O5p16lTt6H5u6k5AuAJAjLw2PiKG1AIel1ozw60Qi27+Qjgdc
	e7EjEPIlJdJpMd8DQdo2ofx3xdvalTNC5WwN6fHwSBYEL3Fv2QC/qzqX/6Y75Ywm82cb8ntGXv9c8
	Zg4nX4f9ISq883E/CLXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPDPe-000wxs-U6; Wed, 02 Mar 2022 01:04:18 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPDPS-000wvc-Pl; Wed, 02 Mar 2022 01:04:09 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
 by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 56030800204;
 Wed,  2 Mar 2022 09:03:56 +0800 (CST)
Message-ID: <242bae88-5dde-f005-6580-6024d51e0700@rock-chips.com>
Date: Wed, 2 Mar 2022 09:03:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Cc: shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20220228223642.1136229-1-pgwipeout@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNNSBlWS0pPSkNPSE
 gZGRgaVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PQw6Iww6MT5RGkwDLxUuARlI
 DiNPC0tVSlVKTU9NSkNIS0hNQ0NNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
 C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlCTkg3Bg++
X-HM-Tid: 0a7f4827b6c1b03akuuu56030800204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_170407_055839_B8EB40A4 
X-CRM114-Status: GOOD (  17.81  )
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

SGkgUGV0ZXIsCgrlnKggMjAyMi8zLzEgNjozNiwgUGV0ZXIgR2VpcyDlhpnpgZM6Cj4gVGhlIGR3
X21tYy1yb2NrY2hpcCBkcml2ZXIgZHJvcHMgYSBsYXJnZSBhbW91bmQgb2YgbG9nc3BhbSBjb25z
dGFudGx5Cj4gd2hlbiB0aGUgY2QtYnJva2VuIGZsYWcgaXMgZW5hYmxlZC4KPiBTZXQgdGhlIHdh
cm5pbmcgdG8gYmUgZGVidWcgcmF0ZWxpbWl0ZWQgaW4gdGhpcyBjYXNlLgo+IAoKTWF5IEkga25v
dyB3aGljaCBwbGF0Zm9ybSBkaWQgeW91IHVzZT8KCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2Vp
cyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1j
LXJvY2tjaGlwLmMgfCA5ICsrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9k
d19tbWMtcm9ja2NoaXAuYyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBp
bmRleCA5NWQwZWMwZjVmM2EuLmQwZWJmMGFmYTQyYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMt
cm9ja2NoaXAuYwo+IEBAIC01MCw4ICs1MCwxMyBAQCBzdGF0aWMgdm9pZCBkd19tY2lfcmszMjg4
X3NldF9pb3Moc3RydWN0IGR3X21jaSAqaG9zdCwgc3RydWN0IG1tY19pb3MgKmlvcykKPiAgIAkJ
Y2Nsa2luID0gaW9zLT5jbG9jayAqIFJLMzI4OF9DTEtHRU5fRElWOwo+ICAgCj4gICAJcmV0ID0g
Y2xrX3NldF9yYXRlKGhvc3QtPmNpdV9jbGssIGNjbGtpbik7Cj4gLQlpZiAocmV0KQo+IC0JCWRl
dl93YXJuKGhvc3QtPmRldiwgImZhaWxlZCB0byBzZXQgcmF0ZSAldUh6XG4iLCBpb3MtPmNsb2Nr
KTsKPiArCWlmIChyZXQpIHsKPiArCQkvKiB0aGlzIHNjcmVhbXMgd2hlbiBjYXJkIGRldGVjdGlv
biBpcyBicm9rZW4gKi8KPiArCQlpZiAoaG9zdC0+c2xvdC0+bW1jLT5jYXBzICYgTU1DX0NBUF9O
RUVEU19QT0xMKQo+ICsJCQlkZXZfZGJnX3JhdGVsaW1pdGVkKGhvc3QtPmRldiwgImZhaWxlZCB0
byBzZXQgcmF0ZSAldUh6XG4iLCBpb3MtPmNsb2NrKTsKPiArCQllbHNlCj4gKwkJCWRldl93YXJu
KGhvc3QtPmRldiwgImZhaWxlZCB0byBzZXQgcmF0ZSAldUh6XG4iLCBpb3MtPmNsb2NrKTsKPiAr
CX0KPiAgIAo+ICAgCWJ1c19oeiA9IGNsa19nZXRfcmF0ZShob3N0LT5jaXVfY2xrKSAvIFJLMzI4
OF9DTEtHRU5fRElWOwo+ICAgCWlmIChidXNfaHogIT0gaG9zdC0+YnVzX2h6KSB7CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

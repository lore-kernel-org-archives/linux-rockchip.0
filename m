Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C23FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 07:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV6OZvoX/uc+1SbYMxDe3nDK7c0A5MtqFmXF7owofV8=; b=DpzluHD1+00U73
	CrT9aNEyH2WtxH4TkKEhFV6ZZ0FoqNXLmwcScK6F3CS39Af+ohNw1ZZvZtKHBiw5e9MyfqAGrSQTj
	YFGI8U20/adJom1/IE2Uj+4jllM5HXp5XH/Rji+e3gGMkyLh3Fpbg79TMS6xF7OQDOKJ6tcj/WUqm
	ojT9uH7tPGBXeFxJ73MJk0LGEF4sNSncUgRWNfoYsJb8wilI/JSS/PQ7ejmzKbtXTGLPU6OtQnfjn
	JmFBHfgDOs1IXd/h0ODmqIvDSKIepIvT2nBSDs2lR1k0DX49P3yxc7LkvPpZOQxgGw4zqy+8ijPP+
	QdgpNiARs6zaQzsKFjEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvDAz-003Rw0-Kb; Sun, 29 May 2022 07:17:25 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvDAp-003RuH-70
	for linux-rockchip@lists.infradead.org; Sun, 29 May 2022 07:17:16 +0000
Received: from [192.168.1.18] ([90.11.191.102])
	by smtp.orange.fr with ESMTPA
	id vDAjnJygkOXCyvDAjnpj0X; Sun, 29 May 2022 09:17:12 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 29 May 2022 09:17:12 +0200
X-ME-IP: 90.11.191.102
Message-ID: <097dca7f-12ba-ddbc-7380-05f3278fe40b@wanadoo.fr>
Date: Sun, 29 May 2022 09:17:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] spi: rockchip: Fix a resource that is put twice in
 rockchip_spi_remove()
Content-Language: fr
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 addy ke <addy.ke@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Mark Brown <broonie@linaro.org>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <df2f4ae902474574ccdb0a8696ce51db39fbd239.1653808056.git.christophe.jaillet@wanadoo.fr>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <df2f4ae902474574ccdb0a8696ce51db39fbd239.1653808056.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_001715_437098_B72C4076 
X-CRM114-Status: GOOD (  16.94  )
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

TGUgMjkvMDUvMjAyMiDDoCAwOTowNywgQ2hyaXN0b3BoZSBKQUlMTEVUIGEgw6ljcml0wqA6Cj4g
c3BpX2NvbnRyb2xsZXJfcHV0KCkgaXMgYWxyZWFkeSBjYWxsZWQgYXMgcGFydCBvZgo+IHNwaV91
bnJlZ2lzdGVyX2NvbnRyb2xsZXIoKS4gVGhlIGxhdHRlciBpcyBjYWxsZWQgYXV0b21hdGljYWxs
eSBiZWNhdXNlCj4gdGhlIGNvbnRyb2xsZXIgaGFzIGJlZW4gcmVnaXN0ZXJlZCB3aXRoIHRoZSBk
ZXZtXyBmdW5jdGlvbi4KPiAKPiBSZW1vdmUgdGhlIGR1cGxpY2F0ZSBjYWxsLgo+IAo+IEZpeGVz
OiA2NGUzNjgyNGIzMmIgKCJzcGkvcm9ja2NoaXA6IGFkZCBkcml2ZXIgZm9yIFJvY2tjaGlwIFJL
M3h4eCBTb0NzIGludGVncmF0ZWQgU1BJIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpB
SUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+IC0tLQo+ICAgZHJpdmVycy9z
cGkvc3BpLXJvY2tjaGlwLmMgfCAyIC0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgYi9kcml2ZXJz
L3NwaS9zcGktcm9ja2NoaXAuYwo+IGluZGV4IGEwODIxNWViOWUxNC4uNzA3Nzc3MzFiMjBlIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9z
cGkvc3BpLXJvY2tjaGlwLmMKPiBAQCAtOTYzLDggKzk2Myw2IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfc3BpX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCWlmIChjdGxy
LT5kbWFfcngpCj4gICAJCWRtYV9yZWxlYXNlX2NoYW5uZWwoY3Rsci0+ZG1hX3J4KTsKPiAgIAo+
IC0Jc3BpX2NvbnRyb2xsZXJfcHV0KGN0bHIpOwo+IC0KPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAg
IAoKTkFLLgoKVGhlcmUgaXMgYSBzcGlfY29udHJvbGxlcl9nZXQoKSBjYWxsIGEgZmV3IGxpbmVz
IGFib3ZlLCBzbyB0aGlzIAphZGRpdGlvbmFsIHNwaV9jb250cm9sbGVyX3B1dCgpIGlzIG5lZWRl
ZC4KCkNKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

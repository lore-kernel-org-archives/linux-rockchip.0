Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 344C2C6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 04:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h0v1bbcmlLKLL726TcSwksDw6QejPy6jSijIfj4AU2c=; b=Trewv20GWm0isgYcUpVt9F/5Xo
	duiQVuAMHYFsQ0nzltxkgvfRSW+NvyTYjkhgkfLiucYXMVukgQBARKy2QyJ8u3wvzjn2gpZexNx49
	O3g2YbtNExaDEmPdlaoaxStiaUotuliWG7ZqdMnuf6D7iH9RIG/VTiS5sfmQVemD0s9CUqfueC5kU
	YR/6gsJTYGmw/vZEicX4rYEnNZ35GLeFPkdOxrUuQRFIjK6oUEbBZuLQMFhkenf2xbtgZrNPRUvGs
	Gv7pdR4g28eXndy2hzxRSwWMkycUGG31q3ilblc16iuDEW2dQVbUhNVBxj4L2DVjCrGICOMKMsZ9h
	Dwmy42ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phNFv-00GXQN-1F;
	Wed, 29 Mar 2023 04:17:51 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phNFq-00GXOE-30;
	Wed, 29 Mar 2023 04:17:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 72C8FB81E54;
	Wed, 29 Mar 2023 04:17:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EBF6C4339C;
	Wed, 29 Mar 2023 04:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680063464;
	bh=eV+z6VEaC2dINI98VszrbaiHTFz32QNR/TbnF151vTQ=;
	h=In-Reply-To:References:Subject:From:To:Date:From;
	b=n7hHoT9cl4BahD9JFvPKB/aQB761g/fnk9KOSQ4o/z3XCcbxVkzNXykCpetV4JMcb
	 lKbnfFksoTf1RSJUMCOfr73CEq3qqeAiYcfo+/nxbj1z1H99Kn6MJB013kAVtoMaBj
	 q6hkpyychUIseBiT9ydWEHjqWN30KUhmPOcUGU9u1tLQThnCFsu1tqpWJ/6c7AtJLc
	 rSsNaKKxTzgFVIJ+4mFqu4ZmcrtFT/tPtmpU+nLtI20acClSmzkvUYLh31TBOS+V5i
	 9wiq+TfU8CzOWNnOCGS9p47Niz4LN/UokOEmy2Ffp+sqFnmgypTEgIuBbYAbmZ1Dov
	 G8AoiXz4invKQ==
Message-ID: <7e58e5c86bd602932b762f9364209e31.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230310222857.315629-2-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org> <20230310222857.315629-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 02/16] spi: mtk-pmif: Drop of_match_ptr for ID table
From: Stephen Boyd <sboyd@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, Andi Shyti <andi@etezian.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Jerome Brunet <jbrunet@baylibre.com>, Kamal Dasu <kdasu.kdev@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Mark Brown <broonie@kernel.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Matthias Brugger <matthias.bgg@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Jarzmik <robert.jarzmik@free.fr>, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Date: Tue, 28 Mar 2023 21:17:41 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_211747_124870_C451C55D 
X-CRM114-Status: GOOD (  10.32  )
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

UXVvdGluZyBLcnp5c3p0b2YgS296bG93c2tpICgyMDIzLTAzLTEwIDE0OjI4OjQzKQo+IFRoZSBk
cml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hvdWxk
IGJlIGFsd2F5cwo+IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBhbnkg
c2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQo+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBldmVu
IHRob3VnaCBpdCBpcyBub3QgcmVsZXZhbnQgaGVyZSkuCj4gCj4gICBkcml2ZXJzL3NwbWkvc3Bt
aS1tdGstcG1pZi5jOjUxNzozNDogZXJyb3I6IOKAmG10a19zcG1pX21hdGNoX3RhYmxl4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gCj4g
U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBs
aW5hcm8ub3JnPgo+IC0tLQoKSSdsbCBmaXggdGhlIHN1YmplY3QuCgpBcHBsaWVkIHRvIHNwbWkt
bmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

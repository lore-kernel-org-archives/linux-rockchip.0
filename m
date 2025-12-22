Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E73E6749C
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 11:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tYdYjX0Boxno6jhSdP1Rp12jatTVMeBk3Tq/MFVXsU=; b=Ebf60+Ybo6MwAP
	Ww122hcw17oNbuAaL2MfC/Wi4HpuNB3KTwDULo9PffMftFSti8yaXaXaCvQVAwmD7nES9/kQQURUN
	YFBq1WLHCATbmhUEGfhbphjP17aTBJfxMPrKxk6Krpa4WbJpIpcJjz54nEZDWhLs5OTB3CqHjGUM9
	oLOSDLwCAb0Z8VCKY29irLlHSr+y5GC0Cvs8sUTAiWclZ6H9mVxe6UCP+5mrk2xHSLRCcI6G5Jsta
	H2sHV48qlkGVteR44aQxMjTxYdVHzRxwBhI5TLfP0WIUW7D84FVhjDNp0CrfOSzxgzsq0E+GJICVL
	wHnqrN/F/rgexJ1dyEQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXeR3-0000000Di5Q-1QOz;
	Mon, 22 Dec 2025 11:50:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXeR0-0000000Di3D-0gIA;
	Mon, 22 Dec 2025 11:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ruyy63GwboUn7+9s5l67HuCdYOrz3XONvrYdWrJbZr8=; b=vARL6LrT+8uqJV8RIB88I7spsT
	VcvqJXHZ2ESVBUXH8pmBDr6rSZIyusgktlb9xTjaFrNyB/hP0IW8zYhI19KcMG8Ehy65OagQl2NpD
	TvOU/srFlHluBlH5fGPr9Q5HTM6c0cwQoTMUXlnRNLZwLLZbv5gR7+7pFsbX1gH7H4D0EDey8RiC+
	G4KGL3ST5Evr8aKquQSLsW7cZKzGnoZJc418sSO+RcGMthBaCf76o8PLPjSP49so+VUv53GzEFn64
	jlSn2FLqebJcj1lyUNi7AmfUI1VaA9OeuWjOUgqhJfIOWnKlBB974EL1TCGYkXx+5mU3oT4QIiMD/
	MYPy1VZw==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXeQT-0004nF-5v; Mon, 22 Dec 2025 12:50:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] iio: adc: rockchip: Simplify probe() with local 'dev'
Date: Mon, 22 Dec 2025 12:50:07 +0100
Message-ID: <5782401.ejJDZkT8p0@phil>
In-Reply-To: <20251221142602.47368-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251221142602.47368-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20251221142602.47368-6-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_035042_410486_DE552F1F 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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

QW0gU29ubnRhZywgMjEuIERlemVtYmVyIDIwMjUsIDE1OjI2OjA1IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBTaW1wbGlmeSB0aGUg
cHJvYmUgZnVuY3Rpb24gYnkgdXNpbmcgYSBsb2NhbCAnZGV2JyB2YXJpYWJsZSBpbnN0ZWFkIG9m
Cj4gZnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlLiAgVGhpcyBtYWtlcyBzZXZlcmFsIGxpbmVzIHNo
b3J0ZXIsIHdoaWNoCj4gYWxsb3dzIHRvIGF2b2lkIHdyYXBwaW5nIG1ha2luZyBjb2RlIG1vcmUg
cmVhZGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6
dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKWWVwLCBtYWtlcyB0aGUgY29kZSBkZWZp
bml0bHkgbmljZXIgdG8gcmVhZAoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

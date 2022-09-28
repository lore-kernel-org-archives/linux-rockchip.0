Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D61C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 13:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUNWQixG+KT1TwAfChPhewwfbIDcBwY/8aTbZU1nZL4=; b=3M32Vjy37bwu6w
	vDMdi8wCifpQxK73kpTvaX/2Y4lD/1h5RL+0IM7lwMkiOFxGULNsr9F5OTPDqPro5SHvJTD7DtGCd
	/fQUicIUFcQ8+3eKYlTAZ1tWDayju937mmG81QrONpyLhfVQoyqwy4odjkDWnb0OpeODccYr+ju3y
	jL6cV2kPW+fx3soA0LymZWZhu0o1Fi06BE06D9KPEsrRTwCGPUY4DumL4AQtf7rrcvuZLr8cpOlK2
	u+xiQA8J3+LFlHGtST7OOdrIQZTFiNncRQ1DMCZPc4VTD7TRvTm1HOHFFCinhDPKLsNmSFiIOHlb2
	+gaMQryEnNs3+PrRa9jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXTp-00GZgg-PI; Wed, 28 Sep 2022 13:52:05 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXTn-00GZfc-8d
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 13:52:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8BCA4B820D2;
	Wed, 28 Sep 2022 13:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16BB2C433D6;
	Wed, 28 Sep 2022 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664373118;
	bh=ROqLS98VGR+VwDcyhPpFKMOIVZET4jcf8OvFsP707zY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jHDEpF2TQL0WX+xB2qPBHQTOVbMKScDc2Jh159+954zJYLNRz65uOi1TqxdCXcUJa
	 zp8DFzhyGpEjSLOEEwM0uri7zr3u3+3Ik97vS6FzBGNV6LnvrzW9g8kxGahq2QryU0
	 OCKilBJGnDrQnirnAZDtAe/MoXwZM+2CNe3ACFevjWrr/fbldP9oTTYuRGsFvCNrdi
	 K6DhIhREDSni09KjL4ZxK5sjilkJ9V4G/sK0pC0fuBUAJwhfKEOlCu6aUOthwabph/
	 Vq+A5dRV1EUz1gKfoA9OorxqkEqX0RC1ETsigtW4K7nYY4kMv8dS26znfPti2qhkH1
	 0jQVR86c6VHGw==
Date: Wed, 28 Sep 2022 14:51:51 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv3 02/14] mfd: rk808: use dev_err_probe
Message-ID: <YzRRd/4Wdr5Comu1@google.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909175522.179175-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_065203_469724_D9323F34 
X-CRM114-Status: GOOD (  13.26  )
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

T24gRnJpLCAwOSBTZXAgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFVzZSBkZXZf
ZXJyX3Byb2JlIGluc3RlYWQgb2YgZGV2X2VyciBpbiBwcm9iZSBmdW5jdGlvbiwKPiB3aGljaCBz
aW1wbGlmaWVzIGNvZGUgYSBsaXR0bGUgYml0IGFuZCBwcmludHMgdGhlIGVycm9yCj4gY29kZS4K
PiAKPiBBbHNvIGRyb3AgcG9zc2libHkgaW5jb3JyZWN0IHByaW50aW5nIG9mIGNoaXAgaWQgcmVn
aXN0ZXJzCj4gd2hpbGUgdG91Y2hpbmcgdGhlIGVycm9yIG1lc3NhZ2UuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCA0OCArKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDMyIGRlbGV0aW9ucygtKQoKRm9yIG15IG93biByZWZlcmVuY2UgKGFwcGx5IHRoaXMgYXMt
aXMgdG8geW91ciBzaWduLW9mZiBibG9jayk6CgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25l
cyA8bGVlQGtlcm5lbC5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

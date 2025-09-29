Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A93CAC5BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 12:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMfKdLT5EIlnu9+pf14NoXeP/DtPwPpoa+vWca4Effk=; b=I1Ghas3a/1U5HY
	XCHLd8Lil4lKynz0/9SThl0qHHKOJJOwRG+6kys9QC+Gvywfnk9wZ8SWq8W5uFmIGctVr9IanGajL
	MJzYJi6I2q5UKLxwKFA+3FSCnMqY8FvFwdALTw9mYfhG67bhl5pHo2eSGWq1Jk1VlZCpBlaKX/yjc
	gzSSxda9TR+7ZhcfoV7r+L83wDy5cRARfWsnqLVEQKM9v40EVwE4+t26q05jT1Cou9qYJjhF+frWd
	tbv1A4+fq9j3jDwPUsuv9kaNwz+zeJjSYqzVTGVuxbRXASx5fa5aiBFepLwlLPNszZcUUWccNBMoU
	J1I7DN9KRF+7JMn5XnOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Cz2-00000002T9s-3wdx;
	Mon, 29 Sep 2025 12:28:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Cz0-00000002T9G-2Fgw;
	Mon, 29 Sep 2025 12:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8Cmtx7kRed2U7BqgS5jivN6WaQUtTqCZCu6zk3IT+OE=; b=vazqFVDwXNelz4Ve1pgiByWgSm
	/ipyxv8z2DlhL7W7eh7ldmKNbmoLN3nhnNL8UbkEbaaCeJFM+2kPm/PjZEEz/VL4LtnNcMmZ7wxE6
	KUNEjsbE7FCtaj7NfiqYJ5W1q886xuLr4PeaYFC4o96ywnLaKitHxnn1gBysLawts/q5Z+YZHYhEJ
	4QzdDx98RectK4GZ9tmHccCgG1e9mZUhd6vBLK1cAnWZ0cGry758XJyFAnckyNEY0UwrVtfS81Eeh
	hsCxG5319lLAWb7HFlWexLE4RHPTZMYzmwFmCx3QqqJ0El29QLZ28QwdKcs+oSUzdksjrQbE/SZsY
	6k197Q3w==;
Received: from e227-076.eduroam.tuwien.ac.at ([128.130.227.76] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v3Cye-000723-2i; Mon, 29 Sep 2025 14:27:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com,
 honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com,
 neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
 pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
 jjm2473@gmail.com, jbx6244@gmail.com, Liangbin Lian <jjm2473@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Mon, 29 Sep 2025 14:27:34 +0200
Message-ID: <14335288.5MRjnR8RnV@phil>
In-Reply-To: <20250929065714.27741-2-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-2-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_052758_597250_2C16A4B4 
X-CRM114-Status: UNSURE (   8.57  )
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

QW0gTW9udGFnLCAyOS4gU2VwdGVtYmVyIDIwMjUsIDA4OjU3OjEyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGlhbmdiaW4gTGlhbjoKPiBMaW5rRWFzZSBpcyBhIGNvbXBh
bnkgZm9jdXNpbmcgb24gdGhlIHJlc2VhcmNoIGFuZCBkZXZlbG9wbWVudCBvZgo+IG5ldHdvcmsg
ZXF1aXBtZW50IGFuZCByZWxhdGVkIHNvZnR3YXJlIGFuZCBoYXJkd2FyZSBmcm9tIFNoZW56aGVu
Lgo+IAo+IEFkZCB2ZW5kb3IgcHJlZml4IGZvciBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMaWFu
Z2JpbiBMaWFuIDxqam0yNDczQGdtYWlsLmNvbT4KCkluIHYxIHRoaXMgcGF0Y2ggcmVjZWl2ZWQg
YW4KCkFja2VkLWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

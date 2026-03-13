Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15FE1107BCD6
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 18:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzIb6cbKkQWyk1/+RmENssV96uwYmKuN3oDTeAkYxLM=; b=YwwmW+3nc2AIyi
	7O6YLzF3Bc5Rtb7JAEN9hw8peZAbapIiwhMfUFwQxjMbhQFY0lIrYBSIj6BmXxQLbIVYVXqb0JF/3
	NYYrkha6hmD+P12fhyJIVXXLh+zWJhVd7U0jr2QFq+WZleA20zU22hPc4HqYTd9CllJdOn5JZk2+5
	QSepwVdsmv1oGnYoNn6GOS1E9caDTCMCOSumoXOMPKzxkJBvzUTzn9pLKINSC8RoWd97fFTBG1yYS
	z072AN333CmxteccFovB53/OSYRDjeaMueQXiTaxKY6/hYkQBYBdh5m/1FhiCiQMoTCib5C8glFQj
	p2+somOR7K4KU/YOr8oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w176x-00000000t5j-3eYj;
	Fri, 13 Mar 2026 18:19:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w176v-00000000t3k-0Jtt;
	Fri, 13 Mar 2026 18:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HKgNDhaBbbTv/+y1AavDqvCj/t0nPjX4gBTDUg9TX6c=; b=HlmU1vlo3KIO02qMTLyo611JUA
	GuevmmkW1ZLGjpkbUIKBW/wYpXY4r4MU3RopnV9wal8pRzJkJxYE3kl0UdiI7Gb2dgvITJ25JwOeX
	zr+GJp0GJ2RHEXmlIqbjhv4ZjQfgEMmAeX4PTYKceOjmSzS1zTopO57NDwvwNSidPy0Jx6s32O3n5
	pWl/9HjA85xY6KDyM9j1DraGCE6HZr24XhznLXOxhWaDgripj7ovjc3Bz4mkH03HBzXR8zmjK+JWX
	EQgsCzncfzBMK58BSRm5pw5up7l6joAi+svisTOFsMD2xv6KZvwHvq9EgKVx5jFvi8FYDT3AF0VMj
	vTzCcdYw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, michael.riesch@collabora.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io
 expander
Date: Fri, 13 Mar 2026 19:19:39 +0100
Message-ID: <6246776.lOV4Wx5bFT@phil>
In-Reply-To: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_111945_133110_42EE94E5 
X-CRM114-Status: UNSURE (   9.61  )
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

QW0gRnJlaXRhZywgMTMuIE3DpHJ6IDIwMjYsIDE2OjUzOjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2ggdmlhIEI0IFJlbGF5Ogo+IEZyb206IE1p
Y2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+IAo+IFRoZSBEaWdp
dGFsIFZpZGVvIFBvcnQgKERWUCwgdGhlIDE2LWJpdCB2YXJpYW50KSBvZiB0aGUgUkszNTY4IFZJ
Q0FQCj4gaXMgYnJva2VuIG91dCB0byB0aGUgUEY1IG1haW5ib2FyZCBleHBhbnNpb24gaGVhZGVy
Lgo+IEVuYWJsZSBpdCBpbiB0aGUgZGV2aWNlIHRyZWUgb3ZlcmxheSBmb3IgdGhlIFdvbGZWaXNp
b24gUEY1IElPCj4gRXhwYW5kZXIgYm9hcmQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBS
aWVzY2ggPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0PgoKVGhlIEZyb20gc2hvdWxkIG1h
dGNoIHRoZSBmaXJzdCBTaWduZWQtb2ZmLWJ5IGxpbmUuCgpBbGwgbGF0ZXIgU2lnbmVkLW9mZi1i
eXMgYXJlIGZyb20gIm90aGVyIiBwZW9wbGUgaGFuZGxpbmcgdGhlIHBhdGNoLAppLmUuIHRoYXQg
b3RoZXIgTWljaGFlbCBSaWVzY2ggOy0pCgo+IFJldmlld2VkLWJ5OiBHZXJhbGQgTG9hY2tlciA8
Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+Cj4gVGVzdGVkLWJ5OiBHZXJhbGQgTG9hY2tl
ciA8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+Cj4gUmV2aWV3ZWQtYnk6IEJyeWFuIE8n
RG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgoKCkhlaWtvCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

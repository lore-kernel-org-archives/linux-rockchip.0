Return-Path: <SRS0=uCGj=F2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE0E7C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:34:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EB87230FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:34:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8EB87230FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uBR6cypo9MhZW4YSp0NOHUOOnSzKAX90XN5wYi1gEto=; b=FbTc/WQOwum14WD0pyNAL5bg7
	9BxKSaQZzoSiMCl5+HOkK+I0uwzr9hYJdRnrCHlcCSXLvPfZfcizUNJ38+JYVpZ5rkz8+BpYcQmvn
	dlrHvjnoprSg+br9kRx0AK7aGmJ//HnkCdbTpep12lAHdUNDlXtZ5BT/DXjE288Rd5pG8r5Z0x8bx
	dxDPIt8Yf5gdhkeq2+2QH6gDsG2zJ7PX1pDqIoYNNyh6i2RVtw+WX9Uoa1jxa7Aoli73YQrbIqm44
	28N+av0Pb0tf1jpwIfztK0dRbi3vWZ/T43sfTbx15eHfJ3aEwVZ3fgC7Qdg4sBQkfrRRyqS8Haik3
	d+b80XI1Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krkcL-0003DV-Ol; Tue, 22 Dec 2020 16:34:33 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krkcF-0003C4-P2; Tue, 22 Dec 2020 16:34:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 8A081A38DF;
 Tue, 22 Dec 2020 16:34:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo05-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo05-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2GvWqAe3Y19; Tue, 22 Dec 2020 16:34:27 +0000 (UTC)
Received: from jupiter (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 46D24A0B1E;
 Tue, 22 Dec 2020 16:34:09 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 0/3] pwm: rockchip: Eliminate potential race
 condition when probing
References: <cover.1608407584.git.simon@simonsouth.net>
 <20201221091618.oxjpmlnmo5iaobt7@pengutronix.de>
Date: Tue, 22 Dec 2020 11:34:03 -0500
In-Reply-To: <20201221091618.oxjpmlnmo5iaobt7@pengutronix.de> ("Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig=22's?= message of "Mon, 21 Dec 2020 10:16:18
 +0100")
Message-ID: <87wnx9ol50.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201222_113428_050997_DEC1C7D7 
X-CRM114-Status: GOOD (  10.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
Ogo+IFdoaWxlIGxvb2tpbmcgdGhyb3VnaCB5b3VyIEkgZm91bmQgYW5vdGhlciBsaXR0bGUgcHJv
YmxlbSB0aGF0IHlvdSBtaWdodAo+IHdhbnQgdG8gYWRkcmVzczogcm9ja2NoaXBfcHdtX2dldF9z
dGF0ZSgpIGNhbGxzIGNsa19nZXRfcmF0ZShwYy0+Y2xrKS4KPiBBY2NvcmRpbmcgdG8gdGhlIGRv
Y3VtZW50YXRpb24gKGluIGluY2x1ZGUvbGludXgvY2xrLmgpIHRoaXMgaXMgb25seQo+IHZhbGlk
IGZvciBlbmFibGVkIGNsb2NrcyBidXQgdGhlcmUgYXJlIG5vIHByZWNhdXRpb25zIHRoYXQgcGMt
PmNsayBpcwo+IGVuYWJsZWQuCgpTdXJlLgoKVGhhbmtzIHZlcnkgbXVjaCBmb3IgcmV2aWV3aW5n
IGFsbCB0aGlzLCBVd2UuIEknbGwgZm9sbG93IHVwIHNob3J0bHkKd2l0aCBhIG5ldyBwYXRjaCBz
ZXJpZXMuCgotLSAKU2ltb24gU291dGgKc2ltb25Ac2ltb25zb3V0aC5uZXQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

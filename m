Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8356BC61DE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4KMpfA7cEfOT/DIgI07Id7Jqbd/hNRigC5JR8lBv+E=; b=fRU9T80m5Pf9f3
	DZSApb9CjeWzvC6zVFu9am3FYNQDJ7n1SyDBCy+IzYgN7BAyXT5MetvjgAp/r7mbWOT71FvxUMF1M
	3sj8Lqa8iOszWrTeoFqD4MHTmyBix7n8y5+ZKH8i8pbwvEIg2NbgzLcz/tztl4pieZtHabe1eU08o
	gD4jLsvV2200cnoD54Y3rbv+86cnCZoxgNzSJqNUohkcEqtBSnjxZ5M53tY+i+iz9F/aJKvz7hsK7
	zuIcGpsnhud7EH3eLPOvTXQHd+UvzVmZrN7yPj9TXEN5xIhDg10YGw3pQOqb02+a7wnVD4RIxzFZU
	ZlywJteH2mSp2xOnNMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoty-0000000G8qM-1E08;
	Sat, 21 Feb 2026 15:28:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtotv-0000000G8pZ-0YBS;
	Sat, 21 Feb 2026 15:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5s92sJYFqlhkw0TjQVyNXDxEdcBPXkyRZyqBIwjAhEs=; b=VkSBeE4wVQtSaWBxrHrtzxO5Dw
	b5qIN4wJr2YcOGzIU/Xlg3pWbrTyCsp6zobMTx0Ue8OSKe8TH7s8AFGrgx3LecbOqhnjN1nQWz1VN
	n8nLX5mFn+22Qhs/my6L07QeKvapdQd3HY4Kb6syBeEvCT/Hyd6Es8WZp3OLylckrnpknSsHXJV8x
	GOfSI35BDJjj/VlvSYVkfXHsKjgiv+c/UztONWVSgeGXFn+DGenYmj6ovWS8ARJHHzCL9V2DqDhkg
	Y7t6e0PG5AxmfJky5xDWRrDmpuLTUwVBvjPBjIUgq9Tlw+G2O57Avteix1n8kAhwh3UjiBBcjQSM0
	0Dri2gGw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>, Felix Gu <ustc.gu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
Subject: Re: [PATCH] soc: rockchip: grf: Fix device node reference leak in
 rockchip_grf_init()
Date: Sat, 21 Feb 2026 16:28:08 +0100
Message-ID: <50476327.XUcTiDjVJD@diego>
In-Reply-To: <20260217-grf-v1-1-2088c966875d@gmail.com>
References: <20260217-grf-v1-1-2088c966875d@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_072811_166236_3447EFB9 
X-CRM114-Status: UNSURE (   8.02  )
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

SGkgRmVsaXgsCgpBbSBNb250YWcsIDE2LiBGZWJydWFyIDIwMjYsIDIxOjExOjMyIE1pdHRlbGV1
cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRmVsaXggR3U6Cj4gSW4gcm9ja2NoaXBfZ3Jm
X2luaXQoKSwgd2hlbiBzeXNjb25fbm9kZV90b19yZWdtYXAgZmFpbHMsIGl0IHJldHVybnMKPiB3
aXRob3V0IGNhbGxpbmcgb2Zfbm9kZV9wdXQoKSwgd2hpY2ggY2F1c2VzIGEgcmVmZXJlbmNlIGxl
YWsuCj4gCj4gQWRkIHRoZSBtaXNzaW5nIG9mX25vZGVfcHV0KCkgY2FsbCB0byBmaXggaXQuCj4g
Cj4gRml4ZXM6IDc1ZmI2M2FlMDMxMiAoInNvYzogcm9ja2NoaXA6IGdyZjogU3VwcG9ydCBtdWx0
aXBsZSBncmYgdG8gYmUgaGFuZGxlZCIpCj4gU2lnbmVkLW9mZi1ieTogRmVsaXggR3UgPHVzdGMu
Z3VAZ21haWwuY29tPgoKU2hhd24gd2FzIGEgYml0IGVhcmxpZXIgd2l0aCBhIHNpbWlsYXIgZml4
IFswXSwgc28gdGhlaXIgcGF0Y2ggd2lsbCBnbyBpbi4KCkhlaWtvCgoKClswXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMTc3MDgxNDk1Ny0xNzc2Mi0xLWdpdC1zZW5kLWVtYWlsLXNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbS8KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

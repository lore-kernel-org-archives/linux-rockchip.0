Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F05F54ADB
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 17:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22FulM3xnjj6BZYWZVZ7YkKc1/adCwOKto69H/zCXtI=; b=c0a9sr+Vdp6+Jq
	wtxKPMLyYnn1FSBiWx8KjLvcSXTAw/HNHvPXaGZFXHXHTt0c+CRxZbizVLH5GMP05vpmovEZ2g0L1
	9RnOxYLStv6+TAUXh7Szr3Qo6UYFP6qbDLN3wmPr1mhcP88XpQQQv0FGuWp5X+IzIqm4uXQILBCil
	zILcMqBAaB2gpIfGT/MLrprgFJhrj63gdg3Gd+Z8/bak6f+GSjuB+XnhmxiTZawipyxf9e9izIJfc
	JM1TAjo3TO3kxQUvFJALG7h+BMdUX419WXvvXdBv0YfOUYwkw796e0lqS7c1YVIuQLb8F1CumK7uw
	K4/Zvl2AaSHzvAC+gT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55Bn-00000001y0z-22hk;
	Tue, 24 Mar 2026 17:05:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55Bl-00000001y04-2ERP;
	Tue, 24 Mar 2026 17:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0t+oQcy1b0wNBqxu5SQctA+VyPx8zQsKT5ERHccPGCQ=; b=i35miYNIRP18uL0KgzsFD3vHdk
	Gq1pmFn8+Tf9XOn8UJ9OLQ2yHL48PWhNSK4FS4Mad/mnFQV6oj0sLtQ+kuJ/g/GMYs3o7KLfnf4LK
	9IosGWCaXgBphwGmPL4okhcb4obf2EB5PIzsB5ZfOna/Uo5ILJiNRQKcbLHiBxUSXINhGp1saKDoe
	BhMj6sKCsxU+befN48vspJ9hnMed6hc7FlKf5KAK70L/72dSlHeLr9iPHGnAS4vo2nR+2sSvorl+Q
	tjL4pF3Vu3aw1WgYf3Ub2DMACNHTBqdBwx3za0DaSAd+GTgm78H12zZAEDEe7TqoeaccqOgH0hqmk
	8lUpCYEA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	=?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix RK3562 EVB2 model name
Date: Tue, 24 Mar 2026 18:04:53 +0100
Message-ID: <177437177533.786081.8620014414771033959.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
References: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_100509_577647_0A90D7D5 
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

Ck9uIFRodSwgMTkgTWFyIDIwMjYgMTM6NTU6MDAgKzAwMDAsIOiwouiHtOmCpiAoWElFIFpoaWJh
bmcpIHdyb3RlOgo+IFRoZSBtb2RlbCBuYW1lIHNob3VsZCBiZSAiUm9ja2NoaXAgUkszNTYyIEVW
QjIgVjEwIEJvYXJkIi4KPiAKPiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBGaXggUkszNTYyIEVWQjIgbW9kZWwgbmFtZQogICAgICBjb21taXQ6IGVkZTZh
MDU2MDY4OTJiYWI0ZjZkNzg1ZmZjZmMxMjQxNTBjMmViMzIKCkJlc3QgcmVnYXJkcywKLS0gCkhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04E9C021B3
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 11:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xT876QqO5wRg8w5NgdhTUkMo5/JH7t+0PKRYTRe0TzE=; b=JBtfeQc/+NcpeZ
	4Ny6Ujqeh1QK6Kj2ettj5/oFTjPhC5d3wERxSRX5zvyAV8VXnudGRF+tTOOCU5QRjBTELCarRlqUu
	VKdwA/qSlsHPnM39AN3MVVK9y5kUN4U0u2spPGvIcVbmSvzpvIP5bzGck9GO8VhsGQBueUoQoaoIv
	wx65TXJrLoOQUkxXjhEYt75rRy19FjsL91fktpErxRek9OtVqQ3KqBt2P9I13tIQX3PKVgpOiQKq4
	gUsUDhOBsmMaoO5LpOKW3JuqwltelXQp6spaXmfB7i357DaKDo/AzIrl6T5x23JevFKfyFlU1lJJV
	6eoAUr7KDV5CQVWkZ0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmAJx-0000000Azyb-0rDX;
	Sun, 23 Feb 2025 11:38:53 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmACQ-0000000AyMd-3ZeL;
	Sun, 23 Feb 2025 11:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version:
	Content-Type; bh=azLeyf2xC4uh93jZO6CQCigHAVXnNrkCBQPDkD3e1Tg=;
	b=JBCxw3IMHEjmkAbdWSPa6aNuVY073ScWKpqbpR8TjwohgVbhz0Zxfhf8U3pm4t
	NSwYSM8uXgjWinpoyGDZGEwwEy1uhzxAk/oykFm6ZyIMp/m8t6uaMapx9a4BpxWo
	AFJtoKdJqeh1+Gv79a98XsKOMxY4ufPgb+CxxuxkhMR4s=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgBHWqbdBrtnleHpAg--.47651S2;
	Sun, 23 Feb 2025 19:30:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
Date: Sun, 23 Feb 2025 19:30:23 +0800
Message-ID: <20250223113036.74252-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: PygvCgBHWqbdBrtnleHpAg--.47651S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJr1fKF18CryfAr17JrW7CFg_yoW8KrWxpa
	nrAFy5try8GFWaqrZ2kF1DCrZ3A3Z2yayrKws7J3sFqrn2kFyDCrnxCFsxXr9rGF17AFyI
	9rsxX34xGr42qF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UvD7-UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkBD8Xme7AH88NgABsK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_033107_199741_83BE0BC8 
X-CRM114-Status: GOOD (  10.00  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgoKClRoZXJlIGFyZSB0d28g
RFcgRFBUWCBiYXNlZCBEaXNwbGF5UG9ydCBDb250cm9sbGVyIG9uIHJrMzU4OCB3aGljaAphcmUg
Y29tcGxpYW50IHdpdGggdGhlIERpc3BsYXlQb3J0IFNwZWNpZmljYXRpb24gVmVyc2lvbiAxLjQg
d2l0aAp0aGUgZm9sbG93aW5nIGZlYXR1cmVzOgoKKiBEaXNwbGF5UG9ydCAxLjRhCiogTWFpbiBM
aW5rOiAxLzIvNCBsYW5lcwoqIE1haW4gTGluayBTdXBwb3J0IDEuNjJHYnBzLCAyLjdHYnBzLCA1
LjRHYnBzIGFuZCA4LjFHYnBzCiogQVVYIGNoYW5uZWwgMU1icHMKKiBTaW5nbGUgU3RyZWFtIFRy
YW5zcG9ydChTU1QpCiogTXVsdGlzdHJlYW0gVHJhbnNwb3J0IChNU1QpCirvga5UeXBlLUMgc3Vw
cG9ydCAoYWx0ZXJuYXRlIG1vZGUpCiogSERDUCAyLjIsIEhEQ1AgMS4zCiogU3VwcG9ydHMgdXAg
dG8gOC8xMCBiaXRzIHBlciBjb2xvciBjb21wb25lbnQKKiBTdXBwb3J0cyBSQkcsIFlDYkNyNDo0
OjQsIFlDYkNyNDoyOjIsIFlDYkNyNDoyOjAKKiBQaXhlbCBjbG9jayB1cCB0byA1OTRNSHoKKiBJ
MlMsIFNQRElGIGF1ZGlvIGludGVyZmFjZQoKVGhlIGN1cnJlbnQgdmVyc2lvbiBvZiB0aGlzIHBh
dGNoIHNlcmllcyBvbmx5IHN1cHBvcnRzIGJhc2ljIGRpc3BsYXkgb3V0cHV0cy4KSSBjb25kdWN0
ZWQgdGVzdHMgaW4gMTA4MHAgYW5kIDRLQDYwIFlDYkNyNDoyOjAgbW9kZXM7IHRoZSBBTFQvVHlw
ZS1DIG1vZGUKaGFzbid0IGJlZW4gdGVzdGVkIHlldCwgYnV0IEkgc3VzcGVjdCBpdCB3aWxsIGxp
a2VseSB3b3JrLiBIRENQIGFuZCBhdWRpbwpmZWF0dXJlcyByZW1haW4gdW5pbXBsZW1lbnRlZC4g
Rm9yIFJLMzU4OCwgaXQncyBvbmx5IHN1cHBvcnQgU1NULCB3aGlsZSBpbgp0aGUgdXBjb21pbmcg
UkszNTc2LCBpdCBjYW4gc3VwcG9ydCBNU1Qgb3V0cHV0LgoKCkFuZHkgWWFuICg2KToKICBkdC1i
aW5kaW5nczogZGlzcGxheTogcm9ja2NoaXA6IEFkZCBzY2hlbWEgZm9yIFJLMzU4OCBEUFRYIENv
bnRyb2xsZXIKICBkcm0vYnJpZGdlOiBzeW5vcHN5czogQWRkIERXIERQVFggQ29udHJvbGxlciBz
dXBwb3J0IGxpYnJhcnkKICBkcm0vcm9ja2NoaXA6IEFkZCBSSzM1ODggRFBUWCBvdXRwdXQgc3Vw
cG9ydAogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgRFAwIGZvciByazM1ODgKICBhcm02NDog
ZHRzOiByb2NrY2hpcDogQWRkIERQMSBmb3IgcmszNTg4CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEVuYWJsZSBEaXNwbGF5UG9ydCBmb3IgcmszNTg4cyBDb29sIFBpIDRCCgogLi4uL2Rpc3BsYXkv
cm9ja2NoaXAvcm9ja2NoaXAsZHctZHAueWFtbCAgICAgIHwgIDE1MCArKwogYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgICAzMCArCiAuLi4vYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kgfCAgIDMwICsKIC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLWNvb2xwaS00Yi5kdHMgICB8ICAgMzcgKwogZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9LY29uZmlnICAgICAgIHwgICAgNyArCiBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL01ha2VmaWxlICAgICAgfCAgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9i
cmlkZ2Uvc3lub3BzeXMvZHctZHAuYyAgICAgICB8IDIxNTUgKysrKysrKysrKysrKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICB8ICAgIDcgKwogZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgIHwgICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfZHAtcm9ja2NoaXAuYyAgICAgfCAgMTYyICsrCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jICAgfCAgICAxICsKIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmggICB8ICAgIDEgKwogaW5jbHVk
ZS9kcm0vYnJpZGdlL2R3X2RwLmggICAgICAgICAgICAgICAgICAgIHwgICAxOSArCiAxMyBmaWxl
cyBjaGFuZ2VkLCAyNjAxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1k
cC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9kdy1kcC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2RwLXJvY2tjaGlwLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9icmlkZ2UvZHdf
ZHAuaAoKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

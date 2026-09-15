Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F093C88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 13:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy5WcN8RShqIMtzVgtzVLiH2QyYyHW2c1Ji7ba4E+CE=; b=IuDLUBSK4Q8NBb
	YwHhgBIc3+TpVn9wx1O3sm57zK0QeTrxEcHq/xx6anhwh9ZrvfQFA+7NSr+U+yYv5ln5sJXhEQr7V
	xl5XjzNizgBtwFQJQelkbaGUmY1r1DiBwwwymdW+bZgCTRsgQuloc5jWBDjwwgseb8B2WD6qHpAZf
	cVqY5iRiFbsSGZuLyPdEtkCP20Ekhuess5nYIeSjNmtlty+4fpoHzIennAw4kbaS5p8ZK+ffu8ao7
	U/TAj8IrnD6uHyzJVzwrsa8iWvsr/weq/AXNVtbmpJDDrH1OGE13QoNnYnv/jVZ3ruxOGnp1T66sZ
	L/3bcl7rPY11+athO74Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6TLW-00000006l0w-0u9D;
	Tue, 15 Sep 2026 13:37:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6TLS-00000006kyp-2lbC;
	Tue, 15 Sep 2026 13:37:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ldeR0B4GHt3b5GmwgKmYffkbyfoBxCcoI2N1ceTEtE0=; b=ifzJbiZ4sUYioCzujeRclD++2W
	raXXLxleGWSeduKUqRUmGxuy3tTqcS8Qniii5CeOs1hL0kjzRBxp6kMarv4OfAnmmhkeOZeBUKAW3
	MPQ+9Ptv/l4M5gFB2z6TPoAmk90ppF9gkMmh3m/Ixtpll1VP9lZKlJhc+HBpFCgDwi7RRseAvQAGa
	gmOPUlCwwuS7EQfDLMepixFqlRy/8bfcda/AKSF9gAMXDWHdEnJ4ctDEHADVPXIMBYAv6GPizIX1d
	ycdqxxV0hVVvWHrRquQQVhnny32EqSoOo3IEet5eNFvLFZnokuGEgRM+mPSO0vCkNgIiw5jqAhOed
	vHNXrz1g==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v5 0/3] DSI Controller improvements for Rockchip platforms
Date: Tue, 15 Sep 2026 15:36:47 +0200
Message-ID: <3800544.yaVYbkx8dN@diego>
In-Reply-To: <20260914013331.108-1-kernel@airkyi.com>
References: <20260914013331.108-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_063710_760663_6A9C5758 
X-CRM114-Status: GOOD (  12.45  )
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

SGksCgpBbSBNb250YWcsIDE0LiBTZXB0ZW1iZXIgMjAyNiwgMDM6MzM6MjggTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBGcm9tOiBDaGFveWkgQ2hl
biA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gVGhpcyBzZXJpZXMgaXMgZGVkaWNh
dGVkIHRvIGVuaGFuY2luZyB0aGUgRFNJIGNvbnRyb2xsZXIgYW5kIFBIWSB0aW1pbmcKPiBpbnRl
cmFjdGlvbiwgcmVmaW5pbmcgdGhlIGxhbmUgcmF0ZSBjYWxjdWxhdGlvbiwgYW5kIGFkZHJlc3Np
bmcgdGhlCj4gYXNzb2NpYXRlZCBoYXJkd2FyZSBsaW1pdGF0aW9ucy4KCgpUb29rIG1lIGEgYml0
IHRvIGZpbmFsbHkgdGVzdCBhbGwgdGhlIGRpZmZlcmVudCB2YXJpYW50cyBmb3IgYSBkaXNwbGF5
CnRoYXQgc2hvd3Mgc3RyYW5nZSBiZWhhdmlvdXIuIFNvcnJ5IHRoaXMgZ2V0cyBhIGJpdCBsb25n
ZXIuCgoKVGhlIGRpc3BsYXkgaW4gcXVlc3Rpb24gaXMgdGhlIGx0azA1MGgzMTQ4dyBbMF0sIGRp
c3BsYXkgaW4gcG9ydHJhaXQKb3JpZW50YXRpb24uCgpFdmVyIHNpbmNlIGNvbW1pdCBhYzg3ZDIz
Njk0ZjQgKCJkcm0vYnJpZGdlOiBzeW5vcHN5czogZHctbWlwaS1kc2k6IFVzZQpwaXhlbCBjbG9j
ayByYXRlIHRvIGNhbGN1bGF0ZSBsYmNjIikgWzFdIGFuZCB0aGUgc3Vic2VxdWVudCBmaXggaW4g
Y29tbWl0CjkzZTgyYmI0ZGUwMSAoImRybS9icmlkZ2U6IHN5bm9wc3lzOiBkdy1taXBpLWRzaTog
Rml4IGhjb21wb25lbnQgbGJjYyBmb3IKYnVyc3QgbW9kZSIpIFsyXSwgdGhhdCBkaXNwbGF5IGhh
cyBpdHMgb3V0cHV0IHNoaWZ0ZWQgYWJvdXQgMjAgcGl4ZWxzIHRvCnRoZSByaWdodCwgd2l0aCB0
aGUgbGluZSB0aGVuIGNvbnRpbnVpbmcgb24gdGhlIG5leHQgZGlzcGxheSBsaW5lLgoKV2UgaGF2
ZSB0aGlzIGRpc3BsYXkgcnVubmluZyBvbiBhbGwgdGhlIFRoZW9icm9tYS1TeXN0ZW0gbW9kdWxl
cywgc28gdGhlcmUKaXMgYSBsb3Qgb2YgdmFyaWFudCBkYXRhIDotKSAuCgpZb3VyIHNlcmllcyBh
Y3R1YWxseSBmaXhlZCB0aGUgUFgzMCBwYXJ0IG9mIHRoYXQgc2hpZnRlZCBvdXRwdXQsIGJ1dCBm
b3IKdGhlIFJLMzM5OSB0aGUgcmVzdWx0cyBhcmUgc29ydCBvZiBtaXhlZDoKCgpXaGF0IHdhcyBj
b25mdXNpbmcgbWUgd2FzIHRoYXQgaW4gdGhlIFJvY2tjaGlwIHZlbmRvciBrZXJuZWwsIF9hbGxf
IERTSQp2YXJpYW50cyB1c2UgdGhlIHN0YW5kYXJkIHB4MzAgcGh5IHNldHRpbmdzPyBUaGUgd2hv
bGUgb3JpZ2luYWwgbG9va3VwCnRhYmxlIHNlZW1zIHRvIGJlIGdvbmU/IEFuZCB0aGF0IHJlcGxp
Y2F0aW5nIHRoYXQgc2V0dGluZyBhY3R1YWxseSBmaXhlcwp0aGUgc2hpZnRlZCBvdXRwdXQgb24g
UkszMzk5IHRvbz8KCgpSSzMzOTk6CglvcmlnaW5hbDoKCQlzaGlmdGVkCgkJbW9kZS1jbG9jayA1
OTQwMCwgdGFyZ2V0X21icHMgNDUwCgoJcGF0Y2hlcyAxKzI6CgkJc2hpZnRlZAoJCW1vZGUtY2xv
Y2sgNTk0MDAsIHRhcmdldF9tYnBzIDQ1MAoKCXBhdGNoIDM6CgkJYmxhbmsgZGlzaXBsYXkKCQlt
b2RlLWNsb2NrIDU5NDAwLCB0YXJnZXRfbWJwcyA0MDAKCgl1c2Ugc3RhdGljIHB4MzAgcGh5IHdp
dGggcGF0Y2gzOgoJCWltYWdlIGlzIGNvbXByZXNzZWQgaW4gaGVpZ2h0IGFuZCBkaXNwbGF5ZWQg
dHdvIHRpbWVzIG9uZSBiZWxvdyB0aGUgb3RoZXIKCQlpbWFnZSBpcyBfbm90XyBzaGlmdGVkIGFu
eW1vcmUgKHNvIGxlZnQrcmlnaHQgYWxpZ25tZW50IGFyZSBjb3JyZWN0KQoJCW1vZGUtY2xvY2sg
NTk0MDAsIHRhcmdldF9tYnBzIDQwMAoJCgl1c2Ugc3RhdGljIHB4MzAgcGh5IHdpdGhvdXQgcGF0
Y2gzOgoJCWltYWdlIGlzIF9ub3RfIHNoaWZ0ZWQgYW55bW9yZQoJCW91dHB1dCBpcyBjb3JyZWN0
CgkJbW9kZS1jbG9jayA1OTQwMCwgdGFyZ2V0X21icHMgNDUwCgoKUFgzMDoKCW9yaWdpbmFsCgkJ
c2hpZnRlZAoJCW1vZGUtY2xvY2sgNTk1NTYsIHRhcmdldF9tYnBzIDQ1MAoKCXBhdGNoZXMgMSsy
OgoJCW91dHB1dCBpcyBjb3JyZWN0CgkJaW1hZ2UgaXMgX25vdF8gc2hpZnRlZCBhbnltb3JlIChz
byBsZWZ0K3JpZ2h0IGFsaWdubWVudCBhcmUgY29ycmVjdCkKCQltb2RlLWNsb2NrIDU5NTU2LCB0
YXJnZXRfbWJwcyA0NTAKCglwYXRjaCAzOgoJCW91dHB1dCBpcyBzdGlsbCBjb3JyZWN0CgkJbW9k
ZS1jbG9jayA1OTU1NiwgdGFyZ2V0X21icHMgNDAwCgpSSzM1ODggKERTSTIpIGZvciByZWZlcmVu
Y2U6CglvdXRwdXQgaXMgY29ycmVjdAoJbW9kZS1jbG9jayA1OTc1NiwgbGFuZV9tYnBzIDM5OAoK
CkRvIHlvdSBoYXZlIGFueSBpbnNpZ2h0LCB3aGF0IGNvdWxkIGdvIHdyb25nIGhlcmU/CgpJJ2xs
IGFwcGx5IHBhdGNoZXMgMSsyIGFzIHRoZXkncmUgY29ycmVjdCwgYnV0IHdpbGwga2VlcCBwYXRj
aDMgb3V0CmZvciBub3cuCgpBbHNvIFNhc2hpa28gc2VlbXMgdG8gc3RpbGwgYmUgdW5oYXBweSB3
aXRoIHBhdGNoMy4KCgpUaGFua3MgYSBsb3QKSGVpa28KCgpbMF0gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJp
dmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWxlYWR0ZWstbHRrMDUwaDMxNDZ3LmMjbjI5OQpbMV0g
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMv
bGludXguZ2l0L2NvbW1pdC8/aWQ9YWM4N2QyMzY5NGY0NGFmNDRhOThkMjFkZDc3MDE2ZjI3NTZi
NmIxYgpbMl0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9OTNlODJiYjRkZTAxOTZjNGNhZWNhMWQ4YTZl
ZWY2Nzg2Mzk4MWQ4ZgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

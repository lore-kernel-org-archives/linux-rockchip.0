Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1232CA600D
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 17:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W2SMhwEoLqFiSg21vYMxezGZcaCfeq0Y/Ct50SnjMvM=; b=P4ycXl7b4RsXrt
	KkIZXe4Oa7PZ17BNSR3COauj+7NSdZXWLkh03sVdlonxcTGrR1GvLpl1VttyBDed25WgtQpHwQnqe
	9nQxOUdYsCWYGKzj51sJAWkqabevE2hF5yU5JzIq/rl16eUq+yojOX6Tuvnr01EzZlvQYlP0hKnd/
	GgtZy3I4NxtL99DUbivh/RUTia8CukTqkGUklxe1HKS4RJHe6J30x76WRwvhcOP3BTniUkrIXrsl5
	9+a6PnvueyJWEZ+fws72OLY9QU61Lc9M4nzuKX8Hx67wyAY7gHQ14jczxZkOyouBVWa4j/0lVdybn
	CZrIOyUhrl2TgM1uodvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIW-00000004ob4-02KS;
	Thu, 08 Oct 2026 17:52:52 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIT-00000004oaL-2kq4
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 17:52:51 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-3a7026b3123so929367a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791481969; x=1792086769; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9BwFMzvpnh5keZRavPMezlpByqLkrvmuKFAvrVdTgl0=;
        b=LKhrDLkM+OdDMzyo8I5+kmlTDm0coGkxUzwfIaM1gI89mP6O5WLr83pqqTuwaUKVqU
         C4MPOx/v8GVg2IrTdQGdUmExFW93mql8cTt4wR+r5A0GkihWph+gWr9Wp6ppDDqwU4H2
         OBVJAscOPQfSCdCDj4jEQ+ZaZuk+ZHPlWv8dgja8gTfsZO5wogk8/wGpARMalYhVOZ0u
         glRd8FmMxtLqp1h7+JH3hi8sa/w2oi1fW8WsuE5Cnag2OeYlB1DpLN/oflVbn2xTj2il
         ySfFis5Lf0bm+cVoGIU2ShbPMBz50fXekdlx5n9bTd7xSwcrbsinggI/Lqmv93zxpe93
         2doA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791481969; x=1792086769;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9BwFMzvpnh5keZRavPMezlpByqLkrvmuKFAvrVdTgl0=;
        b=SUTqnjofpQoUmxt4/iieqoKvg6IkO6uy9gK/ILp5SxW7OM14cWuixdXFxY/fjVpcBm
         8h+cnV6MPMGsaJXFG0usZysmT2xzV9w1yD9JpSfZVz6YdRp4B99bVsoELThohgA7IeIa
         KdJOz4qXSaCKbmLQCWrRIrN3lVV6juCwHXTR3N3uO1hdZSK6CBIHs9IIF0+GwnohSInt
         vsUSUB/8feFmPN2Uqyhk77v2qTA+y/a7d3QDgccYb1ZhBCK5KrRZRm4ydREWtfrBFCJf
         M3+AHjgSLvASIE00Wq3SRxvxFmJODJpEG/jKy3BgaGpggWTeVAbD2rIbA8x7a0hz9eVf
         FF/g==
X-Forwarded-Encrypted: i=1; AKwUvByZ1jT0hi2//qooZrpUi6KKJ1BU3Yhvnx5bT1+CyDjmYZMml76e4gawayxEjbUngHdc2t7p3J8ejs+Fp1fooA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKupmsbd/ccbALSeCgubnFh7sOYIMt3FMjamCmLcFR6gz0iYn4X
	aeUf2fht02qjN/sP/ORVF1A0HfjktB5gTNY/WA/jbmWZ+DeLZR0HvQRT
X-Gm-Gg: AYBFou2fCt1T33y4aQHb7cUPdGFS1JDgcX2b/PGPemjWtJrAibMtB+TYBLF0smuW2Y2
	aiUUharkEsYBhCg9gEuNMWvLWF0b/5mel2wkHFGd8//RhJ7Gx/BdTWJ7RqQG/sSuTLIQa90JCyY
	Ir60su+vtapWZQwkoa0lxTfaOx1QDtW040D/74C9ZgwVSr+TW4776T2gu+5cpZGsrA4eW4Kpijv
	uq3BTeCcojLrFNkqBTwCCzRYFT9+dmgTBNMGaRWtdCeh/OM3K3MNI+HD7nf4hCqyDTRFVCyiQtd
	FnFi/Tdq4kJnE14GFz9LxlziCprm1KPS3DXhb24yQ7konUjkjsCd2dYQoY+mwPy07KaM76IfT0x
	WZBhtCabsz9zUbMfFTT5dR47M2b51aaz0tsZH8TG9cQh3GpcrxfXPbJPp4Q9JwNq4kMbqXEMFcy
	4gvt15dvA6bALBtTzXut1l0oU5/ERiFuLSFLyjuzvo/hL5WDluGnsEy53UJfPgMa/So4nY
X-Received: by 2002:a17:90b:288c:b0:3a6:fec5:c186 with SMTP id 98e67ed59e1d1-3a8a0f3be3emr5184679a91.46.1791481968566;
        Thu, 08 Oct 2026 10:52:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3277c459sm144332a91.16.2026.10.08.10.52.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 10:52:48 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v11 0/6] net: pcs: add basic support for RK3568 XPCS
Date: Fri,  9 Oct 2026 01:51:54 +0800
Message-ID: <20261008175225.3375274-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_105249_730092_7A7BB8AA 
X-CRM114-Status: GOOD (  21.93  )
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

VGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJL
MzU2OCBTb0MKdXNpbmcgdGhlIGludGVncmF0ZWQgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTLCBh
bG9uZyB3aXRoIG5lY2Vzc2FyeQpmaXhlcyBhbmQgcmVmYWN0b3JpbmcgaW4gdGhlIHN0bW1hYyBj
b3JlIGFuZCBYUENTIGRyaXZlci4KCk1vdGl2YXRpb24KPT09PT09PT09PQpUaGUgUkszNTY4IGlu
dGVncmF0ZXMgYSBEVyBYUENTIGFjY2Vzc2VkIHZpYSBBUEIzIGFuZCBjb25uZWN0ZWQgdG8KYSBO
YW5lbmcgQ29tYm8gU2VyRGVzIFBIWS4gIFNldmVyYWwgYm9hcmRzIChlLmcuLCBBcmlhYm9hcmQK
UGhvdG9uaWNhdCkgdXNlIHRoaXMgaW50ZXJmYWNlIGZvciBHaWdhYml0IEV0aGVybmV0LiAgSG93
ZXZlciwgdGhlCmN1cnJlbnQgdXBzdHJlYW0gc3RtbWFjIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0
IHRoaXMgY29uZmlndXJhdGlvbiwKYW5kIHRoZSBYUENTIGRyaXZlciBoYXMgaXNzdWVzIGluIFNH
TUlJIHBvbGwgbW9kZSB0aGF0IGNhdXNlIHRoZQpsaW5rIHRvIGJlIHJlcG9ydGVkIGluY29ycmVj
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBBZGRpbmcgQU5S
RVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKLSBBZGRpbmcgYSBSb2NrY2hp
cCBYUENTIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGFuZCB3aXJpbmcgaXQgdXAgaW4KICBkd21hYy1y
awoKU2VyaWVzIG92ZXJ2aWV3Cj09PT09PT09PT09PT09PQoKUkszNTY4IFhQQ1MvU0dNSUk6CiAg
UGF0Y2ggMTogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAg
UGF0Y2ggMjogRFQgYmluZGluZyBmb3IgUm9ja2NoaXAgUkszNTY4IFhQQ1MKICBQYXRjaCAzOiBp
bXBsZW1lbnQgdGhlIFJvY2tjaGlwIFhQQ1MgcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKICBQYXRjaCA0
OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hpcCBEV01BQyBQQ1MKICBQYXRjaCA1OiB3aXJlIHVwIFNH
TUlJIHN1cHBvcnQgaW4gZHdtYWMtcmsKICBQYXRjaCA2OiB1cGRhdGUgTUFJTlRBSU5FUlMKCkRl
cGVuZGVuY2llcwo9PT09PT09PT09PT0KLSBHZW5lcmljIFBNIGRvbWFpbiAoZ2VucGQpIGNoYW5n
ZXM6CiAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTI1MDQxNzUxLjQ5NTgxOC0x
LWNvaWFwcmFudEBnbWFpbC5jb20vCi0gUEhZIGJpbmRpbmcrZHJpdmVyIChOYW5lbmcgQ29tYm8g
UEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24pOgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MTAwNjE2MjgwNy4yODQzODU4LTEtY29pYXByYW50QGdtYWlsLmNvbS8KLSBzdG1tYWMgWFBD
UyBsaWZldGltZSBtYW5hZ2VtZW50IGZpeDoKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjEwMDUyMjE3NDkuMTEwNDQzMC0xLWNvaWFwcmFudEBnbWFpbC5jb20vCgpUaGUgRFRTIGNo
YW5nZXMgdXNpbmcgdGhlIFBIWSBwcm9wZXJ0eSBhcmUgc2VudCBzZXBhcmF0ZWx5IHRvCkhlaWtv
L2xpbnV4LXJvY2tjaGlwLiBUaGVyZSBpcyBubyBoYXJkIGJ1aWxkIGRlcGVuZGVuY3k7IHRoZSBw
aWVjZXMKY2FuIGNvbnZlcmdlIGR1cmluZyB0aGUgbWVyZ2Ugd2luZG93LgoKQ2hhbmdlbG9nCj09
PT09PT09PQoKQ2hhbmdlcyBzaW5jZSB2MTA6CgotIFhQQ1MgYmluZGluZzogZHJvcCB0aGUgZXRo
ZXJuZXQtcGNzLW1paSBjaGlsZCBub2RlcyBhbmQgdGhlIHBoeS1uYW1lcwogIHByb3BlcnR5LiBU
aGUgTUlJIHBvcnQgdXNlZCBieSBTR01JSSBpcyBkZXJpdmVkIGZyb20gdGhlIE1BQyBpdCBpcwog
IHJvdXRlZCB0byAoR01BQzAgLT4gcG9ydCAwLCBHTUFDMSAtPiBwb3J0IDEpLCBzbyB0aGUgcG9y
dHMgZG8gbm90IG5lZWQKICB0byBiZSBkZXNjcmliZWQuCgotIGR3bWFjIGJpbmRpbmc6IHJlcXVp
cmUgcGh5LW1vZGUgZm9yIHJvY2tjaGlwLHJrMzU2OC1nbWFjLCBhbmQgcmVxdWlyZQogIHBjcy1o
YW5kbGUgb25seSB3aGVuIHBoeS1tb2RlIGlzICJzZ21paSIuIFdpdGhvdXQgdGhlIGV4cGxpY2l0
CiAgcmVxdWlyZWQ6IFsgcGh5LW1vZGUgXSwgdGhlICJpZiIgd291bGQgbWF0Y2ggZXZlbiB3aGVu
IHBoeS1tb2RlIGlzCiAgYWJzZW50IChSb2IpLgoKLSBYUENTIGdsdWUgZHJpdmVyOiB1c2UgcGRl
di0+ZGV2LmxpbmtzLnN0YXR1cyBpbnN0ZWFkIG9mCiAgbGluay0+c3VwcGxpZXItPmxpbmtzLnN0
YXR1cywgYW5kIGRyb3AgdGhlIHVudXNlZCByZWcgYXJndW1lbnQgZnJvbQogIHRoZSByZWFkIHJl
bWFwcGluZyBoZWxwZXIuCgotIGR3bWFjLXJrOiBkb2N1bWVudCB0aGF0IHRoZSBNSUkgcG9ydCBw
YXNzZWQgdG8geHBjc19ya19jcmVhdGUoKSBpcyB0aGUKICBHTUFDIGlkLCBtYXRjaGluZyB0aGUg
aGFyZHdhcmUgcm91dGluZy4gUmV3cml0ZSB0aGUgaW4tYmFuZCB2cwogIG91dC1vZi1iYW5kIHNl
Y3Rpb24gb2YgdGhlIGNvbW1pdCBtZXNzYWdlIHRvIG1hdGNoIHRoZSBkcml2ZXIKICBiZWhhdmlv
ciBhbmQgdGhlIGFjdHVhbCBjbG9jayByYXRlcy4KCi0gRFRTOiBkcm9wIHRoZSBldGhlcm5ldC1w
Y3MtbWlpIHN1Yi1ub2RlczsgcGNzLWhhbmRsZSBub3cgcG9pbnRzIGF0IHRoZQogIFhQQ1Mgbm9k
ZSBpdHNlbGYuCgotIENvbW1pdCBtZXNzYWdlcyB1cGRhdGVkLgoKS2V5IGRlc2lnbiBkZWNpc2lv
bnMKPT09PT09PT09PT09PT09PT09PT0KLSBUaGUgc3RtbWFjIGNvcmUgbm93IGRlbGVnYXRlcyBY
UENTIGNyZWF0aW9uIGVudGlyZWx5IHRvIHBsYXRmb3JtCiAgZHJpdmVycyB2aWEgcGNzX2luaXQv
cGNzX2V4aXQuICBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlIHRoZQogIGdlbmVyaWMgWFBDUyBj
cmVhdGlvbiBsb2dpYyB3b3VsZCBvdmVycmlkZSBhbnkgWFBDUyBzZXQgdXAgYnkgdGhlCiAgcGxh
dGZvcm0gZHJpdmVyLgoKLSBUaGUgUm9ja2NoaXAgWFBDUyBkcml2ZXIgY3JlYXRlcyBhIHZpcnR1
YWwgTURJTyBidXMgb3ZlciB0aGUgQVBCMwogIHJlZ2lzdGVycyBhbmQgaW1wbGVtZW50cyBhZGRy
ZXNzIHJlbWFwcGluZy4gIFRoZSBnZW5lcmljIFhQQ1MgY29yZQogIGhhbmRsZXMgYWxsIFBDUyBj
b25maWd1cmF0aW9uIHZpYSBwaHlsaW5rX3Bjc19vcHMuCgotIE9uIFJLMzU2OCBpbiBTR01JSSBt
b2RlLCB0aGUgTUFDIGNsb2NrIGlzIGZpeGVkIGF0IDEyNSBNSHogYW5kCiAgY2Fubm90IGJlIGR5
bmFtaWNhbGx5IGNoYW5nZWQuICBJbi1iYW5kIG1vZGUgaXMgdXNlZCwgYW5kIHRoZQogIGdlbmVy
aWMgc3RtbWFjIHNldF9jbGtfdHhfcmF0ZSBjYWxsYmFjayBpcyBkaXNhYmxlZCB0byBwcmV2ZW50
CiAgaW5jb3JyZWN0IGNsb2NrIHVwZGF0ZXMgdGhhdCB3b3VsZCBicmVhayBSWC4KCi0gVGhlIFNl
ckRlcyBhbmQgcG93ZXIgZG9tYWluIGFyZSBhdHRhY2hlZCB0byB0aGUgWFBDUyBkZXZpY2UgdHJl
ZQogIG5vZGUgcmF0aGVyIHRoYW4gdGhlIE1BQyBub2RlLiBUaGlzIHJlZmxlY3RzIHRoZSBhY3R1
YWwgaGFyZHdhcmUKICB0b3BvbG9neSBhbmQgc2ltcGxpZmllcyB0aGUgZHdtYWMtcmsgZHJpdmVy
IGJ5IGtlZXBpbmcgYWxsIFBDUy1yZWxhdGVkCiAgcmVzb3VyY2VzIHNlbGYtY29udGFpbmVkLiBJ
dCBhbHNvIHByZXBhcmVzIGZvciBwb3NzaWJsZSBmdXR1cmUgUVNHTUlJCiAgc3VwcG9ydCwgd2hl
cmUgYSBzaW5nbGUgU2VyRGVzIHNlcnZlcyBtdWx0aXBsZSBNQUNzIGFuZCB3b3VsZCBiZQogIG1v
cmUgbmF0dXJhbGx5IG1hbmFnZWQgdW5kZXIgdGhlIFhQQ1Mgbm9kZS4KClRlc3RpbmcKPT09PT09
PQpCb2FyZDogQXJpYWJvYXJkIFBob3RvbmljYXQgKFJLMzU2OCkKT1M6IEFybWJpYW4gKHRyaXhp
ZSkKS2VybmVsOiA2LjE4IChiYWNrcG9ydHMpClJlc3VsdDogVGhlIFNHTUlJIGludGVyZmFjZSBv
YnRhaW5zIGFuIElQIGFkZHJlc3MsIFNTSCB3b3JrcywgYW5kCiAgICAgICAgcGluZyB0cmFmZmlj
IHBhc3NlcyB3aXRob3V0IGxvc3MuCgpOb3Rlcwo9PT09PQotIFdoZW4gdGVzdGluZyBvdXQtYmFu
ZCBtb2RlIHdpdGggc2V0X2Nsa190eF9yYXRlLCBvbmx5IDEwMDBNYnBzCiAgd29ya3Mgb24gYm90
aCBUWC9SWDsgMTAvMTAwTWJwcyBvbmx5IHdvcmtzIG9uIFRYIHNpZGUuCgpBY2tub3dsZWRnbWVu
dHMKPT09PT09PT09PT09PT09ClRoaXMgd29yayB3YXMgaW5zcGlyZWQgYnkgYW5kIGJ1aWxkcyB1
cG9uIHRoZSBleGNlbGxlbnQgd29yayBvZiBvdGhlcnM6Ci0gU2VyZ2UgU2VtaW4ncyBTeW5vcHN5
cyBEZXNpZ25XYXJlIFhQQ1MgcGxhdGZvcm0gZHJpdmVyIChwY3MteHBjcy1wbGF0LmMpCi0gQ2zD
qW1lbnQgTMOpZ2VyJ3MgUmVuZXNhcyBNSUlDIGRyaXZlciAocGNzLXJ6bjEtbWlpYy5jKQotIFRo
ZSBSb2NrY2hpcCBUUk0gYW5kIGRvd25zdHJlYW0gT0VNIGRyaXZlcnMKClRoYW5rcyBpbiBhZHZh
bmNlLApDb2lhIFByYW50Ci0tLQpDb2lhIFByYW50ICg2KToKICBuZXQ6IHBjczogeHBjczogYWRk
IEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAgZHQtYmluZGluZ3M6
IG5ldDogcGNzOiBhZGQgcm9ja2NoaXAscmszNTY4LXhwY3Mgc3VwcG9ydAogIG5ldDogcGNzOiB4
cGNzOiBhZGQgUm9ja2NoaXAgUkszNTY4IHBsYXRmb3JtIGdsdWUgZHJpdmVyCiAgZHQtYmluZGlu
Z3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IGRvY3VtZW50IHBjcy1oYW5kbGUKICBuZXQ6IHN0bW1h
YzogZHdtYWMtcms6IGFkZCBTR01JSSBzdXBwb3J0IGZvciBSSzM1NjgKICBNQUlOVEFJTkVSUzog
YWRkIGVudHJ5IGZvciBSb2NrY2hpcCBYUENTIGRyaXZlcgoKIC4uLi9uZXQvcGNzL3JvY2tjaGlw
LHJrMzU2OC14cGNzLnlhbWwgICAgICAgICB8ICA2OSArKwogLi4uL2JpbmRpbmdzL25ldC9yb2Nr
Y2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDI3ICsKIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1p
Y3JvL3N0bW1hYy9LY29uZmlnICAgfCAgIDEgKwogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1yay5jICAgIHwgMTMxICsrKy0KIGRyaXZlcnMvbmV0L3Bjcy9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgICB8ICAyNSArCiBkcml2ZXJzL25ldC9wY3MvTWFrZWZpbGUgICAg
ICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5j
ICAgICAgICAgICAgICAgICB8IDU5OCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3Bj
cy9wY3MteHBjcy5jICAgICAgICAgICAgICAgICAgICB8ICAzNSArLQogaW5jbHVkZS9saW51eC9w
Y3MvcGNzLXhwY3MtcmsuaCAgICAgICAgICAgICAgIHwgIDExICsKIDEwIGZpbGVzIGNoYW5nZWQs
IDg4MyBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcCxyazM1Njgt
eHBjcy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJr
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy1yay5oCgot
LSAKMi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

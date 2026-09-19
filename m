Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B478C982DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G0U/HIxLsLPnbliDWxjgMcE5Mo6S7jIR4WxtP1JKoBg=; b=HJQiXdFg/Jn3/0
	zHPlnQEQWR4JQYfHqcqRM8LutDUMB6TByVZGjg+36JlCHJBrw//RIR7zhLzWhatnOAl5mLWmiwdlA
	cXVtViSD36iAk6CUT5A855b/wawMmQAQ/AB3aptcqlp7gY2QR/GEmnlcoPUc2Sidjg24xj/tL9wSP
	Tb/lSfnf3Q18+rexj636ITndaWV9USBgHeBAUAp3nN/qyl149GZ0QkSFg8oKC2iykpgN7nyn9UaFa
	NuIGA4jkWyav69mC6ndc+RTdc8da9OySeRzgfZm9MtTH6ZqJ9ORwLDGIah7ohg4DNsjWvGeeewFj2
	jHoLNI2FGm2NotiprHgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uXl-0000000GGhp-0Aim;
	Sat, 19 Sep 2026 12:51:49 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uXi-0000000GGgq-3IZt
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:51:47 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e37c430bbso686510a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822306; x=1790427106; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WeS5LqLOuIKT4KDWIZgKWwOtuHWnT7hUVImYY975124=;
        b=KFvrLO5xWDR4t0aZ9sjKOm7Ty6wzMJl/Sjns9rTdYdgsGzi7aiAGULtYxkehQ2264V
         m0DLpExfjf426jdNEiM+xyETvgpWYa7qCt2RFaDxc7OFnI75SbkH8tbQmhprwp4q3B5X
         CTgHRCNIBBKmSlNuxipAseMufuLuPpZ62EFeT3ctZaGiJRbFfcnNKUSQpfGBni9Nn796
         bm9pHY4gI4v9WuyKf9i3Hngn0y7BdkJHH2oPEe20Ls0KQtNHTJXDcm/2Xm572zpjp4Py
         aBwKDQe/248RBFoPpPtCKhDxgsNZN0dtow7P1WZiuGtEElebLKZ8CgO4XSRcA9qD55Oi
         n0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822306; x=1790427106;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WeS5LqLOuIKT4KDWIZgKWwOtuHWnT7hUVImYY975124=;
        b=CfpVXOqjWD+ng3iu0A3tCA8N8zIsL1AV/mZjcDkMtslgCuhDoeuU4UjXquB09DWJPp
         zUot14qIzFZTdI5wVwPBlC0t76EkVOpQSzcd92FYn3FokMf9Ks4UcmtNX+XSdeSLDl5t
         PQKAujQ+WitLyWMUSjVVYnCXqmIvoMPezwa+29iDJVnom04w0k61TN+tCDHajxMXuNaX
         YRpL05AmdzysFjqRxIx5MpdWb7PSWLbbCx44ON3Yf85mnII15NjtUEgDt0qTs3Cd0kEP
         iG+YDK7ZRuPTMG/Brsgliebe6f3NAbt4irG8Gi+Y/9JIyJ64flfOV3kuGQiC2TFih2SI
         UtjQ==
X-Forwarded-Encrypted: i=1; AKwUvByUgb7rBlT/myGFJ2RkbNYKqMaMYOm+zI1BDdJ7/4VguWBl9Egsp9yiOSS8e7yLNJ3vKEq8bZDQPD0K8b/7bA==@lists.infradead.org
X-Gm-Message-State: AFuF++kI3QgwYxFMMt/y6RPclAPJ7upiAyB+TUZk0/qhe8kReNLE8p1x
	HpBWBxcrCMV1YcAC6V3WH9+mY5CofJiGsgppeGk9m627P8pQgax3G5B0
X-Gm-Gg: AYBFou3sZ9mkqFd49pwat0pUCP0hbS4PkoiLUaaWWwO81mljCU1G5ouL5J93jRFSa4e
	J+aekD5sEpxU5mX1sCmgH0m43sg/xAju6A11uVATYcaE+zUNxttRo6stqGBl5J6PXJ9zO+t/Obm
	BsGQcnF6ZXARcDLE/4BhPBFqATnlxmlv4Rj/2BmxtXn0Oxh9ZCM7ry1p3xAJmH/OmTvaZC8EzB+
	5b3qhlJOgxWsidXFEw+cwtijYr4JhVNwoxgc0RaL0TmqbYx2wUNBy7EFduwDNNEW1W8VlGRai7h
	UI/rjBp+AC9nsB5Qc25ObDAWNjDdETZOF5O+uip3TnzlyOIwcUpJXVsAC/paOYQ8Cz76DikeEci
	WpD+6/ZPot11CMyOOAK30DnZdEqAd+CwrzkynvNbAn9tak3yLr9AAIqqCfj2wnY1V3w4ec0BVrh
	dxKMJB4e1DOGiRma7OfmsM1vyykb6E8ONlXe21dl8vdCQkeXYyC8Xk87U0Vc+mSQQTp2u6Sw==
X-Received: by 2002:a05:6a00:4309:b0:874:708d:b636 with SMTP id d2e1a72fcca58-874df60bf54mr9495073b3a.34.1789822305666;
        Sat, 19 Sep 2026 05:51:45 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:51:44 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v8 00/11] net: pcs: add basic support for RK3568 XPCS
Date: Sat, 19 Sep 2026 20:51:07 +0800
Message-ID: <20260919125119.2107089-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055146_834810_FB94AFC8 
X-CRM114-Status: GOOD (  21.87  )
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
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBSZWZhY3Rvcmlu
ZyBzdG1tYWMgUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gYWxsb3cgcGxhdGZvcm0gZHJpdmVy
cwogIGZ1bGwgY29udHJvbCBvdmVyIFBDUyBjcmVhdGlvbi9kZXN0cnVjdGlvbgotIEZpeGluZyB0
aGUgWFBDUyBkcml2ZXIncyBTR01JSSBsaW5rIHJlY292ZXJ5Ci0gQWRkaW5nIGEgUm9ja2NoaXAg
WFBDUyBwbGF0Zm9ybSBnbHVlIGRyaXZlciBhbmQgd2lyaW5nIGl0IHVwIGluCiAgZHdtYWMtcmsK
ClNlcmllcyBvdmVydmlldwo9PT09PT09PT09PT09PT0KCkdlbmVyaWM6CiAgUGF0Y2ggMTogbW92
ZSBYUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gcGxhdGZvcm0gZHJpdmVycwoKUEhZOgogIFBh
dGNoIDI6IERUIGJpbmRpbmcgZm9yIE5hbmVuZyBDb21ibyBQSFkgU0dNSUkgTUFDIHNlbGVjdGlv
bgogIFBhdGNoIDM6IGltcGxlbWVudCB0aGUgUEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24gaW4gZHJp
dmVyCgpSSzM1NjggWFBDUy9TR01JSToKICBQYXRjaCA0OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hp
cCBSSzM1NjggWFBDUwogIFBhdGNoIDU6IGFkZCBYUENTIGFuZCBmaXhlZC1jbG9jayBub2RlcyB0
byByazM1NjguZHRzaQogIFBhdGNoIDY6IGFkZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3IgU0dNSUkg
bGluayByZWNvdmVyeQogIFBhdGNoIDc6IGltcGxlbWVudCB0aGUgUm9ja2NoaXAgWFBDUyBwbGF0
Zm9ybSBnbHVlIGRyaXZlcgogIFBhdGNoIDg6IERUIGJpbmRpbmcgZm9yIFJvY2tjaGlwIERXTUFD
IFBDUwogIFBhdGNoIDk6IHdpcmUgdXAgU0dNSUkgc3VwcG9ydCBpbiBkd21hYy1yawogIFBhdGNo
IDExOiB1cGRhdGUgTUFJTlRBSU5FUlMKCkJvYXJkIGVuYWJsZW1lbnQ6CiAgUGF0Y2ggMTA6IGVu
YWJsZSBTR01JSSBMQU4gcG9ydCBvbiBQaG90b25pY2F0IGJvYXJkCgpDaGFuZ2Vsb2cKPT09PT09
PT09CgpDaGFuZ2VzIHNpbmNlIHY3OgoKUGF0Y2ggNyAobmV0OiBwY3M6IHhwY3M6IGFkZCBSb2Nr
Y2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIpCi0gRml4IGEgdXNlLWFmdGVyLWZyZWUg
d2luZG93IGluIHhwY3NfcmtfY3JlYXRlKCk6IGRldmljZV9saW5rX2FkZCgpCiAgZG9lcyBub3Qg
ZmFpbCBvbiBhIHN1cHBsaWVyIHRoYXQgaXMgdW5iaW5kaW5nIChpdCBjcmVhdGVzIHRoZSBsaW5r
IGluCiAgRExfU1RBVEVfU1VQUExJRVJfVU5CSU5EKSwgc28gdGhlIGRydmRhdGEgY291bGQgYmUg
ZnJlZWQgYmV0d2VlbiB0aGUKICBsaW5rIGNyZWF0aW9uIGFuZCB0aGUgcGxhdGZvcm1fZ2V0X2Ry
dmRhdGEoKSBjYWxsLiBSZWFkIHRoZSBkcnZkYXRhCiAgdW5kZXIgdGhlIHN1cHBsaWVyJ3MgZGV2
aWNlX2xvY2sgd2l0aCBhIGRldmljZV9pc19ib3VuZCgpIGNoZWNrLCBzbwogIGEgY29uY3VycmVu
dCB1bmJpbmQgaXMgZGV0ZWN0ZWQgYW5kIHRoZSBwcm9iZSBkZWZlcnMuCi0gQ29ycmVjdCB0aGUg
Y29tbWVudCBhYm92ZSBkZXZpY2VfbGlua19hZGQoKTogdGhlIGxpbmsgZG9lcyBub3Qga2VlcAog
IHRoZSBzdXBwbGllciBhbGl2ZSBieSBpdHNlbGY7IGRldmljZV9sb2NrKCkgcGx1cyBkZXZpY2Vf
aXNfYm91bmQoKSBpcwogIHdoYXQgcHJvdGVjdHMgdGhlIGRydmRhdGEgcmVhZC4KLSBDaGFuZ2Ug
dGhlIEtjb25maWcgc2VsZWN0IHRvICJzZWxlY3QgUE1fR0VORVJJQ19ET01BSU5TIGlmIFBNIiBz
byBhCiAgQ09NUElMRV9URVNUIGJ1aWxkIHdpdGggQ09ORklHX1BNPW4gZG9lcyBub3QgZm9yY2Ug
UE1fR0VORVJJQ19ET01BSU5TCiAgb24gYWdhaW5zdCBpdHMgb3duIGRlcGVuZGVuY3kuCgpLZXkg
ZGVzaWduIGRlY2lzaW9ucwo9PT09PT09PT09PT09PT09PT09PQotIFRoZSBzdG1tYWMgY29yZSBu
b3cgZGVsZWdhdGVzIFhQQ1MgY3JlYXRpb24gZW50aXJlbHkgdG8gcGxhdGZvcm0KICBkcml2ZXJz
IHZpYSBwY3NfaW5pdC9wY3NfZXhpdC4gIFRoaXMgaXMgbmVjZXNzYXJ5IGJlY2F1c2UgdGhlCiAg
Z2VuZXJpYyBYUENTIGNyZWF0aW9uIGxvZ2ljIHdvdWxkIG92ZXJyaWRlIGFueSBYUENTIHNldCB1
cCBieSB0aGUKICBwbGF0Zm9ybSBkcml2ZXIuCgotIFRoZSBSb2NrY2hpcCBYUENTIGRyaXZlciBj
cmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyBvdmVyIHRoZSBBUEIzCiAgcmVnaXN0ZXJzIGFuZCBp
bXBsZW1lbnRzIGFkZHJlc3MgcmVtYXBwaW5nLiAgVGhlIGdlbmVyaWMgWFBDUyBjb3JlCiAgaGFu
ZGxlcyBhbGwgUENTIGNvbmZpZ3VyYXRpb24gdmlhIHBoeWxpbmtfcGNzX29wcy4KCi0gT24gUksz
NTY4IGluIFNHTUlJIG1vZGUsIHRoZSBNQUMgY2xvY2sgaXMgZml4ZWQgYXQgMTI1IE1IeiBhbmQK
ICBjYW5ub3QgYmUgZHluYW1pY2FsbHkgY2hhbmdlZC4gIEluLWJhbmQgbW9kZSBpcyB1c2VkLCBh
bmQgdGhlCiAgZ2VuZXJpYyBzdG1tYWMgc2V0X2Nsa190eF9yYXRlIGNhbGxiYWNrIGlzIGRpc2Fi
bGVkIHRvIHByZXZlbnQKICBpbmNvcnJlY3QgY2xvY2sgdXBkYXRlcyB0aGF0IHdvdWxkIGJyZWFr
IFJYLgoKLSBUaGUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4gYXJlIGF0dGFjaGVkIHRvIHRoZSBY
UENTIGRldmljZSB0cmVlCiAgbm9kZSByYXRoZXIgdGhhbiB0aGUgTUFDIG5vZGUuIFRoaXMgcmVm
bGVjdHMgdGhlIGFjdHVhbCBoYXJkd2FyZQogIHRvcG9sb2d5IGFuZCBzaW1wbGlmaWVzIHRoZSBk
d21hYy1yayBkcml2ZXIgYnkga2VlcGluZyBhbGwgUENTLXJlbGF0ZWQKICByZXNvdXJjZXMgc2Vs
Zi1jb250YWluZWQuIEl0IGFsc28gcHJlcGFyZXMgZm9yIHBvc3NpYmxlIGZ1dHVyZSBRU0dNSUkK
ICBzdXBwb3J0LCB3aGVyZSBhIHNpbmdsZSBTZXJEZXMgc2VydmVzIG11bHRpcGxlIE1BQ3MgYW5k
IHdvdWxkIGJlCiAgbW9yZSBuYXR1cmFsbHkgbWFuYWdlZCB1bmRlciB0aGUgWFBDUyBub2RlLgoK
VGVzdGluZwo9PT09PT09CkJvYXJkOiBBcmlhYm9hcmQgUGhvdG9uaWNhdCAoUkszNTY4KQpPUzog
QXJtYmlhbiAodHJpeGllKQpLZXJuZWw6IDYuMTggKGJhY2twb3J0cykKUmVzdWx0OiBUaGUgU0dN
SUkgaW50ZXJmYWNlIG9idGFpbnMgYW4gSVAgYWRkcmVzcywgU1NIIHdvcmtzLCBhbmQKICAgICAg
ICBwaW5nIHRyYWZmaWMgcGFzc2VzIHdpdGhvdXQgbG9zcy4KCk5vdGVzCj09PT09Ci0gV2hlbiB0
ZXN0aW5nIG91dC1iYW5kIG1vZGUgd2l0aCBzZXRfY2xrX3R4X3JhdGUsIG9ubHkgMTAwME1icHMK
ICB3b3JrcyBvbiBib3RoIFRYL1JYOyAxMC8xMDBNYnBzIG9ubHkgd29ya3Mgb24gVFggc2lkZS4K
CkRlcGVuZGVuY2llcwo9PT09PT09PT09PT0KTm9uZS4gQWxsIHBhdGNoZXMgYXBwbHkgY2xlYW5s
eSBvbiB0b3Agb2YgdG9ydmFsZHMgbWFzdGVyIHRyZWUgKHY3LjMpLgoKQWNrbm93bGVkZ21lbnRz
Cj09PT09PT09PT09PT09PQpUaGlzIHdvcmsgd2FzIGluc3BpcmVkIGJ5IGFuZCBidWlsZHMgdXBv
biB0aGUgZXhjZWxsZW50IHdvcmsgb2Ygb3RoZXJzOgotIFNlcmdlIFNlbWluJ3MgU3lub3BzeXMg
RGVzaWduV2FyZSBYUENTIHBsYXRmb3JtIGRyaXZlciAocGNzLXhwY3MtcGxhdC5jKQotIENsw6lt
ZW50IEzDqWdlcidzIFJlbmVzYXMgTUlJQyBkcml2ZXIgKHBjcy1yem4xLW1paWMuYykKLSBUaGUg
Um9ja2NoaXAgVFJNIGFuZCBkb3duc3RyZWFtIE9FTSBkcml2ZXJzCgpUaGFua3MgaW4gYWR2YW5j
ZSwKQ29pYSBQcmFudAotLS0KQ29pYSBQcmFudCAoMTEpOgogIG5ldDogc3RtbWFjOiBtb3ZlIFhQ
Q1MgbGlmZXRpbWUgbWFuYWdlbWVudCB0byBwbGF0Zm9ybSBkcml2ZXJzCiAgZHQtYmluZGluZ3M6
IHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBhZGQgcm9ja2NoaXAsc2dtaWktbWFjLXNl
bAogICAgcHJvcGVydHkKICBwaHk6IHJvY2tjaGlwOiBuYW5lbmctY29tYnBoeTogYWRkIFNHTUlJ
IE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OAogIGR0LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJv
Y2tjaGlwLHJrMzU2OC14cGNzIHN1cHBvcnQKICBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4
OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9kZXMKICBuZXQ6IHBjczogeHBjczogYWRkIEFO
UkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAgbmV0OiBwY3M6IHhwY3M6
IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKICBkdC1iaW5kaW5nczog
bmV0OiByb2NrY2hpcC1kd21hYzogZG9jdW1lbnQgcGNzLWhhbmRsZQogIG5ldDogc3RtbWFjOiBk
d21hYy1yazogYWRkIFNHTUlJIHN1cHBvcnQgZm9yIFJLMzU2OAogIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiByazM1NjgtcGhvdG9uaWNhdDogZW5hYmxlIFNHTUlJIExBTiBwb3J0CiAgTUFJTlRBSU5F
UlM6IGFkZCBlbnRyeSBmb3IgUm9ja2NoaXAgWFBDUyBkcml2ZXIKCiAuLi4vbmV0L3Bjcy9yb2Nr
Y2hpcCxyazM1NjgteHBjcy55YW1sICAgICAgICAgfCAxMTAgKysrKwogLi4uL2JpbmRpbmdzL25l
dC9yb2NrY2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDE4ICsKIC4uLi9waHkvcGh5LXJvY2tj
aGlwLW5hbmVuZy1jb21icGh5LnlhbWwgICAgICB8ICAxMyArCiBNQUlOVEFJTkVSUyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDkgKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1waG90b25pY2F0LmR0cyAgIHwgIDc0ICsrLQogYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjguZHRzaSAgICAgIHwgIDQ1ICsrCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9z
dG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAgIDEgKwogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3Jv
L3N0bW1hYy9kd21hYy1pbnRlbC5jIHwgIDQ0ICstCiAuLi4vc3RtaWNyby9zdG1tYWMvZHdtYWMt
cmVuZXNhcy1nYmV0aC5jICAgICAgfCAgIDcgKy0KIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtcmsuYyAgICB8IDEzMCArKystCiAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8v
c3RtbWFjL2R3bWFjLXJ6bjEuYyAgfCAgIDcgKy0KIC4uLi9ldGhlcm5ldC9zdG1pY3JvL3N0bW1h
Yy9kd21hYy1zb2NmcGdhLmMgICB8ICAgNyArLQogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9zdG1tYWNfbWRpby5jIHwgIDM5ICstCiBkcml2ZXJzL25ldC9wY3MvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMjUgKwogZHJpdmVycy9uZXQvcGNzL01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYyAg
ICAgICAgICAgICAgICAgfCA1OTkgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL25ldC9wY3Mv
cGNzLXhwY3MuYyAgICAgICAgICAgICAgICAgICAgfCAgMzUgKy0KIC4uLi9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAgICB8ICAgOCArCiBpbmNsdWRlL2xpbnV4L3Bjcy9w
Y3MteHBjcy1yay5oICAgICAgICAgICAgICAgfCAgMTEgKwogMTkgZmlsZXMgY2hhbmdlZCwgMTEx
NSBpbnNlcnRpb25zKCspLCA3MiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcCxyazM1NjgteHBj
cy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy1yay5oCgotLSAK
Mi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

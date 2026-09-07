Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D52C79FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzIh98w6+j0XXFm1ylSaDUMf0Zds0pRfLXJp/m0GFU0=; b=LMCWvTU/lUXJZD
	+ZwNWQk9mnrRYYaE07+RcNOdbZ7yewajii3YBt0nyZZn+BEPwcYhDjQwr2xLTAmNrUAIg/ZeUt6xU
	d6zNkoEn3teXN6htlNY0xXAOxBH8NJoGQY5H8y5hFP29NxUb2bjmrwMD3XSNg0247iBpZk1GXh0oN
	kdenJXLamkZDhMd3qzzdwUQQf9O0AKje5EDbWpH9umaqtW7hagr9hQzD0fGOv4/aCC/GzjjsQ9EUn
	GxGQGAb8bj+IN5auCKBzJNWWlMEvOCkvsgsApfC5adgT29RxiVWsDyEcz3h0fKFAPA9wkokb5hRir
	aVJAVvCXLDGhri/YAExQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQe-00000007Bsc-1W3Q;
	Mon, 07 Sep 2026 15:38:40 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQb-00000007BrY-09DI
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:38:39 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d6f230d1easo852775ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795516; x=1789400316; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Hq1rNKVGmliGTWsiFEwtrdEOPueQghmo9INX52ut/jY=;
        b=HJ+8fflLaC1x+ciQh8aqqY45GdL3iwbnmW0iwWuRKruC9/Pkl+u+DGGBd2qPLbwpZ9
         U7+2mKjlwCte0GrUopsyVrRZoYMc7Bq9+qaMVK4J7HgISzNob+/sbsFLzGSMj8B0s9UJ
         ZMuwjqD/d3hOE3fQHURFz88rddPBceiqC2b3mp5JjK/Tvvyju7mrbCJssQk9JuCclM8K
         qqE4AT2lSSrRXNSd5L3V+ZF3WZy8COsOJdRJuSboP+QraATt0hcUMouBLMtuO2Jc0iX6
         qDlKWbYz6CREqL+xWjNizHPeDiPy6OaY2Mr1zQzMqmCyy0w3z1PTw3J8Gn7mYs1/gvWK
         qYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795516; x=1789400316;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Hq1rNKVGmliGTWsiFEwtrdEOPueQghmo9INX52ut/jY=;
        b=NSZjZYUP1b0ykA3z/GyMVFZ7P9+tikFBgTGwuICJutSq34SeuTVd+5J08R+m1hZAaT
         1yBI0r1hriG2mc5faRhLpiXtv5m9yRFek/HcIzVHCeSCOZepDUEL+yLkYnvQT4J30a9A
         oFU3X1QorKQMd4uZX9OsbwKnp5WzeJKQcLavgLNAMRmTuIKRUjnEGQsUzwbMEXTObXt8
         PxQMghMxWdAmr4GoOe+6MAzaJXzWW1r0cPU//cWmta/RlMA7nFQpCClVV2zz1LLsAeJB
         IpOH1Tp0onOZamspckofE0HfJLXnfzfu7vACTxmq5s2Ax7XMmOjC8956WnxHSaXYU8/G
         Vq+w==
X-Forwarded-Encrypted: i=1; AKwUvBzbTwT4Z4lmEJO4yfwghszddSj2YyEBOLFlY5UBBUoCJtON5oVN9JftgDrDU1oY2FAQoIH4Y/ErajbsCG8yHw==@lists.infradead.org
X-Gm-Message-State: AFuF++lm0N4IPf3Vf3bngXHeuYnyVxiOlESzqnezQV3w8x/2xhgu+Sf7
	aGDhJ9xqgsylNK5utgnEnNjjnYjBIcPVTNtu720QCvqPRsBVUECjnEHz
X-Gm-Gg: AYBFou0XtHG/DdIUjMotBiFLhh4Xd7CJFMrai/YBmMdEEfswB60CmqBzdLL1jgZeEGu
	xv8HYv7K6QnmzzV5rKwACAZz7y1t9Oyl+hG/JbpW35KMzRqx7Zpv6fQAHk25jP+MwXWFh0BQ535
	D42/c32Aq+DT8bUcj4pVBZ8tPCtlYhTSepCn0OF4iWnB+l48pet6VLEWnVb9tJQxndyNgpfri5D
	7FY08VOH2to65T8Ssv8hB8L7OS0ZLT7Y+JAy/X5g8cLBpH8R2brYUSrceDZa/oeQewVTOr0rO6D
	oPV/nCAqPSNglxo4O8wlXgRVXf4uDni4o5p3T8qBiXk6sD6d+Oq1YuOK8jRyTXr0muYbviKKs66
	rJsgOcOGFUDRz9iUHqRd5rriLI5GgPcixLzeGKlDZtgx8ojJb481u18/FjbZqpDiYeyVQJtFOYx
	9/4QwHim7EvT0JtveWdKrE6Lwm6nLtHCL7dw40E69OKE/zARzZw8X3LXhhea4=
X-Received: by 2002:a17:90b:5110:b0:390:84db:888e with SMTP id 98e67ed59e1d1-39b8bd4aef3mr1404027a91.7.1788795516238;
        Mon, 07 Sep 2026 08:38:36 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:38:35 -0700 (PDT)
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
Subject: [PATCH net-next v4 00/10] net: pcs: add basic support for RK3568 XPCS
Date: Mon,  7 Sep 2026 23:37:03 +0800
Message-ID: <20260907153713.2572547-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083837_079375_4EBF48E3 
X-CRM114-Status: GOOD (  18.63  )
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
Zm9ybSBnbHVlIGRyaXZlcgogIFBhdGNoIDg6IHdpcmUgdXAgU0dNSUkgc3VwcG9ydCBpbiBkd21h
Yy1yawogIFBhdGNoIDEwOiB1cGRhdGUgTUFJTlRBSU5FUlMKCkJvYXJkIGVuYWJsZW1lbnQ6CiAg
UGF0Y2ggOTogZW5hYmxlIFNHTUlJIExBTiBwb3J0IG9uIFBob3RvbmljYXQgYm9hcmQKCkNoYW5n
ZWxvZwo9PT09PT09PT0KCkNoYW5nZXMgc2luY2UgdjM6CgpQYXRjaCA3IChuZXQ6IHBjczogeHBj
czogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRyaXZlcikKLSBSZXZlcnRlZCBN
YWtlZmlsZSBjaGFuZ2UgdG8ga2VlcCBwY3NfeHBjcyBhcyBhIGNvbXBvc2l0ZSBtb2R1bGUKLSBT
d2l0Y2hlZCBmcm9tIG1hbnVhbCBgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpYCB0byBgcG1fcnVu
dGltZV9lbmFibGUoKWAKICBhbmQgdXNlIGBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoKWAgaW4g
YHhwY3NfcmtfZXhpdF9jbGsoKWAKLSBSZW1vdmVkIGB4cGNzX3JrX3JlbW92ZSgpYCBjYWxsYmFj
ayBlbnRpcmVseTsgY2xlYW51cCBpcyBub3cgZnVsbHkKICBtYW5hZ2VkIGJ5IGRldnJlcyB2aWEg
YHhwY3NfcmtfZXhpdF9jbGsoKWAuCgpLZXkgZGVzaWduIGRlY2lzaW9ucwo9PT09PT09PT09PT09
PT09PT09PQotIFRoZSBzdG1tYWMgY29yZSBub3cgZGVsZWdhdGVzIFhQQ1MgY3JlYXRpb24gZW50
aXJlbHkgdG8gcGxhdGZvcm0KICBkcml2ZXJzIHZpYSBwY3NfaW5pdC9wY3NfZXhpdC4gIFRoaXMg
aXMgbmVjZXNzYXJ5IGJlY2F1c2UgdGhlCiAgZ2VuZXJpYyBYUENTIGNyZWF0aW9uIGxvZ2ljIHdv
dWxkIG92ZXJyaWRlIGFueSBYUENTIHNldCB1cCBieSB0aGUKICBwbGF0Zm9ybSBkcml2ZXIuCgot
IFRoZSBSb2NrY2hpcCBYUENTIGRyaXZlciBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyBvdmVy
IHRoZSBBUEIzCiAgcmVnaXN0ZXJzIGFuZCBpbXBsZW1lbnRzIGFkZHJlc3MgcmVtYXBwaW5nLiAg
VGhlIGdlbmVyaWMgWFBDUyBjb3JlCiAgaGFuZGxlcyBhbGwgUENTIGNvbmZpZ3VyYXRpb24gdmlh
IHBoeWxpbmtfcGNzX29wcy4KCi0gT24gUkszNTY4IGluIFNHTUlJIG1vZGUsIHRoZSBNQUMgY2xv
Y2sgaXMgZml4ZWQgYXQgMTI1IE1IeiBhbmQKICBjYW5ub3QgYmUgZHluYW1pY2FsbHkgY2hhbmdl
ZC4gIEluLWJhbmQgbW9kZSBpcyB1c2VkLCBhbmQgdGhlCiAgZ2VuZXJpYyBzdG1tYWMgc2V0X2Ns
a190eF9yYXRlIGNhbGxiYWNrIGlzIGRpc2FibGVkIHRvIHByZXZlbnQKICBpbmNvcnJlY3QgY2xv
Y2sgdXBkYXRlcyB0aGF0IHdvdWxkIGJyZWFrIFJYLgoKLSBUaGUgU2VyRGVzIGFuZCBwb3dlciBk
b21haW4gYXJlIGF0dGFjaGVkIHRvIHRoZSBYUENTIGRldmljZSB0cmVlCiAgbm9kZSByYXRoZXIg
dGhhbiB0aGUgTUFDIG5vZGUuIFRoaXMgcmVmbGVjdHMgdGhlIGFjdHVhbCBoYXJkd2FyZQogIHRv
cG9sb2d5IGFuZCBzaW1wbGlmaWVzIHRoZSBkd21hYy1yayBkcml2ZXIgYnkga2VlcGluZyBhbGwg
UENTLXJlbGF0ZWQKICByZXNvdXJjZXMgc2VsZi1jb250YWluZWQuIEl0IGFsc28gcHJlcGFyZXMg
Zm9yIHBvc3NpYmxlIGZ1dHVyZSBRU0dNSUkKICBzdXBwb3J0LCB3aGVyZSBhIHNpbmdsZSBTZXJE
ZXMgc2VydmVzIG11bHRpcGxlIE1BQ3MgYW5kIHdvdWxkIGJlCiAgbW9yZSBuYXR1cmFsbHkgbWFu
YWdlZCB1bmRlciB0aGUgWFBDUyBub2RlLgoKVGVzdGluZwo9PT09PT09CkJvYXJkOiBBcmlhYm9h
cmQgUGhvdG9uaWNhdCAoUkszNTY4KQpPUzogQXJtYmlhbiAodHJpeGllKQpLZXJuZWw6IDYuMTgg
KGJhY2twb3J0cykKUmVzdWx0OiBUaGUgU0dNSUkgaW50ZXJmYWNlIG9idGFpbnMgYW4gSVAgYWRk
cmVzcywgU1NIIHdvcmtzLCBhbmQKICAgICAgICBwaW5nIHRyYWZmaWMgcGFzc2VzIHdpdGhvdXQg
bG9zcy4KCk5vdGVzCj09PT09Ci0gV2hlbiB0ZXN0aW5nIG91dC1iYW5kIG1vZGUgd2l0aCBzZXRf
Y2xrX3R4X3JhdGUsIG9ubHkgMTAwME1icHMKICB3b3JrcyBvbiBib3RoIFRYL1JYOyAxMC8xMDBN
YnBzIG9ubHkgd29ya3Mgb24gVFggc2lkZS4KCkRlcGVuZGVuY2llcwo9PT09PT09PT09PT0KTm9u
ZS4gQWxsIHBhdGNoZXMgYXBwbHkgY2xlYW5seSBvbiB0b3Agb2YgdG9ydmFsZHMgbWFzdGVyIHRy
ZWUgKHY3LjMpLgoKQWNrbm93bGVkZ21lbnRzCj09PT09PT09PT09PT09PQpUaGlzIHdvcmsgd2Fz
IGluc3BpcmVkIGJ5IGFuZCBidWlsZHMgdXBvbiB0aGUgZXhjZWxsZW50IHdvcmsgb2Ygb3RoZXJz
OgotIFNlcmdlIFNlbWluJ3MgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHBsYXRmb3JtIGRyaXZl
ciAocGNzLXhwY3MtcGxhdC5jKQotIENsw6ltZW50IEzDqWdlcidzIFJlbmVzYXMgTUlJQyBkcml2
ZXIgKHBjcy1yem4xLW1paWMuYykKLSBUaGUgUm9ja2NoaXAgVFJNIGFuZCBkb3duc3RyZWFtIE9F
TSBkcml2ZXJzCgpUaGFua3MgaW4gYWR2YW5jZSwKQ29pYSBQcmFudAotLS0KQ29pYSBQcmFudCAo
MTApOgogIG5ldDogc3RtbWFjOiBtb3ZlIFhQQ1MgbGlmZXRpbWUgbWFuYWdlbWVudCB0byBwbGF0
Zm9ybSBkcml2ZXJzCiAgZHQtYmluZGluZ3M6IHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5
OiBhZGQgcm9ja2NoaXAsc2dtaWktbWFjLXNlbAogICAgcHJvcGVydHkKICBwaHk6IHJvY2tjaGlw
OiBuYW5lbmctY29tYnBoeTogYWRkIFNHTUlJIE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OAogIGR0
LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14cGNzIHN1cHBvcnQKICBh
cm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9k
ZXMKICBuZXQ6IHBjczogeHBjczogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5r
IHJlY292ZXJ5CiAgbmV0OiBwY3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0g
Z2x1ZSBkcml2ZXIKICBuZXQ6IHN0bW1hYzogZHdtYWMtcms6IGFkZCBTR01JSSBzdXBwb3J0IGZv
ciBSSzM1NjgKICBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6IGVuYWJs
ZSBTR01JSSBMQU4gcG9ydAogIE1BSU5UQUlORVJTOiBhZGQgZW50cnkgZm9yIFJvY2tjaGlwIFhQ
Q1MgZHJpdmVyCgogLi4uL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwgICAg
IHwgMTEwICsrKysKIC4uLi9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwgICAg
ICB8ICAxMyArCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDkgKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cyAgIHwg
IDc0ICsrLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSAgICAgIHwg
IDQ1ICsrCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAg
IDEgKwogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1pbnRlbC5jIHwgIDQ0
ICstCiAuLi4vc3RtaWNyby9zdG1tYWMvZHdtYWMtcmVuZXNhcy1nYmV0aC5jICAgICAgfCAgIDcg
Ky0KIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyAgICB8IDEyMSAr
KystCiAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJ6bjEuYyAgfCAgIDcg
Ky0KIC4uLi9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zb2NmcGdhLmMgICB8ICAgNyAr
LQogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWRpby5jIHwgIDM3ICst
CiBkcml2ZXJzL25ldC9wY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMjMgKwog
ZHJpdmVycy9uZXQvcGNzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCiBk
cml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYyAgICAgICAgICAgICAgICAgfCA1NDMgKysrKysr
KysrKysrKysrKysrCiBkcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyAgICAgICAgICAgICAgICAg
ICAgfCAgMTYgKy0KIC4uLi9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAg
ICB8ICAgOCArCiBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy1yay5oICAgICAgICAgICAgICAg
fCAgMTEgKwogMTggZmlsZXMgY2hhbmdlZCwgMTAxNSBpbnNlcnRpb25zKCspLCA2NiBkZWxldGlv
bnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3Bjcy9yb2NrY2hpcC1kd3hwY3MueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51
eC9wY3MvcGNzLXhwY3MtcmsuaAoKLS0gCjIuNDcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

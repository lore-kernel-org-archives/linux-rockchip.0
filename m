Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C17C77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Df+3T9z3V8me3FwNppmVe3nTFXHG/7lYq6wwXku8Nw=; b=0uoJIWPKND+4iU
	uhNCM7mMwUndnXhewJQFwfsuTNFhfby0ur5AmmltAKX5CX5DblIGxK4rc+aFJMUSFde+PhijEN25b
	U25XNtrrIjFyj91LRnIc6PxI1wylXur15A9ye4wJmyJzZ3V9sxSOmbF6tn67qTM7cbhdK9v4avfLW
	8S2inmxsvnK4m4m96ZgTrBDoPpVtY4mKHbqOFvR/VN5eWEqVVCUpdWRdvipy62sDHBXxqd3FAsFx8
	W4elWf1DQaHUswW1Tqcb0kNdo7nypTEbKMriJGyFvH9UWVmbB3itVkfeRUD+k9N3+Eypo70bqlkcG
	yFBCk6RAaAWREj+gPNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlLI-000d8w-2f;
	Tue, 02 May 2023 08:26:36 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlLF-000d82-0f;
	Tue, 02 May 2023 08:26:34 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-24df4ef05d4so2128588a91.2;
        Tue, 02 May 2023 01:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683015991; x=1685607991;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NThf51HN0Hmw05qsD82aWWnprkGApsME6/ez9gbwYD4=;
        b=n8/iCIrvfM3Rw8xgWdhUOHvVhQBYT7UyRn4HPztbs65ck1gZ1UK76NurJZEocRb5N3
         u8MawCk+S/y6KUip1hIe/R5OBrSL+TPGD86QZ4J6LOkWMmhAZZ80kHCVl9CsWrVex8/E
         aWdKkV9+MswlpLUiDN5ayWNo/0pjjfN9e5OdYLjkYms+IA5xYhRnqbKtyTxnZOIp6ukx
         Ccrt91MjJ3np5M8A2zHvkopMcW6IMAzM5VHzplBVGDHANnhHnulrDqThZKSUa0/3NQDa
         KVwFTS2sLGDsoWX8/1V1/CMb6ymh8NBUE03tEc92HA/b2e5N/XCNPvlu+poiASlCHR1a
         rgWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683015991; x=1685607991;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NThf51HN0Hmw05qsD82aWWnprkGApsME6/ez9gbwYD4=;
        b=RwEk+dXF0UT4mBX6gfmOwAfiMmi5WJsyrN/ktSRN/t547/5WWVVR+ENe0yYYCR17OA
         pkdche7+8BwrvGc+IxzUlu7Q8Jx1hlxoOi21/nQgzw5+itmySWfQugT8eQwlU6b7JuGH
         mP0cWKcOKP/0FJfZ9FwyIlSAi7ScETgnpKMxlcOwbusPjSx+JMB/9bLNaxR2Ll755Ga6
         VmetgA9XaEAAxjWmJxgCnXkPR490sOL9R7QSabYwAhxNg9uDGr8puqBNmWLybZCbnZ1k
         g77nyFr0/P032AUxB6yb9V5iGLVfMfQdxy06YUcMBhCElLBefKCBmwllXbQELj5P2adW
         ck7w==
X-Gm-Message-State: AC+VfDyrP+GBMSYlFgmtWI/Va/Fnbzz54e0ne3v4ACs/7oR9yGCDSEr0
	2LzIx51ltP9WwGjifOBK+WGHyz6bx7nsyrshyPU=
X-Google-Smtp-Source: ACHHUZ7iAMN0h55/KOpCIA2bWw9W1t85gvPwlR81xT1RPkW9VX5dLbL993keQOYZwQ17tfDsJPGXC6VqZYdornRJbQU=
X-Received: by 2002:a17:90a:a010:b0:249:6098:b068 with SMTP id
 q16-20020a17090aa01000b002496098b068mr17532296pjp.45.1683015990989; Tue, 02
 May 2023 01:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Tue, 2 May 2023 08:26:19 +0000
Message-ID: <CAEwRq=pKBWsiE1EVf8+k2tZeeEqBpZFgJPCnSN2M005ajbpdmA@mail.gmail.com>
Subject: Re: [PATCH 0/8] Add RK3588 OTP memory support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_012633_263668_E08D6BF1 
X-CRM114-Status: GOOD (  11.54  )
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

SGVsbG8sCgpPbiBNb24sIE1heSAxLCAyMDIzIGF0IDg6NDTigK9BTSBDcmlzdGlhbiBDaW9jYWx0
ZWEKPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiBUaGlzIHBhdGNo
IHNlcmllcyBhZGRzIE9UUCBtZW1vcnkgc3VwcG9ydCBmb3IgUm9ja2NoaXAgUkszNTg4IFNvQywK
PiB3aGlsZSBhbHNvIHByb3ZpZGluZyBhIGZldyBpbXByb3ZlbWVudHMgdG8gdGhlIGV4aXN0aW5n
IHJvY2tjaGlwLW90cAo+IGRyaXZlciwgaW4gYWRkaXRpb24gdG8gY29udmVydGluZyB0aGUgYmlu
ZGluZ3MgdG8gZHQtc2NoZW1hLgoKSSB0ZXN0ZWQgdGhpcyBvbiBhIFF1YXJ0elBybzY0IGRldiBi
b2FyZCwgSSBhcHBsaWVkIHlvdXIgc2VyaWVzIHRvcCBvZiBteSB0cmVlOgpDb2xsYWJvcmEncyBy
azM1ODgtdjYuMyArIHNvbWUgRFQgcGF0Y2hlcyB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIHFwNjQg
Ym9hcmQuCgpIZXJlIGlzIHRoZSBvdXRwdXQgZnJvbSB0aGUgY29tbWFuZHMgeW91IHRvbGQgbWUg
dG8gdHJ5OgoKIyBscyAtMSAvc3lzL2J1cy9udm1lbS9kZXZpY2VzLyovbnZtZW0KL3N5cy9idXMv
bnZtZW0vZGV2aWNlcy9yb2NrY2hpcC1vdHAwL252bWVtCgojICBvZCAtTiA2NCAtQSB4IC10IHgx
eiAtdiAvc3lzL2J1cy9udm1lbS9kZXZpY2VzL3JvY2tjaGlwLW90cDAvbnZtZW0KMDAwMDAwIDUy
IDRiIDM1IDg4IDkxIGZlIDIxIDQxIDVhIDQzIDM5IDM2IDAwIDAwIDAwIDAwICA+Uks1Li4uIUFa
Qzk2Li4uLjwKMDAwMDEwIDAwIDAwIDAwIDAwIDBmIDBiIDBkIDBhIDBhIDBjIDI1IDBlIDAwIDAw
IDAwIDAwICA+Li4uLi4uLi4uLiUuLi4uLjwKMDAwMDIwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDA4IDBjIDAwIDAwIDAwIDAwIDAwIDAwICA+Li4uLi4uLi4uLi4uLi4uLjwKMDAwMDMwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwICA+Li4uLi4uLi4uLi4u
Li4uLjwKMDAwMDQwCgpUaGlzIGlzIHdvcmtpbmcgYXMgZXhwZWN0ZWQuCgpZb3UgY2FuIGFkZCBt
eSBULUIsIGZvciB0aGUgd2hvbGUgc2VyaWVzOgoKVGVzdGVkLWJ5OiBWaW5jZW50IExlZ29sbCA8
dmluY2VudC5sZWdvbGxAZ21haWwuY29tPgoKUmVnYXJkcwoKLS0KVmluY2VudCBMZWdvbGwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

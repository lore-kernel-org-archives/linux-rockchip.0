Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EFDCC27C55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 11:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cr+LBEaUtYfj3VkfZsKs4RWEJu7Cf1eATrlSHmjlyvo=; b=xHvkPnVWMUmsFc
	pMCepHLAdmekrn1qx9iI4xzdPjqrrBAr0ICWPK10AKfc5tFLRDJfIVTsnPYfiaVGzd95e4BllINUF
	Mdegr9U5DqSo7+V2F10/baM4sqTW9MrW0oBcGiaw7XzU+fLKWDZrCJVqGmk470wF1R9kkue/i2Jyq
	8+13uugGX52fUjN71ibjrWTWRpHrmYFLCzNagdLWjxi3AfPIN5tU86yiTCvvCv/tJdNYSxI8L2BHk
	bJELyCcjCgEi/ApHtVbdM8ZufIyNdqvIFbNy5FEmgz/TQbPopo7rZZEhmYbzg4RYJg3L/qpUqJ6m+
	1VBmeiDr8fWlN37HsLTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdf8-00000004u6V-0LVU;
	Mon, 10 Jun 2024 11:58:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdf3-00000004u4N-45MA
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jun 2024 11:58:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 506AA60AC4
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:58:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07E51C4AF49
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718020685;
	bh=POvMMbemgagGX/OsL8/KxXdQJWPxAsQm3y1/QOQKLbM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=d8ayLrHYkgb+EvM/r7xlw/Z0kymTN4criLUnIcSJPYzYevf6mGV+aKDZ7teYSpE+q
	 ssJwJn5a1eN0vzV1xeQP6XkvpF38RqhLDnGyfTQmd9xu9YsS5C7oJiPaL2DDcATkEa
	 n8dky92BVglwUc14FAZ2fBu5IfFU8tKw463atZ9bTtXTm2EhTuTMvSON3lqa8CNbuS
	 iWzuxR9G2E3jaof1ZgEa7Wdv0mC6LXEPJiXXxmtz6nigbMKBIYzyNHu1OxZmnfwREw
	 Tfe1OZ3kY+QlCmVGAdwQZOmdhWtRVixr/W0k35M+B9QJ3RygkmbjfgPEngMzIHewZZ
	 YOiQ90oOxJIbw==
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dfafe87b5fbso3066457276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 04:58:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWD70KHf49D8YYZHe3Qkcq7ACMamY8Apnq4BQxup7spaEaev77R7mw5AG9l024tE1OG38b4J1usB8NwEYYkRzgkXvUwJKCFMrfaZ7sfnemoxlUJ
X-Gm-Message-State: AOJu0YzntcdIfwpR1G8VnRiZ0cjWydvy2cIXdfVgzqFaiBsvzkUL1T2q
	xfrs1LpvnXqmOAkC4HfRWXRARahDF2bhDxh/x53ipwgv65ovwAsgxFym6jKu9Pr4Tqhx31vBIqy
	BmcA9EWi/7V54DucbrRqdEadXD1qayS5sdxQAlg==
X-Google-Smtp-Source: AGHT+IGintgEC/j4dYDyfIa1RO+nKgzqYT4Sk+4nw62RjjN4n4XVnULBkA021mO0I8ht5rqnlR0mDzvCtFC5RHzQie4=
X-Received: by 2002:a25:360b:0:b0:dfb:cea:9a0f with SMTP id
 3f1490d57ef6-dfb0cea9cb7mr5934278276.8.1718020684307; Mon, 10 Jun 2024
 04:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-15-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-15-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 10 Jun 2024 13:57:52 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6Ppv2nARvfTzJnE_9fgDAdioj+QzBpFSd9JmJuRZBS6Q@mail.gmail.com>
Message-ID: <CAN6tsi6Ppv2nARvfTzJnE_9fgDAdioj+QzBpFSd9JmJuRZBS6Q@mail.gmail.com>
Subject: Re: [PATCH 14/14] drm/bridge: analogix_dp: handle AUX transfer timeouts
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_045806_180819_3559831D 
X-CRM114-Status: GOOD (  15.97  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEy4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGltZW91dHMgb24gdGhlIEFVWCBidXMgYXJlIHRvIGJl
IGV4cGVjdGVkIGluIGNlcnRhaW4gbm9ybWFsIG9wZXJhdGluZwo+IGNvbmRpdGlvbnMuIFRoZXJl
IGlzIG5vIG5lZWQgdG8gcmFpc2UgYW4gZXJyb3IgbG9nIG9yIHJlLWluaXRpYWxpemUgdGhlCj4g
d2hvbGUgQVVYIHN0YXRlIG1hY2hpbmUuIFNpbXBseSBhY2tub3dsZWRnZSB0aGUgQVVYX0VSUiBp
bnRlcnJ1cHQgYW5kCj4gbGV0IHVwcGVyIGxheWVycyBrbm93IGFib3V0IHRoZSB0aW1lb3V0Lgo+
Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMg
fCAzICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX3Jl
Zy5oIHwgOSArKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9k
cF9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVn
LmMKPiBpbmRleCAwZjAxNmRjYTlmM2QuLjNhZmM3M2M4NThjNCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX3JlZy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuYwo+IEBAIC0xMDE2
LDYgKzEwMTYsOSBAQCBzc2l6ZV90IGFuYWxvZ2l4X2RwX3RyYW5zZmVyKHN0cnVjdCBhbmFsb2dp
eF9kcF9kZXZpY2UgKmRwLAo+Cj4gICAgICAgICAgICAgICAgIHdyaXRlbChBVVhfRVJSLCBkcC0+
cmVnX2Jhc2UgKyBBTkFMT0dJWF9EUF9JTlRfU1RBKTsKPgo+ICsgICAgICAgICAgICAgICBpZiAo
YXV4X3N0YXR1cyA9PSBBVVhfU1RBVFVTX1RJTUVPVVRfRVJST1IpCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7Cj4gKwo+ICAgICAgICAgICAgICAgICBkZXZfd2Fy
bihkcC0+ZGV2LCAiQVVYIENIIGVycm9yIGhhcHBlbmVkOiAlI3ggKCVkKVxuIiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgYXV4X3N0YXR1cywgISEocmVnICYgQVVYX0VSUikpOwo+ICAgICAg
ICAgICAgICAgICBnb3RvIGF1eF9lcnJvcjsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmgKPiBpbmRleCBlMjg0ZWU4ZGE1OGIuLjEyNzM1
MTM5MDQ2YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2Fu
YWxvZ2l4X2RwX3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9yZWcuaAo+IEBAIC0zNjEsNiArMzYxLDE1IEBACj4gIC8qIEFOQUxPR0lYX0RQ
X0FVWF9DSF9TVEEgKi8KPiAgI2RlZmluZSBBVVhfQlVTWSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAoMHgxIDw8IDQpCj4gICNkZWZpbmUgQVVYX1NUQVRVU19NQVNLICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAoMHhmIDw8IDApCj4gKyNkZWZpbmUgQVVYX1NUQVRVU19PSyAg
ICAgICAgICAgICAgICAgICAgICAgICAgKDB4MCA8PCAwKQo+ICsjZGVmaW5lIEFVWF9TVEFUVVNf
TkFDS19FUlJPUiAgICAgICAgICAgICAgICAgICgweDEgPDwgMCkKPiArI2RlZmluZSBBVVhfU1RB
VFVTX1RJTUVPVVRfRVJST1IgICAgICAgICAgICAgICAoMHgyIDw8IDApCj4gKyNkZWZpbmUgQVVY
X1NUQVRVU19VTktOT1dOX0VSUk9SICAgICAgICAgICAgICAgKDB4MyA8PCAwKQo+ICsjZGVmaW5l
IEFVWF9TVEFUVVNfTVVDSF9ERUZFUl9FUlJPUiAgICAgICAgICAgICgweDQgPDwgMCkKPiArI2Rl
ZmluZSBBVVhfU1RBVFVTX1RYX1NIT1JUX0VSUk9SICAgICAgICAgICAgICAoMHg1IDw8IDApCj4g
KyNkZWZpbmUgQVVYX1NUQVRVU19SWF9TSE9SVF9FUlJPUiAgICAgICAgICAgICAgKDB4NiA8PCAw
KQo+ICsjZGVmaW5lIEFVWF9TVEFUVVNfTkFDS19XSVRIT1VUX01fRVJST1IgICAgICAgICAgICAg
ICAgKDB4NyA8PCAwKQo+ICsjZGVmaW5lIEFVWF9TVEFUVVNfSTJDX05BQ0tfRVJST1IgICAgICAg
ICAgICAgICgweDggPDwgMCkKPgo+ICAvKiBBTkFMT0dJWF9EUF9BVVhfQ0hfREVGRVJfQ1RMICov
Cj4gICNkZWZpbmUgREVGRVJfQ1RSTF9FTiAgICAgICAgICAgICAgICAgICAgICAgICAgKDB4MSA8
PCA3KQo+IC0tCj4gMi4zOS4yCj4KClJldmlld2VkLWJ5OiBSb2JlcnQgRm9zcyA8cmZvc3NAa2Vy
bmVsLm9yZz4KClRoaXMgc2VyaWVzIGhhcyBhIGZldyBjaGVja3BhdGggLS1zdHJpY3Qgd2Fybmlu
Z3MsIGNvdWxkIHlvdSBmaXggdGhvc2UKYW5kIEknbGwgbWVyZ2UgdjI/CgoKUm9iLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

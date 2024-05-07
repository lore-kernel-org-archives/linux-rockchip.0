Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2F04C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4jF9TgjSeEUKE6jSBNrGaCS50YKeji8vn5jwTXY7g0=; b=jodmquovHb/I3r
	cHbK8VeiKYHLCZGAZUZ13mVqVuyYwpt8a/i4kjylVMD+WP20uajXUeP93PzWrerKkU0ZZ4mAZRp2p
	vwPR8XlnDOkT2DS3MNAyKZLgOXkzeyvWz00edloZ3UFozJg+4PkoKK4iRzlFyrLxJE4KvzWxoA3b+
	V1M+wfGhZh5H2iOOAboT3VPbNdPyLtta5uaNO7EjC7zCsqCZelp3Gj69DRXRRym9VKR5bPjPxINx1
	Sx/iCat4RqZ/NuV2ViAFF/aP+57fGRhtr76/aKSKS2crypGBCvErjlvU/czBJx/YP4Bbc/nhokcgD
	4Wvi9di1wCgeeiDNjD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KWB-0000000B5DG-1f91;
	Tue, 07 May 2024 13:06:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KW7-0000000B5Bv-1OuR
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:06:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5DC88CE1315
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:05:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AC8DC4DDE8
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087155;
	bh=5PYH91EQi+idBxIKjdhl3K12UjexK5qvIICBveFfKMI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=etWzkfvBRTSYmbIdNGWLnvHkNtxI7DMFj4Sop9h3xY5P1/0sNi8TvnPhY0mCsJi1T
	 AHvjrXmYsvmMIV6h3clvKGsR89VJq+jIYYkwDAgMBeb+dmkLS0KHqC4fbyx5Ld9eDN
	 ip95v9wvdwMYvA7297jb/v1SR1R+Hvx6yx6HqCFQ3pdDh1oOklj9iYkEbwQPo3Et4p
	 ArVqDSlORjEEx1piTzmd0KLdhOV1UYxsImRjbR6k+qg4+oJz8hDyS+fnp/94cmTXBi
	 zIURFEitgJ5i1kKaGfGelDDqyBKuTJqJ/PPfwORfOPKRi3OhhLji1kFW78YxaHEjSa
	 2pgBjLUte+E/w==
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-61be4b9869dso32632677b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:05:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWBMF8pMhdw/rdNtEZxlnuWRYhHJOah0J68r+cQY/eW4Oi+TojSwu+I41O+QjvkUrCJl8bXq/TNwrOs/GkWLr2EaY8ZDdlr1YKTy/wuxaBTx+sZ
X-Gm-Message-State: AOJu0Yx7zsN5rZ4GTm8lNNMxHp6ca4CmSm8Cg86ppeH5FCjaj1WsUIf9
	ize/7kqGcb61nIT1mDlPCNe9ZVGiZQ0P8heoMfwB28XlLILf216j6JYTaWIuDREFc4VGz0OV2RL
	FPeo3Ji3Dmha7KVKdHjj6AAG1fPYLQ5BCm9bqQA==
X-Google-Smtp-Source: AGHT+IFn91kp+WhuqDQyRw92qtuMTa/GVclyApZ/cSHOyt/QXsb7bezaUvDdlymM+sqt732FQULKq1yg6rUERmbNifg=
X-Received: by 2002:a5b:942:0:b0:de4:8b7:7bbd with SMTP id x2-20020a5b0942000000b00de408b77bbdmr12304102ybq.15.1715087154728;
 Tue, 07 May 2024 06:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-9-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-9-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:05:44 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4SSpfsQRWgzn5VFdVO+v6YePfXWuK=7C3NzWzLyTh-Jg@mail.gmail.com>
Message-ID: <CAN6tsi4SSpfsQRWgzn5VFdVO+v6YePfXWuK=7C3NzWzLyTh-Jg@mail.gmail.com>
Subject: Re: [PATCH 08/14] drm/bridge: analogix_dp: move basic controller init
 into runtime PM
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
X-CRM114-CacheID: sfid-20240507_060600_340396_9A972100 
X-CRM114-Status: GOOD (  18.44  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gTWFrZSBzdXJlIHRoZSBjb250cm9sbGVyIGlzIGluIGEg
YmFzaWMgd29ya2luZyBzdGF0ZSBhZnRlciBydW50aW1lCj4gcmVzdW1lLiBLZWVwIHRoZSBhbmFs
b2cgZnVuY3Rpb24gZW5hYmxlIGluIHRoZSBtb2RlIHNldCBwYXRoIGFzIHRoaXMKPiBlbmFibGVz
IHBhcnRzIG9mIHRoZSBQSFkgdGhhdCBhcmUgb25seSByZXF1aXJlZCB0byBiZSBwb3dlcmVkIHdo
ZW4KPiB0aGVyZSBpcyBhIGRhdGEgc3RyZWFtIGJlaW5nIHNlbnQgb3V0Lgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTQgKysrKyst
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4X2RwX2NvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhf
ZHBfY29yZS5jCj4gaW5kZXggMzI4MWMwMGEzOWNkLi5mZGIyYzJhMmI2OWEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+
IEBAIC00MSwxMCArNDEsOCBAQCBzdHJ1Y3QgYnJpZGdlX2luaXQgewo+ICAgICAgICAgc3RydWN0
IGRldmljZV9ub2RlICpub2RlOwo+ICB9Owo+Cj4gLXN0YXRpYyBpbnQgYW5hbG9naXhfZHBfaW5p
dF9kcChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPiArc3RhdGljIHZvaWQgYW5hbG9n
aXhfZHBfaW5pdF9kcChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPiAgewo+IC0gICAg
ICAgaW50IHJldDsKPiAtCj4gICAgICAgICBhbmFsb2dpeF9kcF9yZXNldChkcCk7Cj4KPiAgICAg
ICAgIGFuYWxvZ2l4X2RwX3N3cmVzZXQoZHApOwo+IEBAIC01NiwxMyArNTQsOSBAQCBzdGF0aWMg
aW50IGFuYWxvZ2l4X2RwX2luaXRfZHAoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4g
ICAgICAgICBhbmFsb2dpeF9kcF9lbmFibGVfc3dfZnVuY3Rpb24oZHApOwo+Cj4gICAgICAgICBh
bmFsb2dpeF9kcF9jb25maWdfaW50ZXJydXB0KGRwKTsKPiAtICAgICAgIHJldCA9IGFuYWxvZ2l4
X2RwX2luaXRfYW5hbG9nX2Z1bmMoZHApOwo+IC0gICAgICAgaWYgKHJldCkKPiAtICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPgo+ICAgICAgICAgYW5hbG9naXhfZHBfaW5pdF9ocGQoZHApOwo+
ICAgICAgICAgYW5hbG9naXhfZHBfaW5pdF9hdXgoZHApOwo+IC0gICAgICAgcmV0dXJuIDA7Cj4g
IH0KPgo+ICBzdGF0aWMgaW50IGFuYWxvZ2l4X2RwX2RldGVjdF9ocGQoc3RydWN0IGFuYWxvZ2l4
X2RwX2RldmljZSAqZHApCj4gQEAgLTEyNTgsOSArMTI1Miw5IEBAIHN0YXRpYyBpbnQgYW5hbG9n
aXhfZHBfc2V0X2JyaWRnZShzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPgo+ICAgICAg
ICAgcG1fcnVudGltZV9nZXRfc3luYyhkcC0+ZGV2KTsKPgo+IC0gICAgICAgcmV0ID0gYW5hbG9n
aXhfZHBfaW5pdF9kcChkcCk7Cj4gKyAgICAgICByZXQgPSBhbmFsb2dpeF9kcF9pbml0X2FuYWxv
Z19mdW5jKGRwKTsKPiAgICAgICAgIGlmIChyZXQpCj4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0
X2RwX2luaXQ7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4KPiAgICAgICAgIC8qCj4g
ICAgICAgICAgKiBBY2NvcmRpbmcgdG8gRFAgc3BlYyB2MS4zIGNoYXAgMy41LjEuMiBMaW5rIFRy
YWluaW5nLAo+IEBAIC0xNzI2LDYgKzE3MjAsOCBAQCBpbnQgYW5hbG9naXhfZHBfcmVzdW1lKHN0
cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+Cj4gICAgICAgICBwaHlfcG93ZXJfb24oZHAt
PnBoeSk7Cj4KPiArICAgICAgIGFuYWxvZ2l4X2RwX2luaXRfZHAoZHApOwo+ICsKPiAgICAgICAg
IHJldHVybiAwOwo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGFuYWxvZ2l4X2RwX3Jlc3VtZSk7
Cj4gLS0KPiAyLjM5LjIKPgoKUmV2aWV3ZWQtYnk6IFJvYmVydCBGb3NzIDxyZm9zc0BrZXJuZWwu
b3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

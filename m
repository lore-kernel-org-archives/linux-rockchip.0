Return-Path: <SRS0=83oW=OX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46812C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 00:41:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5EB061AF7
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 00:41:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5EB061AF7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rammhold.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zYrZhFiofjgUDQDSYvKkgfCRuq0R+26/EGmBT27Wt4=; b=udhaDo/fqa0lE9
	m3ZLaXkAk5ZQYi51yvVGKWpy8F7AP19vHUVrdcFhUDzAoc/Zzc/0lA7b6YJay3e9V68mlDXKVenTM
	lW976X7eJ6iMpFG7ImdctP4c1vOFklN21++F3/wWo9LhRp0huiQoqCN7PmoTvHRT5SEfGdci/5kO8
	3wnUIEUoWMJSXUX0KefEqI9rHPJPygaK1DGNERqt7Nc8ZjcTui4+5XiKAO9nIx5Sk8+3k85DQsckc
	WDchdeP4IqmASN82YG1Vf+gdFLOnM3ZWrlbuQrcybAW4IGSR5KlJfe7E5EWX9FCFkuwetulP+Hv0v
	+7FPArosfKFyl1NdvwLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWpZC-002xzV-Uc; Sun, 03 Oct 2021 00:41:22 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWpYz-002xy6-D2
 for linux-rockchip@lists.infradead.org; Sun, 03 Oct 2021 00:41:12 +0000
Received: by mail-ed1-x529.google.com with SMTP id b8so14842473edk.2
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Oct 2021 17:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rammhold-de.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=kdKO57eCkdze/jd7Plag9VFbHkkxaEwpzt2ifTzkHVE=;
 b=H0FByiDlJrJ/8I3Qlp2xMJAzdTJlxDmiKCr9USQOQXY54BrsW7ylzbzzKU4Vy/0ivT
 H+8ct0fWHhVn6z7d0zDIzzpnaw9WtaWJMkFTTSF4JfogeS0/+nxCZOPogWY6epfJ8SKp
 T9ZDGcyVaLysC1LdoLQAA9I9WOe+FnyKshUF0G7pgQE5Id5DyaIa/prPi1ofFhOLNnsQ
 x349WRVfmx2877e9I7czhNKZEjCQwsFigRP6vhmM9arAC8CQcdjGItEzdBhDe5PPQ67n
 zaxyX+uPeOV8F70Lhi1yyDp2nJDzBvGWwjjPV5Nz225JM8km+Uuop/9KwuTjTQqjIydK
 7yNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=kdKO57eCkdze/jd7Plag9VFbHkkxaEwpzt2ifTzkHVE=;
 b=1doykdAZW7gGXJ9xaJcatC9yq/JAoU13nQ2nxdOwZC5JDLiZcCRSoQ/7mUowxOVXbi
 RTFA27sJKZnVCBYcFt3C4Es3y9Pz6qa9smKK+Z7I983pVlfIEdDLiKac0EqlR60s8XrA
 outMMOgo7wT0FDxT7xB/jldwmlmmsxTzkVsOKLsZ+5+Oo2K3FLEQK/jsexm7XqyHlbCW
 GKhRE5G/YWYpHai1A3Na5B4zOwo/9Ix8WBc6duN+vZAsKNKmTWTT0EcYHJMbrUjY2Mff
 eypE676PZcWdG57BbNd3xeDM774WDCX8r6D4+wgXcjzCn1/+ea5/ALPjbtm9Min+qHvS
 +G6Q==
X-Gm-Message-State: AOAM533+MjpukGXvHyeJPf8gBtfCg76LRqiaG6X7lXVQEiAp2kxkyhNF
 Yhp7pBj3wutCBy6/veEQAOVo/g==
X-Google-Smtp-Source: ABdhPJzhz3Hpxru8q49ncXt0lESjDoisbpiQOpm5LyfVFdGxCsStypRw/Nvyo/Sp/rIg81Zc0MNqBA==
X-Received: by 2002:a17:906:2441:: with SMTP id
 a1mr7407973ejb.414.1633221666843; 
 Sat, 02 Oct 2021 17:41:06 -0700 (PDT)
Received: from localhost ([2a00:e67:5c9:a:5621:d377:9a16:5c6c])
 by smtp.gmail.com with ESMTPSA id q11sm5183779edv.80.2021.10.02.17.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Oct 2021 17:41:06 -0700 (PDT)
Date: Sun, 3 Oct 2021 02:41:03 +0200
From: Andreas Rammhold <andreas@rammhold.de>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net,
 peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Message-ID: <20211003004103.6jdl2v6udxgl5ivx@wrt>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
 <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211002213303.bofdao6ar7wvodka@wrt>
 <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_174109_521244_FB8BF192 
X-CRM114-Status: GOOD (  16.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMTc6MjAgMDIuMTAuMjEsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IE9uIFNhdCwgMiBPY3Qg
MjAyMSAyMzozMzowMyArMDIwMCBBbmRyZWFzIFJhbW1ob2xkIHdyb3RlOgo+ID4gT24gMTY6MDIg
MDEuMTAuMjEsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+ID4gPiBPbiBXZWQsIDI5IFNlcCAyMDIx
IDIzOjAyOjM1ICswMjAwIEhlaWtvIFN0w7xibmVyIHdyb3RlOiAgCj4gPiA+ID4gT24gYSByazMz
OTktcHVtYSB3aGljaCBoYXMgdGhlIGRlc2NyaWJlZCBpc3N1ZSwKPiA+ID4gPiBUZXN0ZWQtYnk6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ICAKPiA+ID4gCj4gPiA+IEFwcGxpZWQs
IHRoYW5rcyEgIAo+ID4gCj4gPiBUaGlzIGFsc28gZml4ZWQgdGhlIGlzc3VlIG9uIGEgUm9ja1Bp
NC4KPiA+IAo+ID4gV2lsbCBhbnkgb2YgeW91IHN1Ym1pdCB0aGlzIHRvIHRoZSBzdGFibGUga2Vy
bmVscyAoYXMgdGhpcyBicm9rZSB3aXRoaW4KPiA+IDMuMTMgZm9yIG1lKSBvciBzaGFsbCBJIGRv
IHRoYXQ/Cj4gCj4gSSB3b24ndC4gVGhlIHBhdGNoIHNob3VsZCBiZSBpbiBMaW51cydzIHRyZWUg
aW4gYXJvdW5kIDEgd2VlayAtIGF0IHdoaWNoCj4gcG9pbnQgYW55b25lIGNhbiByZXF1ZXN0IHRo
ZSBiYWNrcG9ydC4KPiAKPiBUaGF0IHNhaWQsIGFzIHlvdSBwcm9iYWJseSBrbm93LCA0LjQgaXMg
dGhlIG9sZGVzdCBhY3RpdmUgc3RhYmxlIGJyYW5jaCwKPiB0aGUgc2hpcCBoYXMgc2FpbGVkIGZv
ciBhbnl0aGluZyAzLnguCgpJIGFtIHNvcnJ5LiBJIG1lYW50IDUuMTMuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

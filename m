Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBAF7C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 09:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuQSJTMGS9/jRNeOTnz1l2DsOP+m3QgcJe1xM0X/rWM=; b=42s/b7J3tzxbKY
	Zs0OlxKrZ7vLAILNuW1J90yYPhCsMhHIphfujRkMnTuzETwAmvQPlut8T0V4fqDxMs3Q3KkKRZUEJ
	r4XaKCb6BKxLsUBjhbjtyXBomX2jS2rRBuzaGgWfjUayc9cW60hWZygraJLRzMJKWD1mBTyu+Y551
	LWMhEU9bTvypaa3/81MZVLepui6p68SqpHze4quKX/3lCPBethS4CCvOnnLRwku6prK3crX/bxwYE
	J4arZb5OkQcUQCxijv8T6bGGXzN5wYDCqsGuIrlat8nYVver1JK280XeYvudoBGDoPG2Z3Qjl/Xbh
	k0wrSBT0AbKJ1Z5cZIfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7vFj-00CkWr-8h; Wed, 21 Dec 2022 09:19:07 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7vFI-00CkDA-7d; Wed, 21 Dec 2022 09:18:41 +0000
Received: by mail-qt1-x836.google.com with SMTP id a16so13171571qtw.10;
        Wed, 21 Dec 2022 01:18:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ctf2ZSJojXMz8Wx/sBhIZ3U22vX8qUoHD6iPYv6j+BM=;
        b=VmNGpAbEaNirlpNkoRK5gBI0O0NprWyziC2lzPXY1oI3aHe0DSRTPyS6i6mxwUC1kO
         FVT/PleY/1bd9A3TMmwHt0kDpNN2pMlue+2MjiO2xER/mIO1qUhJ1SnPc8XwZ65qwEWv
         bO71i1ImAwruqx6u6sqaKlbP2swzA6BdgmU5FY2vSZZ9V+zOgLmoq/Ct4DbNda+N1M4c
         8NmCgFKIohJwhJZIrQ4zKLSrDg3nsoMgREGWfnsabXpgPp3iP4L0Ub0b6Qc9D9kJVxWC
         i21TcIfvq3dauQTgqzx1Ao/3wmfd6RZMZgNLUsNYkXO2vTo/xAZ/CKPa7J1QVkBHtBlY
         Js5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ctf2ZSJojXMz8Wx/sBhIZ3U22vX8qUoHD6iPYv6j+BM=;
        b=xghMWGEHZ/rTO8KxKR3HYRqKgTd+st5yV0dYXHNTF3+fgtKm7cqTXQib86B+X0dbEh
         hC71sIKYv34p8lonF08pBvWKCw+munRr5wOuVIR80kLSwLDEw4NPlAGSe/ayIpIgP+QD
         S/spU5qAeGj6x6KdBmeCoQjRzGTbT3XlbtU9xN5QVosabAh2+nVdrhGiQtiFyxhq6Xr0
         n119UOgzL1ZVlDcPx/nir7EOhLdzSF8Xy2MrMcdHgO7FGutst92ZS/k44pjk0VCAqvG5
         fjgx1XsabuU8x0G3fE4IznHm42c9gaO15et0g+GCWWYNPdPVuuNOyhTFn3mTY8JfAhY4
         rf4g==
X-Gm-Message-State: AFqh2kpTfBFz6vsggr+hJ/1ngUhkx4tnftmi3dloHFxNS67J6rI2EsNG
	+PQBnVyACi14vvRCNC0TtzZWpRtBn3HoBjdQ+A+6nOdg/MSkvY60Q9lgrg==
X-Google-Smtp-Source: AMrXdXuog/QSrj5KFqPlgCSqp63MHruzMbUCYym11Q5yf5n/TncKTi+v3wtDgl+mk7xq5whdaWAdlOfXMtdUIL8OFU8=
X-Received: by 2002:a05:622a:1a06:b0:3a5:6822:1a42 with SMTP id
 f6-20020a05622a1a0600b003a568221a42mr36016qtb.174.1671614317413; Wed, 21 Dec
 2022 01:18:37 -0800 (PST)
MIME-Version: 1.0
References: <Y6GMnq3AC7Kbnag8@VM-66-53-centos> <a113d20c-dc6c-2e44-009f-d4b17beb8820@linaro.org>
 <CAMmci2XuiwZje53L6Nv9+EG+W6pvXSbwyR2Ko5h8n9LEppS5pg@mail.gmail.com> <9474ae59-babb-0cfc-d838-447ff90c40f9@linaro.org>
In-Reply-To: <9474ae59-babb-0cfc-d838-447ff90c40f9@linaro.org>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 17:18:26 +0800
Message-ID: <CAMmci2USuDf2C4hTG=_kRC08uLyiZ8cUnuZwxXHkQkifWUekiQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add RK3566 LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_011840_355429_AD301D18 
X-CRM114-Status: GOOD (  11.73  )
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

S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiDkuo4y
MDIy5bm0MTLmnIgyMeaXpeWRqOS4iSAxNzowNeWGmemBk++8mgo+Cj4gT24gMjEvMTIvMjAyMiAx
MDowMSwgdHkgd3JvdGU6Cj4gPiB0aGFua3MuIEkgYW0gcmVhbGx5IHNvcnJ5Lgo+ID4KPiA+IEkg
Zml4ZWQgdGhpcyBiYXNlZCBvbiB5b3VyIGZlZWRiYWNrIGluIHRoZSBQQVRDSCBWMiBjb250ZW50
LiBSZWdhcmRpbmcKPiA+IHRoZSBkdHMgaXNzdWUsIEkgdXNlZCB0aGUga2VybmVsLTUuMTUga2Vy
bmVsIGFkYXB0YXRpb24gYmVmb3JlLCB3aGljaAo+ID4gbWF5IG5vdCBiZSBwZXJmZWN0IGF0IHRo
YXQgdGltZS4KPgo+IERvIG5vdCBzZW5kIHBhdGNoZXMgYmFzZWQgb24gdjUuMTUuIFRoaXMgaXMg
c29tZSB2ZXJ5IG9sZCBrZXJuZWwuIFdlIGRvCj4gbm90IHdvcmsgb24gc3VjaCBzdHVmZi4KClRo
YW5rIHlvdSBmb3IgeW91ciBraW5kbHkgcmVtaW5kZXIuIFdlIGhhdmUgbW9kaWZpZWQgdGhlIHdo
b2xlIC5kdHMKZmlsZSBiYXNlZCBvbiB2Ni4yIGtlcm5lbCBhbmQgZm9sbG93IHRoZSBnZW5lcmlj
LW5hbWUtcmVndWxhdGlvblswXSBpbgpbUEFUQ0ggdjRdLiBCZWNhdXNlIGl0IHdhcyBiYXNpY2Fs
bHkgYSB3aG9sZSByZXdyaXRlLCBzbyBJIGRlY2lkZWQgdG8Kc2VuZCBhIG5ldyBQQVRDSCB2NC4K
ClswXSBodHRwczovL2RldmljZXRyZWUtc3BlY2lmaWNhdGlvbi5yZWFkdGhlZG9jcy5pby9lbi9s
YXRlc3QvY2hhcHRlcjItZGV2aWNldHJlZS1iYXNpY3MuaHRtbCNnZW5lcmljLW5hbWVzLXJlY29t
bWVuZGF0aW9uCgo+Cj4gVGhlIGNvbW1lbnQgd2FzOgo+ICJOb2RlIG5hbWVzIHNob3VsZCBiZSBn
ZW5lcmljLCBzbyBhdCBsZWFzdCB3aXRoIHJlZ3VsYXRvciBwcmVmaXggb3Igc3VmZml4LiIKClll
cy4gTm9kZSBuYW1lcyBhcmUgYWxsIGNoYW5nZWQgaW4gW1BBVENIIHY0XS4KCgotLSAKWS4gVC4g
WmhvbmcKU3R1ZGVudCBvZiBUaGUgVW5pdmVyc2l0eSBvZiBIb25nIEtvbmcsIG1ham9yIGluIENv
bXB1dGVyIFNjaWVuY2UuCkUtbWFpbDogem9ueWl0b29AZ21haWwuY29tCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

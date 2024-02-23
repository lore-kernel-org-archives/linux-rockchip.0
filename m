Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83BBEC54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 14:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOCSs9g1nUhK3bM9ctDJvTB21aEzPq76tEysHLnvJZI=; b=UP+AwCn/OdCZnV
	ibYHG3h9pqa8wQokAxGBn8m+YVKN6GXf2sV/t5ZhsJVLyHvRE7vSyW7vNF1qB8o7bZSSDBEzreR0a
	Y54fT2+8fnU25X8VOuLsjIi5/c2AyU95PweeapA0cKJstEzkqoJ6czTQdgb6FxFz2ZcAdg2CMwPv0
	iMd2x584dcls+P1hnkf0NkQEtdAitYkrl10AjRmlRZ25zIxIYcPpDrKB1m2Fild+bCN3kiHSSe3Yo
	v+GYtv+pNkA7XwLYMOpzZ3kdi/kfU3qRe1355ZPS7K7HmFB2eCibUJgiZnJlIa2ef1+SEg2vdlDiY
	UIAO/Hsmk5xhTiftV1Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWib-00000009nJB-442U;
	Fri, 23 Feb 2024 14:40:06 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWiU-00000009nGe-4BQ5;
	Fri, 23 Feb 2024 14:40:00 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso507265a12.3;
        Fri, 23 Feb 2024 06:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708699197; x=1709303997; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vpZPuiLLkI988ptyENq7jUvXxAIw1cEVbm2O6JbZLGM=;
        b=i453qPVgVXY3A+yDXiWbe9kmijAhARP/oVpRgnIv5hlD6joc2en86Bgex+utrfi2bW
         JA97DTclynn2gjTTx9pJBOKWH0+/qMSG123CEyBpgMA9wZrK/LkKAZhN9LFwdtwGICAz
         h8ej/xURp06/sp85KoXiuHnVXYzDKW0iwAC+1SLINaq/QFCKRSPnbqHROKLOydumlDln
         Gc7XMNNrEH0Y9XjFEOjYiblKFvawgcEXGZOXzJXB7H9bKFE1dhzTnef0FwFkq0Uecz7I
         Uh57K5SayahX+TUKI21U+MEMOJ03volDEB1rAgHf8l0saBfT1Cl/SNHJG1tYVvMwUR5p
         YaFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708699197; x=1709303997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vpZPuiLLkI988ptyENq7jUvXxAIw1cEVbm2O6JbZLGM=;
        b=KACJU9r00taLKuYrDmuMFcAx9MpmOpKFy3dheWmiRIx5BU0G7w20gGSuCoTpnZe9BC
         rkpeQwRsz8UPCuI/aSB+BXCs6QVzGW2ujOA3KJuIIFN3Kzklt36mEEp+BvjppCEwmezZ
         gfpuimrfURsGRM3wWkEL7o71OWt7bJcV1MZxGP3Agoa1w+2t7x3X0/PCHS+2+SrcanQX
         7Y7r4rdH98GoOFBdjtht94Xvdbe48n8IQCCyJqtPcLVqtPy4qgtwU3ZPu0nYjHzPigGx
         T2joOUCFpqI14gCNvijvcMRFDicm9T3K9DJ7lXXgvBpdDXdb8WJyDbq8QMiPgbXVty/+
         khFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf8b9oIQw5rwD/kUVb6Km13w2u54sNEM0n4c8je+CCABVqnc1PGUhWdGGapmIQcSNdPosPZ7Q6saSis8vCWxQBDgzUP2qruC4qtGHO5j5LM0y6hwTa2fzH3hpoGZ0JdWnxrrWr11ZkjtMK07pSz7L+jSdeMOyXkuM=
X-Gm-Message-State: AOJu0YwiAnzueySZOHYSIubjJ2yBqWH3jTunEH6zgYC/ZHTv+5DH7o2J
	IilQtXMjlBHQWjCxIzSboa4OdxpC4UG+lKPiV001yFXEdJd2M4hVdkIbWEWRYJna+p57qt+dAYB
	1z4qouDGJJvvSCQNSRZY+yfznto4=
X-Google-Smtp-Source: AGHT+IGBCLA7oTCR1x5TwCidwTaIiT3zUeUmp18ugjUau1mCK673R/6uBtfxi8E6jqxFDz/uMvgYluJ/O9I+odulo7Q=
X-Received: by 2002:a17:906:cb08:b0:a3f:684b:d0f0 with SMTP id
 lk8-20020a170906cb0800b00a3f684bd0f0mr1543311ejb.58.1708699196932; Fri, 23
 Feb 2024 06:39:56 -0800 (PST)
MIME-Version: 1.0
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
 <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com> <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
In-Reply-To: <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 23 Feb 2024 16:39:20 +0200
Message-ID: <CAHp75Vft3kJEF9JiuEqVsS3biQ6YsuDXON_P3FOZRjtb8NaB2w@mail.gmail.com>
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with devm_reset_control_get_optional_exclusive
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_063959_071597_CAB49284 
X-CRM114-Status: GOOD (  17.38  )
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

T24gRnJpLCBGZWIgMjMsIDIwMjQgYXQgMzoxMOKAr1BNIFF1ZW50aW4gU2NodWx6CjxxdWVudGlu
LnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+IHdyb3RlOgo+IE9uIDIvMjMvMjQgMTQ6MDAs
IEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiA+IE9uIEZyaSwgRmViIDIzLCAyMDI0IGF0IDI6NDbi
gK9QTSBRdWVudGluIFNjaHVseiA8Zm9zcytrZXJuZWxAMGxlaWwubmV0PiB3cm90ZToKCi4uLgoK
PiA+PiBDYzogUXVlbnRpbiBTY2h1bHogPGZvc3Mra2VybmVsQDBsZWlsLm5ldD4KPiA+Cj4gPiBZ
b3UgbWF5IHVzZSB0aGUgLS1jYyBvcHRpb24gdG8gYGdpdCBzZW5kLWVtYWlsYCBpbnN0ZWFkIG9m
IHBvbGx1dGluZwo+ID4gY29tbWl0IG1lc3NhZ2VzLCBvciBtb3ZlIHRoaXMgYWZ0ZXIgdGhlICct
LS0nIGN1dHRlciBsaW5lLgo+Cj4gVGhlIHdob2xlIHBvaW50IGlzIHRoYXQgbXkgU29CIGFuZCBh
dXRob3JzaGlwIGlzIGZyb20gbXkgcHJvZmVzc2lvbmFsCj4gbWFpbCBhZGRyZXNzIHdoaWNoIGlz
IGxpa2VseSB0byBjaGFuZ2Ugb3ZlciB0aW1lLCB0aGUgQ2MgaXMgbXkgcGVyc29uYWwKPiBvbmUg
Zm9yIGRldmVsb3BtZW50LiBCYXNpY2FsbHksIGluIHRoZSBldmVudCB0aGF0IEkgY2hhbmdlIG15
IGVtcGxveWVyLAo+IEkgd291bGQgc3RpbGwgYmUgcmVhY2hhYmxlIGF0IHRoYXQgQ2MgYWRkcmVz
cyB3aXRob3V0IGhhdmluZyB0byBtb2RpZnkKPiB0aGUgLm1haWxtYXAgYWZ0ZXIgdGhlIGZhY3Qg
KHdoaWNoIHdvbid0IG1ha2UgaXQgdG8gYW4gZWFybGllciB2ZXJzaW9uCj4gb2YgdGhlIGtlcm5l
bCBmb3IgZXhhbXBsZSkuIFNvbWUgbWFpbnRhaW5lcnMgZG9uJ3QgcmVhbGx5IGxpa2UgdGhpcywK
PiBzb21lIGRvbid0IG1pbmQsIHdlJ2xsIHNlZSBpbiB3aGljaCBjYXRlZ29yeSB0aGUgSUlPIG1h
aW50YWluZXIocykgZmFsbAo+IGluIDopIChJIGRvbid0IG1pbmQgZWl0aGVyIHdheSBqdXN0IHRv
IGJlIGNsZWFyKS4KCk15IHBvaW50IGlzIHRoYXQgQ2MgYW5kIG90aGVyIHNpbWlsYXIgKG5vbi1y
ZWFsLXRhZ3MpIHN0dWZmIGlzCnBvbGx1dGluZyBjb21taXQgbWVzc2FnZXMuIEl0IG1lYW5zIHRo
YXQgdGhpcyB3aWxsIGJlIGNvcGllZCB0byB0aGUKR2l0IGluZGV4IHRvIGFsbCBrZXJuZWwgZ2l0
IHJlcG9zaXRvcmllcyBpbiB0aGUgd29ybGQgZnJvbSBub3cgYW5kCnRoZW4sIFRoaXMgaXMgYXQg
YmFyZSBtaW5pbXVtIG1ha2VzIGFkZGl0aW9uYWwgYnVyZGVuIG9uIGdpdCBsb2cgKGFuZApwYXJz
aW5nIGFuZCBzbyBvbikgYW5kIG1vcmVvdmVyLCB3YXN0ZXMgcmVzb3VyY2VzIGJlY29taW5nIGxl
c3MKZW52aXJvbm1lbnQgZnJpZW5kbHkgKG5vIGpva2VzKS4gVXNpbmcgLS1jYyBvciBtb3Zpbmcg
dG8gdGhlIGJlaGluZAp0aGUgY29tbWl0IG1lc3NhZ2Ugd2lsbCBrZWVwIGVtYWlsIGNvcGllZCB3
aXRoIGNsZWFuZXIgY29tbWl0Cm1lc3NhZ2VzLiBZZXQsIGFsbCBlbWFpbCB0YWdzIGFyZSBhdmFp
bGFibGUgaW4gbG9yZSBhcmNoaXZlCihsb3JlLmtlcm5lbC5vcmcpLiBQbGVhc2UsIHJlYWxseSBy
ZWNvbnNpZGVyIHRoZSBjb21taXQgbWVzc2FnZXMKY29udGVudCBpbiB0aGUgTGludXgga2VybmVs
IHByb2plY3QgYW5kIGVsc2V3aGVyZSwgaXQgd2lsbCBoZWxwIHRvCm1ha2UgdGhlIHdvcmxkIG1v
cmUgZnJpZW5kbHkuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

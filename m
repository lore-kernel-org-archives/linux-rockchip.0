Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3CFAC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 09:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT2DF+A/RZvcQXoinZ5pDExBYCmghIun3AK4nXdsJYE=; b=h5k3t5KUDGLxit
	MKpms5QqU0MAWa+YGkaDOwPtGRoYuc/wv2opCNCrvdzJ5LCvcUf7pukRx5MegFXxJvHYeE+Zcc1hB
	D2Jl+DlWZkXwpoQ1k4W97QZlQN54mb1DBPgSTh/quNG5vFZ52X61vNuWOAqUuS0X6lMqHwElNaAr8
	vq6cUfU5RgeGmYAj7FulkSCbVuM0njR/brTBZUHQ1bSDu9GbkbFfrT5txNeant3AXraD5r1aRZ0D0
	AaCLjaKsXReVE/r7wWsQ6vVnxmRNL5Jlx5ujiBGO0akzkAPqLSPVXviBcxO9GMPofF4zGSm3iegTD
	p89rNqxgUuJHBvvKjXXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBAdv-00CLeE-1A;
	Thu, 07 Dec 2023 09:26:03 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBAds-00CLcd-0D
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 09:26:01 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-54c77e0835bso890692a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 01:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1701941156; x=1702545956; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=56T1M3RkgkEvFsKEJLHWcohTkirOLnD7I3rdsoTC1yI=;
        b=aJZLkIUhsQd5vqfjNaBT3JERQr+5cVJ8m0JfHe6qoQBQ8bCsSnIIFy31qJoVjafL/p
         AXBFUHrQrkqycGYxw7i8Naj9yA6GlndoyJ+h5HNLXj1ok6oD/ce8dT0vrOnyQzsWYczS
         /izAY8rogs1Xsrgkk+B/C+a8jU4LVJGu3VT0Dco/P/cMcJG6oezBAS9I7lA9AmQKp5IO
         40j014gt4EORNO5Qrg4G1BFG7+8SU/1332L306E9aNSO67Eligk0CUsaj1ECXCwJZp7f
         BKqNDQiHTbHEuuIE7/b8RCVKN6EQgBaY1QNy7i0aZMXwMGi73XdGcdl5Agh9+oSdHKak
         MAjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701941156; x=1702545956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=56T1M3RkgkEvFsKEJLHWcohTkirOLnD7I3rdsoTC1yI=;
        b=KExv8BQEjnIYd8a0YamM+j60DMvxkHWsCNXcPvaLfY8pefRpfQFwGxjaZfny4KN+j1
         5XNVHJ7SRnZLFb2zZZcDw+RA9NRYgaPWhFp/J2eRnVvlweez2mh6EWroYNZcDKhIyJEK
         IKGLwaN82AVzN6TyvLDKBXz91uisJyO+cNemqcN3RR4A86d+HEqrDbIn7UE4ybwi6fY6
         5IagfVsyvWfnF6wr+ZHuNxwg00kmvqSKz2xbdrX316iBWAOZLaYJdACaU0vVh55wN9xp
         IeLWhOBcxDIs7FT8iFY0LMe9nEAeevihS5+XHrSb+xKECONXOcFihm6FnE3d431qYY/A
         X3qw==
X-Gm-Message-State: AOJu0YyQ7ueLGjOV2QF9GTeTCtkrCYXwbaQ2cCBBf5914YqPB1Xeo48v
	xjyaVtkV9WjsS2NlDzXKIdodeRg0hp2AAtb1P55Rjg==
X-Google-Smtp-Source: AGHT+IFtB80x1RKWaoiFQnsZTz44KpZp+e8iynF5WtfXkFTzjLVGH8RiUrf6aQvX2/TyBvWbzs9E6CfhsZ3FrmAGZcc=
X-Received: by 2002:a50:8a97:0:b0:54c:d8f6:3f with SMTP id j23-20020a508a97000000b0054cd8f6003fmr1476412edj.56.1701941155885;
 Thu, 07 Dec 2023 01:25:55 -0800 (PST)
MIME-Version: 1.0
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com> <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
In-Reply-To: <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Thu, 7 Dec 2023 17:25:44 +0800
Message-ID: <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Chris Morgan <macroalpha82@gmail.com>, 
	Benjamin Bara <bbara93@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_012600_307206_04A25C22 
X-CRM114-Status: GOOD (  13.30  )
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

T24gVGh1LCBEZWMgNywgMjAyMyBhdCA0OjM34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFu
amFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMi0wNyAwOToyMSwgSmVuc2VuIEh1YW5nIHdy
b3RlOgo+ID4gUG9zc2libGUgZGVhZGxvY2sgc2NlbmFyaW8gKG9uIHJlYm9vdCk6Cj4gPiByazN4
X2kyY194ZmVyX2NvbW1vbihwb2xsaW5nKQo+ID4gICAgIC0+IHJrM3hfaTJjX3dhaXRfeGZlcl9w
b2xsKCkKPiA+ICAgICAgICAgLT4gcmszeF9pMmNfaXJxKDAsIGkyYyk7Cj4gPiAgICAgICAgICAg
ICAtLT4gc3Bpbl9sb2NrKCZpMmMtPmxvY2spOwo+ID4gICAgICAgICAgICAgLi4uCj4gPiAgICAg
ICAgIDxyazN4IGkyYyBpbnRlcnJ1cHQ+Cj4gPiAgICAgICAgIC0+IHJrM3hfaTJjX2lycSgwLCBp
MmMpOwo+ID4gICAgICAgICAgICAgLS0+IHNwaW5fbG9jaygmaTJjLT5sb2NrKTsgKGRlYWRsb2Nr
IGhlcmUpCj4gPgo+ID4gU3RvcmUgdGhlIElSUSBudW1iZXIgYW5kIGRpc2FibGUvZW5hYmxlIGl0
IGFyb3VuZCB0aGUgcG9sbGluZyB0cmFuc2Zlci4KPiA+IFRoaXMgcGF0Y2ggaGFzIGJlZW4gdGVz
dGVkIG9uIE5hbm9QQy1UNC4KPgo+IEluIGNhc2UgeW91IGhhdmVuJ3QgYWxyZWFkeSBzZWVuIHRo
ZSByZWxhdGVkIGRpc2N1c3Npb24gbGlua2VkIGJlbG93LAo+IHBsZWFzZSBoYXZlIGEgbG9vay4g
IEkgYWxzbyBhZGRlZCBtb3JlIHBlb3BsZSB0byB0aGUgbGlzdCBvZiByZWNpcGllbnRzLAo+IGlu
IGFuIGF0dGVtcHQgdG8gbWFrZSBldmVyeW9uZSBhd2FyZSBvZiB0aGUgZGlmZmVyZW50IGFwcHJv
YWNoZXMgdG8KPiBzb2x2aW5nIHRoaXMgaXNzdWUuCj4KPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvNjU1MTc3ZjQuMDUwYTAyMjAuZDg1YzkuM2JhMEBteC5nb29nbGUuY29tL1QvI202ZmM5
YzIxNDQ1MmZlYzY2ODE4NDNlN2Y0NTU5NzhjMzVjNmY2YzhiCgpUaGFuayB5b3UgZm9yIHByb3Zp
ZGluZyB0aGUgaW5mb3JtYXRpb24uIEkgaGFkbid0IHNlZW4gdGhpcyBsaW5rIGJlZm9yZS4KQWZ0
ZXIgY2FyZWZ1bGx5IGxvb2tpbmcgaW50byB0aGUgcmVsYXRlZCBkaXNjdXNzaW9uLCBpdCBhcHBl
YXJzIHRoYXQKRG1pdHJ5IE9zaXBlbmtvIGlzIGFscmVhZHkgd29ya2luZyBvbiBhIHN1aXRhYmxl
IHBhdGNoLiBUbyBhdm9pZCBkdXBsaWNhdGlvbgpvciBjb25mbGljdHMsIG15IHBhdGNoIGNhbiBi
ZSBkaXNjYXJkZWQuCgotLQpCZXN0IHJlZ2FyZHMsCkplbnNlbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

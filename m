Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A5AC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 15:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWjdFkuzEIWshgoZL89nszjV/LKeDpR3kUj9CCJEs3E=; b=vL4OXtdSHOJ6bD
	zxNupHez2/NKOyI6AgMIpKsnJQwfnNsdaEBLVzsXAPH/Ghv4AiDBucgbUYXZaQHbqtul6epjvhmZC
	q0FqJ4k7wfC0SFtolcvdiIW2YVdo+F8IPtZNACL/nBqzUT3mTx+Iuc13yM5mBaRnttkhtQX/GJa6l
	b0IfqvmvjJ8w//LsJNgGl5Sp48Ou8fXiobF0F30dnM3hRBmGDSTXBG7GiwxgiSzmfQu560oDuK9tJ
	0fmktd2hg0Dty+1Jb/Nvt+YmvO78amAj5mwyZCiVSjhDtIFIw/IA7H1C0DOZ6B0ugyONUzrxp0lio
	VOPLWoTF45jNxvlreeSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucmk8-0000000CtmD-3dzt;
	Fri, 18 Jul 2025 15:11:24 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucmcW-0000000Ct4d-2bnw;
	Fri, 18 Jul 2025 15:03:33 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4ab58105261so42718631cf.2;
        Fri, 18 Jul 2025 08:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752851010; x=1753455810; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IaPqhmr8I8MG3sHhnHr618dEFB92sPQdSnz5qoyYh/o=;
        b=bM5np/BM7/99JCHHAbG31c7mkNxxe6pGwdzYp9W1IzzkBLHTi9boJxAjn4KN+t450f
         qNZbhrDLZbOnlpC1ofQESHooD06vdGZinKgTQkzklywtP4LSmztLyZPZm8JDKuakU56q
         wNYV5u8UIecp4rEySkYKiV5KvNj20WCu4dsYg18uGK6fIHhYhc5wSiivZgHcud0S7t+V
         xg6OSDajv6ZknEKyriz0jvOsygx2BO+3dm/qBZYurqGceTwZf0/KQxxOGAZ27bCTC7sP
         bl5As7EkREAB6HWBaQuKR0m6klRg3rL/IsDeGsmKpeYr51VDJswylM5Oy5C5hoIez04c
         M6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752851010; x=1753455810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IaPqhmr8I8MG3sHhnHr618dEFB92sPQdSnz5qoyYh/o=;
        b=ml9YtZMb197K8Eu4Z5h+MjHMvJDNWA4aos05wOcMgyJkF44IcVIsAbU+dX4mMaddfh
         teXrvZ7G7t7vIXSQpc+9lsKmEvMoqtJhyJRvpsd8zOEfEuFL1TFxAHIBWbZQ3G/nC/6N
         BgIkiBNs89ZTkjp3z8tMVwTJ4+qnnPJZBIA4LnVvmqTdftCN6nmw+iTlx/JyXl0DHk9o
         TxlXC8xQ2NWLQtTfH7ACp0xLKHXFF7XnJUCvvQaWVlaKoYTFOmYO4jEy4s641tLdsrtS
         G0vRDuKxQFWJ/VGSd5pj7Pnzj3mvBHKrGg8Orxf+eLjJRiEakEGW1ZFchX5s+rK8NwZ9
         mhXA==
X-Forwarded-Encrypted: i=1; AJvYcCX8WMmBxrvCSYAxOZt9/D7ao2CVHtBD9X6+gc400KIk9jnAaRC/PKqP3VClRsx5XXiGqDqGMbEXogeUN15G54FN@lists.infradead.org, AJvYcCXpr6ChOQxKlflcHfi7xdrJURHs8zRgyXx9xvwUEiG4E3Kuiagp6RlFsKfUzNHC1Hc7BZMS9+K+PgsC+cQj9dI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIjHTztv9pifx9mMFU5NWfg3XNkhChtjLfkyO0PJU4tu8oZvau
	ucTgc6ni1v2XhvvbEXUs2hF6hIdK9/gsgqy1fFTEa0Wg593PkyMcP9MgnISSkiPcq65QQOMcCWe
	DVbJltmGdMxz/yrAf+zocjof3hXxwFA4=
X-Gm-Gg: ASbGncuq0fjwrnkGAdeXBy7CWxsdEp/XLBkBwBTUH2Z08knjquXodP3aM0ADW8TBNhD
	EhBqMlbg6DFWCYxdY52vY+FzX+I46uqZTKkGwjQIkBnjgpHCH5E3KVXlKEyyzCqy89f8QgLdZ3y
	Zq3mMsOBQCzhpYpGycqELBOwDwXyjSS86M7AxzKMdo8vuD0fSql27G4UpkBbBwFvLgp0P9rWbOi
	Sib5RtC
X-Google-Smtp-Source: AGHT+IGa8swPXXVAGbewHZ/SdoCPvBaIYn9opH5hqxkroYSjw7vm/HyHQEtmf/m9BpPT+G/u/pQ40OxmjrLtqI9uzx4=
X-Received: by 2002:a05:622a:648:b0:4aa:df09:133f with SMTP id
 d75a77b69052e-4abb4578b0dmr39626691cf.50.1752851008967; Fri, 18 Jul 2025
 08:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <CABjd4Yxz=mrNpqgnHSgD0tr4ALH3YW9MvLULES568yHNFiPB_w@mail.gmail.com>
 <20250718140110.308996-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250718140110.308996-1-amadeus@jmu.edu.cn>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 18 Jul 2025 19:03:17 +0400
X-Gm-Features: Ac12FXy8oFQyajABj_LuZ7IBJacD8iw-8MfdCYFevfgzhAwQT7Tsgn3fiksLCw8
Message-ID: <CABjd4YzLaAgd-5Cg9fMSAgCS6Wt6=uC8K3WRhcAtnjjg1je87Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency
 scaling support
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	jonas@kwiboo.se, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	ziyao@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_080332_660697_4566ABE6 
X-CRM114-Status: GOOD (  14.47  )
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

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgNjowMeKAr1BNIENodWt1biBQYW4gPGFtYWRldXNAam11
LmVkdS5jbj4gd3JvdGU6Cj4KPiBIaSwKPgo+ID4gPiBBbGV4ZXkgc3VnZ2VzdGVkIHRoYXQgd2Ug
cmVtb3ZlIDQwOE1IeiwgNjAwTUh6IGFuZCA4MTZNSHogZnJvbSB0aGUKPiA+ID4gb3BwLXRhYmxl
LiBEbyB5b3UgdGhpbmsgaXQgaXMgYWNjZXB0YWJsZSB0byB1c2UgODUwbVYgZm9yIDEwMDhNSHo/
Cj4gPgo+ID4gQnV0IHdoeSA4NTAgbVY/IFZlbmRvciAuZHRzaSBbMV0gaW1wbGllcyB0aGF0IGNo
aXBzIHdpdGggbGVha2FnZQo+ID4gdmFsdWVzIG9mIEwwLi5MNCBtaWdodCBiZSB1bnN0YWJsZSBh
dCB0aGlzIGZyZXF1ZW5jeSB3aXRoIGEgODUwIG1WCj4gPiBzdXBwbHkgYW5kIG5lZWQgODc1IG1W
IGluc3RlYWQuCj4KPiBCZWNhdXNlIHRoZSBhY3R1YWwgZnJlcXVlbmN5IGdlbmVyYXRlZCBieSA4
NTBtViBpcyBjbG9zZXIgdG8gMTAwOE1Iei4KCldoaWNoIGxpa2VseSBtZWFucyB0aGF0IHlvdSBo
YXZlIGFuIC1MNSBjaGlwLiBJdCB3aWxsIGJlIGRpZmZlcmVudCBvbgpvdGhlciBjaGlwcyAtIGl0
J3MgYSBsb3R0ZXJ5IG9mIHNpbGljb24gcXVhbGl0eS4KCj4gU2luY2Ugd2UgcmVtb3ZlZCBmcmVx
dWVuY2llcyBiZWxvdyAxR0h6LCBhbGwgcmVtYWluaW5nIGZyZXF1ZW5jaWVzIGFyZQo+IGdlbmVy
YXRlZCBieSBQVlRQTEwuIEkgdGhpbmsgaXQgbWF5IG5vdCBiZSBuZWNlc3NhcnkgdG8gdXNlIHRo
ZSBtYXhpbXVtCj4gdmFsdWVzIG9mIG9wcC1taWNyb3ZvbHQqID8KCk9ubHkgaWYgd2UgZGVsaWJl
cmF0ZWx5IGlnbm9yZSB0aGUgdW5sdWNreSB1c2VycyB3aG8gZ290IGxvd2VyIHF1YWxpdHkKc2ls
aWNvbiAoLUwwIHRvIC1MNCkuIFRoZXkgbWlnaHQgaGF2ZSBwcm9ibGVtcyBpZiB3ZSBydW4gMTAw
OCBNSHogYXQKODUwIG1WLCB3aGljaCBQVlRQTEwgbWF5IG9yIG1heSBub3QgYmUgYWJsZSB0byBt
YWtlIHVwIGZvciAoZGVwZW5kcyBvbgp3aGljaCByaW5nIGxlbmd0aCBnZXRzIGFwcGxpZWQgZm9y
IHRoaXMgZnJlcXVlbmN5IGJ5IGJsMzEpLiBJZiB0aG9zZQpjaGlwcyBkaWRuJ3QgbmVlZCBoaWdo
ZXIgdm9sdGFnZSB0byBydW4gc3RhYmxlIGF0IDEwMDggTUh6IHRoZW4gSQpkb3VidCBSb2NrY2hp
cCBlbmdpbmVlcnMgd291bGQgaGF2ZSBwdXQgODc1IG1WIGluIHRoZWlyIC5kdHNpCgpCZXN0IHJl
Z2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

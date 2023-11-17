Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BEACC54FB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 19:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O24U50yq+f23WGBGLEX3PyDWFSZKbKc7aVOEiN2Fvc0=; b=MtzzehQncYEcUg
	zSjV3/GUYDRehzONW21JMSnDzN01LFHQ9rlSI506JGUCw6GOIUdRiH7LOIV0FHN4pi64CSPjvRLGK
	GgfPtpod37Ox+7z22RG6D8/RyiB35rSTQO3QByYKYYjeChekn0CXaFjqtkOdDo+3gr7glJgqdgUKS
	v4xKMEK8WGpTmffo7zCw+GXM8Pj++wzGjL7xqmXvh6hkDu4FwyBo6ulu7TiTgzrRWqysTIrXzLeaO
	6oLDaqXSFsrJZknEUR8ZRk2stBOipQ9S5ytfGptRaUaEsvniXZobeTmzPPgr+lZIDgs41wYOqbwnH
	p9oJKXgExdf+rnfizyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r44VZ-0079yg-2g;
	Fri, 17 Nov 2023 19:28:05 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r44VW-0079xP-2w;
	Fri, 17 Nov 2023 19:28:04 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2809748bdb0so521171a91.0;
        Fri, 17 Nov 2023 11:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700249279; x=1700854079; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wj6uB37R8tTLmYWQxD3IhJvQztAaDxzKAeZZ9RZKtso=;
        b=HKWS7QtgcovGn+8F8UrQfeb7rsdX2mSRp0R10nPWo8m1DZ4F2QKxVKSsF7tItwFzWd
         Wseg6s4DY6K0x/vWVNHHvCKq0OQIWINgxLMv8N7xLCiLCa3KPoel9TPF75buDhOqKbck
         LYfDSsXq95iCWaHrMyKAy6fKwlmyl8JZdWFsxtg1t11Iu/22nd8mUeo3Chzff7NeCkeo
         gmcGOWJqqDsv9nLXDrBOpcSHtt19LjhIbkN1nn36DQs632JJvkbMsxCXSqE1Fpkl8Skr
         fpQ9i0nrKpE6UgOqEcKoDLXl0GygDv/M9lhQ8BPwJngYFALwKJ1YKi7DoXcKtN8zh4Iw
         eMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700249279; x=1700854079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wj6uB37R8tTLmYWQxD3IhJvQztAaDxzKAeZZ9RZKtso=;
        b=somUrNVUMgSFOyuNV5cCo/QkCUdx+L/Swm0gW0/bB1kXsWssIk3+Xk70e1pi6/kAU2
         pZjrJYi0fk9J2yPuWdf5/2AY5h7/m7xPXjDJ3nUu8RpviDtQ68EY+jqJMri1TIUfljgH
         +t7g+WYhyIsi+CeQfqPn9o8zNr4uPiVlIGCh1nHjhB/RxQBJ1mLFZuay3YPvvU2L5W/a
         wJlMaYnKBMz3hqqIgScu9m8QVJkq2+sVwhGWAtJa/S/tEbOdOare3wCba0P6SruPdFjM
         75jJ+7eNiFYsmTBpkPKZJHg0DS7wInhrfL168Lgjdizg6vkfLheQiOttOKds1zBMhayX
         hXnw==
X-Gm-Message-State: AOJu0YxF82m/dN5fShX5DJYNx+11Wn+4iT4a93DUeT5sd8L8jIsVATOk
	yKCEO3knKIJ9NKTgAibciP9MZGHT2+ktpNnKFFc=
X-Google-Smtp-Source: AGHT+IGpmf5PpZM3wbqS3BAXz4gDlhI3cBaZHfL4/PkNJ2ypLVm6z4fUikgmsPY3cDV7ZVOSxpGfgU2JwamzWwg+ATU=
X-Received: by 2002:a17:90b:2386:b0:274:60c7:e15a with SMTP id
 mr6-20020a17090b238600b0027460c7e15amr469895pjb.4.1700249279423; Fri, 17 Nov
 2023 11:27:59 -0800 (PST)
MIME-Version: 1.0
References: <20231117-rk-lvds-defer-msg-v1-1-1e6894cf9a74@theobroma-systems.com>
In-Reply-To: <20231117-rk-lvds-defer-msg-v1-1-1e6894cf9a74@theobroma-systems.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 17 Nov 2023 16:27:47 -0300
Message-ID: <CAOMZO5BVX3UmZ-45OphM6WDhz_ENkxm+Sr1dXkt4jR+Mmo-1Gg@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: lvds: do not print error message when
 deferring probe
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Mark Yao <markyao0591@gmail.com>, linux-rockchip@lists.infradead.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_112802_952760_5BBE4669 
X-CRM114-Status: GOOD (  13.58  )
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

SGkgUXVlbnRpbiwKCk9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDM6MzHigK9QTSBRdWVudGluIFNj
aHVseiA8Zm9zcytrZXJuZWxAMGxlaWwubmV0PiB3cm90ZToKPgo+IEZyb206IFF1ZW50aW4gU2No
dWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4KPiBUaGlzIHNjYXJ5
IG1lc3NhZ2UgbWF5IGhhcHBlbiBpZiB0aGUgcGFuZWwgb3IgYnJpZGdlIGlzIG5vdCBwcm9iZWQK
PiBiZWZvcmUgdGhlIExWRFMgY29udHJvbGxlciBpcywgcmVzdWx0aW5nIGluIHNvbWUgaGVhZCBz
Y3JhdGNoaW5nIGJlY2F1c2UKPiB0aGUgTFZEUyBwYW5lbCBpcyBhY3R1YWxseSB3b3JraW5nLCBz
aW5jZSBhIGxhdGVyIHRyeSB3aWxsIGV2ZW50dWFsbHkKPiBmaW5kIHRoZSBwYW5lbCBvciBicmlk
Z2UuCj4KPiBUaGVyZWZvcmUgbGV0J3MgZGVtb3RlIHRoaXMgZXJyb3IgbWVzc2FnZSBpbnRvIGEg
ZGVidWcgbWVzc2FnZSB0byBub3QKPiBzY2FyZSB1c2VycyB1bm5lY2Vzc2FyaWx5LgouLi4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4gaW5kZXggZjBmNDdlOWFi
ZjVhLi41MmUyY2UyYTYxYTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2x2ZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9sdmRzLmMKPiBAQCAtNTc3LDcgKzU3Nyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfbHZkc19i
aW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAo+ICAgICAgICAg
ICAgICAgICByZXQgPSAtRUlOVkFMOwo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9wdXRfcG9y
dDsKPiAgICAgICAgIH0gZWxzZSBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIERSTV9ERVZf
RVJST1IoZGV2LCAiZmFpbGVkIHRvIGZpbmQgcGFuZWwgYW5kIGJyaWRnZSBub2RlXG4iKTsKPiAr
ICAgICAgICAgICAgICAgRFJNX0RFVl9ERUJVRyhkZXYsICJmYWlsZWQgdG8gZmluZCBwYW5lbCBh
bmQgYnJpZGdlIG5vZGVcbiIpOwo+ICAgICAgICAgICAgICAgICByZXQgPSAtRVBST0JFX0RFRkVS
OwoKV2hhdCBhYm91dCB1c2luZyBkZXZfZXJyX3Byb2JlKCkgaW5zdGVhZD8KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

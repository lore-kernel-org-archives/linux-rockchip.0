Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EEA4CF45C8
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 19:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2Hk+EaI86L/6Hsqkam2cvR1Wztl/GDEPbA9TtyzRH4=; b=KQp26/fOH+rpe4
	T2yInvJ9sYnPd+XQbYxKnNiN2vQEcT8Gr0yYyfsnz9ZltjzRAD1HT001u7T8XKdS5giCZZYE9i3Lm
	85Klzac55JD00+d/MLdgPo0FPsZNHLd8waUP2gaT03aH3Ae/efn/WsW80gUcNLzz4W7t6Prj4C9kM
	vz29pb7UJN2gtKmH3V5D+ILL4GwZDzhS9HIIaOm40Qr2ueDk00/sQgeIJ623S96wZCF2qYJctrfb5
	6zaAIHty+jDPZ6X2HmMSkUcWvxDJPiw/9vFzF4+1M0eXKEtWBmq2v8mFR9wxF2+g6FhNnSVU0zVda
	FBcSOSQmsryGNIfRbl0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfNDx-00000005xPO-0DQv;
	Mon, 12 Jan 2026 19:05:09 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfNDs-00000005xOD-2l6D
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 19:05:07 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-455dc1cf59aso4096426b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 11:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768244703; x=1768849503; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6JdDCpr5Va6UKBK3UkPIkJuU5AGn3aLM4FqYUEjdpw=;
        b=K2wpzADUYGewqNzRQ5VTk7zYOCNwFVrcyW1+uNJ3IWAhu81lzWtHCRYorCHJ1MCSEl
         hRmdA69Dlu01K4i+xQ8PAjH5EmP1WzZ7VoS350bnX59tL2Kf3osfDMaRZm/rRK/YpGH2
         fZ/RmDn38XiR8K3gDNY06IRCCQeX0xUhIzK5vkjOThWUvJHarQ+e6nTM/90qOVuIs5k/
         5vuSpGTZxN/PaVwRxcT4FQUMRmGI7rfKaHhukm6ODqOr9iLt0kIA45i88wBN8RJ4ZoMd
         +CdejLrtjkeNwneyZpOCq913S8U82SvVhKeuBW1Um8zQyCyb55lFRV+S+NPkmFS/ha6h
         ttHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244703; x=1768849503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P6JdDCpr5Va6UKBK3UkPIkJuU5AGn3aLM4FqYUEjdpw=;
        b=epVz5gK3o2RLClBffm6Ic32poE4tPxDrZa0CrN4H0Pwr+AKJ8V4du9EaHguLLac+uy
         jQ7HyT3o8kXnpW6wIW1MSrpZFLO1vH0iXGht9Sb1HcINyLxE+X9An09SAnPvBLgsPOo2
         1nOhYYx6xGJpOHxAI5HE1bC4MvChOS9+bZhDHU8T3yQRFLJHfa6Y7sjBKZLDvWusNKXZ
         KCnPrm0J8sZxQe3fGvxlWH1yClmlpvCaAgz5ffaVk9+fCOs7K9/ZD9tUYEG3AOdnb20o
         FRBmiiEdwCPmWBN3dceau7wjtJAsMn6wxAdLYwW+2IdsH5164pc56/glXCZc6/rBgkLn
         ruaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJ9Smgb3i1BNCpr81pS6L3K6fD9tfHOBUjuCvvnO1WCE8UTrcbGjkAeQHyb75BgNNZ+X+xKPlYylhVCLeeXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwU4oeZhBWeIfnzrYRzgY1m+/eeiVCPJ2bFGUcVn/ZmPQBWf7uV
	dPmoAIctT/Gwg9HxVs0OExLO+LEdR1GykW2DAOLUVyGQaPjnoZomzUmCMtNbumlkgepx7dx8O9G
	7nzoulGeKKNwp5SssQFnN/o5tq3wJGMs=
X-Gm-Gg: AY/fxX4fyUAvTmLTmxDul/rC+7GUnZlvyB/LaF5pkZxgDZY+QpTkfAMltULnaNxIVzw
	KTUY92lgJncyTngw/v1W0ezAaqURqIVQgE9DNM5gPdqDRp1PXRlDXjaSZknC70aNv+N2SRA3tnx
	af1eWtz+PBMumPuO+REA/5JaMRbMag4QKptIKnkwYWTv6/eYsQFsEH5kRz4LcEHBzKvpWIiLW9U
	h+h2MUh/ODA9UtCpkucyIPcVPwujF76A/CNcafGFRCu+v4Wm/4EG+DN79bxDijohsQHHf7Xht2A
	i12bK2z6mcXss3WUYAntrLHzaT8=
X-Google-Smtp-Source: AGHT+IHHyYehd5mDk6S/HFO61FhRHsv9zqO6J/OOUvbop6YA1ncswgg4NWPhmsAGF3o48IKByactGMvO6pcP1yVqREg=
X-Received: by 2002:a05:6808:1311:b0:450:b361:f48b with SMTP id
 5614622812f47-45a6bec253fmr9406966b6e.56.1768244703218; Mon, 12 Jan 2026
 11:05:03 -0800 (PST)
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com> <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
In-Reply-To: <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 20:04:51 +0100
X-Gm-Features: AZwV_Qg8Eexu6GQgEzbvpbPVbdo7RYBJ0P9SC7lhZliBG8Czm_wfF3LbmThMdSI
Message-ID: <CAGJh8eCw_d9WwEh37_7fp-pxkNvTYDetTiDue-adby=pskqxKQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	heiko@sntech.de, ulf.hansson@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_110504_711996_5ECDFC2B 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMjozMuKAr0FNIFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+ID4gRXZpZGVuY2Ugb2YgdGhlIGZhaWx1cmUgaW4gZG1l
c2c6Cj4gPiBbRnJpIEphbiAgMiAwMToyODowMiAyMDI2XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3Bl
ZWQgKHNsb3QgMCkgPSA0MDAwMDBIego+ID4gW0ZyaSBKYW4gIDIgMDE6Mjg6MDMgMjAyNl0gbW1j
X2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gMTk4MDAwMDAwSHoKPiA+IFtGcmkgSmFu
ICAyIDAxOjI4OjAzIDIwMjZdIGR3bW1jX3JvY2tjaGlwIDJhMzEwMDAwLm1tYzogU3VjY2Vzc2Z1
bGx5IHR1bmVkIHBoYXNlIHRvIDIzMwo+ID4gW0ZyaSBKYW4gIDIgMDE6Mjg6MDQgMjAyNl0gbW1j
X2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHoKPiA+Cj4KPiBEb2VzIHRo
aXMgcHJvYmxlbSBoYXBwZW4gd2l0aCBhbGwgbWljcm9TRHMgb3IganVzdCAqYSogbWljcm9TRCBw
ZXIKPiB5b3VyIGRlc2NyaXB0aW9uPwo+IEhhdmUgeW91IGV2ZXIgdHJpZWQgdG8gZGlzYWJsZSBT
RFIxMDQgc3VwcG9ydD8KCkkgdGVzdGVkIHdpdGggbXVsdGlwbGUgU2FuRGlzayBFeHRyZW1lIGFu
ZCBVbHRyYS4KWWVzLCBJIGhhdmUgdHJpZWQgdG8gZGlzYWJsZSBTRFIxMDQuIEFsc28gb3RoZXJz
IGZvciB0ZXN0aW5nLiBOb3RoaW5nCm1hZGUgYSBkaWZmZXJlbmNlLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

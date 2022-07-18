Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 443E4C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 20:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6HgcQi593wRYf69uEp/m+Xs0B/sncSVX58TEvceAMU=; b=RAMDz8U1uqiE70
	b2YZ2vdnAn/8G3DedlRykPUFk6/R2LzGTzUuATjVKyLj/5vphi1YYfLNxL6WMfcsgT3C65gMh1GOD
	Brf19hDbfs2GhyOFEHUgncukh8BgunPmUhZq5Ajoa8miEDcq/xeiPoTvvie4iYgJOrtNin4STK7uX
	evGbXOtUaIrAGxGr0QTIRRb3yO/coUzK8WPv+qeG/OqJoHdr24uQwIFDdXxtJqPqW4CbL/NS/PU41
	dX1A3xrJAdjD1zPa+ul1/w7BAzwT18ON9C9Nu6e5/xkR3UcyLFtDGT3ZC4JTdvz15jdeZ/zt8qIL4
	wuYJhhPAGqm8G72HJYbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDXpn-001LYo-LC; Mon, 18 Jul 2022 20:59:19 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDXpc-001LPL-5C
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 20:59:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id va17so23643265ejb.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 13:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=G4xt1tsCAE5v1aPuO5mOncHkPCmfTeAk54UxkIc2Qmo=;
        b=aZZxh1rhvlV3iS5yeU8mQplf8hQFrCKIoPgu4ncOEANuQNQ2S1+jZVJSYliXp3IZZ7
         f4bmNDrHEYEKmqnJ77+sCdX769dLBdO32ogqumghD9tv9lRmIGBQ/3R/975HzecAD1SE
         IQUdoGRzZCS/brdX93651zSNgJNc0i/wmT8gGL/OwvZ/R8usWYb7M14KTC0Sbc5x0O/H
         Z7I3DgirWW0Rzsbh5tAfFofYBXmrCUg9ahFQUF35wcMctolakdIc4iRKKRQF3dLixdkw
         /hsy3QeG0XgwIZD0MLxKIaTHOx8z1hf6dn/SRvezJj2n3xvek+8EYFKm6sPXgeepEgLK
         StGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=G4xt1tsCAE5v1aPuO5mOncHkPCmfTeAk54UxkIc2Qmo=;
        b=X4G8p2G+EBwMG2bglEDfBbwR/whsVZt2CsVWb2vPf/f1N1A6iKlkgk20tXzqmNLLWD
         WC6VFNsUHK91xPEjKDsbU7zm/fRgoH2PiYdItlukCP/keBEYZLthaZoCv1aNKqlXMibY
         zz0pv33z7Lz8cUN4aw9GybTG5Ml3u60THZD9ImEowIgSw2BzxSs86OulMbuBsrkwDIBq
         uFC6L72k23vCpdPGp85LXGOYlQwVwvPgpRrNSv0jRfLB/tMb/yVFpGmJNuceM5vjwXXI
         s0qEQ71n4VaGpod2EEGmFmeB71bs5ayeBt3PP0res2pE5dlm5/dzuNEd0B3/MEsdwusB
         fsHA==
X-Gm-Message-State: AJIora/wRaCqa3t9/4omh8Lpe3IlN9wesujBMzVfCKsk/12WwRf48C7b
	37hge8GembUQGFwl/Jiwmwwblg==
X-Google-Smtp-Source: AGRyM1tVB4vvb5f/bKXAFwDhyy9bAciaV/Gd3r6IsQlbV9u1J3/xCyjaIxTW/riej87bVuuJQTaAPw==
X-Received: by 2002:a17:907:2c75:b0:72b:3431:2a0a with SMTP id ib21-20020a1709072c7500b0072b34312a0amr27796230ejc.234.1658177945709;
        Mon, 18 Jul 2022 13:59:05 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id n9-20020a17090695c900b006f3ef214ddesm5814209ejy.68.2022.07.18.13.59.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 13:59:04 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3399-nanopi4: Fix voltage
 regulator config
Date: Mon, 18 Jul 2022 22:59:03 +0200
References: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
 <14EE0603-99C5-49AE-BDDB-C22C5B1924E2@kohlschutter.com>
 <7AFECB02-5A87-43DD-8161-6068720AB8E3@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
In-Reply-To: <7AFECB02-5A87-43DD-8161-6068720AB8E3@kohlschutter.com>
Message-Id: <C8ED2EFC-A7D5-418D-A7D9-E1D37B5BECFD@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_135908_243360_C739B5A9 
X-CRM114-Status: UNSURE (   9.06  )
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

QW0gMTguMDcuMjAyMiB1bSAxNDowMiBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxj
aHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT46Cj4+IAo+PiBBIHNlcmllcyBvZiBpc3N1ZXMgZXhp
c3QgYXJvdW5kIHRoZSAidmNjM3YwX3NkIiB2b2x0YWdlIHJlZ3VsYXRvciB0aGF0Cj4+IG1hZGUg
aXQgbmVjZXNzYXJ5IHRvIG1hcmsgaXQgImFsd2F5cy1vbiIuCj4+IAo+PiBXaXRoIHRoZSBwYXRj
aCAicmVndWxhdG9yOiBjb3JlOiBSZXNvbHZlIHN1cHBseSBuYW1lIGVhcmxpZXIgdG8gcHJldmVu
dAo+PiBkb3VibGUtaW5pdCIsIHRoaXMgb3B0aW9uIGlzIG5vIGxvbmdlciBuZWNlc3NhcnkuCj4+
IC4uLgo+IAo+IFdhbGtpbmcgYmFjayBvbiBteSBjbGFpbSBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
dGhhdCBubyBmdXJ0aGVyIHBhdGNoZXMgYXJlIG5lZWRlZCBmb3IgdGhlIHUtYm9vdCBpbnRlZ3Jh
dGlvbiB0byB3b3JrLgo+IE90aGVyIHRoYW4gdGhhdCwgdGhlIGFjdHVhbCBwYXRjaCBpcyB1bmNo
YW5nZWQuCgpUaGlzIGNoYW5nZSAocmVtb3ZpbmcgcmVndWxhdG9yLWFsd2F5cy1vbikgZG9lc24n
dCB3b3JrIHJlbGlhYmx5OyBwbGVhc2UgZGlzcmVnYXJkIGZvciBub3cuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

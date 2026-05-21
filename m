Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C747CD4F54
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 00:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7dm+fqhHjNVpM6E8DkKeYLPLhUllzk7himvBrifdgw=; b=Jjib4PLgKHOy/C
	iYhOVQ/++zcRtFMXOWQ1IuUlxTxopaWZLPzRCaHAqWVtQlUxM4hnr5FoIULbBI4jAoQjaNlhzTlF+
	EXEz/u9lCgUXxoerbw4xfPZapZJ3J0rmBXqPavsivTmkijynEqaAv3HJ9F5t2NA/K5XKhmpeNXbgT
	pBiKknZpIKQQBiQLgP/MJ4w1EoKZNPJgl8bRrl2ZVGPz83i0y86JX0+RI7uIKZh+QZgq84gGthUIW
	j3Ot8lBN8ad02zRgtkoSUHFkdIshwIcQzuwxxqdr7aNCzPCdIO1+J1JCzlQGeyoQzmohQhCWU/YG3
	t68HWWKKws5N5x2SVy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrjn-00000006K3h-1IwF;
	Thu, 21 May 2026 00:58:11 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrjl-00000006K2t-02Fz
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 00:58:10 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-7b37d84a6b3so49726017b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2026 17:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779325088; cv=none;
        d=google.com; s=arc-20240605;
        b=hDCFCMR2T4Et5JALB/VDJNwgvZX3ZyD87gTBrKGRQoFLvRmL3+VNDbZaPua1dGfB7I
         9aL4IYXUJEx7iJDqgalWslJ5wZxi/NW+ILifErg83Mf3aZ5XX5FVhf3IVltV+jueqpwo
         cOeCQqti13YFjUjnz6Y9mnUHePQaK5z/xqrgBTNyRranSU0FYOpN+DLZtAyG2ggam2ZE
         ZmAmKnrILgDyv+E1VJrivtGeONCoXIJQ71YKTQeT3mEU/1Jk81/JHTTQxhVHgA80N9zw
         ZCovAHbTCOqZA/LNbaSeURUZ8bpvGnM28fpKTbJ2VBmmSe46p0S2rj2XQD8iv4cNzPDd
         6QHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=W5F4HpHZPdS7RM8VbkQ1+0+NF4PdjhH21V3y/145Cyk=;
        fh=7hnhFXqLnEzKX9IWOyGMDsvbmmHokGa1/hvt0TCbiCA=;
        b=a54tZE+Hyfiug7UnNdDikySJRp/gGmXWAWnN0NE0Wmn7YMshU86C+e8AGfJ/LUvGoB
         /MThdAtmiWZKbLyelkLjvZcdfuGfSJKaf23NdJW+PM9JcGTneM7IfhGdFet6hJHEgGWh
         QPDJddw33uTA3MrMzQLwIuYULaJuuLwiWcbo1iMPChNmCmC9mPcWuQApy+ewScGxjjGS
         AquYyY4XaC7HTJaNcEgo8461E2zaJVOd9gl81KKc3P+47CYPs0JCJEOQAxN1uarC1fc+
         gTNte9LsYnv7cxNdA6VGLx9wDOEp/BInuJXbZJb1hezDDGudZ97bV0/9G2S8+oJ0nNYE
         tMQg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779325088; x=1779929888; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W5F4HpHZPdS7RM8VbkQ1+0+NF4PdjhH21V3y/145Cyk=;
        b=U7ieBbaNTacXEgSIAr6dnNR7Y/DDkZ+gLucGkWLO3tLc56jaAe1QkL0VtRjUKWcMiU
         wC4qFmMNgJDVwFbOMrZ9aowx0iVqb0Xi4I4gUrd81bEuUEr/i/rP4cp6iTXpABOnyDp3
         DeZLaHkYMlsO3+fKru0WFSpfSGJog/y2Pv3oEtYJ5diXQI8hiEhXzXRthxdTUiNX6ZrE
         EQ/Fv+ANmDaUrRvBVeH4CsQ3aBQ3zy2PcjQpVir4ReHJ7XW2W8dHK9AvXxpynaG4kOV5
         TKYWcR6cRFfqnsCdlGibW+VZ3EwfiE0Rd6DFy1cYpaI4ndOIhciwWblP4qKclIGtsona
         cV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325088; x=1779929888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W5F4HpHZPdS7RM8VbkQ1+0+NF4PdjhH21V3y/145Cyk=;
        b=oW9q0R1quXgH7YC48A/toIT/iewG6st+GFOw/z9YF5HAtAZbQK9EqwcvgcERCJmcUx
         Vm+KiHU9xsB2xCAjchDr/G4a/cUCUIcK3Rb0LxAYFNFw7h44q1u/BkwZepclYh6c7xzm
         Pr2Ru1R/RvM8d5ueMTkmBrcpmHErCF+s/ajNVbn/R78VE5dxjJaq+beh2udTByldeTId
         LRhcNXBSborrZQuzPNsQTydVyjO+vbNrfT7SzzdR9yxIUZRXQg88p1d093T4DuCL5/qF
         4M2JyJqHYvMsmmqN1AmCdszmwH8Zio2TJl+bE+k+A/dRFk1MWw5TRSQMkog3ZOZEWVIQ
         xULw==
X-Forwarded-Encrypted: i=1; AFNElJ98YsWMSdldOArDNcChzyiOCBQVLGVAW4vM/budMHKJKQ24ttdLMT6CfOaS1qtbNnpBFfDXQU2rwsbZHPDmiA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwX2nDbtmt2CHHxV5NIgVsJV2ub6TYFW6Bt+WpiZ09ApS9n8a9D
	r9qeToklfaxRcG80AR8H2GizxUu8g/c2xywDwpJBfIjW8vV7NIeQbT0c+wcWWKb+y5F8r+GV+Z2
	5eOUBRa8GN165HI4h2sL1LBwUhN+bAAI=
X-Gm-Gg: Acq92OE0NCH0ko2bTCmPwvJT1KnKgpeJNODcurHetMQHmrY2HeJdUW+BsRgdLmuNHhu
	yTBM7RcZ6865UujTpV0kjlXI197HBHcyZcYaeX7eXgk06MDp9DEom2bcKRgcihc+QKzGhKKjD8d
	CY1eh3CkclOAjlVFUXnkS2r666KUt7U1d0D8jdT6ERzOMhWhJTfLAXS6vUsXisFE86Hwb0u7mCv
	mE+fHCZfsDPJyKeZbzNOLme3wS4NQzhoWGBcOWiG0Kox/6t06E+kX1KEJalxn7/h9pBluAnnKta
	Us6pKhMkXohqazxR2G7bVlNcgfrGPRURrJTQ
X-Received: by 2002:a05:690c:620e:b0:7b1:fa45:72e3 with SMTP id
 00721157ae682-7d20aa9cabdmr8852397b3.4.1779325087719; Wed, 20 May 2026
 17:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260513181922.2075438-1-michael.bommarito@gmail.com> <67bd72ba-6dab-4bdb-a391-27545e287e94@collabora.com>
In-Reply-To: <67bd72ba-6dab-4bdb-a391-27545e287e94@collabora.com>
From: Michael Bommarito <michael.bommarito@gmail.com>
Date: Wed, 20 May 2026 20:57:56 -0400
X-Gm-Features: AVHnY4LiZldEGrXYzyoGnIuTwsQ0SpJxkVwOBE92FWCPOBOhNuOGZvffXZndLp4
Message-ID: <CAJJ9bXxR5U=33RSzB5uFEZv3ZL2JE=UjK7ZToxm0ewSqyu5GBw@mail.gmail.com>
Subject: Re: [PATCH] media: rkvdec: hevc: cap EXT SPS RPS control counts
 before descriptor assembly
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_175809_053430_5B757477 
X-CRM114-Status: GOOD (  11.82  )
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

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgOTowNOKAr0FNIERldGxldiBDYXNhbm92YQo8ZGV0bGV2
LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IFN0aWxsLCBkaWQgeW91IHRyeSBqdXN0
IGNoYW5naW5nIHRoZSBjYXAgdG8gNjQgKC5jZmcuZGltcyA9IHsgNjQgfSwpID8KPiBZb3UnZCBu
ZWVkIGEgdGVzdCB0aGF0IHNldHMgdGhlIGNvbnRyb2wgZnJvbSB1c2Vyc3BhY2UgdGhvdWdoLgo+
Cj4gSXQgc2hvdWxkIHJlZnVzZSBzZXR0aW5nIHRoZSBjb250cm9sIGlmIHRoZXJlIGFyZSBtb3Jl
IHRoYW4gNjQgZWxlbWVudHMsCj4gdGhlcmVmb3JlIHRoZSBoZXZjIGRlY29kZXIgd2lsbCBub3Qg
cnVuIGFueSBmdW5jdGlvbiB1c2luZyB0aGUgY291bnQKPiB2YWx1ZXMgZnJvbSB0aGUgU1BTIChT
ZWUgIHJrdmRlYy12ZHB1MzgxLWhldmMuYzo2MDEpCgpTdXJlLCBJIGNhbiB0ZXN0IHRoYXQgYW5k
IHNlbmQgYSB2MiBmb3IgU1QuICBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQKd2UgaGF2ZSBmb3Vy
IHNwb3RzIHdlIG5lZWQgdG8gY2hlY2sgYWNyb3NzIHRoZSBmbG93IHRob3VnaDoKCjEuIFNUIGNv
dW50ID4gNjQKMi4gTFQgY291bnQgPiAzMgozLiBudW1fbmVnYXRpdmVfcGljcyAvIG51bV9wb3Np
dGl2ZV9waWNzID4gMTYKNC4gZGVsdGFfaWR4X21pbnVzMSArIDEgPiBpCgpTbyB3b3VsZCB5b3Ug
YWxzbyB3YW50IHRoZSBzYW1lIC5jZmcgYXBwcm9hY2ggZm9yIHRoZSBMVCBjYXA/CgpUaGFua3Ms
Ck1pa2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

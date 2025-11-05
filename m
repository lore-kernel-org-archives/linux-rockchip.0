Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF80CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 18:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeeRcbEObwrnBACDsGPMzb73e6UuTdKFPY4SRZEZC1k=; b=e4sesd6LosoNWd
	P2UC3tDg73QhtAQ1ByfemSa3QzONdIrNigEtj+TtZmTKdasE1e33Imcf84wyDr0Cuj7OV0WelHEGF
	qhzggnZMSFLaVU6eP6MePMThzRG/Y7S/NZ4trxo3iKLI/3YwlBSwFdKufDLLf/d1o61hkAWYZwGR4
	a1de+iS6jzfvCct2Vcn1eTXRLaPgbABAT+Qm7Kn03u/hNg983+kmuMN83j0AhlkNx7WZiH15wJuS/
	Gbo7zFH4FbVXMvBdiPIjtXuTNzoKUZdpATIrJC2B2T1IMwdUM5B99DkjhAsseawRyVgKW8ymLZze1
	5dlOujSCTeru/EPeUUgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGiE2-0000000EEpL-49g6;
	Wed, 05 Nov 2025 18:27:18 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGiE1-0000000EEov-0EAK
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 18:27:18 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4298b865f84so76177f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 10:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762367235; x=1762972035; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bbc91cmnOIWb40sR8vO2a7ivblSQNbbG7kvBVDDJucU=;
        b=Yj9oDmK7oZRwmeIxwrgJmVXSdXVNj8boq4tGfMOkbPWa1WdeB3CKMUvM8zOO2Be8Jj
         5mwk72t49oRbdpqyEHIKYnqLnVEtx3yUabb2Q5jgYUg845GIzA0w5licBjyKpL0cM+KI
         iV7OUhrAmeKeQ7OXsvtsRSMukt80uLabxZRgcsxt/r21AU1N0lpi7+tUzvwCgl2XU0a8
         yov0/ax6iNrhZiT3ni/n1i7tgTj5JfJ7H9NNRR+IoZi3CtLeeE0jwfqsUN/MuMw99WWl
         8Vof/q2m0vpoLHzcODHzBfb9rnNH/YEkwumjulm297NSBIhi4wi+rcJ9rES2czq3JQUN
         1znw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762367235; x=1762972035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bbc91cmnOIWb40sR8vO2a7ivblSQNbbG7kvBVDDJucU=;
        b=FBJ/HWIvryW2niR31ikvDUhSDC1HKJFkisnrTThAaX1nnNbHfdvCldJpUGcIXlzRUC
         IDq3GJNKpzkL7P+nk/zRj+Y23b3He/N05FtHDAj2vUrx8lEZpDe5Z9K7EyIh+cFyCd6A
         kdBCOqPv90llidn/sRSgl9skFoJ8HyHD6zdp6dtPaDbE2hdIy42XW5uVPy9iFcJqtbiA
         BrQlWTwiFxGMtUe4xqT+A2uLjsZylYgyrPvRwYw0cfi89xS2PAzpx5hfQ3v7blwKbh7W
         0XbJmk9fJmKeRVcRvl7nEO13foiFhGvTRi4HNukDOjI7jR9k+NULIIuOIrcUm3XGZFi2
         UXSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAPrbuqCYQzgUe2NN9rbSodGN10pb6lgoqPqxHOKT5N9dxl+swZUVmYApwqrZ0bif8swkMT5T14s07rtBuSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YydAxQwQ0QlifeGbE67BfyxgyywXCLlJMM19y7+BeTsdrgJhPSG
	4doxBxxN2PY9eptM48dprPKfDpMLytqKZ+x71Tz3T4EpEAFaYmc2I8hTNuQeLPQNcwBvLVHP7MY
	P2P+GSwh+GYsRBGVsSlVwZyK5cZxe1Lo=
X-Gm-Gg: ASbGncuTgwOP0Dpd5pdPtxdIyxFY1nZqyHEweQM/nN18Fb5rgv6p+Jx97Xi/wiJ1kSq
	Dj6Sp+9JAanGXQItJ447OsSl6Ahde/LGyS+LlLShKdiqzEw1n5suL39kR+rPjpzJDjo8bgJ8AB2
	wzEj4eMzYTxjGpxGahElFEzl09rywLN3mDm2mzgXYm4BMuU8ms7FVL7I0NU+XECuLXhbhMM12ET
	EweXSUs4RfX+T6w02BOor4qNBCZEUwZUvZArpoSLKbNaj+ZmZhBBdf6zYLPUHyIOoVVTsBzCOKD
	DImjYH/7tMHRX638GGtpMFgZRdE=
X-Google-Smtp-Source: AGHT+IEWTBghlpzGR140MV37zalzZx95XG9FR6209AD+bKFmXcVea8c+q4MylVOG3MhHL2cMabNwPshiwbP0KAaGMiQ=
X-Received: by 2002:a05:6000:3111:b0:429:c450:8fad with SMTP id
 ffacd0b85a97d-429e3311ab5mr3772138f8f.53.1762367234998; Wed, 05 Nov 2025
 10:27:14 -0800 (PST)
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
In-Reply-To: <20251105051335.17652-4-naoki@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 12:27:03 -0600
X-Gm-Features: AWmQ_bnhAYEPFNfM6TJ98WM-ObxtabU9d1JG0HBHmZ60SB08IL3ZfsQM0e0yhic
Message-ID: <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, i@next.chainsx.cn, quentin.schulz@cherry.de, 
	dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_102717_104118_DC190D51 
X-CRM114-Status: UNSURE (   6.76  )
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

T24gVHVlLCBOb3YgNCwgMjAyNSBhdCAxMToxNOKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJh
ZHhhLmNvbT4gd3JvdGU6Cj4KPiBUaGUgUmFkeGEgQ001IElPIEJvYXJkIGlzIGFuIGFwcGxpY2F0
aW9uIGJvYXJkIGZvciB0aGUgUmFkeGEgQ001Lgo+Cj4gU3BlY2lmaWNhdGlvbjoKCj4gLSAxeCBt
aWNyb1NEIGNhcmQgc2xvdAoKWyBzbmlwIF0KCj4gKwo+ICsmc2RtbWMgewo+ICsgICAgICAgYnVz
LXdpZHRoID0gPDQ+Owo+ICsgICAgICAgY2FwLW1tYy1oaWdoc3BlZWQ7Cj4gKyAgICAgICBjYXAt
c2QtaGlnaHNwZWVkOwo+ICsgICAgICAgY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNCBHUElPX0FD
VElWRV9MT1c+Owo+ICsgICAgICAgZGlzYWJsZS13cDsKPiArICAgICAgIG5vLXNkaW87Cj4gKyAg
ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsgICAgICAgcGluY3RybC0wID0gPCZz
ZG1tY19idXM0ICZzZG1tY19jbGsgJnNkbW1jX2NtZD47Cj4gKyAgICAgICBzZC11aHMtc2RyMTA0
Owo+ICsgICAgICAgdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+ICsgICAgICAgdnFtbWMt
c3VwcGx5ID0gPCZ2Y2Npb19zZF9zMD47Cj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gK307
CgpXaGVuIHVzZWQgYXMgYSBURiBzbG90LCBzaG91bGRuJ3QgdGhlcmUgYmUgYSAibm8tbW1jIiBh
bHNvPwpUaGF0J3MgaG93IHRoZSBSb2NrIDVBLCA1QiwgYW5kIDVDIHdlcmUgZGVmaW5lZC4KCkpp
bW15CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA8CC3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysLEVxqyWQWvX1GZMW1R/8+HgJKKzLI3RGG75yGlfWk=; b=R3d4/yp3+OEFQw
	jP5GYYkt8aSxnNS+ZnwvgvM3zkC6IAobbC9t1GUrPw2+32LOH0TKg4/NDKau80S7CTl+ruvGcu8n9
	IISRRsZr/kNw/tGCUawB8ZOgsgjaqq0rgqNqv8qXHwAbQr+FrDGCA9sM/8KlK0PNBH3MUJQ+o3Wky
	IfN+dr2pzGwWZifyq6/teBBauXVQ8acuJHADI/JqbgmSEaEunRrWkmqCQgYmXIsvvGWtmqMpmLPM5
	qT2hrcWj4wzkruavz4iFUWNf2lJAfJ8L/D3EzP4TLgzeQ9IpB1p2WoQVSJNeT0MPnO497s3Wu79q0
	lD2wh8Nm+KZXWJvELyIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQlci-00000003SCB-0VfW;
	Mon, 08 Jul 2024 10:29:32 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQlcS-00000003S9A-3wox;
	Mon, 08 Jul 2024 10:29:18 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a728f74c23dso435807366b.1;
        Mon, 08 Jul 2024 03:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720434555; x=1721039355; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UkOFXWGuw2BgLaxpDmUV6yQ/P5AbU9pHwMHoCnn9EOU=;
        b=F30kfdUYZtAMOTACvXQl/pgS4E1BeCLe5EAk5jRndx2tSYdFw5dIdaLNBQAqp02nF5
         eM50AgkMs3nh3oAVVsLK5lxnS2u2NxVcaOO/l4uhV7UUlbohZW4OLcMslHI+PxmoQeru
         j98XDmvs0FarS06WiawGJwySVfjFvEp6OPiLjWk8JFItcNueTNwMRQcDx66CGE/obeMy
         vsKzc9Br/QtTiX+zQl56O5AVyyRyvDpxTA1cSQY8al908mRPvx3U2nod4QuV6PCiEYBU
         Gv0pp6MuD5825t4Zbgu4K7VRrPABIm3A4Y/7IGfPBsOGZCuXYviLfyMkbL/qHS2Tjbwe
         XbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720434555; x=1721039355;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UkOFXWGuw2BgLaxpDmUV6yQ/P5AbU9pHwMHoCnn9EOU=;
        b=rlayI72zfTQ0HW+a9gZ/ZlrMIAp3Mvx7UhgD0FkBmRNgDShugy68wUZDKpwmeonjwe
         j4ovr+/yvDJLOOSA/dvJQOpZrmSjPso5h40dPs46FsLVOPBjcSL3SvfVKlAIBm0ODQYw
         FUivjpQi6hNPh7eZjLnHnv2eiFNa7O/wvwTz5PcN/OT2EtAoeHE8KhuoilozAa/oM2vW
         Xr4V7av6Czc9EF0wcnvFxHqvRZI1BIe2f1OzSBdaqCkSH0pB4F3QpTVXqfSiU5invJuS
         KKY1MxUMeKL6495PlEa+k+5SyimIoBSUcaZkHC59UWU+zzeOxWvKb0SjF+aXtjdwbYOx
         OKWw==
X-Forwarded-Encrypted: i=1; AJvYcCWSVAaD97GDHndoKlSnTxXoLjvSaR74tqLIP+W9qPU1Fr1fgvVHMpDkJb5/SoscRNerpbmazvfJ3jNaM4KJmxU7US9QJv3n1T6Bh7LxSmjYf+FcGKsh0w/rTkKycDXHp5c9PJOB5RAvPNNVC/yD/UTKXWnszn6TlxI=
X-Gm-Message-State: AOJu0YwkN1/Hu1gH/drYqEcVzlj9r2+WwvQO+PNhDX4BYdNvPhiWPpEG
	l1oGSK7EJXwB1Pc4vwAZXCmiN5bqQkZaxteZw7Xi39XGy3X+QwUL
X-Google-Smtp-Source: AGHT+IF8QzD8gF4amt85JoD0kaL9nDjpaIsKJ+OHLgAO+stKLPNnAyIyw9LcMeIssI6YfBg75oM6JA==
X-Received: by 2002:a17:906:3b12:b0:a6f:4fc8:2666 with SMTP id a640c23a62f3a-a77ba70e48emr793543766b.44.1720434554514;
        Mon, 08 Jul 2024 03:29:14 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77cbb3ef7asm292277366b.74.2024.07.08.03.29.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2024 03:29:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: [PATCH v5 0/8] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CABjd4YyY68dcA+Z0nWAUq1UmVLeLw52Pg6NGpzcW=WMNX8ioqA@mail.gmail.com>
Date: Mon, 8 Jul 2024 12:29:12 +0200
Cc: Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Message-Id: <B28C503C-B1A6-49E4-ADF0-82FA9A412D40@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
 <0418B5BB-6759-4BFA-BE6E-F5C7FA0CBF4F@gmail.com> <2236519.ZfL8zNpBrT@diego>
 <1E6ED98C-BD49-485D-9FE9-9E7CAEDB4564@gmail.com>
 <503ECE3A-CA1C-43A7-AEB2-C0000A930B3A@gmail.com>
 <CABjd4YyY68dcA+Z0nWAUq1UmVLeLw52Pg6NGpzcW=WMNX8ioqA@mail.gmail.com>
To: Alexey Charkov <alchark@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_032917_002155_B47F3144 
X-CRM114-Status: GOOD (  12.68  )
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

QWxleGV5LApwbHMgc2VlIGlubGluZQoKPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBBbGV4
ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHcgZG5pdSAwOC4wNy4yMDI0LCBvIGdvZHou
IDA5OjU5Ogo+IAo+IEhpIFBpb3RyLAo+IAo+IE9uIFN1biwgSnVsIDcsIDIwMjQgYXQgOTozMuKA
r1BNIFBpb3RyIE9uaXN6Y3p1awo+IDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3cm90ZToK
Pj4gCj4+IEhlaWtvLCBBbGV4ZXksCj4+IAo+PiBBZnRlciBzb21lIG1vcmUgdGVzdHM6IGlzIHZh
cnlpbmcgZmFuLXNwZWVkcyB3b3JraW5nIHN0YWJsZSBmb3IgeW91Pwo+IAo+IFllcywgaW4gbXkg
dGVzdGluZyBvbiBSb2NrIDVCIGl0J3MgYmVlbiBzdGFibGUuCj4gCj4+IEluIG15IGNhc2UgLSAx
IHBlciBmZXcgcmVib290cyByZXN1bHRzIHdpdGggYm9hcmQgZW50ZXJzIHN0YXRlIHdpdGg6IGNv
bnN0YW50IGZ1bGwgc3BlZWQgYW5kIG5vIGFueSByZWFjdGlvbiBmb3IgY3B1IHRlbXAuCj4+IElu
IHN1Y2ggc3RhdGUgLSBJIG5lZWQgbXVsdGlwbGUgaHcgcG93ZXJvZmZzIChyZW1vdmUgdXNiLWMg
cGx1ZykgdG8gZ2V0IGZhbi1zcGVlZHMgd29ya2luZyBhZ2Fpbi4KPj4gV2hlbiBib2FyZCBpcyBz
dWNoIHN0YXRlIC0gYWxsIHNlZW1zIHRvIHdvcmsgb2sgKGZyZXF1ZW5jeSBzY2FsaW5nLCBldGMp
IGV4Y2VwdCBmYW4gaXMgY29uc3RhbnRseSBmdWxsIHNwZWVk4oCmCj4gCj4gT25lIHRob3VnaHQ6
IGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgd2hpY2ggdGhlcm1hbCBnb3Zlcm5vciBnZXRzCj4gbG9h
ZGVkPyBJIHVzZWQgc3RlcHdpc2UgaW4gbXkgdGVzdGluZy4KPiAKCnRoaXMgaXMgZnJvbSBzeXN0
ZW0gd2hlbiAtIGFmdGVyIGJvb3QgLSBpIGhhdmUgY29uc3RhbnQgZnVsbCBzcGVlZCBvZiBmYW4g
Cgpyb290QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90aGVy
bWFsL3RoZXJtYWxfem9uZTAvcG9saWN5CnN0ZXBfd2lzZQpyb290QG15dGgtZnJvbnRlbmQtMzYx
NGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTEvcG9saWN5
CnN0ZXBfd2lzZQpyb290QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9j
bGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTIvcG9saWN5CnN0ZXBfd2lzZQpyb290QG15dGgtZnJv
bnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9u
ZTMvcG9saWN5CnN0ZXBfd2lzZQpyb290QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBj
YXQgL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTQvcG9saWN5CnN0ZXBfd2lzZQpyb290
QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90aGVybWFsL3Ro
ZXJtYWxfem9uZTUvcG9saWN5CnN0ZXBfd2lzZQpyb290QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRm
MjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTYvcG9saWN5CnN0ZXBf
d2lzZQpyb290QG15dGgtZnJvbnRlbmQtMzYxNGFlMDRmMjNmOn4gIyBjYXQgL3N5cy9jbGFzcy90
aGVybWFsL3RoZXJtYWxfem9uZTcvcG9saWN5CgpkbWVzZzogaHR0cHM6Ly9naXN0LmdpdGh1Yi5j
b20vd2FycG1lLzVkMTJkZjM4MmNlMzUzMjA1YzZmZjBjMzdmNWI0NzkxCgpsc21vZDogaHR0cHM6
Ly9naXN0LmdpdGh1Yi5jb20vd2FycG1lLzFjNzRiM2JlMmNhYmU4NTM2NmYyMjc1OTRkOGEzZTkw
CgpwbHMgbGV0IG1lIGtub3cgaXMgdGhlcmUgYW55dGhpbmcgZWxzZSBpIGNhbiBwcm92aWRlIHRv
IGludmVzdGlnYXRlIHRoaXMgaXNzdWUuLi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

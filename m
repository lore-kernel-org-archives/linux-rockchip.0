Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC0BFE77197
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 16:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eb2bL/ykXMX3GZAGHMDJtzQ5YcuD/sYZSp2/Pt4rYRw=; b=sZ4JN34VefwHvw
	nykeXhamadG/6ZfpR65yU6Y+jOF5pIjdMJCW56zQCuwg8cawYFLZGJCNvjGtQXQkkXPNTy6itGh5H
	3SlqSSpQSUGWY+BYYrYclry5fA7iwGT/LiDTosxy3hwkV35A368Ym2r8CdMN8H2OLhWDh5WbSX48o
	8qn1wZUxY20lnMH7abFuJ8oXMeRKAki/9cezhDJ2026b08Ug27LsuNK/Z2YGLIO/0wpCVsAsADJ0p
	SwbAk37CCO3dUe6zgUalLBMhCIYbloVkQlKAZ+ifBHNo8BVWJ8//m5UHlkjayROLhCvGMRph5kOTb
	tqGA+TBE02jwqwPAtpWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUTT3-0000000H5pk-3w6o;
	Sun, 05 Jan 2025 16:27:09 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUTRr-0000000H5XU-0liQ;
	Sun, 05 Jan 2025 16:25:56 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2f4409fc8fdso16571079a91.1;
        Sun, 05 Jan 2025 08:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1736094354; x=1736699154; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hbu7641CeG8xNiROLSccwQDpo4bojGzR/nTssY8hmOI=;
        b=ICaozO5HHcgTMUVB4QF6pHUZVHu1DRKNpRZfwWT7QD0bcE5jcSnpYGzcUns+TtQHA8
         aj2W1t9lzamT/GP38KFwxZhsvZfU9XUZRYB4awlQRncSOW+m5TYcNC2ZLr3EtuuVCS4c
         I1cNMxCt3qTs4+OKnuGiH/FAVWZ5QCAvkpoaRTPZVqSiQ5kmEvcEGMbsdTFcgDcbnES9
         vL1RdeveM7EznCHYcjcKkBjn8oz3eVWO/CgNuRrDmZngFw6lZBxFJyp4UrihMnD3PLMx
         DJOeX1PEemJseHMzLJ2VKCt/PSVnRhFGfEH1B6wMPdNh6RSueUfmrQ8En1Q2Iemcgmbk
         s6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736094354; x=1736699154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hbu7641CeG8xNiROLSccwQDpo4bojGzR/nTssY8hmOI=;
        b=l0mo+rMYuI4shJAqyvwZq3oUDvPZdf9yYR5ldzMk6oGznm7CAVkaj0y9f9ctTOHme4
         Eyh2s4Y4Op+gBE3YjzuKxuPT6UfLBf3p067F0G/u1WQVhY06Pr1kP9i7YECGpX+psKOx
         suAKIxmy5TxjXUNNhLifjyFa2jabgrVNbxI9gx10WdV+Lh9UXykoOFVEf91ax6rYYgRv
         W+O9i+bSWvQwmyDsJf+HKs2dbPA8j1qNGqBH7nmcxN/+jPPlu7vytiiQ2OVVNG+9Xkxw
         iTTaAyERFhebAF5ekMV7kmbwpaSv30XvaRkdoNSDgCIz0zvZtNX46wF/b/6eq9VW8NI3
         294A==
X-Forwarded-Encrypted: i=1; AJvYcCU9y1KadC8XIxTuySN0ASu9vVRcTs+jjKsC53qdCWI7xtfEhjOrx51hpyHUHSjSzInoCrROWKuS/saxjmdXqTfQ@lists.infradead.org, AJvYcCWSc9cPpSvlb/wHKtrFN0Sg1OdXohi1erA+dcVhJLpBZvdW/kHchfdR5tTr6W7j8RRhFygsS3Zq3g0Qg+sMCng=@lists.infradead.org, AJvYcCWel5bgbWwPEaXbehcX7nl3UGu69rZ+N1s3eVsq6UJKSv+0Mw5zofUgdF11UeLf1nNoyB6kTiO3fErWenBgYII=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbCbxV/ebIQSa76PVkAE4v8GIoWrGTXLlg5spwNZUv9cyruGLD
	2h7bu7CwQkWihorODwxQx3eojQI/czMfTfY4lO7vO853J/n2O9L4d14OKhpfavqEqDJv+7XgF1N
	fung097gBgqMigWtE3+2Xh16NUZU=
X-Gm-Gg: ASbGnctZkKJi+zoYo7Y7EomdZwBfdmg78fWuaTtKHE9VsreZsXM6lVjJEF9xP/lsXIU
	7YMXj9KEGqRAyFyFvmLW/+UJ4XZ+CXI1XWllsgDVXBDW92HLqi+5p
X-Google-Smtp-Source: AGHT+IFvM6SBJtTLap+Q+DAFUbWc5zkuC4KMXDzaQJdqhN7s7+4kdqDXZd2/wUV9q/FU9iZ8tCHqn6eI4aaM7ptY90Q=
X-Received: by 2002:a17:90b:2545:b0:2e2:c2b0:d03e with SMTP id
 98e67ed59e1d1-2f453633e61mr74488893a91.5.1736094354238; Sun, 05 Jan 2025
 08:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20241224-drm-bridge-hdmi-connector-v10-3-dc89577cd438@linaro.org>
 <20241231004311.2574720-1-martin.blumenstingl@googlemail.com>
 <l3u3wtnxyhrwjynevkwfjwarisc4yt4xy2rbzf5kb7k5l5dw3n@lxqtimymyjg6>
 <CAFBinCAh8iazDNx6GtOOJyXh_V-NfUs6Uf=ywN9kvQGPEmjrKQ@mail.gmail.com> <x73a2utr5sp4iffk5626zqfth4ayu3x4jkxd7xwjti7ehrgnzi@ploxx4i5db5h>
In-Reply-To: <x73a2utr5sp4iffk5626zqfth4ayu3x4jkxd7xwjti7ehrgnzi@ploxx4i5db5h>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 5 Jan 2025 17:25:43 +0100
Message-ID: <CAFBinCBstfDa966+5wKLFdQNhnjW+d5Mpj=x3BDY+R5nHNnKLQ@mail.gmail.com>
Subject: Re: [PATCH v10 03/10] drm/connector: implement generic HDMI audio helpers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alain.volmat@foss.st.com, alim.akhtar@samsung.com, andrzej.hajda@intel.com, 
	andy.yan@rock-chips.com, angelogioacchino.delregno@collabora.com, 
	broonie@kernel.org, chunkuang.hu@kernel.org, dave.stevenson@raspberrypi.com, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, 
	inki.dae@samsung.com, jani.nikula@linux.intel.com, jernej.skrabec@gmail.com, 
	jonas@kwiboo.se, kernel-list@raspberrypi.com, krzk@kernel.org, 
	kyungmin.park@samsung.com, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux@armlinux.org.uk, maarten.lankhorst@linux.intel.com, 
	matthias.bgg@gmail.com, mcanal@igalia.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, p.zabel@pengutronix.de, perex@perex.cz, 
	ple@baylibre.com, rfoss@kernel.org, rgallaispou@gmail.com, simona@ffwll.ch, 
	sw0312.kim@samsung.com, tiwai@suse.com, tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_082555_241178_F6B3E2FE 
X-CRM114-Status: GOOD (  15.96  )
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

T24gRnJpLCBKYW4gMywgMjAyNSBhdCAxOjM34oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8ZG1pdHJ5
LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRGVjIDMxLCAyMDI0IGF0
IDA3OjQ5OjQwUE0gKzAxMDAsIE1hcnRpbiBCbHVtZW5zdGluZ2wgd3JvdGU6Cj4gPiBPbiBUdWUs
IERlYyAzMSwgMjAyNCBhdCAzOjM04oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo+ID4gPGRtaXRyeS5i
YXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiBbLi4uXQo+ID4gPiA+IEkgY2hlY2tlZCBh
bGwgaW5zdGFuY2VzIG9mIHN0cnVjdCBoZG1pX2NvZGVjX29wcyBpbiB2Ni4xMy1yYzMgYW5kIGl0
Cj4gPiA+ID4gc2VlbXMgdGhhdCB0aGVyZSBpcyBvbmx5IGEgc2luZ2xlIGRyaXZlciB3aGljaCB1
c2VzIHRoZSAucHJlcGFyZQo+ID4gPiA+IGNhbGxiYWNrIChkcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9oZG1pLmMpLiBBbGwgb3RoZXIgZHJpdmVycyBzZWVtIHRvCj4gPiA+ID4gaW1wbGVtZW50IC5o
d19wYXJhbXMgaW5zdGVhZC4KPiA+ID4KPiA+ID4gWWVzLiBIb3dldmVyIC5od19wYXJhbXMgZG9u
J3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIGluZm9mcmFtZSBjb250ZW50cywgc28KPiA+ID4gSSBoYWQg
dG8gc2V0dGxlIG9uIGltcGxlbWVudGluZyAucHJlcGFyZS4KPiA+IFdoaWxlIGRlYnVnZ2luZyBJ
IG5vdGljZWQgc29tZXRoaW5nIHVucmVsYXRlZCB0byBteSBwcm9ibGVtOgo+ID4gaGRtaV9jb2Rl
Y19zcGRpZl9kYWlfb3BzIGRvZXMgbm90IGltcGxlbWVudCAucHJlcGFyZSgpLgo+ID4gRllJIGp1
c3QgaW4gY2FzZSBzb21lb25lIHdhbnRzIHRvIHVzZSB5b3VyIHBhdGNoZXMgYW5kIGZlZWQgdGhl
Cj4gPiBoZG1pLWNvZGVjIHdpdGggU1BESUYgaW5zdGVhZCBvZiBJMlMuCj4KPiBDb3VsZCB5b3Ug
cGxlYXNlIHNlbmQgc3VibWl0IGEgcGF0Y2ggdG8gdGhlIGhkbWktY29kZWMgZHJpdmVyPwpTdXJl
LCBzZWUgWzBdCgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXNvdW5kLzIwMjUw
MTA1MTYyNDA3LjMwODcwLTEtbWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbS9ULyN1
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

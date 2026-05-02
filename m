Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB33CD13DA
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 May 2026 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bhkliv0eJ/QLCak3ixnk8MjLliztdo+YWr1cRqjG39g=; b=trh4Iv7E2uXm+i
	GiptLwPRx2784xuRrbNufHzHWaPxYSgRfDhPkYgSB8O17yWOb3iDyog+QAA6AG5FwLhOyTAtk3FZW
	yn48L2QZ0l3xDBtXac0BnmDVXx3nu/Xn3TNKuLzFcogQFgX9WtQL2ee6q2nfvyZkvuGq1jMo6WqEH
	Zm/L71AYBfcRF9OXvF2Hp7d+ZqFssLgws6hKaOQvrrHxUT2lnjbWkmD2igxP0zp4RnCzLYE+4wDBH
	oA4KdHcsii5NJwjU/Y5jKzVAtWpAXPkjH+6OT9KU4NkPse12vjic7cXuFREld55g4R2dzelTxDeA0
	4PkNAOmSY4W2ATjCTymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJE0l-00000009Ol4-3EIX;
	Sat, 02 May 2026 17:20:15 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJE0h-00000009OjI-3OEE
	for linux-rockchip@lists.infradead.org;
	Sat, 02 May 2026 17:20:13 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-43d7e23defbso1562291f8f.0
        for <linux-rockchip@lists.infradead.org>; Sat, 02 May 2026 10:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777742409; cv=none;
        d=google.com; s=arc-20240605;
        b=dHnv94uonL+LU6xX+cZ3jr7rbhLr+srEZoEda8z9xh1rc6oiOxGj50CFSTOmP+A+1z
         GaXgZD3bAfjp/p28yN6fh/VUEog4a5NjxCA09OBRn0oToYq+wNSh9P9BqyOB0SQO02fv
         zgqVu8PlrTzQd5NIwwUekd8Vy4GJw09UShTi8Rs/reaKnRawQnSMz5pcPd8+yPays8GX
         Si3YMJ8/N0pdHHuBdSO814nitbAMPkllXIruWQeXX8hvNT/6Z4Gb7kr1+9WSGPB/f0lz
         5SbhvoJB/pymJmnrzN+OAkpeJA01qG4w5txFgHeIrIn2hTzuOSyMtwRX2e7uJX41wFN2
         6PyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=whFhBndJs8rNIwDbAnCZQ1mvUrLqXBGZtosZ49qZssw=;
        fh=yvBfARyukBnsm65uImtABTLRtRh51SEIFOUUHe2gVF8=;
        b=YSnh3CFHq2tw/CskvLaVoGuGGaNwr+tMJ9GtLaeYWDYXo2q0WtvdnjrVaxDTlL+14M
         cLpVZKTv25ZjjhQe6ABJKSzI88jLShePDPdFeaHYuP14G6HIpEXl6N+b/TDXD0FKXZQL
         HUEpZY2qkCYizX6lPYKbJUilyr5960uqM6BD0i/QPvM2pNGytBYJ/Zohg41DuMCvMnOq
         5I+1xK8fZ1fOhpRDZsNzGPry86xhJk6rCf31/f9r/zRNHaxF+tidUKNrpWMsyEUirJT3
         8zaN1k2ChE5nzdRJJEMdD7ONEN7xo/AP6dVyffATmgiKeRc8sMYaghKRii4KJUThBogJ
         wuLA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777742409; x=1778347209; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whFhBndJs8rNIwDbAnCZQ1mvUrLqXBGZtosZ49qZssw=;
        b=QixBEYD/L6nyFqNTCiTfznMimsjPmVMnQtuBJiklJmRB29uDYn3SzUJiOn5O0ljEeC
         NNi6ACpM4pb5VuIybcovSWnqgpL0eL6Kdo4ECrvSPvmgjZnYtNGE+cXSD16bdEPKn8u+
         KnCO0OXQDQyCe3uYRUnemoigSU0aKCRJUSpaCrBgSUtg0OCg9b33H2UK6AJVPFmRQ5GR
         98a704SkjL2zExZ1Lp2FYjV+7Ohwdgr7mdNPxDPs6WifQkA1hIYZkGP6Bx1AZyZQSUlq
         iIapxMrIV+VNoa/ZCiMgIFpXZ5K5Ht4JoKCbiRGkpqPNvgVMnI6VN9qtHmUKElHU2kAF
         vX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777742409; x=1778347209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=whFhBndJs8rNIwDbAnCZQ1mvUrLqXBGZtosZ49qZssw=;
        b=j226+3U64gvR+gKEFjeM7/vc01OBnj5EidEClqj7ZIceqjdVIspCRugrKbtLS+Fq/C
         KUTb546P1eG3JKn1Cv65j2FF21YYn7Gv1JuIjoIwy7akBzJB3LftLPRyfjw2DzLx+4mN
         Gc3jQO1v5rXRHlje4x55AhZj9OGYQrJNsVetbBBUz67nrqh9rL7yacfajU++n7c/PNLz
         RIJHkXOEM/WHmdXfbmL5sawZwGa2QgWQKUa8DYfpWqn6SuyLaIoWRVicPCGCZqg3QfVC
         v8/dHqjowbR44Tz47Iqgv029rKv04EqjFD3vuQ+AyC4wvG8NXfqES0lKMiHdPPNRaeGP
         WF7g==
X-Forwarded-Encrypted: i=1; AFNElJ8g9b0JzoXACZLnwBSylgptB908sxkyIFWa363ZiEGv/CEqW3l/gta+0/o3fTs+iEUtfVevmCEnO3KD3MM1Sw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHhvoA3/zFEYam4WkNjTzj9ikDPAzxD3QOeYinh1FhIEVfLSlQ
	60mCGOZv1lvEjSAdHrTN+cizMRzTvfO6OecONABwjqqmuXhz5JtWmfvqK9IOhTzF68pmk2tz4Ch
	WM+mkqdaOuC90rufjm+StNJjr5j5WDh5Srqytduk=
X-Gm-Gg: AeBDieuQywVYfjkVO8E0zmgUgRC0FVctSlSCEnnmzgYpDE8UIX/PdR/VWYPecLGPefg
	LmLsXb38wI4Vw2o3/iS9jNZ3VGaoim6+kbpI4sR2xH+PIL4xhmTZQDLbCkUiIdkBtvfzkg63QEn
	jJ/OnRqk4p3KNaG0ML8gl+YN3HDP+MgDt+cqfMyY+GnvhlRg0KmaJByWCYfMFWTaLUaWqoyqa80
	rbX7VVsU5zjd5vhYwJUKjNHi+/2YTOUOi+n6rApL6e7QoG/iCMz3r0UdwTuq8fKyF0nqI5acAvI
	aPwyrS+uTg8h42/j/AawxYPgwQDdgAp303tfKwO7AKnUvY3G
X-Received: by 2002:a05:6000:3110:b0:43d:1c4a:37c with SMTP id
 ffacd0b85a97d-44bb2e2eefamr6396799f8f.4.1777742409079; Sat, 02 May 2026
 10:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260429063712.2150938-1-gray.huang@wesion.com> <20260429063712.2150938-6-gray.huang@wesion.com>
In-Reply-To: <20260429063712.2150938-6-gray.huang@wesion.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 2 May 2026 12:19:58 -0500
X-Gm-Features: AVHnY4I4aJL8bDrcLq713fIEFP6fqUjfNi1_05rQa4Z92_j9G-w3WDXUUfgZeg4
Message-ID: <CALWfF7K+g0sYLDQ9ROo1nGR9EADK44kVKQ_x=zonWD9eJLMDng@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: Add HDMI and VOP support for
 Khadas Edge 2L
To: Gray Huang <gray.huang@wesion.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	nick@khadas.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260502_102011_864343_A2988D3E 
X-CRM114-Status: UNSURE (   8.23  )
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

T24gV2VkLCBBcHIgMjksIDIwMjYgYXQgMTozOOKAr0FNIEdyYXkgSHVhbmcgPGdyYXkuaHVhbmdA
d2VzaW9uLmNvbT4gd3JvdGU6Cj4KPiBFbmFibGUgdGhlIFZpZGVvIE91dHB1dCBQcm9jZXNzb3Ig
KFZPUCkgYW5kIHRoZSBIRE1JIFRYIGNvbnRyb2xsZXIKPiB0byBzdXBwb3J0IEhETUkgZGlzcGxh
eSBvdXRwdXQgb24gdGhlIEtoYWRhcyBFZGdlIDJMLiBBbHNvLCBlbmFibGUKPiB0aGUgYXNzb2Np
YXRlZCBIRE1JIFBIWS4KPgo+IFNpZ25lZC1vZmYtYnk6IEdyYXkgSHVhbmcgPGdyYXkuaHVhbmdA
d2VzaW9uLmNvbT4KCjwgc25pcCA+Cgo+ICsKPiArJmhkbWlfc291bmQgewo+ICsgICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+ICt9OwpUbyBoYXZlIGhkbWkgc291bmQgd29ya2luZywgeW91J2xsIGFs
c28gbmVlZCB0byBlbmFibGUgc2FpNi4gU2ltaWxhcgp0byB0aGUgdXBkYXRlIGZvciByb2NrLTRk
CmU2MDY2ZWRjOTQxMzE5MTQ3OWIwNTU5NmJhMDZjNDA5MDhmNDRlMjIKCkppbW15CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

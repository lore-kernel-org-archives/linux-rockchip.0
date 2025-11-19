Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F47CF34B7
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 14:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa47YQAQ4cZceBafQyxvpqh7At5yO3be2lhntAOa3RU=; b=hP7e3gIqH4uXXg
	WO3puWO0efim/I/JdPyzTECW3b4q9DmIcpaAGzqhZMHPHURAJpsHBBaQMAF+yh5sB25aGTOId0Xwa
	JASmBe0oCAqYfIHIHO+qZH7xKQaEnTrh6daXs06diUI5EhC5rMki2kjFj8j0hmYPIRkw9IG2LiRKn
	tUP1heXD7URRzhpQMxlWEMNBzA2adAF/kxZB5QPxPG5/6XhtP4T77ElX9+nfxvLCEPS7sQVgFXSwf
	CkUmjfLf+tINH5DwRSgUtwCLoibjNHjoYYijzlwTYBpA6Na7Z/kwcXNPbAhwxpRWKH7BPBXx4UsLy
	+M9mENTxu9ACl1Hiu/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjPI-00000003OhA-13X3;
	Wed, 19 Nov 2025 14:43:40 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjPE-00000003OgD-3gJs
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 14:43:38 +0000
Received: by mail-lj1-f196.google.com with SMTP id 38308e7fff4ca-37b983fbd45so54072811fa.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 06:43:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563414; x=1764168214;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U4rPsaXkkkPPqP8F89aStRjGcZr5tE7ulQ3b9FN2Uak=;
        b=sFAiPdeHErwfE+YiKPvZe/t6iWD1CIZY4ehrYf9Os6TTrRMMwxvJK0MOsS+Ujkea5N
         fmqf3gFCxMKDDOdr87qtbXzcxk29z69vJFAlDTXvIvDuyzNntNt9+9yv9zn25ZHnWcNJ
         eBVLHYBWII1bxmIE1nmYScT1W7SleGGJjD7pjC+TAIVcoUcCQLeQVMY8xHO5Rs4M5/a9
         9rx+KWPMDxXpTxw1iA7PEzuwL0xfFSFLIBwj9BDB7rZLmj+SIg3wwBVKbLZ42zPSoKCT
         VJ5bfsZmEILVPjRmGMaxH00pm1bOw0Gj+4yDqczqurjQOpuE3j0si0GgAAmm9lOBWCzP
         m8Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXSDj7qV3iG7zKhCac3MYIMk2UOcvn2woVW6teZ6Gq9Zc+9cqX0Iy0l8oA2P3MbRDNxZGvm0aHqGjkJmVC4Zw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpK95sz6GHkvrM8oPbxgG+bgjgWKH5DAim1HHEWXbIsCjx12Pw
	pzbvxDt7JATXGjlDLQXJywb06Kew5mdMrv45loJHKZAIdY3eJV19cMrOEXWKfyIK
X-Gm-Gg: ASbGnctO5ar9C2EW+XRk138kAPKncndeilSAVuVYiYnq5PwsnS7L+TGbANVMXy6V4Dl
	oQg2hn7X5X5Cny/Nb2xoUC5HcVBIW9mslEOo958SnNmufsc8oPwx4xiRG8EBFEv0EeVEHe2O6PB
	VKBFgTzbmCxYLvXZt2rEqoXdi/AgUT1FTID1aFh92Es4gdp5dc8BV5ijawzbYzrb3maAaF3BjQ+
	vIKVfwoT+Prcx93Lm0TODdCO1vCSRfaXVo+a0wanz6TlX8MjfZqH3/XbmMLE82t9RIn+TMKp5bh
	LXNAKba6ZEjpG1t3sJDVAcz8O29yKOi4Ns1NHRLustkgHjpdzdqJZUeBMtY50zto6M5qcD3Uctb
	L72TZ0uwlcPHm+gBHF1Dvq2dHfb9Vy13Mc5DvmDYOgJF64N7Lub510JPX362D3brsBy/H3LFVX7
	J9Z/ALIfCIOQ4ol+vI5j2ccvqE+2F5W0JCrm49F87dBaA=
X-Google-Smtp-Source: AGHT+IH1dvSb+/89sMX64Q6ewUbJ6jZzkp62wJ9FRmdv6r4TCoRNO9Lh6dz7mQCiPmRdjyD7mS9Nqw==
X-Received: by 2002:a05:6512:ad4:b0:595:7dcc:3a8d with SMTP id 2adb3069b0e04-5958421bb4dmr7100247e87.48.1763563414049;
        Wed, 19 Nov 2025 06:43:34 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958c45929bsm3350388e87.41.2025.11.19.06.43.33
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 06:43:34 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37ba5af5951so61916971fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 06:43:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUG0lSwYKOafcrPyPikHv9ZmNf0m1wqQmZWQGTLXLcZqmoGJV2eUQj6gSRxAiHamP+1OS9RBdg5risfUGreoQ==@lists.infradead.org
X-Received: by 2002:a2e:9ace:0:b0:372:904d:add4 with SMTP id
 38308e7fff4ca-37babd35f8amr45635351fa.28.1763563413779; Wed, 19 Nov 2025
 06:43:33 -0800 (PST)
MIME-Version: 1.0
References: <aR2V0Kib7j0L4FNN@shell.armlinux.org.uk> <E1vLf2U-0000000FMN2-0SLg@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1vLf2U-0000000FMN2-0SLg@rmk-PC.armlinux.org.uk>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 19 Nov 2025 22:43:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v65syu47YAy8-24LDXt1MC2K7r+weOyCWn5fZzRgSFhnDA@mail.gmail.com>
X-Gm-Features: AWmQ_bnEwqpydG-ZRtqWc8I4l30DitJuwNrACYzTdhyRCjLGsAnpeFb-cKD8BLA
Message-ID: <CAGb2v65syu47YAy8-24LDXt1MC2K7r+weOyCWn5fZzRgSFhnDA@mail.gmail.com>
Subject: Re: [PATCH net-next 1/3] net: stmmac: pass struct device to
 init()/exit() methods
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Drew Fustini <fustini@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, Fu Wei <wefu@redhat.com>, Guo Ren <guoren@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>, Jan Petrous <jan.petrous@oss.nxp.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, s32@nxp.com, 
	Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_064336_937603_51DBB6F2 
X-CRM114-Status: GOOD (  12.26  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgNjowNOKAr1BNIFJ1c3NlbGwgS2luZyAoT3JhY2xlKQo8
cm1rK2tlcm5lbEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+Cj4gQXMgc3RydWN0IHBsYXRfc3Rt
bWFjZW5ldF9kYXRhIGlzIG5vdCBwbGF0Zm9ybV9kZXZpY2Ugc3BlY2lmaWMsIHBhc3MKPiBhIHN0
cnVjdCBkZXZpY2UgaW50byB0aGUgaW5pdCgpIGFuZCBleGl0KCkgbWV0aG9kcyB0byBhbGxvdyB0
aGVtIHRvCj4gYmVjb21lIGluZGVwZW5kZW50IG9mIHRoZSB1bmRlcmx5aW5nIGRldmljZS4KPgo+
IFNpZ25lZC1vZmYtYnk6IFJ1c3NlbGwgS2luZyAoT3JhY2xlKSA8cm1rK2tlcm5lbEBhcm1saW51
eC5vcmcudWs+Cj4gLS0tCj4gIC4uLi9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1hbmFy
aW9uLmMgICB8ICA0ICstLQo+ICAuLi4vZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtZWlj
NzcwMC5jICAgfCAgNCArLS0KPiAgLi4uL2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLWxv
b25nc29uMS5jIHwgMTIgKysrKy0tLS0KPiAgLi4uL3N0bWljcm8vc3RtbWFjL2R3bWFjLXJlbmVz
YXMtZ2JldGguYyAgICAgIHwgIDQgKy0tCj4gIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1t
YWMvZHdtYWMtczMyLmMgICB8IDE0ICsrKysrLS0tLS0KPiAgLi4uL2V0aGVybmV0L3N0bWljcm8v
c3RtbWFjL2R3bWFjLXNvY2ZwZ2EuYyAgIHwgIDIgKy0KPiAgLi4uL25ldC9ldGhlcm5ldC9zdG1p
Y3JvL3N0bW1hYy9kd21hYy1zdGkuYyAgIHwgIDQgKy0tCgoKPiAgLi4uL25ldC9ldGhlcm5ldC9z
dG1pY3JvL3N0bW1hYy9kd21hYy1zdW44aS5jIHwgMTAgKysrLS0tLQo+ICAuLi4vbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN1bnhpLmMgfCAgNCArLS0KCkZvciBzdW44aSAvIHN1
bnhpLAoKQWNrZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0BrZXJuZWwub3JnPgoKPiAgLi4uL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy10aGVhZC5jIHwgIDIgKy0KPiAgLi4uL2V0
aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19wbGF0Zm9ybS5jIHwgMjggKysrKysrKysrKy0t
LS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L3N0bW1hYy5oICAgICAgICAgICAgICAgICAgICAgICAg
fCAgNCArLS0KPiAgMTIgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgNDUgZGVsZXRp
b25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

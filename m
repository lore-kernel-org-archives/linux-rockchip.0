Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 430A5FC6162
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 04:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9hZX+2icLmXBhdV8Ch49JPiU0Zww27P2P7S2USkN/H0=; b=dPIPyNqeRA8JJTvDwi/fyV8tX/
	1qS6sYg/h++/wzwH4o69LR0Y1ICTEOX5BvYUQHkj0nJdshBjI/HjmATTZq6Vcsqt79mzAgCNiYgar
	3UwRAV8Ce+vc5sRkUF4JC3UwzkvEzk//UWmq2AR5pbMEAbomBNk8A7ng7SRKaZEtgntK5fTFtqIS4
	11us35fHwchrD2oHYzn+Zo7LKsgNPsRmADcYZnEn9ZIw6c6VLxYebbT579xgCJoFpndGVgH4xnzpD
	zkan7txAjju3uv1e5bMhQDBfSP7QdeJSJxYjuZIm/OZPxZWAU+MxCwunp9vivagzWUcN/TyraMZ/i
	3HiPJ+hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbspA-00000008x58-2ipB;
	Sat, 03 Jan 2026 04:01:08 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbsp5-00000008x4J-1x17
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 04:01:06 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b802d5e9f06so1609545166b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 20:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767412861; x=1768017661; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O5TyLxDxTl+f2mZ1axYzsQh2njdkr6wcLvTK/Jvsf3M=;
        b=d3LbDIWXos0XU+PLt/cYHFp2zYxBZs2mFSVhOLi4LNT/bMHfjz7CizOuVufRl/gKcz
         P08wJGzsSovaZbAq1KNXBPXK45gEkdWZWoYI8IOJTJGnAQ6zH51dMdmw1Pc8Qsh7NRu5
         +jhKAgiEJ+ZXMDYOPMuI3tkQKhG8Yaj9/FfazhTqRlC3Y/kvT6VrGaGQO9P1Cp3kOhp8
         +udSQaI/BCLylZtcquj0EeD2N+72huf+7G2pXA7YYglGi7uOL1eq+RyUr+pcnT2UKPxP
         stNPTchwKse40EMrUx/d6eQyMp++c4RUiAg1Pu1PaeJXkq4rtNhvQi+Ebg8mR41RkL5U
         wAUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767412861; x=1768017661;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O5TyLxDxTl+f2mZ1axYzsQh2njdkr6wcLvTK/Jvsf3M=;
        b=OJvinGU9PgjTqQjibhTTuP2Y40jYjKG2bzf3oAoCKDfm7XSVk92YRgcnb8SeE/+vPB
         +ksORv85ajQXbIK1vK5Y0j+Kr3Q5b1/XMrZmgo5Y6r43RJd8dm4MhsHbRyLNjzFr/bA8
         l/AERnkVGhT8b5meDeD+rHcyIzMGwKAsb3ZqrX8IFr3g3kaIbi273mtcD00qGzK3pK6q
         qfl+tUKtfJWX2exKNBLv9aa4QPLU8zIa3HYHfLYg/05Qd3MuwIuu68qOvgY95KmtYDAp
         WY8XolwioDrLHF+G4G6JwdekuhTbgJbiAL1avGu5w0aGUxSStrIH4BC3xB+noW11ZuO6
         ulsw==
X-Forwarded-Encrypted: i=1; AJvYcCUORfXpRbcHIEsJRKC5oXdo2muN++UfFj/52yDAqVrsuWhZgddFrAo1T5oEZ53cDeGZXj7M2ZGf08c6YEozaA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1Rhqw/1ciVUxbA7NB+brSM8ri2/kDSS+siW2N91lTRjjUL9Fa
	0X9DYVkux8YI5lKW7mGV2wnUoLQX55uLrehSrNzF/EzPSsgJL1uQkkSI9Rx4szdPmTvnM6Olgsd
	Y4xtFNfEauK/b7UvGuN7MLT/YZNVtSJA=
X-Gm-Gg: AY/fxX7T/FZb/B3aE/0sGW8Ou/E/3BwG7vj9wgd9Dw/BqBCM7c96h0gr8UreOzdyNCB
	7aZi/yd52kMi9DYNCx+r9+nQJ5YRS9LlLw81kUesIMlOv7eFSbf//fSzR83Y5rbo1UnZ1Te4+b9
	2pSunq89DSJRETTVl1nwdFopaHD54lRu80xLUKi++wv9bNXGyULGbXkztqJwj3S7UhWjV+EjmRL
	xC1JsLwINdu4l0Bln8vcisFPiICCRYPikMtNZejT8lgaVgiFEv7czmpCY+DTGqQBGM31DTJhrpD
	gg==
X-Google-Smtp-Source: AGHT+IFbqOg1v7R6x4ZKSLsBtcF4IavFaKTZJD22J8rhS7PY+gLCvqJNHPA4Xulg1zgPgOEwgSlZWRiPLIIb2GrK8bY=
X-Received: by 2002:a17:907:d8c:b0:b72:6143:60c2 with SMTP id
 a640c23a62f3a-b803722fd2dmr4546055166b.51.1767412861124; Fri, 02 Jan 2026
 20:01:01 -0800 (PST)
MIME-Version: 1.0
References: <20260102131819.123745-1-linux.amoon@gmail.com>
In-Reply-To: <20260102131819.123745-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 3 Jan 2026 09:30:44 +0530
X-Gm-Features: AQt7F2quBQViuflKz_7WiGupGUP2_HLsYQ3tNIlxCVaZuJpRuYGaxaR_J_lrz5U
Message-ID: <CANAwSgQ2TBnGAwaykRFDCphAZOk6gY1yVYOroUDYnRwP1kZACg@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add runtime PM support to Rockchip PCIe
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_200103_550107_C250E3E3 
X-CRM114-Status: UNSURE (   8.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi All

On Fri, 2 Jan 2026 at 18:48, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Add runtime powwe manageement functionality into the Rockchip DesignWare
There is a small typo over here,
 s/runtime powwe manageement/runtime power management/
If you need it, I will send an updated version.
> PCIe controller driver. Calling devm_pm_runtime_enable() during device
> probing allows the controller to report its runtime PM status, enabling
> power management controls to be applied consistently across the entire
> connected PCIe hierarchy.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

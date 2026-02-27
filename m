Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBE2103FFAC
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 22:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJE5YEKPMj4UsJJmAAGrn7xIodKt38tOtJYxcIdDR40=; b=r3fiS15vfJ1/Yk
	ImrbZch14fOdGk3GJm8aUcFqfEHJCzClFVFMeNSeZSTSb3Zos2vR+VJRJmcv7xUB+jLrMztfmu/Qp
	Y7nr7AH6UV08g0pmLjM+/1HYin0YeWP2w9CS9fwdRnhy0sy9grnKPu/ufxS7BSWrc04zMlgw1B21/
	U71RFsq6nAZLO3qG7czr0cJ8a+JCv1AHPwk92SFkVo/JS4qK910BKzS25egmiBvuG1Fw9hVUCDZQt
	7QbiUpAuzYNJtaYuSIxr8KA1/IjycTgUlLbtEwPhPJHveNqqeQwT5mF0nguuEtc8Imeu22YHfbg8s
	Yr8HyGudTu+1OJQxp/Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6YG-00000009Ek0-1EgS;
	Fri, 27 Feb 2026 22:43:16 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6YD-00000009Eip-0tXz
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 22:43:14 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id 71dfb90a1353d-5674cd243d9so2765484e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 14:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772232192; x=1772836992; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rrjLY/bl7kBvcwxLrBNZqDnyVSO3SRsmiAQG84aatrI=;
        b=Bx9Wr4YMeaj0Ezlf6bfw15u1oYeB/R5kL0a3NWijQrherFIb7snp49mdIA+s+WcFGo
         Sa5pbYwXVZw+pE/1DIiaQ+TCDnkfQVMOwFSyLRNQ6vDd4t+Yq+Emy8w2VYhxgDATOU6D
         OFSzKJ7qIqBles7mtaM3gOXkFUCx+wJjgbyYHyoIoPdESnwO5QdVbtIUr3JVLpM1x8C4
         dJdbZ2MDaa5Jb2OxobD3PZtUFrIfc0hoDLInY2/8UpCeVnqNLL+8w+04vnfpZ6lHlDmo
         n8pwofMCDM9CXYoWW4+nXqy996qnNONYEjbNZAwC3/EpS2JJsETWAxPfGJM7973jIuWm
         gthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772232192; x=1772836992;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rrjLY/bl7kBvcwxLrBNZqDnyVSO3SRsmiAQG84aatrI=;
        b=FJN7l5eTm9+sCZqcMdgdGBvlH9LiaRGm27WAC3kdZnDFs5cVXJ1PdWEMgAmSLR9AxT
         owC/E2JdfYPGfwsFvsPstC9xUcg/KgaQ7F7D/1y3RM36ou4pTAbAYJzxf6Xh1vfaOWTm
         OqqUGNjbdN+qoIhgYQefvMdmz9jocgcDJnf8zS90K5VCxfRyh3laIjM4BMOO0QrmyETT
         4Ag9auASRP2SIRQto1NarcnNi2YgM4dElWyTFJ1Gke/DToSNG8EEA5JLaegmFNVKiYNX
         GFBCuabrwtU6fytjJJCEO73ei0FsA0pbPlDIHDGR/4RVdVb1xuqDTcLpWdgOGTsgFl2h
         xKzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3XjA1fUV4fK1gd/LnfcQbwCL3GAFptHvBdi68mo+rTNfgdkNYbrBl1aCaWEH09hjMcOh30ztM3e7akK63lQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyU5StZK9IsBa1xB/DDYNTS0HW8Ec/ezTliD3DDbvvJS7UO1hMH
	ou1QSRGZpA7biRHwVMoZp4kXnIQwDKeIPayGos/gjZeVRIcBiZdoXCw5
X-Gm-Gg: ATEYQzwVJAmt/5G+dB/L1vcQnDZz5bvwuzl2GdNtxTw2vSadrn99yuZLcBasl1hO+Jd
	L2eqTtlfFJeTkF5/zXXfkWJ8QL7nQzpI5SdZDvqijATU0O7UA4DHQQdeklvBqCAFwy3o++YNDAK
	iO3LOGEVCcKfIambDmpX/C7cSYNoJz/jRWKZ+j/i4ACFuCF/UKz9nvGKR1DYe2O/WxsNVEjCt4k
	OtjkEJ9kHwhoVPbFw1cRrNLhyoxD0vzSC0WNeb1ivlYxq3koU5Ngvo7AL5abqy6aYjXfl0L/+yu
	KZtY1jGptMxA411Lpq08rdUuWbIYN+IWk0ApYrFUHzEoi8EJouhMKU0ceozKBLqVIYjlSAM5mip
	/e3HnxHQoWVKc89kxQ2xpTVnTfRSWPsuWfE2qNq1i3adXiO3PZ73z0nXDBnSsfLG15GosViAk+b
	BeRSlq5Pmubg==
X-Received: by 2002:a05:6102:e13:b0:5f9:39a6:3c13 with SMTP id ada2fe7eead31-5ff1cfc9d0amr5029522137.19.1772232191950;
        Fri, 27 Feb 2026 14:43:11 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df645b877sm5967626241.8.2026.02.27.14.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:43:11 -0800 (PST)
Date: Fri, 27 Feb 2026 19:43:05 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Charalampos Mitrodimas <charmitro@posteo.net>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] PCI: rockchip-ep: do not attempt 5.0 GT/s
 retraining
Message-ID: <aaId-TU97Z8f5Mwy@geday>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
 <c51c804bea56d772a59fd29fcb080541b7a367d2.1772169998.git.geraldogabriel@gmail.com>
 <87zf4ujf5b.fsf@posteo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zf4ujf5b.fsf@posteo.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_144313_260043_352FA185 
X-CRM114-Status: GOOD (  11.72  )
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

On Fri, Feb 27, 2026 at 05:00:03PM +0000, Charalampos Mitrodimas wrote:
> Geraldo Nascimento <geraldogabriel@gmail.com> writes:
> 
> > Drop the 5.0 GT/s Link Speed retraining code block from Rockchip PCIe
> > header definitions. The reason is that Shawn Lin from Rockchip has
> > reiterated that there may be danger of "catastrophic failure" in
> > using their PCIe with 5.0 GT/s speeds.
> 
> Patch body says "header definitions" but the change is to the drivers'
> source. Maybe you need to reword in a way that is clear as to what
> happened?
> 
> Cheers!

Indeed, I was the victim of reckless copy pasting here.

Will fix for v5.

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

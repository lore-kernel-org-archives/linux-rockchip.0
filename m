Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D63104891D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 22:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6KWt3rocvLM/Ajn33HEct1YWewhZiwpczAsWtS0ktw=; b=ouQ6/tepXmMEM/
	iyIcEYl7MixFLBPcfBnIgneVjiMU6K2bhUaMNkOCOMOvns0Ygu5sDZXeq8Ck0N5AZeyNEmAyRAgCm
	UmM/M3WbRDHPXVKh/sVk0PUTFvIAJEUf33R8HPQKmePQslPEQ8NsZ/daPmXYdB6C5vwEOVzBFZ5ec
	SXhNxOkMS+k1731N80YXHgaWe+hp8HQ6qJ0cQRPHz7OI+6V1JXgp9uqhOjeD9rNG++nhIY+y0Gz0J
	BtsFanSrnKdwApJiBAu7Bq8X0/lIMFzeXdCjvZ61AvJRF4wuMKO7ZTu/N7Hzdm4B7w6Q8jlXXdlPD
	9s1syVwk0UDEovFl+FHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6XE-00000009EZ0-1TKg;
	Fri, 27 Feb 2026 22:42:12 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6XB-00000009EYI-2kn7
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 22:42:10 +0000
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-5fdb47d6131so710438137.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 14:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772232128; x=1772836928; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mSRwxud/Sjz5N6XXPU8dLJmT5Ixl2X0gYrwgt+M20jE=;
        b=ODNmOM+BK7hv+pvQLHSDgyC0R2cAMX8SxnO7KTvke3F+bwcFzk5dVjDfQFbIW5GEFU
         29RmnivU4amuNcr6DWciwQGD3mAfbdWYa0wZOByit8MKxbblQFAzrPfdLuZTKrDyfMNR
         eW6ZvCTt+VRFouvVy5En27pjMxolekNTUkVGEAsYjw0UBv1ZmrMpbrDHQ6gA9iiSMfAW
         kOtSWah6AUS2ifUu3C+Cr1YEIOV/KT5e/7iYJuRnKhyI3Bwrl7xEDkltg9YmFasmX/LV
         tOuGIKVpf48uxZHA/7Qc1NC46UvusngLtMD98NBkAPEzFqfdjyTMJ39PPM5g+xXV4QHZ
         TSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772232128; x=1772836928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSRwxud/Sjz5N6XXPU8dLJmT5Ixl2X0gYrwgt+M20jE=;
        b=OzyVZWv6f14sWyKWZH+MQG6A4i2oZbozmO1M1AG7wjivkIzqFYQSJGTr1TncMP1VjV
         RErh2R19cmP5S+gwKkUiZQJWrVsSJhRYDtH9XbagzE/7upjknjrDSxZRI+v5Cn3+vHK0
         sN/d5KwvsqtP7+mSyRE3UFXYe04bKIrYOugMh5nXY/pUexWwDduhY3xTbNXuNsj4+dIG
         2tADbsoVLowjSPUafZTaq3hUNwH6FvkxGxYnVaylNYCw7O8kt7RYYrC+r/nTGQv/6gOQ
         O81pIPJnJN2A40zZU6IHBU/vax94pCMIpO8c45B5kFQCoICNFrnsrj06OSfjyHgE46dP
         F9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXDh6IFa79BGnEKLM2X1qiHS2CQgar1YYWbbFjJjjG9dioj9vekf/GBxFc0MM5tVZyY+Nfleur8CtzIuqafng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4TfAs9/khLbtdK16rujCvrLDQRNYSsx1uIJNX/XVkJAfOjszs
	8Yblxs/Yzs0Nd6/4F1X+QFDJCaRV7CXovcYUiV2L4/M1mfP0ivZVERWd
X-Gm-Gg: ATEYQzzcrQsMVbs+YLOW8Mgl2/IgNUnT3aLchX8fVihmKrnEE5P0iEnhKr+s6e6+DsU
	+WphgzLLSLXOsnhe/bLIztRiuB+OJRrXLv4cqJrS64D8QZdpuYjUBEBt6ZinXNRpiRwzaPxdC8D
	ntkwPpDPgiQbdzwq+gx0cDn7Oy2mdPDGF7qvlNj5nabfh90m1y1CqcX/orAdZSfW9HzARFacNy9
	UYeLaJ5Hvn903Kv1LR/VvEEfQfk9C+yhOIE3lzAhaJ5ba8M4BdZhycZf+v/n99wIovhAkL44hRi
	F9QnUpkgmiBO/tCwkCBsQJe/uGKqBO3uU1BZpoJ25kYxe258LEWDGz8wtDZgF3zrUB4mTsDxt59
	LDDehpjf+vWN5kWuufTLikQmsnpv3pZi7SUT5zWCFaPH8KFFI5vfmJLKsQZ5EuG1zWhkNR40a1Y
	KCiULX3MYeNA==
X-Received: by 2002:a05:6102:3f42:b0:5ef:b3fa:c89a with SMTP id ada2fe7eead31-5ff32537f8amr2390137137.32.1772232128028;
        Fri, 27 Feb 2026 14:42:08 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df6577a4fsm6403120241.10.2026.02.27.14.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:42:07 -0800 (PST)
Date: Fri, 27 Feb 2026 19:42:01 -0300
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
Subject: Re: [PATCH v4 1/4] PCI: rockchip: drop 2.5 GT/s defines
Message-ID: <aaIduRsXvcUZrj8E@geday>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
 <5172389ba8d291fe05bc0887bc97fe73f110c5c0.1772169998.git.geraldogabriel@gmail.com>
 <878qceku1j.fsf@posteo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878qceku1j.fsf@posteo.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_144209_740548_8DC80363 
X-CRM114-Status: GOOD (  24.17  )
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

Hi Charalampos,

On Fri, Feb 27, 2026 at 04:53:00PM +0000, Charalampos Mitrodimas wrote:
> Geraldo Nascimento <geraldogabriel@gmail.com> writes:
> 
> > Drop the 2.5 GT/s Link Speed defines from Rockchip PCIe header
> > definitions. The reason is that Shawn Lin from Rockchip has
> > reiterated that there may be danger of "catastrophic failure"
> > in using their PCIe with 5.0 GT/s speeds.
> >
> > While Rockchip has done so informally without issuing a proper
> > errata, and the particulars are thus unknown, this may cause
> > data loss or worse.
> >
> > This change is corroborated by RK3399 official datasheet [1], which
> > states maximum link speed for this platform is 2.5 GT/s.
> >
> > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> >
> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Cc: stable@vger.kernel.org
> > Reported-by: Dragan Simic <dsimic@manjaro.org>
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip.h | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> > index 3e82a69b9c00..b5da15601b58 100644
> > --- a/drivers/pci/controller/pcie-rockchip.h
> > +++ b/drivers/pci/controller/pcie-rockchip.h
> > @@ -42,7 +42,6 @@
> >  #define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
> >  #define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
> >  #define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
> > -#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
> 
> This commit alone won't compile right? PCIE_CLIENT_GEN_SEL_2 is still
> referenced by rockchip_pcie_init_port():

You are correct, thanks for catching it.

> 
>          if (rockchip->link_gen == 2)
>                  rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
>                                      PCIE_CLIENT_CONFIG);
> 
> This reference is removed by the next patch in the series but not sure
> if we want to do it here instead.
> 
> >  #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
> >  #define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
> >  #define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
> > @@ -197,8 +196,6 @@
> >  	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
> >  #define PCIE_LINK_UP(x) \
> >  	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
> > -#define PCIE_LINK_IS_GEN2(x) \
> > -	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
> 
> Same for this, references elsewhere tho.
> 

Thanks for pointing this out. I'll do better for v5.

Geraldo Nascimento

> >  
> >  #define RC_REGION_0_ADDR_TRANS_H		0x00000000
> >  #define RC_REGION_0_ADDR_TRANS_L		0x00000000

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

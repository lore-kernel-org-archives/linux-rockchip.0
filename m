Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A4DCC52D6F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 03:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjAoy2YSeXpF/WF+14L0dymq01BklhBm2X1zYZaoTOc=; b=o/crFmEXvx3PFQ
	KtXN0mwl18YPXha5/3mSddoKEBVTyETWRwgTDwsYgwsKllaGzahrYkTeWaI+MoLpumCJRAIn8+xJj
	SdBOu5gNCZ2QnMkr5RJ/84PFJVURvIgvJD59K8xIFO1qEybIZtxFsmrESHkGjHuZ71LAE7VYMuRra
	qjWBohWgrXz79DTJq9SV++c0Q9Bh1aNJfnN54Juj0bPd5SKuEYEfQNOD95+lIbTKg7kaFMefB+rvX
	CrL5Lg2Cj1rned1jnPue4BvAAmDWjXkk/GLmtiyLoTYjEZY2hiqSQqANDpkUV1JairSlb0SaFe2UA
	qULDcvszY2S59Z2Rf+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbtbq-00000006tMw-10TJ;
	Thu, 08 Aug 2024 03:14:38 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbtbI-00000006tFW-07N3;
	Thu, 08 Aug 2024 03:14:05 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-260f033fda3so359126fac.3;
        Wed, 07 Aug 2024 20:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723086843; x=1723691643; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oGxsg41y4rKazgGVMxhE1DY52aSncTPaS/Nl+tX3Jvg=;
        b=crHCZ0Pg8ccn3jXKmTLuCmiJGYqn/85XMNcytr40oselNMF+HWc0Tto9FxWk8+Qcv/
         UiaglQzNn69JZZGOS+RfXWAieGblnKlbO5EjFQjR6sf0oj3YC/pPKabJfZsWgd9QAQWX
         jVn271TO9B0BjpH0bkLT1mGJQL/aJS6PpuzUa2qKSEXg8SxSScuCNG5ydmLkCWNYuGK7
         BPBn2mCv/CWIzaDbAlFSOAeKoNibIgjRcVCeifrHFcULtKspjdsCAVjI2XJk79+qCiDO
         4CZlfOMbkNS0BGtVQhBY2EXJH9+Xv4M/tkBto4e0v5VMSvXq7F5zGQEhLeibL8sgSRY8
         JY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723086843; x=1723691643;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oGxsg41y4rKazgGVMxhE1DY52aSncTPaS/Nl+tX3Jvg=;
        b=mUJ3Oqe/T8bhwro3FDq82ljsTYua+5+iZB8KgmM/VARw0N80OUL3Lt+shSZ++wn9dq
         U2lhTI2YDEovkH9WG4IrI652/NsA/KfZ77u1F/3/lUOYTxvqBDVuNGChjQf2dfTYLHMF
         IGK893U8r1YgQ1tKgATTGm6B8vMoCITqSIh1mVz5gfkg3L6YXkLdRqsCFY7gZGXjqGqb
         P9e4Nq2ReDkYAgeO4PnNMg4fA8FUDrQ5SC+9yFOH2RLeS7FdabZB3JMRHu/4GbGbK0ND
         AeygndCKN9kDrf2lr5Tfd5SnubVsIQHSwuujd3plpgk0iuwcw1ny7VHTrqg6Y94zq6/a
         S6+A==
X-Forwarded-Encrypted: i=1; AJvYcCXZdF7dou7IvnkMVjhqokeinxsZ/Xeg9jqJHjtl6+niCaP6esJXpB9iBv9L13B6b3DFrdOofu4My2OQpslkkJE7JW19L6uEFXJ5Ag9efL/DupemRqi2pHfu8I7ZhUCadwbVnBcgjZlfdqkN+r8e0ve0SGKShfpR+Tg=
X-Gm-Message-State: AOJu0YwtyGprYUr7yUrVF08MskUqpaRfSEV9jFKp2aoZiR5s0Heh+v+H
	5HOZZaRBV2z6Is8aVjwy7WNjnaln2/eM13frZAKWv6saoHTXHMZ36+mW9U6HBi6XymMrwtAFq1n
	l1Adcr9mDCYslXoxdiL5rJfbG22qkcQ8Q
X-Google-Smtp-Source: AGHT+IHUVsNSLMPQ1iqFrOhEti9otWFjGmpwjPDhZiEyullHOArBg+bTWuJD+2iGvLD3v0oc1ScOQe0hmxrPoGe8GjY=
X-Received: by 2002:a05:6870:2050:b0:25e:5ff:758b with SMTP id
 586e51a60fabf-2692b61af69mr562594fac.4.1723086842786; Wed, 07 Aug 2024
 20:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240625155759.132878-1-linux.amoon@gmail.com>
 <20240807163106.GA101420@bhelgaas> <20240807170011.GC5664@thinkpad>
In-Reply-To: <20240807170011.GC5664@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Aug 2024 08:43:47 +0530
Message-ID: <CANAwSgReunjBipcJZwneUA3fwnxFT0H4BDREWPsSxDstneekYA@mail.gmail.com>
Subject: Re: [PATCH linu-next v1] PCI: dw-rockchip: Enable async probe by default
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_201404_087830_E90B6F95 
X-CRM114-Status: GOOD (  25.21  )
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

Hi Manivannan, Bjorn

On Wed, 7 Aug 2024 at 22:30, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Wed, Aug 07, 2024 at 11:31:06AM -0500, Bjorn Helgaas wrote:
> > On Tue, Jun 25, 2024 at 09:27:57PM +0530, Anand Moon wrote:
> > > Rockchip PCIe driver lets waits for the combo PHY link like PCIe 3.0,
> > > PCIe 2.0 and SATA 3.0 controller to be up during the probe this
> > > consumes several milliseconds during boot.
> >
> > This needs some wordsmithing.  "driver lets waits" ... I guess "lets"
> > is not supposed to be there?  I'm not sure what the relevance of "PCIe
> > 3.0, PCIe 2.0, SATA 3.0" is.  I assume the host controller driver
> > doesn't know what downstream devices might be present, and the async
> > probing is desirable no matter what they might be?
> >
Ok I will improve this commit message.

Rockchip DWC PCIe driver currently waits for the combo PHY link
(PCIe 3.0, PCIe 2.0, and SATA 3.0) to be established during the probe,
which could consume several milliseconds during boot.
To optimize boot time, this commit allows asynchronous probing.
This change enables the PCIe link establishment to occur in the
background while other devices are being probed.

>
> Since the DWC driver is enabling link training during boot, it also waits for
> the link to be 'up'. But if the device is 'up', then the wait time would be
> usually negligible (few ms). But if there is no device, then the wait time of 1s
> would be evident.
>
> But here the patch is trying to avoid the few ms delay itself (which is fine).
> The type of endpoint might have some impact on the link training also. But async
> probe is always preferred.
>
> - Mani
>
Ok,

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

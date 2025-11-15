Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A41CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 10:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vg9pnT52SxkxebrV4rALW440KSQnZTJceBFrOizYuf4=; b=P5EdduhzN7wqjQ
	AxUzB0IgdeLqqdsdU+RD7ecc+ammMTgYDkxfpGpjAlcfjq/cc7Fgqc2JrGu60WF1tDSNJCRgEocZj
	Ge84MmuE8aZuYmC2oeVGi4YAUUoaUiqxKJNHeaU4HL9WQTnbGdmMAWKZRIeG8JuCW3hwKREAgoaX8
	RdiiA90GPrg9CFk+deqbTwwpb8gA6215o6IoYb+4GkkFdC3Om0/MUXk0WCAFa57P1ugEhMFphjUfh
	auiZP42gnx4vfpK2YufNA9ZiF++bEVSBhmBERDvaVzHHV53cVWxuS+GqGOhKXEV3e7Wsi9BOgpQK9
	d7bZihEZvrdbIjkCCmIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKDGM-0000000DhNa-1faO;
	Sat, 15 Nov 2025 10:12:10 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKDGK-0000000DhMj-0Giy
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 10:12:09 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-b9a5b5b47bfso1711724a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 02:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763201527; x=1763806327; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gm+ckSfEplX4Ke9EThg3ex6u+yrRtxkSfPzMWCL9PGA=;
        b=AHlT7QJ9TckMVf1vXIVcO5mr4Ur6r6EIVdMfi9pxPDeA5yQ1+BxExpTc8JTF6Belgv
         RznPnrGXyqEElGdXcrW4Dz+XC7KzRSPxZxqAugqMRihf18kFwkfeX/rqqNlIKTDEkFkJ
         OYaQANcuWtoly5O3u2FSdNvSQsYFMZEPQ08+7bfjnUhrpGoI60cMhyBjV/r12a8fLXat
         nFCm2BiLo5omISg4LlC1AxwUaDoDXOlhq7iZzZIZmDx4eC8hfN2KIG03ty/L7GVPvl3C
         3cenL/cX9d3PPxQge2RDcDc6mBojIoU2EGb4BMlpXlOqsq7omdukym7UEloRCmWpWUwK
         52MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763201527; x=1763806327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gm+ckSfEplX4Ke9EThg3ex6u+yrRtxkSfPzMWCL9PGA=;
        b=ugAFEbfPKRe+w+Qiqu0OO0eXSebtYrUsjoiWJsjImrm11mOCuFpfiBaBmree81PJJy
         NWPyvNNu8bKh41GwN9Txrf+tm3mqktD+JgF2Q/SHrbP3evtgPfl2kLk94T8N/MB3CJld
         DGCVavmP+JMFYsl+J7bDDKj0CrAfgVvSew02Z9WheerxPAri9+INrYLL+L+a24BWVxgc
         97id+aIVG3iu6wSxBFt45+GsjcJGwcSvX3g+vL2TN8maLkN1RZqRx9K4Kx7j3+YveIS+
         PPBHIdiyK4y9+DZ18TGorAXrnUVjY7enEM5UBn+E9qiE13y86xA4b+Vaz4GbVyqEqGJg
         l50Q==
X-Gm-Message-State: AOJu0YzPS2RpTy3oGJji1lqoXeP8X5NovB7XGvPpuWfmfqTXTf1jI2cB
	MffwuL4eGjYnp4d0oke6cZpqer39kOBzR18nqDL2LsGgm4vm+80yYTOm
X-Gm-Gg: ASbGnctwGYZNt6CPkdcwJOe0MqH7vlrX/Nck4hxmSrHYdpdCb+0VmVcYj/1v7tJ9bdA
	8ibkWzgllGKOZLZyYCVxeGRnXWd+xOTV6p+RopqbIn73s6W60Exqk7cF42F+AQhkpM3detGq06D
	2bfgwhy8591ngP3gQxt7dU4jVpS/E6Sib5gFfy3xCewgem9c4mwr8+skwkQX/RXPhn7UPnncLqz
	BlCBlGlJeGGnqw0WFWd615edwNqXrcH0+TREKTCXZURAkuz287cgncGKR7zLoctvdgMmD2SekH7
	ISNkZLmeTrNjsauCskgMJU0ZOvCR8MnxWVWjkX6d1OUbhi3t5zmxhWJrtpvy/P+GKeqVTxMU/lC
	yPmwoTDPfPMsiOM1oWcrB7y9sYDoJJs/TQzxjzJyMfKrnVXfV3I/wWfHkndtysINBrB0Qx4YDgQ
	==
X-Google-Smtp-Source: AGHT+IFOLT76Y53zANSgKQXjUT+7ysvQ4Xrl63BgxDn5v68pWGwdHgGSzDNQOkc+msl09UwqFa5XFw==
X-Received: by 2002:a05:7301:b0d:b0:2a4:3594:d552 with SMTP id 5a478bee46e88-2a4abb23c99mr1792869eec.31.1763201526899;
        Sat, 15 Nov 2025 02:12:06 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49dad0aefsm15522074eec.3.2025.11.15.02.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:12:06 -0800 (PST)
Date: Sat, 15 Nov 2025 07:11:59 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <aRhR79u5BPtRRFw3@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
 <aRhNIcGcQKp2ylqN@geday>
 <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
 <aRhQMRjffbeCeArE@geday>
 <52931e25-0d6f-ca0a-7c26-2c65ab11432e@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52931e25-0d6f-ca0a-7c26-2c65ab11432e@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_021208_104339_02C5E792 
X-CRM114-Status: UNSURE (   7.98  )
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

On Sat, Nov 15, 2025 at 11:09:42AM +0100, Dragan Simic wrote:
> Please, wait a day or two before sending the v2, because that's
> standard procedure.  Sending more than one version in the same day
> is highly discouraged, because it doesn't give enough time to people
> for reviewing, and may cause people to look at a wrong version.

Yeah, you're right, sorry.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

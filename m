Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D7BC52D7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 13:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdQ6bguxmFTLyHqnzbIHWnkS/XShmJmA3qhu0HA0WXs=; b=WwGVwsjepbZ6Xq
	LHaAoYUj1Dj9BGjodf20Wly9fzOsY9uD55U4qLj/HDMWc5+GK7SP6Ju0XBnioOmthRIu6AD5Yrel4
	jqCgPMopl/h7pEgiWVG9HWKir5p+gv4RaqTYiVg3Omf4yEPHNtGfXReOW5Lh+FtOs+wIbWG6H5gwL
	RU8JCz00Si3YlJ1IeZkwdG+MBWcdlGYVsNOO6RiVCUgDSm3eLu8beaW1PVnS7T1UDGgwgqs2zeBMD
	ReacclBGrAh1v0FbypM4sj383bX0nm1TXYFQm/g2gmnbAKUaP1d0K16CQIpavcT2/rpSJfmkfVCv8
	DcZdt3mmrfqmTZ8zDS5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfJPh-0000000FFxq-0Ohr;
	Sat, 17 Aug 2024 13:24:13 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfJOj-0000000FFk5-0GxZ;
	Sat, 17 Aug 2024 13:23:14 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-264545214efso1663908fac.3;
        Sat, 17 Aug 2024 06:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723900991; x=1724505791; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VBQeCvtph5GxzWHRxtfXtJO+Pd2qLOl9HHKe2Up4NBI=;
        b=FrNTpmA4D3pPd1vDgInXh69/08126REBCeie5vCmN/sONz9X2Di6yQfrTt9yQu+wNZ
         LqU7YxenxCGJCDwK3wFagmEBfGi7XrtuJMWBOWShriqYqO7moldofuUQItZARgHO4FiR
         OoQ9i0HaUkVEGuy0wnTFRl7YMNDSiMpY7qcr4JwndiU+U7U+7ehgqHVY0a1zpINyj/ym
         G3zr+hMS7y3sg0c8NMIsjgYtgEtr65Jxj64pca15Swo0qV+1VkivUQYp0ljh0r8iL50h
         w1GaT4z5aGEFavPMQ8xH+PQT/3sDG9SeP3zPHRiiyLBm3a+AA51dduwJa9H1R57kjCEI
         6hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723900991; x=1724505791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VBQeCvtph5GxzWHRxtfXtJO+Pd2qLOl9HHKe2Up4NBI=;
        b=OXRlJseP5stPZqNljkNhLme22gudira/0+1M6TSvaphmxmPmrEQblaZM5DGaZKYclC
         EZfSLQzpSLPbTlcQQYHnweoAxn+dKgYlx1iUmC1IN9/Jk0lO6DM1Pr74wDVx8x1xGpZ9
         +eTwuB/dohS7PXbQ+3Q/UaG9uCIvmRE5d+fiRAOR1T8mdeWEmr24ZT1LlMndEbzxM/41
         ri/TmKNTyT/bjHE60YKFxvOU+BxAHkhpqD6uRuSXDwzlHTs9w4I2OGfASlFqyCPXf3Hy
         YnRrRydz0K2atGSi1Udhy/zp3fedVYJfYilvuL7oUMrogUd7FAjXLmhfi1KEVh7egdb5
         IeJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjGWazEj8jqx5+++Nbal3WN/82UAC2PTl6Ag27xykeckCKUlVCMCXgfoD0bDt7UzA2M3UlG7c2YXkZ8JBaDYtcYNafMQx/5GwShnDd1va+6IX3b2gO5HVwiYlOiYcDQdm0+mYwx5+654s1yze7ItdniUlO0C2yMn4=
X-Gm-Message-State: AOJu0YxkgQnYtUp7ActDHMiB4XBZdxKzB/iIyCarmv0SRAMqMcqP3XWP
	4t4USnXM6585AikpIuvhNx8rb4vp23tu5kynQhwkG68A9QsULyp9unUmH2ayKrLiYsTuaPT95Gs
	J4u4gkfrU+tjXpqJoZpBhDSTJEw8=
X-Google-Smtp-Source: AGHT+IEBrKEcobzpQAyYkf/uRKuBvxHO/wNKbGj7JcxKRPxc5UoEA6yCrWCdUeAQNrTNgQTRS3FZaAuTTVZ70FF3Jng=
X-Received: by 2002:a05:6870:7182:b0:254:96ec:bc44 with SMTP id
 586e51a60fabf-2701c3e5157mr6650443fac.28.1723900991546; Sat, 17 Aug 2024
 06:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240625104039.48311-1-linux.amoon@gmail.com> <20240625104039.48311-3-linux.amoon@gmail.com>
 <20240815162459.GG2562@thinkpad>
In-Reply-To: <20240815162459.GG2562@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 17 Aug 2024 18:52:55 +0530
Message-ID: <CANAwSgSqUoO+=GdFRnW5MOvbA+-sHPe2oEpzvd6O9KpzJ1tdmA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks
 function signature
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_062313_222304_278E63E1 
X-CRM114-Status: GOOD (  12.95  )
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

Hi Manivannan

Thanks for your review comments.

On Thu, 15 Aug 2024 at 21:55, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Tue, Jun 25, 2024 at 04:10:34PM +0530, Anand Moon wrote:
> > Updated rockchip_pcie_disable_clocks function to accept
> > a struct rockchip pointer instead of a void pointer.
> >
>
> Please use imperative tone in all patch descriptions.
>

Ok, I will try to improve.

> s/Updated/Update
>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> With above,
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
Ok
> - Mani

Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

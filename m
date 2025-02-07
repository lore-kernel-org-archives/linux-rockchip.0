Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5216BC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 00:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98R9zNKWImQcsMKWOMHtN+e7dfQKc/Vy6s5ZyCkpp+g=; b=tUp81cYlCgwLgv
	qFzpt1IULBcrjBqDCO1rdHH0UwixWQ1G3uGDf1nyRsoqCgr675Yl//rKVIzGAy4JkJPZ5Fq78xbiD
	jwdSx1TVtlK/gfo5cM2L+TbcjvLbyr1l3yaeaPZpacLK+LYuFU89HbQ6akrYWvouBqajiNQHIF1k2
	4ILF9KG5dM8pphIw4tTs4snyJvdglZ0shtr4MDODtXFbn7mnjSn2EHhoezJaNvNasLgpLuWpWdpjR
	9HsfRzfqHLdBCNhVmkVfGqcjHn0LcGbvENSBsz82XZuIHBIVM1n8AO71+eLnHJ6Tj8BouHJDh46ei
	NvEtV6lBgzC1jTC6pEHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgC4C-00000007rkU-2oGr;
	Fri, 07 Feb 2025 00:17:56 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgC49-00000007rjl-3mrJ
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 00:17:55 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-7b6e5c74cb7so131908585a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Feb 2025 16:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738887472; x=1739492272; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sfFEPXCRct3oZMDg8r+rNLMZRhUWHMu8nowY+ihMm2Q=;
        b=VVz4pqR01IzWC/PvRXZ6NkBng+g+zuI/TpwJnvOZTXjQVye1bknCAWeGDjxewQplIp
         l2Apv7AVokOxnCvTXo7HgcSB0M/pvnUslluQ7cpF/fF+9eS0MDL3h1AknTeYXTDcowsZ
         jx4dx/TpBK2rCHJyVeReH4nEWBKfrdYiKBzTF8RUs4vrVSlz7X8xz2hfd7upwnL4xJdc
         c+fKmR365q4mlLLc2ZX/U0kKHtlquQYd9Ojrn7JrSYxNP4S3kUuIVeojSFPbFMHUuO26
         rLZSBQAa1txcFN4MCYPuEwRmCnZGzhgrz9+MaJvLDJhjs4TtsBqgPjX2eR2TbY2pQ+5M
         67NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738887472; x=1739492272;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sfFEPXCRct3oZMDg8r+rNLMZRhUWHMu8nowY+ihMm2Q=;
        b=JqiTrNGWpHoSGG1gyGqpgH53ChDhi8XIyda941J7jFNLIQ9LtVGpdaZpo2UziGQfbg
         0snetParZH6BV9ZJ2JyuehSHRUnDq2C+keZ/xICMS3B5OMxXyQLmTeoFkUTU4eprxUpO
         gKPFtsC+sXRBaYFzu9G7hkgLe8RLvS7FuJ/Ss7AqQURHf6tlFaQUfpLGWqeQMSMPlPPm
         V2cl4ZEsGGZ0STcmLIsI8wuRnjDoS1BICG6ooI+Cn8Sg2kjdueaGQMK2Emmm1z7689xW
         UIqAxlzxlfE7BFYTZiLhu0uXd8hEzI79WHDVx6HJNhtyl1DA2jZugspsM9Kt59oH2KxR
         m5Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVoDoZ5iyBwLuvnwoaCn+Ua9+j9EOThnft0kS4V18bHkHe7sRAbMtASL9ioI6BkaRQObpHnSdv5tqyLv1TJ+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhr+Hq0XgRPXtT32JlfO3VY933tqEfGYh/mKbSz8Aa+c9R8JX6
	1UTj5WDUJpLeU6Qner8ix1Vmsf1qwU0odSwo8OjM6F3dciSEoPMc
X-Gm-Gg: ASbGncvOjWeVV22oNvqdS1fIsf4LEzqPHd5wjCDdLCrnL2fyCra/+1gwxdDkPwvw4lu
	YNXYW1uGWXA5a7dWhyd8z3lURLOS2CyKG55lwBdtoll1LWURz+TtugFwHndNo3/U78isvIRisaG
	sK1DvXd7Kx6vH6HaPM95N8dhp7yXIiCxkqDZ+N0Cvw7nYbwgY9gc8qp0wP1ITS3tvrwf9bGWBmK
	gFgcnBk76xF/0lmAeh9SSSmcTeFLKU2nC7FEqh0qimq418O83wRz2oLGyNimqQINh7OeBkag1pK
	fLd3a4hkjgpVNjJs42L2a2eydmvvOfbR4+ivFaSJfZY=
X-Google-Smtp-Source: AGHT+IESBK0CIOWfDUugdHFsJxYTxI9WVOyTljg+fdL7KG3nSsZBNEMXdD0qHrSmjrkXpFvxTEiEog==
X-Received: by 2002:a05:620a:3192:b0:7bf:ff64:336e with SMTP id af79cd13be357-7c047c97879mr162292285a.51.1738887472123;
        Thu, 06 Feb 2025 16:17:52 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c041dedba2sm121543285a.16.2025.02.06.16.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 16:17:51 -0800 (PST)
Date: Thu, 6 Feb 2025 19:17:49 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Vicente Bergas <vicencb@gmail.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: PCIe missing on RK3399
Message-ID: <20250207001749.GA33513@localhost>
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_161753_959652_525B1613 
X-CRM114-Status: GOOD (  18.39  )
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

Hi,

On Wed 2024-12-11 @ 01:55:01 PM, Vicente Bergas wrote:
> Hi,
> i've tested the Linux kernel 6.13-rc1 and rc2 and in both cases PCIe
> is not detected on the RK3399 platform (rk3399-gru-kevin), whereas the
> kernel version 6.12.3 works fine.
> 
> 6.13 configuration is based on the same one as 6.12 and there aren't
> any significant PCI-related differences.
> 
> The messages from dmesg on 6.13 don't show any PCI-related errors.
> 
> Does somebody know what is going on?

I'm seeing something very similar on a different RK3399-based device. As such
the proposed patch won't work in my case.

I have the "Penta SATA HAT for Rock 4"[1] on a rock-pi-4a device running a
bunch of disks for me. When Yocto (master) switched from 6.6.y to 6.12.y this
HAT stopped working. Currently Yocto master carries recipes for both 6.6.y and
6.12.y so I'm able to pin the kernel to 6.6.y, but it would be nice to get
this fixed.

I only have one such setup, and it's running in "production", so I'm not
overly keen to take it offline for long periods for testing. But I'm willing
to do some investigation if there are suggestions to try.

Currently Yocto supports 6.6.74 and 6.12.11.

[1] https://shop.allnetchina.cn/products/penta-sata-hat-for-rock-pi-4

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

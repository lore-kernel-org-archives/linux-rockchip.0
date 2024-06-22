Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D547CC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 04:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZdequHi4/ULKEyHdMskK5XYd3HsA8yS+xG2WRTMF7U=; b=QEwQSIusH2ukIB
	4YKToSZPPqkYzCpxzTnIS4wPjuTMMeYaj/i4ZtsVMg9Q0VrEO4ufWJknU2ID6n0XFK5aFYPoM482F
	GkGhzQOr379INZ3q95LIrtLP4RKXoJ4+puo/A8IRndOvhLiJjNigf89t78B7Ga2JbDCzHGrEv/5fE
	WWIYPs+BoDNTWlhyT6MlsHGF1RNg2voUinNMD3MUjb6Cs3qqmB3GV2gvMeSXhEATVe+uQEQdbYk67
	1AZcb11VrampA8ALM7BJvtN86qMQoozUyRhHyRk3KyDWwh6cGGFa+HVmbpGrzLGqc4MCbL/V0G59u
	4ZVtehDDQF1gH7xb8bhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKsNy-0000000BMoA-0XPj;
	Sat, 22 Jun 2024 04:29:58 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKsNu-0000000BMmn-1jI2;
	Sat, 22 Jun 2024 04:29:56 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-25cba5eea69so1238669fac.2;
        Fri, 21 Jun 2024 21:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719030593; x=1719635393; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F9KsD8yt6Ys8mXDglDi64CvjPaqmJRjrP6+6ZL6aKWI=;
        b=d9rf3zbtMLa1xHcw0epm+WKukbMW8Lt91ENlf42huYu+IaOUFefyHUKXeGDDP+a0Un
         L8rtcZrGzAdu620gNDxn9YhAWjgyi1xPYofmjdnqrgPLZlmfpdDFKNVnUFphkKKScM/1
         riEc2EnzjjsNUijQJ5fqGsK+oUM/8+7IHlahXBnOgPhEXOIKZS9FtGaFsKM1pBEtIDGP
         idX/WwxXB2EX1KNo1hMsrGiTPzEWlOoDPniNSQ3U5tzy84tGvaaCI2h7xQ4b8Ww/wxNV
         YzCtafJRttdKsYqSLd2zILu06oKHOhshpRRuqPsemmrhFxGKLsts4Gz7f8Z1H026ZhoP
         0jhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719030593; x=1719635393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F9KsD8yt6Ys8mXDglDi64CvjPaqmJRjrP6+6ZL6aKWI=;
        b=owSKjrwREoYnu1NQGcvmhap0jab52XK65O9ZiNRExHuKJn3hl0jRTd4dvOzvyM7LUg
         cwRLEyRNsuTKYCFFEj2JSyp+S5CCQ5qQSzHu0q+TK0RJRliEkIyePqnzMyjsS7kIhyji
         yPQqkaWKxa29oU8rJT7MQdO7xfVyISXTEot2cPtzlbeilDZVDN2mhLKCuRJuDeEYM6U1
         lzQrK2Sb64T+QozO2QvabdV4mIPb8v8bTbqVzUBDQUp4h7HbPa/vSDqcwD45Fm/hkoI2
         T7Q+Ax1w2Z4FlsncArIRCssK+25EIhqNj01FhvFeSAMZHxHupiPft/2aszHwf8mFd+FL
         JO4g==
X-Forwarded-Encrypted: i=1; AJvYcCV4Nfg+Q/ushiaDy8W57ThXM3l/2+J3PdUPbJSC2nYJPrFqWUovgIFe67C1z3OiZqJ9ipsu3d8JkdsV4x4GZXfZKCr3NEpbCroep66AKBrVqr2B1N38Uj6YW4a/inb/9EEzPuLuGCW9HldPY/7Z0ubm4jW0TRY1h0E=
X-Gm-Message-State: AOJu0Yw6kB/GATO2aMSUN1ZdZeRGVZi4rVx9VubtD2h7ZNdzyC61PqPS
	WwARz81U1iYB/0/XsO8AYcv4/dSRPRy9NOLSiXJdnZ4an090B0MeXp5otVzmJ3eKK7dSHCYIth9
	VU5/foLl/2kse3YVmO3LY9JasDGE=
X-Google-Smtp-Source: AGHT+IE1+yk8ZA9XkU/ojx39oXVgXLE6ORoPSVISfOrRYQzqC1BHglAPcab/AKI4UKiw3FAoN067oBVJ79pWX7QhtAI=
X-Received: by 2002:a05:6870:d389:b0:254:c95f:cdb6 with SMTP id
 586e51a60fabf-25c94d5c85fmr11605824fac.52.1719030592833; Fri, 21 Jun 2024
 21:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240621064426.282048-1-linux.amoon@gmail.com> <20240621212125.GA1406213@bhelgaas>
In-Reply-To: <20240621212125.GA1406213@bhelgaas>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 22 Jun 2024 09:59:38 +0530
Message-ID: <CANAwSgRiOg4sXX5yEoTcogEAKUvO=r49sheSCjiCC7CF10kd1g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	kernel test robot <lkp@intel.com>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_212954_475961_09A8EEE1 
X-CRM114-Status: GOOD (  20.00  )
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

Hi Bjorn

On Sat, 22 Jun 2024 at 02:51, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Jun 21, 2024 at 12:14:20PM +0530, Anand Moon wrote:
> > Refactors the clock handling in the Rockchip PCIe driver,
> > introducing a more robust and efficient method for enabling and
> > disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
> > the clock handling for the core clocks becomes much simpler.
> >
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes: https://lore.kernel.org/oe-kbuild-all/202406200818.CQ7DXNSZ-lkp@intel.com/
>
> Drop these two lines, as suggested in the test robot report:
>
>   If you fix the issue in a separate patch/commit (i.e. not just a new
>   version of the same patch/commit), kindly add following tags ...
>
> This is a new version of the same patch, so it doesn't need those
> tags.
>
Ok.
> The problem you're solving with this patch is that the clock handling
> is too complicated.  The test robot didn't report *that* problem.
>
> Since you'll repost for this, also s/Refactors/Refactor/ in the commit
> log so this is in imperative mood:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=v6.9#n94
> https://chris.beams.io/posts/git-commit/
>
Ok, I will follow up on this process in the future.

> >  drivers/pci/controller/pcie-rockchip.c | 64 ++++----------------------
> >  drivers/pci/controller/pcie-rockchip.h | 15 ++++--
> >  2 files changed, 21 insertions(+), 58 deletions(-)
>
> Nice reduction in lines!

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

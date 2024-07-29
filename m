Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11780C3DA7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 12:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZknCTa+54qu+O8syerQwcjK9DBF2UDt5DQaCNdWMV0=; b=QehL5cSp4XW72e
	9lpa40znITvANiKV0vyOsv66HXPB8gAi23dmrtlMzgpOACT0gO3iMzKUW/fLqXakwYCamcaq6Cz8/
	Y/f7AsXvxkTX4q5cpqMBtgy7omSRcUkz8BXtKh8qnf+QBhxUDsUu41nwdulgtzb0h3YBiepIEePk6
	28EkUB4V8TjdWPSST3Zf1zAGOWMPwyDpZ20CkxPGRS8ODbYj31YnExV7lZfgSTFGJhed0pOQg91eu
	/Jw66vJT36M5BBN+LMIqg1oswfzX8czUVTNAqPFOhAbSWcwPIiv8vU+tETCjImJ2ou2eEWsQ+UGRG
	KY0nIYY1AzGN5Lic3cuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYPht-0000000BHDQ-2JyZ;
	Mon, 29 Jul 2024 12:42:29 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYPhe-0000000BH7H-0yHw;
	Mon, 29 Jul 2024 12:42:15 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5d5d4d07babso1159122eaf.3;
        Mon, 29 Jul 2024 05:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722256933; x=1722861733; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=50wQBaCWvP3be2O70xJY2fE8pNdwE9rQr3qC/amQcYw=;
        b=YQGkC9s9wtAKi0vrWwhcMv2II+onVvkblDRG4Dybej+o000kQ16EVLUgxnV3g6+PxJ
         Ubh4HAvj45pGTTbNoiBH/vyao7Sayg7xL5+A88yyKsyAJ/NnEZUb8jF2u8zyHvFr8OPy
         EMcQQ3Gy2R/BQrhaf2AXVwoMRayTig8gIGknWx96YWlYlcFI6nAaEPMbRRsxx7BAf92j
         uycD6dbtt1wMz5OQ7YXO19mOJ1uL/O5ZfetqL1Ud8x8Tv+JRkgoz2OkeS0o/4DY0+5hg
         Ew7u2CKzD9Aw9d7ceQ9k33ACsgqxnvvxjWBvFzVNRMGxMHCkHnjwd0A8SxP4noTOa7lx
         6i3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722256933; x=1722861733;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50wQBaCWvP3be2O70xJY2fE8pNdwE9rQr3qC/amQcYw=;
        b=ewpgZd2DwyiQJbegwnSqiVt8DlN2bbXpOjKzISctwHYJ5NmfKoJ9l2H52GRexl6VQt
         N5rU4IX2dI4pkztPErz0M08iFASV8f8TfI7reve/E4X4M4eYgbLZ1V7RLzQiAz6nCCPF
         ZN5+hnJHj6TqGw1s8Q5CoJmxIhyaFBU6/cwNmWcfxOSoWLHX93PC0986bz+1j9kac1tL
         yoW8S6dI2Zlph4JtgRGbQuKWCyAK0/hUM+bGzI4FDYuY3/M5innP465txk56mXecoVvs
         Tz0TmAZlcm63ThPhPLpGWRTmbu8upOv7k7BlwoZSEfpmwW/5PNcMg+F3LYV9mpyS3/kL
         bQZA==
X-Forwarded-Encrypted: i=1; AJvYcCXg2mGZF8hYsFkt0cyJ43RveGR4j0gxovyCcCAFp3Z6P3+jlO6uI19U53w7CCDWwls01XVj2BxkmT8GaCUWhG0lPty/zwgu7IPj8wP7mkbuis3chmHSvh5YCRI5lVQeKeMDhOK09NHU1SIC89f2YS8vAdBSIbJn0Ys=
X-Gm-Message-State: AOJu0Yw2adBB2IYAiNKGoI0AUUuu3PuobKzUB2MACHBl1E4nVJd+iAt1
	YjL+lFZ9acum80YA3B+/fYNVSGghbeWKm9ZTvNfxnjxSrss8GHVj1HAqSUtJaekrABGvSFaBAbI
	074fTe169e41gLgmJSZYe2p7HPG0=
X-Google-Smtp-Source: AGHT+IG/IhY6BOtJ5bNXqiz4PGv+OfLOMpBAfRFh10aPsIJL8RqIWHhrfvsbo4BUlSlSzpFY1NeSsHmByywldigtv6M=
X-Received: by 2002:a05:6820:162b:b0:5ba:ec8b:44b5 with SMTP id
 006d021491bc7-5d5d0ef49afmr8650354eaf.3.1722256933080; Mon, 29 Jul 2024
 05:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240625104039.48311-1-linux.amoon@gmail.com>
In-Reply-To: <20240625104039.48311-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 29 Jul 2024 18:11:56 +0530
Message-ID: <CANAwSgQvJ8YxWwMUfNp3EEMocPCbi0jR=cLWFFgsFrK3QRr3KA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_054214_292769_C725C56A 
X-CRM114-Status: GOOD (  10.38  )
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

Hi All,

On Tue, 25 Jun 2024 at 16:10, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Refactor the clock handling in the Rockchip PCIe driver,
> introducing a more robust and efficient method for enabling and
> disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
> the clock handling for the core clocks becomes much simpler.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---

Gentle ping ? Any review comments.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

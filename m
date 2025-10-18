Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC9DCCCD184
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 09:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6FLy3TgjsxQCB242z3i0wAxvKB4m/mx1OvWqC+VqFI=; b=gPYG/E32DZ1RAh
	BGCUl5x2wtEnpt2nNIM6weRUgDZnstf4gLz2bl/GSe9OlfsXdNxIq8dRw7srKSK/RUl3NGP6geQMF
	v8WOTCtaHSLdcaTfl1Ii+H9SuvX8I6VKE2gKyAhAfNAzphpqxhGn5VqWge+LUp8UPnArFE46b9shA
	8OPw0hpiTsY0ok1Xa0odNsU7tqIwWTvQSBXmqCvRVxLZn/Zd4GjI2HpxFQY00AFUu0juQKkr75pn8
	yE5kUwziOAtNeo5t6Chj/kmrAIdyStjk/fxfHfivx+f1yvcH6AZIxJnOar6xOWwchdeSOQWRH4oZp
	ZXr7XqHDBrbEdBkanQMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA2sr-00000009iNx-0wsh;
	Sat, 18 Oct 2025 09:05:53 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA2so-00000009iND-0Xon
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Oct 2025 09:05:51 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-63c1006fdcfso5047428a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Oct 2025 02:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760778348; x=1761383148; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6z6CG4Bzykdg3VlQO62kpKPKIN5Ed0HvWERMlLp9z1M=;
        b=BLdlWlbRVVbAolHfjABaPI+zbDmjZ6xUg+rX8ubBE9porNObFv8oiojSQY5M+7y/EJ
         bbtgy0qyyjS1B2Q7EpDueNpFicTynmlyVi34hzHWhkF6mbIUVaCs6621Fd413t51OSHw
         2vwbnoneidbeHRpq7OuYBK0MiS81c6HHcVzeYLLeiK9uuHOQmtnm8EudikEaB9ByyV00
         wCNMp2K+XXheNVUoQrdKePSsboWRTltEQ4/tvTZrwkTkaR69/UGWLWyP5bIi+YPNofUo
         viPuk5i4/815b68zVYPXECT7eyRskflSIOXjzgXQNCwnGFbO+SJQ6Fq1/41HlONsSQNc
         7/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760778348; x=1761383148;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6z6CG4Bzykdg3VlQO62kpKPKIN5Ed0HvWERMlLp9z1M=;
        b=QBfV+AJNhkJf9YCSOt18J05g1DYpjUfdXJL6moGfwP30RmRd0vYLK9DJjsBBg7eLZR
         laEcqBLguvlS/a7rddNbEDxa5BwYus6/067ZraoZTshK26gfv5n7gEiZJLvgHiQ3Rsmr
         Ge7/Var8L+zNoq2ze7c/umxBml67Bh5QIlRDNdRRawLeAocdNZf9R3pGv1vyZQVMayDL
         7EeASzXkeBvv53hHH5hUrk7A3a/0czVtdn+eppswnzgUGPJKj0cO/pX6YgIyIfJ4SgyL
         hiA9eqfse8kudZHqDlUyFtgzlxZMhJXBYv04wH4OsAQmllqRvZ1S+gUT4kQdf/GTNcuR
         3Qcg==
X-Forwarded-Encrypted: i=1; AJvYcCVlAjYA1heAlom4Z/iQwD4dOIcK+grtdDY+h79LdZb6vSq65j18FdBo0ZcJpv2ztBAUa7KJerRaL+nCa59yJg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwFFccQ1jNVnI4bskR5QulM+QI3HINPXtdmGO/IeqU5Q9VETYFH
	K+rcNWzkqpZZKvzeOHMvCuctdvoQgx11xVsd+zLmr9ntGuQ2RGVrqLFFxInC5Xel2tKtEu7jZYJ
	01EAEgLwxvo4Hu84TClzuSgvwFW/1n6Y=
X-Gm-Gg: ASbGncuF/+iJKWDDuRUurMX5dMHHj0vgKWiGrm5mjU1xty9uUT2E1Jrs4slUeH7RHVw
	WvcWYtIazy1SfGLJVBYS3JMF2l8Tqrn94hExAgqviblzaYcVRhyJQ1pD+2CgEoX8qyZLuU50pD8
	mStIrkkiU/atjBhjpKTWS3+N7ZP4YGeZ4h+3KWu9RqmdB6S3eX9DclVmMTCestrDsUdwwt81ynK
	Y5jJuRNyuyNC1LsmG2FG3qHGbwuEmC+shTJjcU23YWTAIgTrmMBoHMBmpY=
X-Google-Smtp-Source: AGHT+IEhR89+OlZnqrJ1xToJ35S4hHteVi05MGdBYp0FB9E+H5DwaPu0w+LV/8y6BXwE5xnOmNRU6JE04b6xtGtpRL0=
X-Received: by 2002:a05:6402:4504:b0:63b:f48d:cf4a with SMTP id
 4fb4d7f45d1cf-63c1f578eaamr5362961a12.0.1760778348106; Sat, 18 Oct 2025
 02:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20251018061127.7352-1-linux.amoon@gmail.com> <071f563c-6d09-46ea-870b-a51e0522bfad@web.de>
In-Reply-To: <071f563c-6d09-46ea-870b-a51e0522bfad@web.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 18 Oct 2025 14:35:31 +0530
X-Gm-Features: AS18NWDj5t4J8Su9s5gXUOjbXZcv8D1D0shD_oUkWVHtMigAOGJ_VaoJUxZoA-o
Message-ID: <CANAwSgQEqv2a1MGkGtj8CpXSKOXv=_wV3afOgn=iri7uqnj1bw@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip: Propagate dev_err_probe return value
To: Markus Elfring <Markus.Elfring@web.de>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>, 
	kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_020550_180482_C10F0497 
X-CRM114-Status: GOOD (  15.48  )
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

Hi Markus,

On Sat, 18 Oct 2025 at 13:09, Markus Elfring <Markus.Elfring@web.de> wrote:
>
> > Ensure that the return value from dev_err_probe() is consistently assigned
> > back to return in all error paths within rockchip_pcie_init_port()
> > function. This ensures the original error code are propagation for
> > debugging.
>
> I find the change description improvable.
>
Ok, is this ok?

When using the dev_err_probe() helper function in rockchip_pcie_init_port(),
ensure its return value is consistently assigned to the return variable. This
guarantees that the original error code, whether it's a specific error
or -EPROBE_DEFER,
is correctly propagated up the call stack for proper error handling
and debugging.

>
> Would an other source code variant become more desirable?
> https://elixir.bootlin.com/linux/v6.17.1/source/drivers/base/core.c#L5031-L5075
>
>         err = dev_err_probe(dev,
>                             reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS, rockchip->core_rsts),
>                             "Couldn't assert Core resets\n");
>         if (err)
>                 goto err_exit_phy;
No, the correct code ensures that dev_err_probe() is only called when
an actual error has
occurred, providing a clear and accurate log entry. For deferred probe
(-EPROBE_DEFER),
it will correctly log at a debug level, as intended for that scenario.
For other errors, it will provide
a standard error message.
>
>
> Regards,
> Markus

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D61D2F7D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFEnsUOYezI9E8vI5cK401y081UojusIq6DvQhJMx9Y=; b=uAlyw8aLtCPui9
	T0PkY++8zC6rU64QsBepev3i4nM58s/qBKkVYMERE1+A8fIegDshpsBAxEKdpk1X4Kl4t87QEUFeY
	rY1lGU7SowDCOsYRArq4zEXlK2zoIq6WyWR6lwjGYnOK3j0eg3qilRrpo/HTiFZRlRIiECPLNe+Pm
	YIJ+TZaLewtodCwUCPv807PG4hnahjpQ7MaOvoEMRl2Oj1R5Yv3EM0D8hTrg6S1ixZ1nSyRcVwRC5
	HzKjFIV7w2FXB5AqjwMaPt5pytA1npPnvCabfOYMiTdrBBrvCoq6Kw9o1C20LvP990gdF9Xd+uTtL
	m2wFfDCtPDrpaGZP/2XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Jbu-0000000DpmE-0hQb;
	Thu, 17 Oct 2024 06:03:46 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Jbn-0000000Dpkq-1YTa;
	Thu, 17 Oct 2024 06:03:44 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-288d74b3a91so335741fac.0;
        Wed, 16 Oct 2024 23:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729145017; x=1729749817; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iD9onH6cXMjOVhbOxjnOcgYVA8etcnhKUQF7QMAypMY=;
        b=RhWNGawW0SVmwT+N7R0l+4Rug1vP4JVGW/7OHFI5Tix8hx/t5YQKkU+3MeetHLxCHv
         SuIBzC8QeYFQp3oBclLXSlslxy2Zvqc7j4YV1hsyKGzHjg2LD79h6EIemg2x7e8Z9tTM
         o8zjJVmlgeq3IsDPLKDBi0Dh94BrWnibDAwgxpr39iFqJXp4OfY/zDLdqPAjKzx9JuYn
         /X31UhT12LhdybwD0301n5W5Tm7GTMSnutrQYzw2Ct3Tmm1Nk2scEb8+8ezbVuF0MWhb
         +QCD7I/P6e0GePX3ctY6ZHLgFbkv8OMmzSYIgZ1GY2IZ2+xwD7KNTpmwEznGvbRZ3ag+
         Yk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729145017; x=1729749817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iD9onH6cXMjOVhbOxjnOcgYVA8etcnhKUQF7QMAypMY=;
        b=oYCnS73QGj1khbv0dPpeoygBzquDojxY0h8bjik1i2MwGnECJ7Me/28Np9heyl+kcp
         GU/R0RrrCL+gl5Tk30mhB663EHTXSW3IBO4qXZGlx1jYHlyl5tuEPb+MwBu4IhOuFH49
         3wEI9ORC9Wya0rBCmJ6wYVOJW4m8QnD5Au50orq8XsC9UdwbTdqk/Xm+RmsbKuC4QqAZ
         SAfx/Oh+avqYh2CVxuP39hI+uXlSJhcKoUR/7wQM5gybSd8OEnHiMxP36BE9B7Ww6scv
         weFW7D9gTNjy9aqQo9KaC+MqH0b+P2GHbPnJQQ1rPYTVDE0gVOlk/OGSH0PlJFqLRNwV
         eQrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEoAdaCQ9ekVOT9BKw/MRPQOOfgEUWp4B+IwRmDulavwdE2WqrtlsfSgRjwD8ASLLtUbt7CMAHzdCuKlLPR2E=@lists.infradead.org, AJvYcCWJKlK6GhZuZDmQHQ3r9lScViR3C7H/LL0F6nRiy/gNSDFr32+3Vrk2gXe1zjbRp9+laQxY5zn2Sm7XfAf+3pok@lists.infradead.org
X-Gm-Message-State: AOJu0YxoDrpMNHuwyUjloULj56PgRisn1SsNMNhcA5A7NltmG4Ktk/up
	nA2LBi6vOihDjGZpUeQ7EGl81gJuMR9ADn/KvwRrcPwn0nrRidjv1LP+zu9X2iEomFh6+PhexYr
	4tKbmuvno9Auwp6IwuFww0pE/t+h4HQ==
X-Google-Smtp-Source: AGHT+IG6y46zeLJj5fn7vo6K0/8lukV4iLeUpBsTMojcWCqJe8Hac7uIw5IEZ3mC1+Jq86JcRevq9Rf2HjUvbpGCrVs=
X-Received: by 2002:a05:6870:911f:b0:287:b133:8aca with SMTP id
 586e51a60fabf-288edead059mr5274887fac.25.1729145017495; Wed, 16 Oct 2024
 23:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <20241016114915.2823-1-linux.amoon@gmail.com> <20241016114915.2823-3-linux.amoon@gmail.com>
 <20241016182343.vocxyi5ry33btw5o@thinkpad> <CANAwSgRnd5jaZjoNtCLcq6nRGz3gC-VwjhxsiG7haiowrmZs_w@mail.gmail.com>
 <20241017052829.umil6en3rwsz7dvr@thinkpad>
In-Reply-To: <20241017052829.umil6en3rwsz7dvr@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 17 Oct 2024 11:33:22 +0530
Message-ID: <CANAwSgSU=EA9NpVt1cBSjVV-MQjhCn0GAJxvjf=k5o4UusfQKA@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_230339_431921_B866D42E 
X-CRM114-Status: GOOD (  23.92  )
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

Hi

On Thu, 17 Oct 2024 at 10:58, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Thu, Oct 17, 2024 at 09:17:35AM +0530, Anand Moon wrote:
> > Hi Manivannan,
> >
> > On Wed, 16 Oct 2024 at 23:53, Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > >
> > > On Wed, Oct 16, 2024 at 05:19:07PM +0530, Anand Moon wrote:
> > > > Currently, the driver acquires and asserts/deasserts the resets
> > > > individually thereby making the driver complex to read. But this
> > > > can be simplified by using the reset_control_bulk APIs.
> > > > Use devm_reset_control_bulk_get_exclusive() API to acquire all
> > > > the resets and use reset_control_bulk_{assert/deassert}() APIs to
> > > > assert/deassert them in bulk.
> > > >
> > > > Following the recommendations in 'Rockchip RK3399 TRM v1.3 Part2':
> > > >
> > > > 1. Split the reset controls into two groups as per section '17.5.8.1.1 PCIe
> > > > as Root Complex'.
> > > >
> > > > 2. Deassert the 'Pipe, MGMT Sticky, MGMT, Core' resets in groups as per
> > > > section '17.5.8.1.1 PCIe as Root Complex'. This is accomplished using the
> > > > reset_control_bulk APIs.
> > > >
> > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > ---
> > > > v9: Improved the commit message and try to fix few review comments.
> > >
> > > You haven't fixed all of them... Please take a look at all of my comments.
> >
> > It is becoming a nightmare for me, my confidence is a the lowest.
>
> Me too. It makes me go crazy if the trivial comments are not addressed in
> multiple revisions and it results in waste of time for both of us.
>

I must apologize to you for my failure not being able to address this.
I promise to tidy up from my end in the future.

> > Can you fix this while applying or I will resend it with the fix?
>
> I don't merge the dwc patches, so I cannot do that. But what's preventing you
> from addressing those comments. You cannot put the burden on the maintainers for
> your mistake, sorry.
>
Ok I understand this will try to send in the next version
> - Mani
>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

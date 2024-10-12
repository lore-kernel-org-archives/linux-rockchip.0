Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C160D1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+awNjjqi8oMV+RLg9PRGqW+ug8+mzJEG2vl+mQTDv8=; b=d+PA5/7UJebkBT
	LB5PjilALPyHFOF3FvUPkP0gC1hvFOcs1Z+JL8BX0IaYYjFuSb3pJrfJgNGUtoU7jYx+W+DxRngI0
	MSar8QEmu1VBlbBp097m+iQdQrKYBIRmjYhIMK90/jWcjnbk3EWTCvWvr4cEWTkVqP0dovWv/CWJO
	gMLY77ApSl+igXmxsSBT5siulvNDbFjIQY4hNUQ9sICXK7hTsMtaded0FfRuuW1LWbLpVa2Jc1J9P
	QFrpsEAyTO4GF+XHZTrqL4tJa7hT7gQVwg7df5QKok9h6nRkmfKbi01ytkLPzAtlsfj7DHUwNDtRh
	2oB0h27zfx2hBCbaRmqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWbd-00000000iXv-2Iv0;
	Sat, 12 Oct 2024 07:32:05 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWVg-00000000ho3-0I5h;
	Sat, 12 Oct 2024 07:25:57 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3e4d7ae64f2so1156855b6e.3;
        Sat, 12 Oct 2024 00:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717954; x=1729322754; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2akhxe6WSPpAAm/ei6X+bi2+69gjO4LGexVLgUCq/iA=;
        b=FJah4vaRots2+jYLYwrnCXHNZ9Hs1suMvq6rmiewH62066kfFR6bPAWtSnHVa6D4r2
         N8utzS4f9VeRUrP/MGV28uMgFasoEtHAKNAdYTHXAxLi3dy6SI05YWwGKolXRFF7d5CX
         q7irxYEQouytyeg5UVg4I4/Ec5DOcN9jR3iE4xISAe3Pcl8Xl2IH7EPsIh/MQlVuk9Yy
         YsuzZohlN1MHEkvt9nPdyjIoJWw8ivioW8n2iZ2sp9HRb4c4DHarB1vrKYvxlQz9r7q/
         +y82XQiYoPLsTRjOJcCt8ocy4Y5k0o/5j9o9+tLCDSA3auKltjSNOQew9djOx1Q4CVjB
         gs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717954; x=1729322754;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2akhxe6WSPpAAm/ei6X+bi2+69gjO4LGexVLgUCq/iA=;
        b=eAM4VVQyiTYg7AD3157RC36L68e59acf5Y0kppCpcaEIxm+fkNjw7F+QTuQlcKfOcW
         6pkuLzMfBJaWOA/xxj3F0sh9ZvyoSTd2cWxdv2Nqz/YpLW2ND4/gp/GCC+uZ/5x9zcI7
         +81BzfC3OEWyeG1BTIPOq2YQiXKzHv7Hot+IiTnAhy/ZCJZTCuT4EYp25XnXAaj5FDNH
         VJvu2qu58J5BWwqoe6QvwB9HF5Wqpve6KrLYE33AT3nx/pbN+ossFuthrVX4un7aL0my
         MHHXyFe++xRDnfdrJJCJstHiceWN65pEov5MDJSPKNqvYF502lrHPsgQaceNwzV11xre
         +KDg==
X-Forwarded-Encrypted: i=1; AJvYcCUDSaxK7eyDqlZ/PPtqclhC2b/D9LpSF+mCr5RRz5veqQxwlKndRENZqM+X5ACd/4h4GeIC4S5qNFJR0TLki88=@lists.infradead.org, AJvYcCX1q6X+SLBXVn10df9b1aCZjikc+eGbS/Kzmf0i7KYtr6ZW9sWUd+WuLMWVA3EBmcnONgdgen4fkzdBTuegLh2O@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ/3CITIFg7/jKBxvUJpKoUK7iSwOuiJeTFg6TUFgF86aIlr2X
	ZfS0o9736cGJFsR3GGtzvmIXnYwRI+8lyNhZA+cAWSPW23Gjhyc02fSfGr65nOtFT5gYc8WMuVz
	7k9Ruw2Ob5fvmq/dmpvPDkqMpVVk=
X-Google-Smtp-Source: AGHT+IFdi/0GLg6z3B9P6WE9uWvrKWEOG+L6d+sxV2Beo0lP+WWsTzrGN/m9asLbpbHWkRNiy2eRpwQU73DiyR9ueo8=
X-Received: by 2002:a05:6808:23d0:b0:3e0:4db9:8c44 with SMTP id
 5614622812f47-3e5d222e336mr867239b6e.27.1728717954109; Sat, 12 Oct 2024
 00:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20241012050611.1908-1-linux.amoon@gmail.com> <20241012050611.1908-4-linux.amoon@gmail.com>
 <20241012062033.2w7jbfiptvdlklzl@thinkpad>
In-Reply-To: <20241012062033.2w7jbfiptvdlklzl@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 12 Oct 2024 12:55:38 +0530
Message-ID: <CANAwSgS68sL2JE5wafq98gFV-jhWFx5594Ax6+aVW8mpiBgHnQ@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks()
 function signature
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
X-CRM114-CacheID: sfid-20241012_002556_132437_EC250845 
X-CRM114-Status: GOOD (  14.66  )
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

Hi Manivannan,

Thanks for your review comments.

On Sat, 12 Oct 2024 at 11:50, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Sat, Oct 12, 2024 at 10:36:05AM +0530, Anand Moon wrote:
> > Refactor the rockchip_pcie_disable_clocks function to accept a
> > struct rockchip_pcie pointer instead of a void pointer. This change
> > improves type safety and code readability by explicitly specifying
> > the expected data type.
> >
> > Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > v7: None
> > v6: Fix the subject, add the missing () in the function name.
>
> Did you remove it in v7? Please don't do that, it just increases the burden on
> reviewers.
>
> - Mani
Earlier, it was reported that function () should be used in the function name.

Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

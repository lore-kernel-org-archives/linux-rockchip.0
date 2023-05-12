Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04757C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 10:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+OGo7zemJ/CR94B/DUHhyQFOpjrFCTGJCkeKP9hqPw=; b=ABAFy9RvdPolwu
	x2lzmls1dKm/fEOYvwtBEQaN0jwf9/3Y/1Wxxer8on/yq1SD/IQNcT4dLtvrl9ATqmUvcooz89tsI
	yba9vjPIlcRR66771YnSQ4iC3JQM1y1/HxRBQ7Ov4clq7uycYWeiVq46vxFii7HrP6oCsA4nSFWHt
	kWxdmxf4SHheLb+hpmZPTsJ+n3sll+Ku0G1jC622AHF+OiU/eCilECNg+wrMS67YGOX8hDY7M0v/9
	OEKl5oXZWiI+lREWC390uIEl/SEB5kPxSC4w8dWz2iX0Ly2EsnxAyW5VzQR0ELeipftROqUCD31wo
	oZ+I5asx4kwzk2Z7D85g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQI9-00Bfo9-2X;
	Fri, 12 May 2023 10:46:29 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQI6-00Bfkd-2e;
	Fri, 12 May 2023 10:46:28 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3078cc99232so6655623f8f.3;
        Fri, 12 May 2023 03:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683888384; x=1686480384;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oo67O9FRX0GyvAWrdRm6agPjzPmEBmkG90/e6PxM5KQ=;
        b=JCRV1/NQyGX6dw30BOLJmllahdmyGUPU53QIi9FLiR5Vfnxd/uxH57HFPSk2aiYmXs
         Lwb7Qy3ApHZfdD8luXPgw+oPKlxgc2wRL1wd92LiLKvvrCJe9INCIriCfJXnWkAO19l/
         kasDE6ZhNNTv8R8qVQhXsVjD+0Pf0CBGWWOyhOeIW7RLZnfeBxOiGNtz0pqqUFgqfY0l
         J0JW80xxDmkPygm6LCo7LzDgPQOnKoFh35Rj3+iSTA9CtTrnMcqwV9YNV9RmRfVcP86H
         /nCUaDxSjynHnQx/rk7tXbMkQMzkDE3L0xn8uZCFZH9ojCzgZQdUT8WX4RksSCGlQtKp
         DCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683888384; x=1686480384;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oo67O9FRX0GyvAWrdRm6agPjzPmEBmkG90/e6PxM5KQ=;
        b=TtlkeEwyja0xNISZBG8i51VGDcCYXCUkuo8cOuU/UAnIPSrNgl84WMXNphawaPO2js
         IcBz6t5D8yzvTFLkjxohBqgKPkShGvuewqBMvTA7HO7DgFDjPL3ITQ8E4Pfb+Xvpl3lB
         09uCAawCZ+x1p1IjxtzG/N99WLNIzwKWy68Op/zx2Gi/qxfpF+jzleZV24V6aKXaj+W4
         /Fmz/V3vS3pX70TuLYNlHVqqH5YUTLaPfFqTP47/dhfOZ2Wivz+qcLqPQ2zf1/aswGY2
         tPdo92T4vKGbAIP6218TngYyEaR76WJWmHWg8J/PPjFkHdWhWw72FC3PTgu33bDTgCKr
         4faQ==
X-Gm-Message-State: AC+VfDzlIH0PAcgiie1De9GskZEHsTTxNbwQ1ojcOEFfyI9IoztQcLOU
	PNO+iFD9/YdprA2cr135DKk=
X-Google-Smtp-Source: ACHHUZ7cQ6lAGWPK6qsZqTOzReZDoPCdV311+gW5FWzcfuzQiOK30bhW8w9cTIRqHdDCML34gprPCg==
X-Received: by 2002:a5d:5011:0:b0:307:8a39:5568 with SMTP id e17-20020a5d5011000000b003078a395568mr17093589wrt.7.1683888384189;
        Fri, 12 May 2023 03:46:24 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id f12-20020a7bc8cc000000b003f4e4b5713esm5650587wml.37.2023.05.12.03.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 03:46:23 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 12 May 2023 12:46:21 +0200
Message-Id: <CSK8M39MQL2C.3S7JO031H0BA2@vincent-arch>
Cc: <linux-pci@vger.kernel.org>, <robh@kernel.org>, <heiko@sntech.de>,
 <kw@linux.com>, <shawn.lin@rock-chips.com>, <linux-kernel@vger.kernel.org>,
 <lgirdwood@gmail.com>, <linux-rockchip@lists.infradead.org>,
 <broonie@kernel.org>, <bhelgaas@google.com>,
 <linux-kernel-mentees@lists.linuxfoundation.org>, <lpieralisi@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Dan Johansen" <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Peter Geis" <pgwipeout@gmail.com>, "Bjorn Helgaas" <helgaas@kernel.org>
X-Mailer: aerc 0.15.1
References: <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com> <ZFwC/seTfSoaLn0v@bhelgaas> <CAMdYzYoa8dhmBx5MUG0yBPwVVXPXHrYNnR0QvKHXvV=JaKuMfw@mail.gmail.com>
In-Reply-To: <CAMdYzYoa8dhmBx5MUG0yBPwVVXPXHrYNnR0QvKHXvV=JaKuMfw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_034626_866224_2EC62AC5 
X-CRM114-Status: GOOD (  30.72  )
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

> > > Many years ago we ran that issue to ground and with Robin Murphy's
> > > help we found that while it's possible to gracefully handle that
> > > condition it required hijacking the entire arm64 error handling
> > > routine. Not exactly scalable for just one SoC.
> >
> > Do you have a pointer to that discussion?  The URL might save
> > repeating the whole exercise and could be useful for the commit log
> > when we try to resolve this.
>
> The link to the patch email is here, the full discussion is pretty
> easy to follow:
> https://lore.kernel.org/linux-pci/2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com/
> Also:
> https://lore.kernel.org/linux-rockchip/1f180d4b-9e5d-c829-555b-c9750940361e@web.de/T/#m9c9d4a28a0d3aa064864f188b8ee3b16ce107aff


I have some concerns about the patch proposed in the email that you share. It seems like 
it is quite extensive (code that is it not just related to the HW) just to fix a hardware 
issue. I would have expected the code to fix the bug to be integrated into the driver itself, 
so that if the hardware will died at some point in the future, I would expect that also the 
buddy code will died with it.

However, it is possible that I may have missed something in the patch, 
and my thoughts could be wrong.

> >
> > > The configurable waits allow us to program reasonable times for
> > > 90% of the endpoints that come up in the normal amount of time, while
> > > being able to adjust it for the other 10% that do not. Some require
> > > multiple seconds before they return without error. Part of the reason
> > > we don't want to hardcode the wait time is because the probe isn't
> > > handled asynchronously, so the kernel appears to hang while waiting
> > > for the timeout.
> >
> > Is there some way for users to figure out that they would need this
> > property?  Or is it just "if your kernel panics on boot, try
> > adding or increasing "bus-scan-delay-ms" in your DT?
>
> There's a listing of tested cards at:
> https://wiki.pine64.org/wiki/ROCKPro64_Hardware_compatibility
>
> Most cards work fine that don't require a large BAR. PCIe switches are
> completely dead without the above hack patch. Cards that lie in the
> middle are ones that expect BIOS / EFI support to initialize, or ones
> that have complex boot roms and don't initialize quickly.
> But yes, it's unfortunately going to be "if you panic, increase the
> delay" unless a more complete database of cards can be generated.

This is really unfortunate because as mentioned in some previous emails, 
using sleep time slows down the kernel. Is there any way to tell the kernel 
to tell the kernel "hey we need some more time here", or in computer science 
terms, load a driver asynchronously?

Thanks.

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

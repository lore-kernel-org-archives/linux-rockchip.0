Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DAC6C47082
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 00:13:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A4E4613B5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 00:13:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A4E4613B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRMusVKP/BJ4wfMTwa5sCgTmvNL5WCfWHlqNLeSqXVI=; b=EiGARGDefCIKhC
	gx0BoDtx+8uvIQlWwbTDR0zaHVvj9SiSGYegzu+evRLU1v2eGCMjMPN2DhdrbYwQfT30z0NDFeAhV
	tKokD77nE98Pg4yvHcb8n37z/V5malZ2urQr0fJuw+I+k0PuUWcZaXKhyO2Jkbi3NYOc5Y7wtHOQU
	Ufef8cNj34cOH+dxbMinH30qoCYK12eX++W0ZLE6tE1Py0i5F9kaE+bIj0sHNX1kJMEiaVchxWO3+
	BH669I/1THCSFCZlb514NqFaEsXhOT1hR+ClB1nQPhXkMFCyKSe9BLJyG76Rgp94GknM5FuGT9U7L
	waXg/+15Ll4HL6Cu4BZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm3eO-0014ri-FR; Thu, 27 May 2021 00:13:24 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lm3eL-0014qM-Rr; Thu, 27 May 2021 00:13:23 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 ep16-20020a17090ae650b029015d00f578a8so1309165pjb.2; 
 Wed, 26 May 2021 17:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=MK8a+wfYbMpZQpkMTO0OrrMNbE1xthA2KsqFjKZmXxY=;
 b=lcjllHOuDcrH69QG2w9thgwDkpvfPP8QjTCtnCNQF+bzTG3yyrew7geBnk32udsm7y
 qN3qkJdKXsmlkpFpF1axvZxCHwQeltQDNtiYuQaYiPctTfJpHI/p1PUuyzwePPmBBXpi
 57KHnXuCc5ThYYrDV4T76wFViiGwRo0SDwfpUzHXc0QdN2iqqAWboqMi8RSRhKMsFJnB
 4jia+ZmeAg7tFS+h5LWRV3ApWjRGMt+Bh0nc9oQSlpmPFv5bk9nyuzQ0bCy7tTohgn0f
 34wcaGpfPYENnBvO2rKU/+gF308QNHL+NOyvQsPKutJHTLceYufM2B9VB6YMwrPooeDM
 WRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=MK8a+wfYbMpZQpkMTO0OrrMNbE1xthA2KsqFjKZmXxY=;
 b=rS+EhakAt4MnGIjYJwNzUwpCfHtUw8z9383Ilo4GTzlAF2iBP3JweZnnrwgaGzrS1g
 UOpeYbU7frRgC4d9L7Bof7q8k+9x+QTCNKm1jVECDvCnQ3s2liGQ+9maBe8Wl5dNPqWB
 I1uEBBKayQEKDGs9+AeG1qb1tk701quGBXRVQ+1Pcm9c5GAvHxyvMx4/baVHk+laJ82N
 5DeHv3YPkOep+nwcoQifqK2a7KnLURdBEIQU7TDA8hph5skMSvL7OSIIfryfu6sh2qkV
 THM27pbkeMnAbqaZ5hd4jmHJxDvm1GL3L1UOFs3En9eyQdRJeF2kRKjWEm9Ob3l+/yuV
 nFdQ==
X-Gm-Message-State: AOAM532fu2swbgNxTHaex2FJDXP+H4eBuryYodDu2KXZsPAd3dHVM9HR
 l98Xy7j1zvGtpKkWuAFKYPk=
X-Google-Smtp-Source: ABdhPJzUL5NJM4VTL7cocKg5ZVC2mJ+Wumyfgb51EzO/Yhg59dNUggwYPSJgoIzZDQ/TMAzaGigE1A==
X-Received: by 2002:a17:90a:8581:: with SMTP id m1mr774224pjn.47.1622074399842; 
 Wed, 26 May 2021 17:13:19 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id c71sm282310pfc.148.2021.05.26.17.13.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 17:13:18 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,  Alexandru
 Elisei <alexandru.elisei@arm.com>,  wqu@suse.com,  Robin Murphy
 <robin.murphy@arm.com>,  Peter Geis <pgwipeout@gmail.com>,  Ard Biesheuvel
 <ardb@kernel.org>,  Brian Norris <briannorris@chromium.org>,  Shawn Lin
 <shawn.lin@rock-chips.com>,  PCI <linux-pci@vger.kernel.org>,  Heiko
 Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Update PCI host bridge window to
 32-bit address memory
References: <20210526133457.3102393-1-punitagrawal@gmail.com>
 <CAL_JsqLYdXFG11oSmrAfcRoCkSPQYY-VvTr=QVOn8DDmDjm-dQ@mail.gmail.com>
Date: Thu, 27 May 2021 09:13:15 +0900
In-Reply-To: <CAL_JsqLYdXFG11oSmrAfcRoCkSPQYY-VvTr=QVOn8DDmDjm-dQ@mail.gmail.com>
 (Rob Herring's message of "Wed, 26 May 2021 09:00:51 -0500")
Message-ID: <87a6ohniec.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_171321_932951_5CF06F2A 
X-CRM114-Status: GOOD (  25.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Rob,

Thanks for taking a look.

Rob Herring <robh+dt@kernel.org> writes:

> On Wed, May 26, 2021 at 8:35 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>>
>> The PCIe host bridge on RK3399 advertises a single address range
>> marked as 64-bit memory even though it lies entirely below 4GB. While
>> previously, the OF PCI range parser treated 64-bit ranges more
>> leniently (i.e., as 32-bit), since commit 9d57e61bf723 ("of/pci: Add
>> IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses") the
>> code takes a stricter view and treats the ranges as advertised in the
>> device tree (i.e, as 64-bit).
>>
>> The change in behaviour causes failure when allocating bus addresses
>> to devices connected behind a PCI-to-PCI bridge that require
>> non-prefetchable memory ranges. The allocation failure was observed
>> for certain Samsung NVMe drives connected to RockPro64 boards.
>>
>> Update the host bridge window attributes to treat it as 32-bit address
>> memory. This fixes the allocation failure observed since commit
>> 9d57e61bf723.
>>
>> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
>> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
>> Suggested-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Cc: Heiko Stuebner <heiko@sntech.de>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> ---
>> Hi,
>>
>> The patch fixes the failure observed with detecting certain Samsung
>> NVMe drives on RK3399 based boards.
>>
>> Hopefully, the folks on this thread can provide some input on the
>> reason the host bridge window was originally marked as 64-bit or if
>> there are any downsides to applying the patch.
>
> We can't require *only* a DT update to fix this. Ideally, the Rockchip
> PCI driver should clear the 64-bit flag in the resources though I'm
> not sure if the bridge driver would have access early enough.

Following the discussion in the other thread, I tested the following
changes to fixup 64-bit flag for non-prefetchable memory resources that
fit below 4GB.

If the changes look good, I'll send it out as a proper patch later
today.

---->8----
diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index da5b414d585a..b9d0bee5a088 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
                case IORESOURCE_MEM:
                        res_valid |= !(res->flags & IORESOURCE_PREFETCH);

-                       if (!(res->flags & IORESOURCE_PREFETCH))
+                       if (!(res->flags & IORESOURCE_PREFETCH)) {
                                if (upper_32_bits(resource_size(res)))
                                        dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
-
+                               if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {
+                                       dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");
+                                       res->flags &= ~IORESOURCE_MEM_64;
+                               }
+                       }
                        break;
                }
        }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

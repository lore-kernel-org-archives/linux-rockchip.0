Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E3F5C77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 10:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRCXFojbpLvxloFo5/u+0skIfw0vapuWeSaKTjf+Ai8=; b=LOsTo9tN8+xBD7
	JfZ20tqvsNZnPyP78t+8bqKqTOld9IjjTyNmUr+ngQktaxkUzPvQgtxDmOPh12ZgcHIjZ/PLVuNeY
	nu+y/eXl7PCYkZslveG/yI6rmHQ/Dymn54Pc4sLBICuW7RUY3AWTLPwhBpT4LNvqqXaRRUJqde57v
	2DGQh2NHAMP4C2CUsgpa5ubRH3cjDFr6uja3bBK6MvGQsHK3nmzI3tkYn0NyRX91vhCK8MStQyfdq
	4Hjx8mMrSpD5sQ+bGuDSk9JEQBQIBs0FWMRzdZ3cCso/KbIebJSWy9GKpYn2L/DzgHAMYvjZ/7JQR
	BDyU4a7UdvNrVZFP+1uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwhOM-005tPy-0v;
	Wed, 10 May 2023 10:49:54 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwhOK-005tML-0Q;
	Wed, 10 May 2023 10:49:53 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3063208beedso6662541f8f.1;
        Wed, 10 May 2023 03:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683715788; x=1686307788;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rkS+JtL/4x2F2nhP046jklHsvY5QYHCKk9mJ3UxHXR4=;
        b=KDLlmdqCNLFvEUJVcsjXC40vvrMwRIfh1bKgaRqK8L6r+8TNiuAECFdNkAUFAjKWA/
         4AkPbPyIcFMFRIFanm9dm+PXJbpbeUowPqSxqQVEGuUKogn9mUzHvHyaOPU/GMXDhsPD
         +gfpIpqIsFtFy62LZFlThJw4k2VrMBUJqBvdWxF5UVwmZjH2zqGbRyNjjxMlB9x+QcwM
         kq7B4B4Vk6Ssh1BZmU99g3neiTAeVM3ED0PylGU6hJaamGcKcIhQaJ5XkUEUda7HuokW
         F4y+a8qjv+OXiYpvpdJVm3XEqUYGTV15IqEUTjA/6xLjiMeUTdYJ1dyGT6krZaFp9dUC
         yQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683715788; x=1686307788;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rkS+JtL/4x2F2nhP046jklHsvY5QYHCKk9mJ3UxHXR4=;
        b=XmQY2+suBoZ1MR4RLUHNB5Z85NDkWGJTBuR8VAf6o2+zrC8VFqDkxD7X5Xuty4D4N8
         EfUSKrVi27rlyd3/A45VQ5QfsRf29h17kGZvMExsqOH+lEo69LCfdw06IAs8aO2VQg4j
         V7zS9j6J3EbAVirUbF517IwstTk9MuwE4TQeuoO24XjTa3sUkdeMpJpZzGDAHQqDRBHc
         ojYau3eCihuMnEL81gbevUdSZik4fKJ6t1c9AEdsatns2e+9wDGwJ69JgOuzkSGmhfbw
         KHtmOflldrcZX5Wp2l4LAAnLtGm0dTrLCkPmnVmooDk4ZxfYD8dSDlcrZwnddlGM8vrS
         Tonw==
X-Gm-Message-State: AC+VfDw2Ng3mrBbxvu58Rn51NbAoJuLV0t7Iztt0wb5zI4yo/jIiMh1i
	d9Ig2JjIq/v6M7JNTIBz+T4=
X-Google-Smtp-Source: ACHHUZ4JGmvsYsJs9otSXwm3s6rqmGtYaWe+Fx7RUYPcU7zchmQo743avEngeWoWjBLKUoQtZXMAWw==
X-Received: by 2002:a05:6000:1191:b0:306:462a:b78d with SMTP id g17-20020a056000119100b00306462ab78dmr10354606wrx.53.1683715787842;
        Wed, 10 May 2023 03:49:47 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id o5-20020adfeac5000000b003065f2a8a63sm16871648wrn.27.2023.05.10.03.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 03:49:47 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 10 May 2023 12:49:45 +0200
Message-Id: <CSIJFLM445UI.1W405TTWNZYYU@vincent-arch>
To: "Greg KH" <greg@kroah.com>
Cc: <linux-pci@vger.kernel.org>, <robh@kernel.org>, <heiko@sntech.de>,
 <kw@linux.com>, <shawn.lin@rock-chips.com>, <linux-kernel@vger.kernel.org>,
 <lgirdwood@gmail.com>, <linux-rockchip@lists.infradead.org>,
 <broonie@kernel.org>, <bhelgaas@google.com>,
 <linux-kernel-mentees@lists.linuxfoundation.org>, <lpieralisi@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Dan Johansen" <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
X-Mailer: aerc 0.15.1
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
 <2023051014-foe-multiply-ffff@gregkh>
In-Reply-To: <2023051014-foe-multiply-ffff@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_034952_195516_3B9900FD 
X-CRM114-Status: GOOD (  13.11  )
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

> On Tue, May 09, 2023 at 05:39:12PM +0200, Vincenzo Palazzo wrote:
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -38,6 +38,10 @@
> >  #include "../pci.h"
> >  #include "pcie-rockchip.h"
> >
> > +/* bus_scan_delay - module parameter to override the
> > + * device tree value, which is 0 by default. */
> > +static int bus_scan_delay = -1;
>
> Please do not add new module parameters, this is not the 1990's anymore.
> We have per-device settings everywhere, this makes that impossible.
> Just use a DT value, if it is wrong, then fix the DT value!  No need to
> have the kernel override it, that's not what DT files are for.

Thanks!

Cheers!

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

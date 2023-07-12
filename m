Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 542A9EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 15:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0ljAlskv1Uc5EKUiQc7sgf3JIYgg98YVUnOCNyB+6E=; b=q2vCs56qwmIjmu
	c1s++hxXs4Q+5cwTwU6tujwOz1U2aUCNfIyMjB1qV32Gn0VTadUN0kwEsb3k7d0ku+WHKhJoAQ0IW
	h0mn65FFmRysOifY4iSRCUOUxoVEAh0txtG3j1NeK44pLXzvSFISlQ4Jj9MLC7kc90VZl49NoSiN6
	4Si0mw/kNcIxcUYf8KSIxC1bcVveKv5q7xlv84SR8cPDnOXpvBJ00D8COejsmgzWz8292eIWWSUZ1
	AcF+8oSaA/WYhFbFcREZRxM4nLJJT4LXCeztvGCvmmMjXjDFESRcZiZfPSlasnj8VlSbJH0SeZ5Yz
	1BhXgAtSzMEVvKKPES4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJbzC-000OUi-2G;
	Wed, 12 Jul 2023 15:42:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJbzA-000OTK-18;
	Wed, 12 Jul 2023 15:42:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fb7b2e3dacso11571899e87.0;
        Wed, 12 Jul 2023 08:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689176552; x=1691768552;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rlyvltT+TDsU8aorJ6katMKTRoqeM7opfaR5ApThWtM=;
        b=EFG/VXUjRh4UrfnXYu5nGLwTrAls9lAdWj9WRQqTaVgmLqFpPlijetLYty46AciUYk
         +TYOOi+CjPTCHHO4ZwWVYXuV2yeO6VUh4rkdrQNvxtakVJe6EaLYYDYjHGePsmTfPOry
         WZu+vKUi7ltZIXAld1oH5gheeh8b88JZTWoocV8gZmP7yZYuwj7lLOrwmBIphlN8MrVy
         xlXbBizjbziObo7MLM/LIpXM3/4ynnHOXBnyFIx0SRUjjphP7OBUCdfiaeFvIixpvuLR
         yWc84RGUWZkNqHbJ6p9Fh6S0+zHtmfecql8xJoJPhlA7PknbRXJ8etErJ6z54eeUEUZg
         yTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689176552; x=1691768552;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rlyvltT+TDsU8aorJ6katMKTRoqeM7opfaR5ApThWtM=;
        b=XN64sDOaLlNhA0K/lyyPh8C4Tp1wVJUeD4s2IoVEyCGmvrZqY2Uo7IVXYaf5PHsjAG
         hocnajloPUqyosszxex4elqDgKvhmexiXV+VTD6lOh3IREqUKZRtjxeEEUlnvrvzYcyy
         vm09Wwnv0WjY5qwAVxIPhFT948miCFeCZh2Kqfu7DDA9pIwIecD3d5weAQw/Oq48nVEZ
         p8SdvMGRvd8jB8/YD0c4TdIk0L/g9JOfoKGOKJSoYqm7tBRUbS7IAeWXDoWSX/d1oq7/
         vIR8S0aHq7bpwUxaxCfVuCZhGr3coWqiOQZJ+t8XuaEf9+51pf/B1GLPO+u+0+qkA4re
         VuRw==
X-Gm-Message-State: ABy/qLYHHHBi1nbxlMApRm4KhVyWRkGRNNysULBuRXpJTjAyUXxl25CY
	I9Ywk1LG08gu6bVkIj+h6iE=
X-Google-Smtp-Source: APBJJlFh1bdUChwGl7U4vHb1mdJrD+m6UPFPwDryvpr/QaFR5P9DcyKjGaB1u39/J2BwE2Bo+5XyMQ==
X-Received: by 2002:ac2:4f0a:0:b0:4fb:7be5:7404 with SMTP id k10-20020ac24f0a000000b004fb7be57404mr18891991lfr.63.1689176552020;
        Wed, 12 Jul 2023 08:42:32 -0700 (PDT)
Received: from localhost ([165.231.178.23])
        by smtp.gmail.com with ESMTPSA id d11-20020ac241cb000000b004fbc6a8ad08sm756979lfi.306.2023.07.12.08.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 08:42:31 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 12 Jul 2023 17:42:27 +0200
Message-Id: <CU0B41A94HS4.32OC49OW4W5SW@vincent-arch>
Cc: <kw@linux.com>, <heiko@sntech.de>, <robh@kernel.org>,
 <linux-pci@vger.kernel.org>, <shawn.lin@rock-chips.com>,
 <linux-kernel@vger.kernel.org>, <lgirdwood@gmail.com>,
 <linux-rockchip@lists.infradead.org>, <broonie@kernel.org>,
 <bhelgaas@google.com>, <linux-kernel-mentees@lists.linuxfoundation.org>,
 <lpieralisi@kernel.org>, <linux-arm-kernel@lists.infradead.org>, "Dan
 Johansen" <strit@manjaro.org>, "Catalin Marinas" <catalin.marinas@arm.com>,
 "Will Deacon" <will@kernel.org>, "Robin Murphy" <robin.murphy@arm.com>,
 <skhan@linuxfoundation.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Peter Geis" <pgwipeout@gmail.com>, "Bjorn Helgaas" <helgaas@kernel.org>
X-Mailer: aerc 0.15.1
References: <CSK8M39MQL2C.3S7JO031H0BA2@vincent-arch>
 <ZF7m1npzLZmawT8Y@bhelgaas>
 <CAMdYzYqV72=pQa-U3a2N7MZ2ChBNL74QrxHQLbMZJxiftTK9sA@mail.gmail.com>
In-Reply-To: <CAMdYzYqV72=pQa-U3a2N7MZ2ChBNL74QrxHQLbMZJxiftTK9sA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_084236_386256_F83F17E3 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
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

Hi all,

> Perhaps a hook mechanism that allows drivers to register with the
> serror handler and offer to handle specific errors before the generic
> code causes the system panic?

I have some time to work on it. I'm interested in exploring the 
solution proposed here. However, I would appreciate some guidance 
in understanding how to implement this type of hook to report the error.

Cheers.

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

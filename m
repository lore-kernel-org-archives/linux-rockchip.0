Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C519BEB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 08:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spG8iyiECBilTP8bpEHP4vsj6nDrNEBROtYhc3LWBQM=; b=y2mzn/ZgvKOpnn
	zc6JrTIDLqGi/2yg6fzcYOrY4U5WdCdw6ZFI1nAnpCHORn1R2NIwknHuldTSJleNc/FFSkBsBIDbc
	/7ZKq+li97ju3GcUEuXWHut8r5F+GIW9aa/B246PA2rIBoRwjdSYarITVWj0Es53xiynn4UGt4vSM
	u1vuSBDvByu6ifBsmfH7DipXDSqtBZC1SfhJV7KECia9FUCuIf7g969MHQWEVxf58MtCSONyRaFMj
	bPm8XA37yXoMeoJrNL2B3sPQhIWHxaC+/POxKuaUSsGvydypvKPLTPSmIDTNJsai1KYfBBqHa8DQ7
	AbN98Xg8k/uhiCHN/DUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHgnp-003zdh-27;
	Fri, 07 Jul 2023 08:26:57 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHgnn-003zdG-0X
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 08:26:56 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-47e3d3e859dso589052e0c.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Jul 2023 01:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688718414; x=1691310414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EboC65fgWAREYtxWfvNz98ia50RkMIl0KWcP+vppEMk=;
        b=KRHd5WV78gI9Ca6CIf7kTwe85HlLrHDZxoiMCI+Dxd2cjcar/yfhTI+IPdBDnVHfiY
         ABlnd9FB3Wqyr7tGadQFyUfw4q8+HEMY+8YGG2AEgIKl5+chkm+W2zG+gyBKK9NhdL1q
         A+mmr7TPfY9U7+5aTmbXkwxFahxxnADr6Xnzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688718414; x=1691310414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EboC65fgWAREYtxWfvNz98ia50RkMIl0KWcP+vppEMk=;
        b=H+GxDNDarvSlRV+tnQ0Y0l99HJDDWU7nMzriILlI9PwCA4w3AAxX3XrZt7MQL91MX4
         G7gF29Av7+QRrbSeugflBmJsMrxCjstEUx1/txjBdo6vDFXJ0p8O7201wtJPfk+0h4yJ
         q+u0t+4ZWsidesswo546sf0Tiek/tqnsirPUl1v/5oipWBjOo4iFl1UGSP9MiT6bKWvg
         k+J9wxXL8HSPXdrX9PIzRpNjIA4ZSwgmLYBDxV3WujzB27FAG9824Yl20CbLOdHX04Mx
         10uUpQ1gcZsSi7GlZqEjxMXTj0TggaiBTa8h5LodzLhpF6qKCjbfZAD70F18TBdt0PoQ
         oCkA==
X-Gm-Message-State: ABy/qLbYX3XC/ddva0kLJJSco458xzKip3iIxZOXFl9pMcao8YMBqhHj
	8qBw4F/BrvGYF6NXj0v3XOXPNRZS/kQMfnpk/tDnFA==
X-Google-Smtp-Source: APBJJlE7GDj1D77CvDfV4hOrxhawtbrbW6xhmVurbRx9ioCi4uqonWC0D1PInEw++SDhnLSuQiuC4b4wrc6mEO4lKNs=
X-Received: by 2002:a1f:5c05:0:b0:47e:19b4:85e9 with SMTP id
 q5-20020a1f5c05000000b0047e19b485e9mr2901372vkb.0.1688718413876; Fri, 07 Jul
 2023 01:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230706101100.75654-1-frank.li@vivo.com> <20230706101100.75654-7-frank.li@vivo.com>
In-Reply-To: <20230706101100.75654-7-frank.li@vivo.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 7 Jul 2023 16:26:43 +0800
Message-ID: <CAGXv+5F+FEtAoh0hs8Ld5Bz=3zvCZHSQ45v-oBGRZnv7KeNaxA@mail.gmail.com>
Subject: Re: [PATCH 07/11] media: verisilicon: Convert to devm_platform_ioremap_resource()
 and devm_platform_ioremap_resource_byname()
To: Yangtao Li <frank.li@vivo.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_012655_205654_65498368 
X-CRM114-Status: UNSURE (   6.59  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCA2OjEx4oCvUE0gWWFuZ3RhbyBMaSA8ZnJhbmsubGlAdml2
by5jb20+IHdyb3RlOgo+Cj4gVXNlIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpIGFu
ZAo+IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUoKSB0byBzaW1wbGlmeSBj
b2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8ZnJhbmsubGlAdml2by5jb20+CgpS
ZXZpZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1bS5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF60CCCD19A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 07:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlJ7AXsXBvARX1s0bVAODdxmbQ0sL42EQ/rgv5sYUn4=; b=4cFjn2pFQ2F+/H
	ZtGfmJlmptzYa5v6sxozMkR3jIkIhBa02qpwAD8DTD6xJmy97nWfGUD4rRAgHKJDAGJOZJWAnT8Y1
	CTklR4gA00D3Iws609kkLWjv1P1nJQJiAo//sNQdbBEgzimYqw1MV+s7rSg1OnaTmu7zfcTBt3Dqg
	bW0GwwqDnk9PaLBEdVzLO9/cE8PIfvtQUsrHgS2wB5p3Md6a8ppBVloBsexrEy7y+LWXZdJIkINov
	hNhxaghUA3q74CaM6Kv4SvxP5yiK2Z2pJVwJ7JvAcxf+gpRM8bmxed0CrwogmzeSqMx0Xp8IZk72j
	CMIXqurLrgQrVv2Q9f1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLFy4-0000000HXwF-1rJK;
	Tue, 18 Nov 2025 07:17:36 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLFy1-0000000HXv2-3Tdn
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 07:17:35 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-bc0e6d91222so3681662a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 23:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763450252; x=1764055052; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1h/LtINK8q4zriSv56jSMYuYj4wBO4XsX7/xajbaKQg=;
        b=HayV3wRSSmvCmagaWzhp2p1S+AmyhUhI2uvB74jib93v1xnRRYM6PHSUDbwM4KAN/+
         xCFd3Mket/EBcankl19qbRHPgb2XxGKF+wAfXnmSsKYuBWs/K/YL9OCLBmuiBUwhttAM
         cl1fMTo5i0BgjQDwwwjEsLoO5czvanyIGrOZdz5Ai2AMO1DyO/0/QIWwf0DjvTPpYyGf
         z8IVOs1jMcPTsvQHuPD/K05nsxSFFrX2jpFQp+XxdaC6ce2DqvHlNXc7OLcuDsuT3zaG
         uqDelYqY77DFMXRK0SWu5cgAtZSWBE+Eub6zqGxuPdmrplqxpsjuBiSTTuc/VAeqOJyr
         XDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450252; x=1764055052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1h/LtINK8q4zriSv56jSMYuYj4wBO4XsX7/xajbaKQg=;
        b=Q8dBJb4HfL6sEyHleVdAZ8uZo5+N5HevfxR8R3VOZHg4UIDYHhhYJnZ/dctkkF0JsJ
         iujAbducTlzQ69Lrvgi7UDvUJwloq/sjvdxOsGzyco4pt1Jy2ZR+xeP9Db9ulmRCmhQZ
         jxBCtp61Lpbxe6rLVRH/Ivh42f2/qX5ni2dphk3VMxvJ9Y0gKbghbR585ca3DoWDv5x9
         IjV/sUC0y1Er4galSnJTi9EUmBxTv2U6J5g/yaK/DQkhVPMxWfRaUKzUBGzw7IEIC9y3
         5i1x2RxPuTbzIX6uoAro2qjMrdx7ZbOzKDujwCmWI3+hy/5hj4f/QO5z60yoSS74PdW+
         1Mwg==
X-Forwarded-Encrypted: i=1; AJvYcCU6OzgrK0dTvYh6vXCV6+LDMOdRPJhtbXy0bZnDXacUoIfoYZZydi1vbZNPmuGd5nmPpr9lUisDzvvltBTh2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwArI/frfXJOeBUvPfmy2Hej2RS/DIh3VGJydUcbl7BuTOQCdgg
	B+Pa/1a87noYnIsoXGTWkuC4NIxNY2NqRCebclHYCwHpIPnIVtMoypaw
X-Gm-Gg: ASbGncstubsNG+ZsohW8HuY0lewTeOHHN71fM8mB8i2fb+2xX8tvCggF/LV3419oI7g
	mT8rx3zBwLUv22PeoPVKZ96Afl/gJgRJHc7sfS85QTKtQkQTyLhnVpkH22vUbyKdUA3TgB2EYuI
	om3vnbBVAl/4ZUoSpTzzMKYR00FOdeapRjpQkA6V+Jzoi5di0dwCChmnAwzd4uCuc/hJ2g3aYnE
	puFruLVU2YDoUkiaNNSSuRnh3dNiWAHgJ0GDEUgaOMi3XzjME4J9dyZ9iGz1VkPwl+hwEsnIbw+
	fVSc1kYQrb4wvKrlKLiVkoWgSN0XgGQsabnddSFH8sIhTm1n9KlcOEk1+hj9k61/ntSjKRZUFc4
	mSK1mevvbApZU1Hg9D5FM6FqK+yNM/Hv40z+YgOsnhCtccwyTUs9LJi258JsH0Hv7RM8qAjCgIg
	==
X-Google-Smtp-Source: AGHT+IF7vM7dWQA7a8j5a3/LMB+ij9tgBYk+NU42Vt0dswOO93rmrv5IDEUmNpYrednFhDvN1YDVVQ==
X-Received: by 2002:a05:7300:ce8e:b0:2a4:3593:6453 with SMTP id 5a478bee46e88-2a4ab88119cmr5119698eec.3.1763450252407;
        Mon, 17 Nov 2025 23:17:32 -0800 (PST)
Received: from geday ([2804:7f2:800b:b822::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db7a753sm54420555eec.6.2025.11.17.23.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:31 -0800 (PST)
Date: Tue, 18 Nov 2025 04:17:25 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/4] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <aRwdhbt0AcLQ1LgF@geday>
References: <e5d5c0dc-81d6-ae0e-7552-c2e4fb39bb0a@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5d5c0dc-81d6-ae0e-7552-c2e4fb39bb0a@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_231733_869315_8AD0BF83 
X-CRM114-Status: GOOD (  11.48  )
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

On Tue, Nov 18, 2025 at 07:45:45AM +0100, Dragan Simic wrote:
> Technically, you shouldn't have included my Reviewed-by tags in some
> of the patches in the v2 of this series, because the patches were
> either modified significantly since I gave my Reviewed-by for them
> in the v1, or they were actually introduced in the v2.
> 
> However, I checked all four patches in the v2 again and everything
> is still fine, so just to make sure, please feel free to include for
> the entire series:
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Hi Dragan,

Oops, sorry about that, and thanks for calling me out on this matter.
I'll definitely bear this in mind for future submissions.

Glad it worked out in the end.

Regards,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

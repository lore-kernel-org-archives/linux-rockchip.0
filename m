Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72DB9C5DF6D
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2026 12:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqCbNvEP/qY3TbuScc3HdD3DlrKv3HLs0my4xMmfE3Q=; b=iYkHcS3hG46MvF
	zu1vFVrNmUnTwi5YH6M0czIJEnSoSs7l7A//ZHG3cLJ/9OmvqPb+edw7z+dEaMr/FAuPi6zO5eTgi
	rM90NOQkPlT4kh3ZuIhzJi+xzTZ1ZPnW3IvsWmjfXbH9R6MbP4heE+pJkbro0gs1KltjDWCaoqa3c
	vLZkSpU0TIR2P2hB06PCL6s3hBkFVv4+4EbKXnnbViAjdXiWQbBa69h6rnccd6LC7B7xhMqy2FnPL
	8XWjUL4AQwtAmzJi7evXT4DXmhqleQKCkpE80S6xubiSca0CHMe+Pfy2bwyOrFXqflh7lmVoJw4AX
	VL3STyyViy+xYdtAxc+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPe-00000003oY4-2UcW;
	Sat, 15 Aug 2026 12:22:58 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPX-00000003oSg-3HVL
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:53 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4957799b92fso2487655e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796570; x=1787401370; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=NiqxqjXGFjmfvb6j4DVCwcOlyNHkI4Fceni/OlgHQyWmP1MrvnByXzNz2SvpB+TV15
         8fr9rzvaBxIplq2CJ2F6BdJNp8ZKrDd0ieDmgkmC5aemFqjiU6GuC1rOts34PnIFpW2E
         PlmUhK2vZgTrzgeyscm5i7Ocz5g/X1l4Pw27uFeBMT6qcgiPwyQoAZUGjyCoRTigU92h
         nNG3FEKnLMnu1dxrlBeYURU2Xu3sTZ7Q3YHFw/TldhFmhEEYwn7owolF31fynv6koBKT
         0Z1KTyhkfeWDHge5+UNm1YkJAlpfRqPafCx6ymI7/Bn88+ZJAhP+RSxzcLL2mv9phRV+
         qkyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796570; x=1787401370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=mFOoHFZFjDAQHoExRmC1pPzLIvaUc8KbWHp++UDr+RA0VZ7glwxdXcMf5yR95iOa3O
         cTsOu6xrrnM8gpxJ+EwdtIE5QZpsg9Nk5+1Fbq0rcSWLWDQ+yPywXRBNpsdVAcoZIbkm
         sHJ1b6bsDgD3Z9OVfmPxtdeGCvmT/bwSzQRoq9SFyhelsf24BSuHuWwJDebrzLZ1bhNR
         W0FXilbrEi6Rw0eUphL6q4Dk+/SRvCO0zWQE643prBudReIM0ivXSIyYgG9TgyV5V38D
         5EfK+wTRs61H3t3eyR5IKR5MCP3F4X5yWrdSxWK8vqEe5qiL2xsV2mMsnL31nfkTQJm4
         bvTQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqm3KE3F3Vy+uyPeM8h+abAwpgzNPFjklOvL47kHLFtxD1rZyM7Q1vNYssOaKMNWqn1FEc/c6zkdo0dD+9Ofg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgMAcm1yZKagE1bu+oZi/ijZmh+7X6256TCqeH6fSEfmqXcRbM
	WYW+AJGOsxVJpl2UzxENcQibgUWwNNg2ObaU+Iw1IpQNKmZxoHVS69Bd
X-Gm-Gg: AR+sD11mnxrbSY0YM4Q8dAJABOD1I6mlUXTKp/Zyzqtx9Iwl2ZJhg/WO4UbDDLK9ecm
	1oxM9ZnTHTqmkmZ1v+k0Et5kK19GNuDs392uEB9B7bucU/5zpNoxbynnj5oWmhBr5gyoiKAGjqV
	Gzg475XSmJSuW4iBiZGnMAXs5aGt5PDKQKVXhgANHY8ElyngAwi5HMtnB/z6ELQaoAzdV92VNXs
	dR4o0oQVVRSeuUcDaLuOvz2/1dfQfdL5giYWNAYwXTafFTC5OX6V9c8h88uYGenvtugsbrbKZOM
	WizT2Sd+8pyGBAOBcVihs9QxGgsn1xpZuX4IhNphqSneBTy1x29xJFceJF+c+ufHDygWfHvd693
	NloZGGrb1i0Cg0ODIOlZ+ccqjQw2hCe0nDUetttNwLhY1Nla3A6u7SHLtFxQNCSvhwI9n/nqZh4
	Xy5+rkBmKtjAXVDiLbxVQmY2+yh+4X7fjiQB89WPace4NVZnBK/rqJPGy431z0at+STsSFHA++K
	rOZiPGgay4VIVafyentKHmhRW/NO4IhAYlQWGw65Kqc+urQnSmvek9S1zCFuujlIydO/w==
X-Received: by 2002:a05:600c:a47:b0:496:bbce:ef with SMTP id 5b1f17b1804b1-4998796ca48mr90983305e9.3.1786796569782;
        Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 29/38] usb: dwc3: rockchip: introduce glue driver
Date: Sat, 15 Aug 2026 14:22:32 +0200
Message-ID: <20260815122239.65405-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052251_853768_707749B8 
X-CRM114-Status: UNSURE (   4.61  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

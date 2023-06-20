Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2C5BEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 12:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=it4cVYbgYbZ/SqeO0ug0HX3OvhWK1PbFLCfzHUPnXzk=; b=W0aKWNgWexkkvJ
	7LFg3bySzoz8EW7NjXJURn7J0X/aYmuveSndUQSF+GcB7YYtBli4NZUp4hc6qESW4KW0midoMvsfs
	UM3C4Q1HkO5gh1IOQfiBgdn6bNfZEqjDHaX//BaeSgLfDsbD1CyJkO9+9/92htmDGyrs+4daMhB8g
	E3oPeJ0U6blauFONyuqUUC36nyts8vxZgBjTBJiBollu1MHipMZjgtYZP62Go2ajY5umoAMt8Pxvk
	MQoUXcwrs3DA6yDOQjZDhcktBfLLQ+ujKunU70b9nqeH6vrs2YkQjBswj+eYlm40eWvIdH2fmNkM+
	ynNmXKtrKEP+HMy2KH3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBarK-00BJ3f-35;
	Tue, 20 Jun 2023 12:53:22 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBarI-00BJ2j-14;
	Tue, 20 Jun 2023 12:53:21 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5533c545786so2953542a12.1;
        Tue, 20 Jun 2023 05:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687265599; x=1689857599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=36Q0E79+X6bNneD5gDA+F7nctDYtSY+gSKV0kemn51w=;
        b=fu5MEH1juzIab4htZxTF4jmfIOzev/Wk1AQDudUjvTAaxDCXu4R9fps4Ylu7yZszyA
         iWQHscc3RanknU5P7ymBj5jhwQaZbP5wC3qjs4Er1cnu9pbFi3NSl09kCxQEKx7bx3Au
         wZVOUO3KKX8TMBMHfhQcORkkZtS3IJKPMrgMxip1d8mx7NINDyP4AOojWN2X+p73VOXX
         xAjwx03F1JFmHvk69Zy2w6xIqKIJ9XttW2CY3NKiTXdWzzYJgbLfiCKCDD0436XRfAww
         RJF7VkaVtboMWgjkI5+N4+d87+NBJHVF6XgD4yUPm7f0PSLN+dETpsZxc5e2Xya8STC+
         elvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687265599; x=1689857599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=36Q0E79+X6bNneD5gDA+F7nctDYtSY+gSKV0kemn51w=;
        b=Fa27X2NZJ7/Isu2X5I7jSTtM9Ox/PE1qcjXUqTA1jTBHwGBz9eRClU+RcHlQ7YdMFv
         cXmfRw7NiyvRa2AcJOEIVdP4oQeMuaNG3zVGbUFL3O23hbAttIunpAfqC2S//HyK2Mms
         A7BLNqDrP/ekee0QO0Gxlhs3WlAP5HgxVfngKtCJaWgKz9EkU/VvY8Yc70BYT3XpJtaH
         JQq90EhLW0ntY0iPPVQbwhfOgV1/PMJ4JIhE1jMqTO3IieXAwX7ZX4jfioT7siD1rmHz
         /E9nzLhn3DLS5dq/QJQq6hunbgUNlGLyDheVkFTGQJIy4If/rhJsX3xDo5OwYIigwL+W
         SuTw==
X-Gm-Message-State: AC+VfDxcXAf4v6rXGTsLFR9odHZd+kIVRD2brrAMb510UfJehFMTMi7y
	OP1hfwo8wa1ei2V9W2CApBkx+zYwW1Cb0OiXGzi5mbsErH/5hPL5
X-Google-Smtp-Source: ACHHUZ45HBR/jH2rKbzPtvOEGIOCHKzNXTygBftC8iEHgmSOHjbE8WcXHXBXcZX+dWcu6pKcBVEumnrc2XLZcSmRuHM=
X-Received: by 2002:a17:902:e5c2:b0:1b5:5162:53bd with SMTP id
 u2-20020a170902e5c200b001b5516253bdmr11360352plf.33.1687265598786; Tue, 20
 Jun 2023 05:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
In-Reply-To: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Tue, 20 Jun 2023 15:53:07 +0300
Message-ID: <CAKyg=SXcZHf7=7-3fvXTp74FV6EDCDwUuk7J7sHSo=o==55-Zw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz
To: linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_055320_366663_371C608B 
X-CRM114-Status: UNSURE (   4.53  )
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

bump

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EAF1C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 06:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF9RkTPzixsMMiyXqcXG8XTYovLzfjOUiyb3oGnvFyM=; b=SVyhvYWjUMYl4p
	JktR49Xc7z9F7+jzrma/E4rVrFGSpjP/j1Y5nn3hDIOUJqUjpVipC7ZCYFq2Pm570WsMQ7ocVL2Lv
	Fob+1Sdhb1eqZEu3D8aXB8ejVyeFq/nKNCNQ0C5yJJoO2Nio9YDN/RY+VWNjrDKxEB60XsKFkKuSp
	VXp/tjJHIwkAF0aNsdeMVYX3jwTXTr1CcdogxeUqIj5MEFg8msB//zVI6c692hjw8pWZhPdOP5+r1
	pbG2AY3mHR1mW+yVHpHM8nhaVl4GfU/e2LsOG80U5o3V6JMatNPZAXBjQAYiHFlnTaJexFEsalMLK
	vqw0JXFpwSiLmaedFdUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c8D-00F55u-RR; Tue, 05 Jul 2022 06:33:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c7v-00F4ri-JN; Tue, 05 Jul 2022 06:33:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3A1CAB81617;
	Tue,  5 Jul 2022 06:33:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D8BC341C7;
	Tue,  5 Jul 2022 06:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657002817;
	bh=5gsyNNx8/9no9ENTib+RiXe7ITFvjUXl6MeaqVSqsb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S7nczGZsoml5YVimtw38q542lymxBncPRvBRo9Gl5ztIBA2gqgi1mVpsRT4Hccc1w
	 hkJ+lq1EM7rgfcIhy6LdTH60xae3NP5A9fPvohTvB+W6RLxQu1J0y1DBjQtju/kv/x
	 n4ogrsFZqJfS5kRtoClUuBm0vpKnVlGYjxaSoyrqgvib39coV1XaM4azo05+dmgctE
	 A8/24ZnvzHrofTj+/IyVkBbTT6dNWQpXI0FD4qS+yois9TDAPjzMgkaCB+5bBpNfe5
	 F+EeH+WuXP1kpg/DUTwKzkrKtZC69ict1c0kreqIZBoYUyqp9Y9OgTYXsNX+yphV1b
	 IXgOJ+MWnoUjw==
Date: Tue, 5 Jul 2022 12:03:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] phy: rockchip-inno-usb2: Prevent incorrect error on
 probe
Message-ID: <YsPbPPsMb0O9LTr3@matsya>
References: <20220625212711.558495-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220625212711.558495-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_233339_828877_34E04AB0 
X-CRM114-Status: UNSURE (   8.45  )
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

On 25-06-22, 17:27, Peter Geis wrote:
> If a phy supply is designated but isn't available at probe time, an
> EPROBE_DEFER is returned. Use dev_err_probe to prevent this from
> incorrectly printing during boot.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C55AC0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 21:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmFDY6bYKPnP5vu/4Bf5+ja0KBOfstPK64o8fMmFTD8=; b=bB2hBRfEUxC3iR
	9nLgI57tgHsw1rjZhvINbKFQHKdNOgEO+AGvii9dnyAjDDpEbqGkR8iVPcHnEfU5peLibTsIoOXlJ
	tp1Oke7Zf2wHtGdFFLAdiVXo8CNKWz2UF19wq/ZDSHRC1msm9rAEwDlGLEQONS7LOYBolSQJu6jTp
	4zghbb9axPdBGBNoL1ahHLyjv2MrQjqQhVAALCjODt3SMUjduEuW+0e8xpUXDVgcB7PqKvF00OffW
	JuSmycvuFA8dJ0KrQ53OsEeIodxkYKuEdnLDer57Mo60CalQBHAWqcX1A+iBDE3NFs4k28Lm8Yjn4
	kcwMfgxwrdRO2/qNRH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMEXt-008wu1-0d;
	Wed, 19 Jul 2023 21:17:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMEXk-008wsq-1j;
	Wed, 19 Jul 2023 21:17:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E08EB61812;
	Wed, 19 Jul 2023 21:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85BAAC433C8;
	Wed, 19 Jul 2023 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689801427;
	bh=AHWnayYkjPbIUyAqedX2DKfC5RK8iRkSYADpwtoqOus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C3J4qTBdZhicQXbHclrOkNHlzo/gvv0LOzVQ/XJxHdRFa2HcP0i6h9YDYv86QIqVb
	 l8So39bb/B8BY266b2SoAEn/LJqmYbaTlxT7pEnYIUs+RUGE0Zy8WFnDeSREdu9/AK
	 mw0d17vJqQ3tse7fC4rsZdrQ8DS6DzsfkhTVA31AOblQ5v4eLf3XNQNXQhMQ8wiPoa
	 DYdiBSL4BKvHVz2Lv9CeEddPFkK4fQebHzczPzHdZXPGSQuimI9qyG1yD9RdRtu7T5
	 0wfrycAQXno8Jg6R97m3lABPKuxvfPy0TkDRlGv9kb1eaqBMqJUW6pselNxeC7878u
	 Fzj53V5FVa70Q==
Received: (nullmailer pid 809255 invoked by uid 1000);
	Wed, 19 Jul 2023 21:17:05 -0000
Date: Wed, 19 Jul 2023 15:17:05 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, david.wu@rock-chips.com, heiko@sntech.de, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: add default 'input'
 for clock_in_out
Message-ID: <168980142508.809195.11041309654523921501.robh@kernel.org>
References: <20230718090914.282293-1-eugen.hristev@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230718090914.282293-1-eugen.hristev@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_141708_640723_75FD473F 
X-CRM114-Status: GOOD (  13.94  )
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


On Tue, 18 Jul 2023 12:09:14 +0300, Eugen Hristev wrote:
> 'clock_in_out' property is optional, and it can be one of two enums.
> The binding does not specify what is the behavior when the property is
> missing altogether.
> Hence, add a default value that the driver can use.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

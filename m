Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D57F5CA0EF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2Gv0y7q9WeuDFjHkgVUeGqAKNwfsEWiuoC+43+jm4k=; b=vUjFq/z2axFtdV
	H/2BF6xEuTFs5OyD1ngVy1Vm259UvFeYV/z2CrAHHp7zSZCzuTjDTxOJaqx28CdYLWgEGzZwWOUrs
	499Sa1grY30EFrwiTV1CQMFO6C75xhn7s/ECwrMTk8DCEZKFnstlOhEZKvu0g2Ita8jDlQvA2sTPg
	6I2gIHefFeFsEbZrXWdAYLsKqNkqBYRJ4jb8axAhogDh39pSPHVOlM2KQ9Ov1Dk/YFgYQxRZTDs0U
	WkKWO8bVVHUqzYZ51hEajrvxvYBIlEx48eVmzUc5W7uQLiMcF/O+iroeMGvXUtBzPs4SBMcmTnpLR
	akPD1RVkCKk2SWemJaoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRuz-0000000BOY4-1ZCZ;
	Tue, 19 Aug 2025 19:22:49 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNpW-0000000Apa5-1ts8;
	Tue, 19 Aug 2025 15:00:56 +0000
Received: from localhost.localdomain (unknown [119.122.213.154])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1fe57a9c0;
	Tue, 19 Aug 2025 23:00:50 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: update pinctrl names for Radxa E52C
Date: Tue, 19 Aug 2025 23:00:38 +0800
Message-Id: <20250819150038.874297-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <ABB74D9D1E3774F3+5a8c0d7d-fb7f-47c0-8308-e2b69f0628c1@radxa.com>
References: <ABB74D9D1E3774F3+5a8c0d7d-fb7f-47c0-8308-e2b69f0628c1@radxa.com>
MIME-Version: 1.0
X-HM-Tid: 0a98c2d8e14303a2kunm2a21c9924065a4
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTk5KVktPHUlPQkJLHkJNTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKTk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_080054_679488_79F70143 
X-CRM114-Status: GOOD (  11.30  )
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

Hi,

> "The name of a node should be somewhat generic".
>
>   https://github.com/devicetree-org/devicetree-specification/blob/v0.4/source/chapter2-devicetree-basics.rst?plain=1#L193

Usually we use the name on the schematic. For example, the patch for e24c:

https://lore.kernel.org/lkml/20250727144409.327740-4-jonas@kwiboo.se/

```
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio0_a0_user>;
```

If this is incorrect, I will abandon the pinctrl changes for
the user key and power LED.

> > -		vcc_5v0_pwren_h: regulator-5v0-1 {
> > -		usb_otg_pwren_h: regulator-5v0-0 {

But I don't think the above is correct.

>   https://lore.kernel.org/all/20241216113052.15696-1-naoki@radxa.com/T/#u
>
> (I don't understand why this only applies to me...)

I don't know this. I thought the nodenames of pinctrl and regulator
were a bit weird, so I changed the pinctrl's.

Thanks,
Chukun

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

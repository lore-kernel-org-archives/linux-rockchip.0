Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D83BC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 18:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcKzjwvSeSy+L+KEvD2BUJ4JmEWd1ATiz9ZdvdckfTk=; b=afqj3wVVR9sDRA
	6vRLqnISjZLWVzW318QYgy1eketeMPPpUEW0q3iSRhGp/fXcaG5BB6Tee8I7vDP8+cKn8vb96Xxkb
	mX6SKQ3qkS6p0t9kOCf1xAZxcYusBRgyFHRHZBy1kv+UjxYKnWmRet+lrQw5ejvXNSI6zxuI5PR9b
	Z/hnTn5hBqYGHL4TQflLTZ7Ca74VljYi4waOBmiUNK1qPbYKMgoQ1uLw3d9J2stPQjthlkHtVwFYv
	8jyvlE+GAKWTzO0TG3FJJvBSrbCRjRycl6iH9ylSg10BBIriN1Mb25kZ1fVamT7b9Mdyu3fcgjMDq
	WVQw23XAMluN/uuL6RlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2G0C-008JVf-N3; Mon, 05 Dec 2022 18:15:40 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2G00-008JFe-6i; Mon, 05 Dec 2022 18:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1670264119; bh=XVPKkuLGeYz5mLqD1WBfE0UuvVM2oX5DVgXJT9tVBkQ=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=Km25UcmR+GYuyNmPwkIUcK26v4T7Pb5bdUehlqxgOfD474bB/nVk08jgTuJFGGRs0
	 d8xVcN0UuEfSNROApkPTRUo2jd1iOtIbqMqHafHlXDtp9WcrgMFsUg/v2zRxY1tBBQ
	 2qWkgeezJdXrgY2Y5groJgpv5zyjaLWiLS8ebypc=
Date: Mon, 5 Dec 2022 19:15:19 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: aholmes@omnom.net, devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar, frank-w@public-files.de,
	frattaroli.nicolas@gmail.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, macromorgan@hotmail.com,
	mark.kettenis@xs4all.nl, michael.riesch@wolfvision.net,
	pgwipeout@gmail.com, robh+dt@kernel.org, robin.murphy@arm.com,
	s.hauer@pengutronix.de, yifeng.zhao@rock-chips.com
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: rk356x: Fix PCIe register and
 range mappings
Message-ID: <20221205181519.7e5diejvhiynqmv5@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Chukun Pan <amadeus@jmu.edu.cn>, aholmes@omnom.net,
	devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
	frank-w@public-files.de, frattaroli.nicolas@gmail.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, macromorgan@hotmail.com,
	mark.kettenis@xs4all.nl, michael.riesch@wolfvision.net,
	pgwipeout@gmail.com, robh+dt@kernel.org, robin.murphy@arm.com,
	s.hauer@pengutronix.de, yifeng.zhao@rock-chips.com
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221112114125.1637543-2-aholmes@omnom.net>
 <20221205162322.149967-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221205162322.149967-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_101529_057089_6CCA2072 
X-CRM114-Status: GOOD (  11.60  )
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

On Tue, Dec 06, 2022 at 12:23:22AM +0800, Chukun Pan wrote:
> > The register and range mappings for the PCIe controller in Rockchip's
> > RK356x SoCs are incorrect. Replace them with corrected values from the
> > vendor BSP sources, updated to match current DT schema.
> 
> Hi, Andrew
> 
> This patch broken pcie3x2 on my board.

That's because 32bit mapping for pcie3x2 config should start at 0xf0000000 and
the patch declares it incorrectly at 0xf2000000.

https://megous.com/dl/tmp/6d1a04195112b1e0.png

> And the wireless card on pcie2x1 is still not working.

> [    0.405341] pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> [    0.670522] rockchip-dw-pcie 3c0800000.pcie: can't request region for resource [mem 0xf2000000-0xf2ffffff]
> [    0.671527] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -16
> [    7.354521] pci 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> [    7.355116] mt7921e 0000:01:00.0: enabling device (0000 -> 0002)
> [    7.355812] mt7921e: probe of 0000:01:00.0 failed with error -28

That's ENOSPC. Who knows where it's comming from. Something for you to debug. ;)

regards,
	o.
> 
> --
> Thanks,
> Chukun
> 
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

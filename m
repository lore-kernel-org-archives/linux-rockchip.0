Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF13C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDuHSMNMF677mRW2s/FZg3SnL1fkqh2tldnoykrPfFY=; b=PH/5/WmRRfBB8e
	F4QdT+BszmTUvSKizNGebC6s/gbZztCT3MiWZ4tRBL8bFEjimB7O8lMAhaucHUFqxy5Slv3nZb5JJ
	OVRdRosstbgZxyJZFjbr+TmH8vJuI03aiS2vwGCKQCVkZp14K4T//9kvlYW6ZyBN5CFETuX63liuH
	gGnpEWZGgnVpwWCOs1rNBpK9Ij/epzKg03NKTPonrGbdUXo4vr8DaYYB82wZ32kDTndZk2fgPH60/
	m4oo+D7uQtES32/w34dS+2oGbXhlLaStQkZ6+2nn4VpNfEoQWctgZMb4LJrQ4evNCNc/7e/1QXw+c
	uMWPislq8BspLr90pivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqAE-000000005De-1Zow;
	Sun, 30 Jun 2024 08:44:02 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqA3-000000005Cc-3lhs;
	Sun, 30 Jun 2024 08:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1719736988; x=1720341788; i=wahrenst@gmx.net;
	bh=DWHFm2E/o/V6Cw7bSZdgzS7ATWvaFTxO3EAYiMwnYQ0=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Gqtk2aL46vidGporVc+8B4Wm0DTc4MDZqFfMQrhgYmocdhWOr97DwUJHWAkEnqI7
	 dnlLZ9j2DLem/JiB0Rix3qBSGEnIX+7CcHOmC2dldSynU/9qwRKljVhwB4Q7Xkw+W
	 1n2/or4A0pYXL8p5gZcvQihweDBtDZRFAbJcovJezYj+xbl8xV+f1WNOiPmoFZG1H
	 momwphcUGCZQhC8zWsYBB44RjdEY9JYV4D/shWOJVeXVPtZ9h14N/McBhc4H9HUwW
	 i6p9rWmIYpV4Voar2iGcPwHKG5D0CkhABcrBzioaCQ1wE0XfkcWvXVQTqffRMXu1a
	 N1I/c5haTudE5F0bSQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MtwYu-1s9k6i2nbY-014cGt; Sun, 30
 Jun 2024 10:43:08 +0200
Message-ID: <bd661690-1de8-4030-a209-ef26d3559221@gmx.net>
Date: Sun, 30 Jun 2024 10:43:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-5-jacobe.zang@wesion.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240630073605.2164346-5-jacobe.zang@wesion.com>
X-Provags-ID: V03:K1:mgMXk3DXRcduwz95csSCv+CkqV380IX24h7ngin2weAe06nSBut
 XRhB1UiQp3lf2b0NYmvfVLy2/mO9OQ7MdSCGUF1luiS5UtcOzG+EOLW42qqlwMhlb4e54Ar
 Ks90Wb/EKJM5mT9LD5u6n2d4dyNSY7FQqhw8asreSyh5xF4QdxvbIl7Zz5Z0NDVEINqzLCH
 2SlZtn7IAjSBasUem///w==
UI-OutboundReport: notjunk:1;M01:P0:mou2LmE+Pqw=;DPg1kwFi8AE287jvIuA+tl/khDX
 kuBJ9gbe+rII+gFJy8tELFBxwny1ffwYSQxDUeKCIWxVv7fO8o1kvYL9dFKhBnM4F26o2hgqC
 ngafc1iyAy51Dt5CPiFzUfhvVXOVOwLh10euaKGwfnZah7nzx6SDpfOEPgZYC03kzqxvt6QoX
 Z5uFSzARf5MExs3Ok3AXzRBBGfm3StKyeVa1D/Y2pm2MjkedX0p4U0CJWFxjQSOly5GChb/u3
 YRX/RtASHZGM/2fOG46JEwsO5hR1mpeSVsoErCprGVeyanNbrO+JhamoGOLFkseSjvavozcVm
 g3yhvrP+lp6YlfqKRAOb2ups6iQeeCIY+rSZUZWIldpBVWZgCXu81Y35kRu7iH75ji9Pw7jv4
 vWecdWERENJSTB0VP2EzumDKUWMA8r5unVHqfjikKygugc3sQHuSZFxSkIMPvuxx5p9QYYktr
 IS4lRAq1EokBMevuY6NDnns9AWp+5oMOXI6V5SYAgPcvmy0ICirTDWujoXRNFQXea+egNu5vJ
 NpSCFAQSAmLhsKL/mPDLh31XJSnZ69M6VYBO9tdQM7T2Yn+qCnc4FYHlve/ULcDS2gaZmvxN/
 NoRjgGDSwxud0ZlxL8r/VzbkR+ViB1wxnYW2h+KLKO1wx2oPkHNOH3vfTt353Z0xZjcTz0IDj
 isq9L2oZDGnq/CF8qTH+wg+UNsRjVx3WeTruimQskvC3KvVz/4zjTJ+5gjoRQImoNi9W0Ng3s
 gzu2uW8uflqzhpk38d5MT2mK3KkqFDm4HTxiEk4EcaAfwzJkuy6Q6frW97wHrGOsGXOoxfpXZ
 HlOq4pMqmz+NNykvuX2Lwl04GbG8TwYzNcgJmXi5srOxo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_014352_253488_A81678ED 
X-CRM114-Status: GOOD (  13.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am 30.06.24 um 09:36 schrieb Jacobe Zang:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.
the low power clock is independent from the host interface like PCIe. So
the clock handling should move to the common code. Sorry, not i cannot
give a good suggestion, what's the best place for this.
>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../net/wireless/broadcom/brcm80211/brcmfmac/pcie.c    | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> index 06698a714b523..e84f562fc91b8 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> @@ -3,6 +3,7 @@
>    * Copyright (c) 2014 Broadcom Corporation
>    */
>
> +#include <linux/clk.h>
>   #include <linux/kernel.h>
>   #include <linux/module.h>
>   #include <linux/firmware.h>
> @@ -2411,6 +2412,7 @@ brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   	struct brcmf_pciedev *pcie_bus_dev;
>   	struct brcmf_core *core;
>   	struct brcmf_bus *bus;
> +	struct clk *clk;
>
>   	if (!id) {
>   		id = pci_match_id(brcmf_pcie_devid_table, pdev);
> @@ -2422,6 +2424,14 @@ brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>
>   	brcmf_dbg(PCIE, "Enter %x:%x\n", pdev->vendor, pdev->device);
>
> +	clk = devm_clk_get_optional_enabled(&pdev->dev, "lpo");
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +	if (clk) {
> +		brcmf_dbg(PCIE, "enabling 32kHz clock\n", pdev->vendor, pdev->device);
> +		clk_set_rate(clk, 32768);
> +	}
> +
>   	ret = -ENOMEM;
>   	devinfo = kzalloc(sizeof(*devinfo), GFP_KERNEL);
>   	if (devinfo == NULL)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

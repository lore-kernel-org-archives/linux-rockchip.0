Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B2CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 08:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4HpkeGMndDJ981RTgRr4sH8gHcHKPna3vw2Ag1RWfw=; b=BAVmLABJlvXCxq
	q2Rv0OXAyT+FV+lo9WxPN6/QE1bYQyc4NJorUlCGed8dgiUodgnw42lAChCHHEHX4UzvDIVMmCsrE
	sNyY2GgAwrBpwd6fl37DL7mY/XcLwnhpTb9nIGpoyZvRSqDRUNukisXMOKNO5kvFUi2kQn8kWUlD2
	TFXgJAAfHFJt4MIiSlgCrFtfHF8dJQ4YNzkoe02XTjjhtw+elK13XWETLNmUbW+W8NYGQDaSl5Y4I
	Tzdg64rCcG/j23pNWMy62DULAh4c7n/R/O11ROdSXeZ6f7sPb/TJhB5qABiirAHnGlSB8PxyScGEp
	ATpjxdn3cXwsigVaRrBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNq25-0000000043z-0DOQ;
	Sun, 30 Jun 2024 08:35:37 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNq1t-0000000042K-0GHi;
	Sun, 30 Jun 2024 08:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1719736484; x=1720341284; i=wahrenst@gmx.net;
	bh=Vwmck4SqN/LIrhQ5ULy5n57HmEqJ1YegM2ToIs2Xv3I=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=owHN3d0hbZhe6okqbBvO8MkrWT+Df8VjtPThBYkw8H+Nhb/94q92jpml3L6mvKGn
	 QLDhb85Q4QPPdWOozMCz9RAqjiAQaFwIWCXC7hyPiW0/hJuo+UOWR2lOG9LKfrqvE
	 1vsugUtVUSfrmP2sQ+rzNDXI+iuVqsWX9/+dEvxBKtgIt070I/PqZa2YJeoGtREqO
	 k00qz+DkWxw7pnZ7zVhf8UJxOgsfS8+jbRu4VXzhaHYGukAYFCHTSTi3KSJGyLQKG
	 WcJ83QrEVFCLXadIvbN+LUUzQta3cUwd585np40E8Tcgp8AqTQC8eVxt/Yzgd/ie1
	 aEDbH0q2En9mmRd1+Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTzfG-1sotLa1VGE-00PYEP; Sun, 30
 Jun 2024 10:34:44 +0200
Message-ID: <54132213-d81a-49b3-939e-17ff755e39c1@gmx.net>
Date: Sun, 30 Jun 2024 10:34:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] wifi: brcmfmac: Add support for AP6275P
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
 <20240630073605.2164346-6-jacobe.zang@wesion.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240630073605.2164346-6-jacobe.zang@wesion.com>
X-Provags-ID: V03:K1:XxGQZAfXR1hQ8gGJThtcJYjgRwwQ/OjlTnfcyny8QN9L5ROqzA1
 AuIlIzUR6+gmGdnWvJuPJ2LyVMr8jK8bNyvKuyBK/lMvWs05XCN8+zF5zmy6MKctx3sFRvZ
 BgCFiNbZzbH34BVmY2/7bEbSjA4ooRf28UGi+z6KaodkBRGkPTVDKctJfF8C5bp84zc0LbW
 vIHK6JXtJTgvRmgBGW1eA==
UI-OutboundReport: notjunk:1;M01:P0:je0KjnUnzP8=;jq3fWTpqLb01n8BfJCqn1b8LsD1
 oQKxEK1JiGVE28fIPYNHAFdkGNPxdzpWFeG4NFrHIzot52cRuy9kwWc7ycN51Vk8wY2zsuMG+
 FAFMBr5n5m6lj/yq5rSjhWB8Uku03fMP5P7Efxt8BolJmFrH3rOnVgkTcxuOn21CTthUmG8LZ
 e06tG64lsee4/4rob5t/LyceKjvnBNJfjCdzexz23J0N4QKs5mFguJgebm4gLpc+ttKk8iNkM
 4RWw9GXv3mr+RilYD8XojviSD//p/4RDJgKGeKYkWRWBAOh4Zz446/4rb8nRiHWxAo26EFjLc
 SPijpPkUF28BueX5Vd86XxdivMI6rykPTJUgmcR/NIA7FAQs2LuOGKngFL9VLERJdnqK/9wCE
 WDT7+7DKA8lTvA4GsgIdFxYH/ARBnuHRO5CG0LjSQUt5+Mpo3RnMSCsqjCIwxN8mVhwOAPCtq
 heazzf9lny+6V17dTl3Q9xlqEEBfMqzub3tkcw6LJQI2hhsSP7W1on7BCckhfNeyjV2Kymf+d
 Br3GcBcaxkTGQ6y7ZgfHc+4p9dAVSaGIusx27g3WH1DFJlVDQCZ1FOPOxBNaOJ9/9Xv9g5Cdn
 n1W8E2MRI/X56JU6X1hfwYO+loSNMhYbogDlfn64hrmFPHWikcPEukuBJZ53wEHYoOVxSUenq
 v8tdJafjQfJtdE61DL2np7G6CinAto3MzAM9M/pTBVLpcZ85FlcQQuFuhc2D7uI4qMeqSaSO9
 YrBqRl5KUayy1caFCM2oA3tWKFhpcEgqEl4mMJMHlnBNEl1fQzydal8dLSa+VjhAPaAG+RheX
 BSCWW8Fkf+Jo4PLxSLfhvgQq+aqtG+L5e12Xv5gx8YLVs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_013525_415192_3F3B046B 
X-CRM114-Status: GOOD (  17.15  )
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

Am 30.06.24 um 09:36 schrieb Jacobe Zang:
> This module features BCM43752A2 chipset. The firmware requires
> randomness seeding, so enabled it.
>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> Link: https://megous.com/git/linux/commit/?h=ap6275p-6.10&id=1a99573bc8ed412e60e1969c0b29d53a0e5782e0
> ---
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c      | 5 ++++-
>   .../net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h    | 2 ++
>   2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> index e84f562fc91b8..f427d664cf3a5 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> @@ -71,6 +71,7 @@ BRCMF_FW_CLM_DEF(4377B3, "brcmfmac4377b3-pcie");
>   BRCMF_FW_CLM_DEF(4378B1, "brcmfmac4378b1-pcie");
>   BRCMF_FW_CLM_DEF(4378B3, "brcmfmac4378b3-pcie");
>   BRCMF_FW_CLM_DEF(4387C2, "brcmfmac4387c2-pcie");
> +BRCMF_FW_CLM_DEF(43752, "brcmfmac43752-pcie");
>
>   /* firmware config files */
>   MODULE_FIRMWARE(BRCMF_FW_DEFAULT_PATH "brcmfmac*-pcie.txt");
> @@ -105,6 +106,7 @@ static const struct brcmf_firmware_mapping brcmf_pcie_fwnames[] = {
>   	BRCMF_FW_ENTRY(BRCM_CC_43664_CHIP_ID, 0xFFFFFFF0, 4366C),
>   	BRCMF_FW_ENTRY(BRCM_CC_43666_CHIP_ID, 0xFFFFFFF0, 4366C),
>   	BRCMF_FW_ENTRY(BRCM_CC_4371_CHIP_ID, 0xFFFFFFFF, 4371),
> +	BRCMF_FW_ENTRY(BRCM_CC_43752_CHIP_ID, 0xFFFFFFFF, 43752),
>   	BRCMF_FW_ENTRY(BRCM_CC_4377_CHIP_ID, 0xFFFFFFFF, 4377B3), /* revision ID 4 */
>   	BRCMF_FW_ENTRY(BRCM_CC_4378_CHIP_ID, 0x0000000F, 4378B1), /* revision ID 3 */
>   	BRCMF_FW_ENTRY(BRCM_CC_4378_CHIP_ID, 0xFFFFFFE0, 4378B3), /* revision ID 5 */
> @@ -1721,7 +1723,7 @@ static int brcmf_pcie_download_fw_nvram(struct brcmf_pciedev_info *devinfo,
>   		memcpy_toio(devinfo->tcm + address, nvram, nvram_len);
>   		brcmf_fw_nvram_free(nvram);
>
> -		if (devinfo->otp.valid) {
> +		if (devinfo->otp.valid || devinfo->ci->chip == BRCM_CC_43752_CHIP_ID) {
As a reviewer, i would expect an explanation in the commit message or in
the code for this quirk.
>   			size_t rand_len = BRCMF_RANDOM_SEED_LENGTH;
>   			struct brcmf_random_seed_footer footer = {
>   				.length = cpu_to_le32(rand_len),
> @@ -2710,6 +2712,7 @@ static const struct pci_device_id brcmf_pcie_devid_table[] = {
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_4366_5G_DEVICE_ID, BCA),
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_4371_DEVICE_ID, WCC),
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_43596_DEVICE_ID, CYW),
> +	BRCMF_PCIE_DEVICE(BRCM_PCIE_43752_DEVICE_ID, WCC),
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_4377_DEVICE_ID, WCC),
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_4378_DEVICE_ID, WCC),
>   	BRCMF_PCIE_DEVICE(BRCM_PCIE_4387_DEVICE_ID, WCC),
> diff --git a/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h b/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
> index 44684bf1b9acc..c1e22c589d85e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
> +++ b/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
> @@ -52,6 +52,7 @@
>   #define BRCM_CC_43664_CHIP_ID		43664
>   #define BRCM_CC_43666_CHIP_ID		43666
>   #define BRCM_CC_4371_CHIP_ID		0x4371
> +#define BRCM_CC_43752_CHIP_ID		43752
I think this should be converted to hexadecimal to be consistent.
>   #define BRCM_CC_4377_CHIP_ID		0x4377
>   #define BRCM_CC_4378_CHIP_ID		0x4378
>   #define BRCM_CC_4387_CHIP_ID		0x4387
> @@ -94,6 +95,7 @@
>   #define BRCM_PCIE_4366_5G_DEVICE_ID	0x43c5
>   #define BRCM_PCIE_4371_DEVICE_ID	0x440d
>   #define BRCM_PCIE_43596_DEVICE_ID	0x4415
> +#define BRCM_PCIE_43752_DEVICE_ID	0x449d
>   #define BRCM_PCIE_4377_DEVICE_ID	0x4488
>   #define BRCM_PCIE_4378_DEVICE_ID	0x4425
>   #define BRCM_PCIE_4387_DEVICE_ID	0x4433


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

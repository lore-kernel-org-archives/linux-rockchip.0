Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320A9D37E25
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 13:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=no6naZDKHLDFrjI02XXQaXPo44D9MFKELBItkGEYX+s=; b=YSv1hQgXagvg/r
	uUyLa3PIem/yZNPwVTw0Qmq/HE0tUGAPdtLzv0SVLThs8s13qs67Z4hUgNMJax5eNndvkdUOs61R3
	KB8j3YGEII2C9dTt1HPmwzgXuPvF6+aYjclDSVHB6ODTS+/DBvfdeHYdFAE2/B3K7yVJ9m0yEHGWm
	SiUi8ZBuInPITK9J0F6YktgjsGj5ZnR4nHqbgORVs4uF6/pRSrxLzYR+L0XYy6ahU4/s+IehUFhWu
	Iq1aXzuxi5JAKpEzMOiBAwhBC1EPaw1SHs1e+VXeSRPGovfe/cx+DhddInha5ZL4Ui4c2eV0l6hD5
	ldjst+we7i3dlCNi45gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0Ws-00000009GPC-2g1B;
	Wed, 14 Jan 2026 13:03:22 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0Wp-00000009GO8-1YGO
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 13:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=eJpmp5JpOgpjYZu8Fq+aQnrp8DeZBHaRLTUswEI/+R8=; t=1768395795;
	x=1768827795; b=2o5ggtgpqLVLYIm4Ih37HkyzOn0ZNhFcJQ3y3JahYIWGK51OWq5YpZjUa2GL4
	g9HUU+9Xjo4lbUEI8L3RBgp9e6yfsQuK3LjNxz7C6ASTA0K7q0Ay9/iJOjvTF8hrqDY3b0LuyuMRM
	xNJZ026K7DwXDJNTEjR/FuNuGlVv/N94WCmPMHjx6s/iSzq+NcDxsLEt6qKMVmtBW0SmbvRhK7sBY
	GNL++cHZGYQUPr2GHWMxKYiM3z8DB732Zy1VK0UrrEMTWVZ9pl+tzv1cW+fmCfixyhxFBqlxwA4aX
	CULcoObsS1r2C2gO3rmqcCck3FNwQ69NrDJLDeLAIjxu9fANOQ==;
Received: from [2a02:8108:8984:1d00:a0cf:1912:4be:477f]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	id 1vg0Wl-00C01M-2L;
	Wed, 14 Jan 2026 14:03:11 +0100
Message-ID: <5f8805a8-b2d6-4bc3-9c6c-c8fc696daacd@leemhuis.info>
Date: Wed, 14 Jan 2026 14:03:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
To: Peter Robinson <pbrobinson@gmail.com>, Jan Palus <jpalus@fastmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 regressions@lists.linux.dev
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
 <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1768395795;a19d972e;
X-HE-SMSGID: 1vg0Wl-00C01M-2L
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_050315_594992_4304FE65 
X-CRM114-Status: GOOD (  15.24  )
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

[top-posting to facilitate processing]

Peter, Heiko, what's the deal here? This looks stalled. Is temporarily
reverting an option, or would that cause regressions for other users
that already benefit from the change that is causing the problem?

Ciao, Thorsten

On 12/29/25 07:23, Peter Robinson wrote:
> On Wed, 17 Dec 2025 at 11:26, Jan Palus <jpalus@fastmail.com> wrote:
>>
>> WiFi no longer works on Pinebook Pro after upgrade to kernel 6.18. It
>> appears firmware fails to load:
>>
>> ...
>> mmc_host mmc0: card is non-removable.
>> mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
>> Bluetooth: hci0: BCM: features 0x0f
>> Bluetooth: hci0: BCM4345C5 Ampak_CL1 UART 37.4 MHz BT 5.0 [Version: Version: 0039.0089]
>> Bluetooth: hci0: BCM4345C5 (003.006.006) build 0089
>> mmc_host mmc0: Bus speed (slot 0) = 148500000Hz (slot req 150000000Hz, actual 148500000HZ div = 0)
>> dwmmc_rockchip fe310000.mmc: Successfully tuned phase to 55
>> mmc0: new UHS-I speed SDR104 SDIO card at address 0001
>> brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43456-sdio for chip BCM4345/9
>> usbcore: registered new interface driver brcmfmac
>> brcmfmac mmc0:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.pine64,pinebook-pro.bin failed with error -2
>> brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
>> ieee80211 phy0: brcmf_bus_started: failed: -110
>> ieee80211 phy0: brcmf_attach: dongle is not responding: err=-110
>> brcmfmac: brcmf_sdio_firmware_callback: brcmf_attach failed
>>
>> compared to 6.17 instead of last 4 lines with errors there's single one
>> with info about loaded firmware:
>>
>> brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/9 wl0: May 14 2020 17:26:08 version 7.84.17.1 (r871554) FWID 01-3d9e1d87
>>
>> Bisected to:
>>
>> 6d54d935062e2d4a7d3f779ceb9eeff108d0535d is the first new commit
>> commit 6d54d935062e2d4a7d3f779ceb9eeff108d0535d (HEAD)
>> Author: Peter Robinson <pbrobinson@gmail.com>
>> Date:   Wed Aug 27 16:30:37 2025
>>
>>     arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
>>
>>     Update the wake-up pin and associated interupt details for the
>>     Pinebook Pro WiFi module.
>>
>>     Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
>>     Link: https://lore.kernel.org/r/20250827143040.1644867-1-pbrobinson@gmail.com
>>     Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>
>>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>>
>> With this commit reverted on top of 6.18.1 wireless connection works
>> fine.
>>
>> Not sure what could be relevant but:
>> - it's an early model, I think second batch, delivered end of 2019
> 
> Is it the Synoptics or the Cypress/Infineon module? What firmware are you using?
> 
>> - mainline uboot 2025.10 is used
>>
>>
>> #regzbot introduced: 6d54d93506
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

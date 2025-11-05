Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B27FECCFA05
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 12:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6MUAVNNV6qaNG4P1ZccAciOyu/DTmS4otpXVBrrnks=; b=qA4CPa22+oM81+
	WA34LIbm0+rZ1zYxNCaVcUbOY3Pmxv8JkOIRjWDMqYIWG4gk58xB11paRRZJaT6MLeT5JSD44cJ0s
	t+k+LQxyTceOETW5rAiDNKkbNO6xImVWtBpOcu0hbUP+GtiYIIpGadL+yEsDThmqJs6MZbdR4dqpL
	q8q/qpf9wKrIQp8dt9NmKFkPXtzyCdS+TePrb+4H1UDwettjizRkcuH/ls22cAxBLV0If9niFFLJ/
	l5l50Ln5O/x3dDFyHQ5jvL6PkUUTwAwrdZVI7l40j1ZS7/pY7ibG/qzGVK7UmtNMo+AMhPTsp1GBx
	Wj9TCzYJsr+N9Ij+2h3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGcR8-0000000Dabb-1anQ;
	Wed, 05 Nov 2025 12:16:26 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGcR5-0000000Daa9-24UQ
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 12:16:25 +0000
X-QQ-mid: zesmtpip3t1762344914tdef61ad0
X-QQ-Originating-IP: djTh7QdjVUWcRiYAoapKXHkUKbuN+SCdDaSf47CEMDk=
Received: from [IPV6:240f:10b:7440:1:a426:813: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Nov 2025 20:15:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14550206470937993937
Message-ID: <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
Date: Wed, 5 Nov 2025 21:15:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OZZSS56D9fAjfJuby8/dGzYy+4JLdye7GofDxaccB/wRJJOQCE4JTvWP
	EglzizITLc1yAp3QDCTnJ+/Osf4ptSR3MZbyqj8ri38Z3oo2bPBG3XtAKCygmshb8b7DFN5
	hcUUpvoW4y4eAthANpe9qdEv2Y0xF2jqERn3AA91uBfy9hwG0QELMy1BqZquA3NLJEk94X2
	QSCtHcEcgbNbp9S+En/vkcZqOOrCg+BUdw2LZ6drJS7q9Vyp1+a8LgQQy5RMs5odZL6iSJL
	Tb0bm+0vDOXLcVuX7/6R/cwH2kIHbNx1lxCnxMjC0Vps9rWMVxdZyudob4YE/ymSuMHlkYW
	MHDQfUg67+2rtQEmJwQ5DtxFoyYq+KSVJVc5o3VEbqlh72xH4lr+kJYnkCpBrZz13aaTnOP
	MEGTcgBYi/j8kz2958rE/NTaPWjpdxbVV4xcF5cwHhH3egWqxqNlSNGhvV3TLAo153IFavh
	4PuGzJ+IEayDQ9mZC0vbNeV/YKBMU4pPOdF2endzp+nJ+xqjnE+JInK1BcfP5h+WBUOBiqE
	0hlu49ayznFYgztf2VHaJLiZcwF7Xx+fEuQx685J8RlC3AFrbbIriyIsUJCT8OT9VVegj1y
	5t+1o6wtOaumrwK1w7lCAZ5xAxtsuWKjXIBhTppvRsabHL8RAWky7FnnS8CxsnVHYAoy0z3
	bhBopVCS3ftTWPMa4rVQhe9PWC/BDvcO/UdXJINiVE7w+t5on03KlmT3F2mxeP8B826W7re
	5dr5A2GGeL2KCOBzMXgz1ZxiaRWgzXJ6ouO5iDG2LzF7DWm5/KD34cV6vDdGy417VmrleAq
	jbvvQsrRmLIywwYIZIjGotNKhuzCEBoGltA9erROaPgmzDM0lH4iFUXUKX8mvYQKqhBUcbP
	kdFwzr0/Hoct3Kk2nmy434eLqVgaGp37fxEQSGNxich61XcsdAQhEXHOtSrZPqkT8JDXMFX
	73C8UR+Um2ZNXMbXn1POQk9Jl+LrZKM2qBbijFGLE6AAp1XUeM7NHZdjk3YqF3XfR2lrmx4
	h68uTCnt1A4yG3x8KNmqpPdvaW8KcsfmEjuSpaBy6ljVodMbay37nDwlUqpXY=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_041623_895262_3821E0E3 
X-CRM114-Status: GOOD (  19.11  )
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

I'd like to clarify the situation regarding the v6 patch series I submitted.

The original device tree work for the Radxa CM5 and IO Board was 
authored by Joseph Kogut. I took over the responsibility of getting it 
upstreamed with his agreement.

However, I now understand that I should have preserved the original 
Signed-off-by chain (and DCO) in the v6 series. This was my oversight.

To correct this, I would prefer for Joseph to post the patches himself, 
which will not include my Signed-off-by.

My apologies for the confusion this caused. Thank you for pointing this out.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/5/25 14:13, FUKAUMI Naoki wrote:
> This patch series add support for the Radxa CM5 SoM and IO Board.
> 
> Changes in v6:
> (Patch 1/3)
> - Fix description; "Radxa CM5" is the correct name
> (Patch 2/3)
> - Fix #include(s)
> - Include rk3588s.dtsi
> - Move alias for gmac1 from io board dts
> - Add Maskrom key
> - Add pinctrl-* for led-0
> - Add vcc_1v1_nldo_s3 regulator for pmic
> - Move gmac1 (except status) from io board dts
> - Fix phy-supply for gmac1
> - Fix compatible for vdd_cpu_big1_s0 regulator
> - Add eeprom on i2c0
> - Add vdd_npu_s0 regulator for rknn
> - Fix compatible for rgmii_phy1
> - Add pinctrl-* and reset-* for rgmii_phy1
> - Add domain-supply for pd_npu
> - Add rknn_*
> - Add saradc
> - Fix properties in sdhci
> - Move pmic from io board dts
> - Fix vcc*-supply for pmic
> - Add regulators in pmic
> - Add tsadc
> - Move vop(_mmu) from io board dts
> - Trivial changes (labels, names, etc)
> (Patch 3/3)
> - Fix #include(s)
> - Remove #include "rk3588s.dtsi"
> - Fix model
> - Add fan
> - Add Recovery key
> - Add pinctrl-* for vcc3v3_wf
> - Add vcc_sysin regulator
> - Add pinctrl-* for vbus5v0_typec
> - Add rfkill-bt and rfkill-wlan for M.2 module
> - Add sound for es8316
> - Add phy-supply for combphy2_psu
> - Fix power-role to "source" for fusb302
> - Add rtc for hym8536
> - Add audio-codec on i2c8 for es8316
> - Add i2s0_8ch for es8316
> - Add package_thermal for fan
> - Add pinctrl-* for pcie2x1l2
> - Add pwm11 for fan
> - Fix properties in sdmmmc
> - Add phy-supply for u2phy2_host and u2phy3_host
> - Remove usb_host0_ohci
> - Add pinctrl-* for usbdp_phy0
> - Trivial changes (labels, names, etc)
> 
> Changes in v5:
> (Patch 2/3, per Jimmy)
> - Alias eMMC to mmc0
> - Remove unused sdio alias
> - Move gmac, hdmi0 nodes to carrier board dts
> (Patch 3/3, per Jimmy)
> - Enable hdmi0_sound and i2s5_8ch
> - Remove redundant enablement of sdhci
> - Enable usb_host2_xhci
> 
> - Tested HDMI audio
> 
> Changes in v4:
> - Fixed XHCI initialization bug by changing try-power-role from source
>    to sink
> 
> Changes in v3:
> - Addressed YAML syntax error in dt binding (per Rob)
> - Fixed whitespace issue in dts reported by checkpatch.pl
> - Split base SoM and carrier board into separate patches
> - Added further details about the SoM and carrier to the commit
>    messages
> 
> Changes in v2:
> - Added copyright header and data sheet links
> - Removed non-existent property
> - Sorted alphabetically
> - Removed errant whitespace
> - Moved status to the end of each node
> - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
> - Removed delays from gmac with internal delay
> 
> Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
> I have communicated with Joseph privately and taken ownership of
> moving this forward, with his blessing. All bugs belong to me.
> ---
> FUKAUMI Naoki (3):
>    dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
>    arm64: dts: rockchip: Add Radxa CM5
>    arm64: dts: rockchip: Add Radxa CM5 IO Board
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
>   4 files changed, 1113 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

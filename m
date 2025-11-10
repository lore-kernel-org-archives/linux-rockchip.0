Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65EDBCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 08:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnapS2HFX4EenWlYWZq50cKgxXBkKRgnRoUb4kA+eHs=; b=SX8iXf2YKljGBo
	fTpxtfM5Fh1Ohc1CEekspTIMJC/0HcierjYBCf3s6f9z5UnyJbxVkGPr2QYT8FUnPjjPAswbEZXd5
	Hbqzt2QhKLhkFvJDjsSVPpsCtgWlofWVj4z6gLh0kaC7vz9DYr1U/VOGADIeTww1cQsMmYEJojqd2
	slPwDUYfH2eZ5LaWY+ajZDAEU4EQVqkzQaHqWsurn0vap9hOqGCFLOjdituBQN/hEqJCVeMdZTFq8
	Oc7MuDUOJpyIG1KCc55npaOJ8NZdURiG2btoYxWQWt0m+vSaO9q4+jz1S4HneVOCWp3pgjS1AkCvZ
	PWPu2+KPSeEiTrPPFgbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMsZ-00000004wLB-1g0u;
	Mon, 10 Nov 2025 08:03:59 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMsW-00000004wG8-0ckI
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 08:03:57 +0000
X-QQ-mid: zesmtpip2t1762761788tc0b50961
X-QQ-Originating-IP: 88/BuTYUi3AdfJEaVLPC0QgUnuqBREYhdgrMc0e/PGY=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 16:03:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16075927445412508603
Message-ID: <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
Date: Mon, 10 Nov 2025 17:03:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Occa2ms7+ZuOK8JmU+NVxakdTgU7wonrMYTMPAOMIzFyrnnPAWIONnra
	Vq2DeAibAfbnNNxXYj6WXbphxamYrBms0OuBb+Zu+BoUZhmeb5Qww4oWJbB/s5d1BLuFnqa
	VWyjf6SAaIb/ZkY6Nhx+bEpxe/J5498tappWDinxh1pEEOcJjAZPMYJ3yy54BEozFrLnZep
	0r+Ee3EmJb7gzu+jMhQViGLjjTIfjWEFxHICQ0qxP5a/IDeG+ioGHtCBV20JgORLrUn3iKF
	GSGyPI3OCZw5uvQASLLHpnl/IpVsMo7PoYNV5vZPX2JXvOc0sBwHaYCsFuWNzqbstDUCmDv
	ubHihkHwiATCvwJFUR49AMaB5+ygYapq+iAg7F8XgAtR86I9iSklSwQP4F683aRVcQoYvUR
	vuzu3LjJTskVhkK7V/DExQyVpc9tgQ0KnZIAMchWUA4JWd4tXhr8WeETijJcSO6SfiKoihI
	FhNMApgB/e2wBrzGxfLgqqnoykySRuIN10FMI9wugYSzJEPcwPY6N6aPjTzDB+LMriAWKR5
	m1mTKyNJq3rLufZy5aZqZepJ8hRc15p3TekWTp564Sn+nMn8conSj4s+A2ffR78grqWPwxB
	RJrhTzGyiotuk919oNs6aMMAUMpc4JzZx3MNsUeCLA5n4HFS5gx1nYsL0+1En1PPwcpZa+1
	7WEl2cRgSc8CFDTy2nbsVEoK3cntOuev40et5b1mg6/L4fBHM/MykAKD9YrWtf4wd/+z0tp
	HnvFAoSMZg1LGUmYiMclc/TXhMDElD4lgC3Vnttl8ii5MTExxDMU0wfe/VQI0wbpQj27HfJ
	ic3yiyOWBmSxv9CC6g9IR9B9rvwW0IupJS3Wbl3AQi2FmBB+A522TkI7Fl72VqJtNh0O/E4
	/G9jJnQinAXm5IcPp1lrsKyPWtj/OQOExtt8QMuo3g3u81m/nb/iyIIdtgNlP51nYiWUccj
	jOlaXxJvF2XRiTdI33LcIxi9KdkLbrrBEKZpadOJtqrRj23yLudIxUX819x1WWKUa5r1AH/
	H7mlT8N3hoXX8ZLqfg
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_000356_565979_7670EAFF 
X-CRM114-Status: GOOD (  21.27  )
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

Hi Dragan,

On 11/10/25 16:38, Dragan Simic wrote:
> On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/10/25 14:17, Dragan Simic wrote:
>>> On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>> Make EEPROM read-only as it may contain factory-programmed
>>>> board-specific data.
>>>>
>>>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> ---
>>>>    arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> index 19a08f7794e67..ae7b03488c9e7 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
>>>>    		compatible = "belling,bl24c16a", "atmel,24c16";
>>>>    		reg = <0x50>;
>>>>    		pagesize = <16>;
>>>> +		read-only;
>>>>    	};
>>>>    };
>>>
>>> I've checked the board schematic and making this BL24C16 chip
>>> read-only makes sense to me.  However, I think that the patch
>>> description should be expanded to contain a better description
>>> of what might be found in the chip, such as a factory-programmed
>>> MAC address.  Also, providing a link to the board schematic, as
>>> a reference, would be a good idea.
>>
>> ----
>> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
>>
>> Make the EEPROM[1][2][3] read-only. Board-specific data written to the
>> EEPROM at the factory includes, but is not limited to, the SKU (~
>> product name), BOM version (~ board version), and MAC address.
> 
> Thanks for the improvements!  I'd just suggest that the opening
> sentence above is rewritten like this:
> 
>    Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
>    5C SBCs [1][2][3] read-only, because they contain factory-
>    programmed data that isn't supposed to be modified by the end
>    users.
> 
> This would also be perfect timing for Radxa to officially release
> the layout of the board-specific data that goes into these EPROM
> chips, so the data can actually be used.

  https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

The actual data in the EEPROMs of my boards has some content 
inconsistencies with the code descriptions, but the format is 
consistent. The SKU, BOM, and MAC mentioned previously should be available.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> [1]
>> https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf
>> p.13
>> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
>> [3]
>> https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
>> p.18
>> ----
>>
>>> With these remarks addressed in a v2, please feel free to include
>>>
>>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>>>
>>> Additionally, it would make sense to squash this patch and your
>>> other patch that addresses the ROCK 5C together.  They're very
>>> similar and having them together in a single commit might actually
>>> help the people browsing the repository understand it better.
>>
>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>> patches for ROCK 3C/5A/5C.
> 
> Thanks!
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

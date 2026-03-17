Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC8D1FB5EA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 01:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=deH3ZKdsJpih+I3RYiDsSSXjZmvcJqBgisf99E2jfmU=; b=qqyJWYmoqVkIhmcHEaB1dqds1V
	bB5zr87WCn/e0tFTZjMURn0DVGRfiP/UspwNkasWMTqnnhYVkRFJ7IevSAkXdxy1XZRb2gb4sUnBZ
	4rN2CJH0FhmZpV0kpmj1//xM2cBJLJjmBE774KCCN2zPPzBXa10jhh2d16/8UeVbX3iCA5+U3kZGF
	JYErLLXRpkbs/CgqxbxuHhfIIs/ZupP+PXRzr8X5uxEGUL3GU7woIEhe3uTBwvvILyGl6bxqDLdsl
	XqDqpwprEx5sXjC1K210DRi5Pv6cqmWt6NliW1KV256Mh409LwOY5SsYhkAX0Jj9+aB0vbriyM7it
	J2OXtW4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JN3-00000005CD7-0gwd;
	Tue, 17 Mar 2026 01:37:21 +0000
Received: from mail-m32115.qiye.163.com ([220.197.32.115])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JN1-00000005CCP-0LRG;
	Tue, 17 Mar 2026 01:37:20 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372f3216c;
	Tue, 17 Mar 2026 09:37:10 +0800 (GMT+08:00)
Message-ID: <05a8012d-c1f7-417b-96f8-ec1a41993b26@rock-chips.com>
Date: Tue, 17 Mar 2026 09:37:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: rockchip: Add eDP node for RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-3-damon.ding@rock-chips.com>
 <9590182.CDJkKcVGEf@workhorse>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <9590182.CDJkKcVGEf@workhorse>
X-HM-Tid: 0a9cf970940603a3kunm76417074222a43
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4YSVZOGUpITUwaShhPQxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=MQeOlmq07ycIc1QL4tGgjDuL85uSHPI3xkw6nYsJa7yU+1prZ8PKktKJMqK5SwPdJufqOaA4RldAN9jPxB19GDSRAGpXfK0/ea/DXI3LlkAZIgPQorilo6arCjAGHm5nL0FwSnygNzNpV9fBwJmiWVLAnNUnmmEJVMailCWpYOU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3Q89cxIkHSk/a2RjqYAjgiexXPdpx/jNB/mz4sMPZKU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_183719_330353_8E82CC66 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

On 3/16/2026 7:31 PM, Nicolas Frattaroli wrote:
> On Tuesday, 10 March 2026 11:53:05 Central European Standard Time Damon Ding wrote:
>> Add support for the eDP output on RK3576 SoC.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index a86fc6b4e8c4..14900a66d3e1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
>>   			};
>>   		};
>>   
>> +		edp: edp@27dc0000 {
>> +			compatible = "rockchip,rk3576-edp";
>> +			reg = <0x0 0x27dc0000 0x0 0x1000>;
>> +			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
>> +			clock-names = "dp", "pclk", "hclk";
>> +			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
>> +			phys = <&hdptxphy>;
>> +			phy-names = "dp";
>> +			power-domains = <&power RK3576_PD_VO0>;
>> +			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
>> +			reset-names = "dp", "apb";
>> +			rockchip,grf = <&vo0_grf>;
>> +			status = "disabled";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				edp_in: port@0 {
>> +					reg = <0>;
>> +				};
>> +
>> +				edp_out: port@1 {
>> +					reg = <1>;
>> +				};
>> +			};
>> +		};
>> +
>>   		sai7: sai@27ed0000 {
>>   			compatible = "rockchip,rk3576-sai";
>>   			reg = <0x0 0x27ed0000 0x0 0x1000>;
>>
> 
> Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> By cross-referencing the TRM, I checked the address, the IRQ number,
> and the power domain, and verified that there are no new check_dtbs
> warnings introduced.
> 
> 

Thanks for the review.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

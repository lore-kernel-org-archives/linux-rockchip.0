Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77957C0218B
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+6nU847ZIl4OBDpIDEyFSxZVmmsHnpaqZpKWZzMa1c=; b=RahMKH9fnbwHyvJe6l+dFz4bPD
	Fw6WkjUMul7kHK629YoAg0oL2FLY3bvVmHlVLyUxHld1yBY6q0JJUDEVWMvyniEIvZa0Vap64oXuf
	LiyXzFWR7Ns6HwYoNZtn48OGmA0OQLg2J7zq0GRaxtSgI7XUxFyuPP/4/32GbOhU967XM+RTIZU7m
	MWm1I6qOcoVdW417ygI/J6+sFGZgzK40sEHsEnakTpU4RnUIC057a+SVgmPV1BZvuAzyz+wChCbmP
	KfxEDgpxj+yY7sIcL0zlKyCJMb6rOpHpH98s9nMSAfdNbPYwpUeSYWU+FAaDq8MScFUHSbqbg3q5T
	s3IBbLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGnk-0000000ERrh-0pA3;
	Fri, 24 Jan 2025 10:20:36 +0000
Received: from mail-m1973180.qiye.163.com ([220.197.31.80])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGng-0000000ERqB-2jUt;
	Fri, 24 Jan 2025 10:20:34 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 999d7bbb;
	Fri, 24 Jan 2025 18:20:21 +0800 (GMT+08:00)
Message-ID: <9199671c-f647-4c39-8618-f2d7fa28f081@rock-chips.com>
Date: Fri, 24 Jan 2025 18:20:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/14] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-10-damon.ding@rock-chips.com>
 <173763136187.3345079.11905359473404124812.robh@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <173763136187.3345079.11905359473404124812.robh@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8dTFZLShpKTRgdGkhMTExWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
X-HM-Tid: 0a9497d3b59d03a3kunm999d7bbb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBg6Lyo5AzIKCho4Az0aKBw4
	MC8KCh1VSlVKTEhMTEpPS0lIT01DVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS0lCNwY+
DKIM-Signature: a=rsa-sha256;
	b=R9P1b2tY3AWKf5ZQ/2+nyS6ZvqpAcjzV+V0ScfM8eTSa/i9Jm7OY1vqqONpq6+DgOfkt6gctdO2lSxQme3D9eMmucV/8kGVoor85I9KlWdAqTsNwPPTY2EezB9MMB0cHYdCBnaRleqMhTFQriClr29J69Y0S/jfwE5Fq1TFS1S0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=u0BM50TZK/HIu82bsqWrUkagwGNI0D2aUJbSTJdHkTw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_022032_846093_4D82DAF9 
X-CRM114-Status: GOOD (  20.28  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, hjc@rock-chips.com, dmitry.baryshkov@linaro.org, linux-phy@lists.infradead.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, sebastian.reichel@collabora.com, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

On 2025/1/23 19:22, Rob Herring (Arm) wrote:
> 
> On Thu, 23 Jan 2025 18:07:42 +0800, Damon Ding wrote:
>> Compared with RK3288/RK3399, the HBR2 link rate support is the main
>> improvement of RK3588 eDP TX controller, and there are also two
>> independent eDP display interfaces on RK3588 Soc.
>>
>> The newly added 'apb' reset is to ensure the APB bus of eDP controller
>> works well on the RK3588 SoC.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Add the main defferences of the RK3588 eDP and the previous versions
>>    in commit message
>>
>> Changes in v3:
>> - Expand the property clock-names, resets and reset-names
>>
>> Changes in v4:
>> - Remove 'spdif' clock which added in v3
>> - Add the comment of newly added 'apb' reset in commit message
>>
>> Changes in v5:
>> - Put the differences between RK3288/RK3399 and RK3588 into 'allOf'
>>
>> Changes in v6:
>> - Keep the widest constraints and add only RK3588 related constraints
>>    into 'allOf'
>> ---
>>   .../rockchip/rockchip,analogix-dp.yaml        | 22 ++++++++++++++++++-
>>   1 file changed, 21 insertions(+), 1 deletion(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml: properties:reset-names: 'const' should not be valid under {'enum': ['const', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'minimum', 'maximum', 'multipleOf', 'pattern']}
> 	hint: Scalar and array keywords cannot be mixed
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml: properties:reset-names: 'const' should not be valid under {'enum': ['const', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'minimum', 'maximum', 'multipleOf', 'pattern']}
> 	hint: Scalar and array keywords cannot be mixed
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250123100747.1841357-10-damon.ding@rock-chips.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 
> 
> 

I have found these errors using dt_binding_check and will fix them in 
the next version.

Best regards
Damon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

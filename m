Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F2DC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 06:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUHmPcPRJ5d3qyDWJRKkjkiTGK7cpxjjyRlKPgrs5vk=; b=eH/LzO9VqLCqFS
	RpkzKh0yoUpNpm2sJy+Qe57zQikP5zbPJqVUFJyWcR5jUQwEh3DU1T4PpFdVi9mJGOg3IxLEYdCoH
	2hF4MFWA+n1r9izeV3Y3Ck4/Bdrqdyix57/q/22yRQOwmGfrkVs0BSN//hBZyMNR0KBv3GjfywdBz
	Tt5FXhW0M6hdhRib+Sgvn5w3IigUOADo/OkR0B1iJYJDhVx3QwDpKfy7ldcJJRgGfqJyaYJh3uTXk
	ofuCEcJ88QvguNY5Q/9DSVd3C/kO9m6Xm8aKP2e2Uhm3lg4swrRUll5hzPmJEiDfQrFWYdRg98WD4
	p+/7+yhc19JZMeb5D70w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfUy-00H1Rn-36;
	Thu, 14 Dec 2023 06:47:08 +0000
Received: from mail-m49223.qiye.163.com ([45.254.49.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfUw-00H1Qz-0c
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 06:47:07 +0000
DKIM-Signature: a=rsa-sha256;
	b=CnvD0IrkRnp+DmnzfgfteCXPBAsutHSVsMWQK1rzFcAblJYEkSweXgFANYqw3U88pMYtkO79l9NPInFWXnD8hXVCLdT/uGfcSOpoRB/rdY8p5rmXE/4TQuVE+Lx8BOFMINbrY+owqdLEaBAqVf9sYElyHBXbfm1pT585TwgcNJU=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=KlkoaA5PsGnM9dQhcrREu3MkNeyqWVDoqb2DLKgU9rM=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 5272778019C;
	Thu, 14 Dec 2023 14:46:38 +0800 (CST)
Message-ID: <7a20761b-4cec-4b65-b9fa-efce73ac4c83@rock-chips.com>
Date: Thu, 14 Dec 2023 14:46:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
To: Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>
Cc: sebastian.reichel@collabora.com, krzysztof.kozlowski+dt@linaro.org,
 chris.obbard@collabora.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20231211115547.1784587-1-andyshrk@163.com>
 <170247871959.753029.11166929824242336708.b4-ty@sntech.de>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <170247871959.753029.11166929824242336708.b4-ty@sntech.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhOH1ZOHhhPHhpOThhPTkxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c6713c726b24fkuuu5272778019c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PD46GRw*FDw#MzJDAhI6HA4S
	LEwaFApVSlVKTEtJTkhNSEJCSU1NVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEtJQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_224706_419964_1B5D4604 
X-CRM114-Status: GOOD (  10.35  )
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

Hi Heiko:

On 12/13/23 22:46, Heiko Stuebner wrote:
> On Mon, 11 Dec 2023 19:55:47 +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> This patch sets aims at enable the VOP2 support on rk3588.
>>
>> Main feature of VOP2 on rk3588:
>> Four video ports:
>> VP0 Max 4096x2160
>> VP1 Max 4096x2160
>> VP2 Max 4096x2160
>> VP3 Max 2048x1080
>>
>> [...]
> 
> Applied, thanks!
> 
> [10/16] dt-bindings: display: vop2: Add rk3588 support
>          commit: 4ccdc92c1fea732fac8f3438d6288719055fa141
> [11/16] dt-bindings: rockchip,vop2: Add more endpoint definition
>          commit: dc7226acacc6502291446f9e33cf96246ec49a30
> [12/16] drm/rockchip: vop2: Add support for rk3588
>          commit: 5a028e8f062fc862f051f8e62a0d5a1abac91955
> [13/16] drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to VOP2_VP_FEATURE_OUTPUT_10BIT
>          commit: 9d7fe7704d534c2d043aff2987f10671a8b4373d
> [16/16] MAINTAINERS: Add myself as a reviewer for rockchip drm
>          commit: 6c3ab21f37a97a868193ccbeb8a492e51210ff31
> 
> 
> I skipped the debugfs patch for now, as I need to look at that separately
> and of course the dts patch as that needs to wait for iommu maintainers
> to pick up the binding addition.

That's fine. Thanks for picking these series.

> 
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

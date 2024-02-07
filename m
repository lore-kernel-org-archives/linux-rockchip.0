Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A514C4828D
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 12:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeFDEODB28BiBGiesWB8vYYc6f9wArtOVM2KZQEK9y4=; b=jP+x6TVmtepP//
	h0iPcxEnekPBXFd/ta+VxLa2jo1lCHUrg3pb8+/HhTOD4BOJVJy4TmSTuBrGrIOOGeN5W+0t3GD2n
	nHAE5ygSVKaxgWKGU7KPpeYCviVGPmVQmzVu05favz2vaU7YjLWWxumii+ip6zDsxoKD8y/aqYeYa
	tbAlIzkOVAoSd+m7EIEbM02pSv2DONJw5+gExoLVCTLkdOhKcLUBYvLqMRWQLTmZXr+rX7AHOyX/M
	TjXvfkqTNGTU0kxEEMk1VqC2i6pETj6aFoWEIUzJCPfz/qiSbIhasETXmawngp+/yRSn+yUSdTnsn
	hVJocVEya/F1S2kWxZTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXhDO-0000000AeqD-1M3L;
	Wed, 07 Feb 2024 12:39:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXhDK-0000000Aeok-328s;
	Wed, 07 Feb 2024 12:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707309577;
	bh=JoE5es3b4RgJURPldxFLIyGMKvTDB86VVyi7w8h5Z4w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S7oX9vLtw7KCJwVjftvxhJsO3DqyytyCAOHFvUvp5D/wyL5B6j8/sHOFpMKCucwO5
	 Ukrp4Zy6Zx2cbLquYkwoI1mSa/nuELGlAjebl1lam8IR3Oa93gJYn1ZHh1gMsT516u
	 CmBtZxiCXPa/LqAoPjmRhqO8i1LT9l+InGpN4JrBKIdJ6rrO5ctCxFvaHmmHICppfO
	 RMk7jNdltqF5QjpOohPnxoHyMdBJyo/LYXlYRxmGzj1QuYVBhZWGU0XdqWXi+f58O6
	 mziBsmvdJdFymrRXG1/52+r8rqKFU82aRCBS/D8VU7qchRCfn2MIhv6SR2qOU1jZL7
	 RYsR8cdECM9OQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AD19B37809D0;
	Wed,  7 Feb 2024 12:39:36 +0000 (UTC)
Message-ID: <374f5069-9f3d-4ad2-a6da-b38a143a0c99@collabora.com>
Date: Wed, 7 Feb 2024 14:39:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Algea Cao
 <algea.cao@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kernel@collabora.com
References: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
 <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
 <ZcNYlFgT0rXiCGbo@matsya>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ZcNYlFgT0rXiCGbo@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_043942_930492_8DA09F7D 
X-CRM114-Status: GOOD (  11.62  )
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

On 2/7/24 12:16, Vinod Koul wrote:
> On 05-02-24, 13:24, Cristian Ciocaltea wrote:
>> Add driver for the HDMI/eDP TX Combo PHY found on Rockchip RK3588 SoC.

[...]

>> +static const struct reg_sequence hdtpx_common_cmn_init_seq[] = {
>> +	REG_SEQ0(CMN_REG(0009), 0x0c),
>> +	REG_SEQ0(CMN_REG(000A), 0x83),
>> +	REG_SEQ0(CMN_REG(000B), 0x06),
>> +	REG_SEQ0(CMN_REG(000C), 0x20),
>> +	REG_SEQ0(CMN_REG(000D), 0xb8),
>> +	REG_SEQ0(CMN_REG(000E), 0x0f),
>> +	REG_SEQ0(CMN_REG(000F), 0x0f),
> 
> Any reason for these to be mixed case, lets have lower case pls
> everywhere

These were initially part of the register name defines, as specified in
the RK3588 Technical Reference Manual, e.g. HDPTXPHY_CMN_REG000A.  But
consistency is more important, I assume, hence I will do a lower case
conversion.

[...]

>> +static int hdptx_write(struct rockchip_hdptx_phy *hdptx, u32 reg, u8 val)
>> +{
>> +	return regmap_write(hdptx->regmap, reg, val);
>> +}
>> +
>> +#define hdptx_multi_reg_write(hdptx, seq) \
>> +	regmap_multi_reg_write((hdptx)->regmap, seq, ARRAY_SIZE(seq))
>> +
>> +static int hdptx_update_bits(struct rockchip_hdptx_phy *hdptx, u32 reg,
>> +			     u8 mask, u8 val)
>> +{
>> +	return regmap_update_bits(hdptx->regmap, reg, mask, val);
>> +}
>> +
>> +static int hdptx_grf_write(struct rockchip_hdptx_phy *hdptx, u32 reg, u32 val)
>> +{
>> +	return regmap_write(hdptx->grf, reg, val);
>> +}
>> +
>> +static u8 hdptx_grf_read(struct rockchip_hdptx_phy *hdptx, u32 reg)
>> +{
>> +	u32 val;
>> +
>> +	regmap_read(hdptx->grf, reg, &val);
>> +
>> +	return val;
>> +}
> 
> why use wrappers, why not call regmap_ apis directly

Agree, no real benefit, will drop them, except probably
hdptx_multi_reg_write() for the extra savings.

So I'd keep using that one if there's no strong reason against.

[...]

>> +	hdptx_write(hdptx, CMN_REG(0059), (cfg->pms_pdiv << 4) | cfg->pms_refdiv);
>> +	hdptx_write(hdptx, CMN_REG(005A), cfg->pms_sdiv << 4);
> 
> small case here as well pls

Yes, will make sure to handle them all.

Thanks for the review,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

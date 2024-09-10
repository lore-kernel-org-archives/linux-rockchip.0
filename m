Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F67EDE99F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 15:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reTm4/hGTa2cq8oUYgjSUOEK9CalPvY/XVwlbGkBMPs=; b=vPQgWQ5YPtIDcs
	LXJdDJE0IS8m5j5l1ZETw67WudQ91d/UpF8nTujYcl1b2VrWNFrzgc0Cwc5rom0wSANYu1gDbITPN
	iwen32v7OohjhtB37GbdSJ7pXJJR62VCSUbHmI7bRe2xaKet3ATJTrKdTYD9KtzKQG9t08rjCaKow
	/UzNfgQoO5SMDY/G/bXzDhRoG0Os66HR1RbAsEZW42A1UGqkd4PvbRHyN54PkgdwsXYvs7+NLzz0R
	+KZ4gX7mphhVMitXTxAp6kOjyRPleppDrHCAwP2yvT6ANG3cfVFP5IKZzSo8Hz3GI7PAZcN023FAM
	OUmPb2UgNvfZBb+bP6cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so3Ah-00000006EYM-1MUw;
	Tue, 10 Sep 2024 15:52:51 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so34Q-00000006CsQ-0kx3;
	Tue, 10 Sep 2024 15:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725983179;
	bh=GrMFIlDH+h32IGt5CGGo+R3M4GXaCobATkGNy8GeYuo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AC1umU01a5qKWx+Z24H0jczKmKir9dgqzTCuqU43f6kdvj3E3sUP215CTlYaeDZIk
	 YCD+5O7U+VCILpMm4HTZRZJ1hm3agHZ1Ffv6TJC2L+bp6+ouyEx7U+96Ryvn3kbZ+r
	 Zz9ssUpotEk0pzkly3Trsiilx0KucdIB8aeulNWIiBAvCfREyPc6m9vi6rS24j/Rcr
	 fn77zFHHeQIR4ijW4Eh86YnTtZl8HZBLuEbTVJ4dBqX322J/k5JNxhu9ehzdtLCbnd
	 wenhij+luHI+CwjTp+QHt7b51QEItCahDP6K8/VPOBjgiTaEFYZsynrI+snAfXe6GT
	 MKRBw4t1Wg3SQ==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DD53917E35CC;
	Tue, 10 Sep 2024 17:46:18 +0200 (CEST)
Message-ID: <5803a5ba-2684-44f2-8086-61ef198dac88@collabora.com>
Date: Tue, 10 Sep 2024 18:46:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-2-a3128fb103eb@collabora.com>
 <3wy2aoowmh7asdymtjccuzprwfah5xornelawg5ulnzj7gyfes@www2cgfnpdsx>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3wy2aoowmh7asdymtjccuzprwfah5xornelawg5ulnzj7gyfes@www2cgfnpdsx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_084622_408352_5EBB5855 
X-CRM114-Status: GOOD (  13.79  )
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

On 9/6/24 10:40 AM, Krzysztof Kozlowski wrote:
> On Fri, Sep 06, 2024 at 04:17:41AM +0300, Cristian Ciocaltea wrote:
>> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
>> Quad-Pixel (QP) TX controller IP.
>>
>> Since this is a new IP block, quite different from those used in the
>> previous generations of Rockchip SoCs, add a dedicated binding file.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 189 +++++++++++++++++++++
>>  1 file changed, 189 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
>> new file mode 100644
>> index 000000000000..37467685621d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> 
> ...
> 
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    minItems: 2
> 
> You can drop minItems.

Dropped in upcoming v7.

>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: ref
>> +      - const: hdp
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for the review,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

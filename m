Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADA6C433E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 16:10:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15E25206D6
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 16:10:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15E25206D6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9E0IDZPbzG2LGcnB4AkSWdOw6ypp6V0riPmTWt6kvd4=; b=mqxisWLVNFgkBf/qkrmBhffic
	NzGq1Q3WHLLgQkeDxPKYG+T6n/53W69T7mr5SGy1i9ZkKaTJLP5S3nd0wZgM7eWndXQ9GIob7HYiO
	kFMvAcYX65n6JYBybhnAx0JN6Uo3bPIRYU33WaKWvkbqjCSVXkgsDYaw+3z57fDwoxYMAv7hY9Znx
	j9s0bMNN/sED6CRr/FJU0vca1NGcJqDjDTMMh4LAyyBccUAooZwUfWiFtarHDCYCyvK/o6MkfzPrZ
	BTA3MuUFWYleJeKfX+fJyX62T0jbUpwZq5JIVdFhmImg48MMQXo9bVNGzgMKsYJIyJuwSnb4Q9YVh
	nz4VAwwEg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Ad4-0008EU-38; Sun, 17 Jan 2021 16:10:14 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Ad1-0008E2-0h
 for linux-rockchip@lists.infradead.org; Sun, 17 Jan 2021 16:10:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id u19so14911250edx.2
 for <linux-rockchip@lists.infradead.org>; Sun, 17 Jan 2021 08:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AC5FWFmc+QTt0xSwIGW5Ve415efkuLFNzYSONRpyY3A=;
 b=Z3jIlgWoZFgSihGakcm0/3i9PnUa5Mldf0etdusMFVD6qeABjeb9Bzg/TMV0v8wYS7
 2YP50bGWIYaL7bDG1A1C9LnD9ZDKvcns0g8fxORrfS70yeEq6uaani6aQ4ce63nWqZKb
 XcRC/Pr8aIsx4GyJF0QB1RqXm12XctFH99pmdZvc1cH6qiGGqN9stfgt8w/jFf2icHZb
 hb2cA8rzhusgWU52WHErYn0VksmsInJEjY9qAF/yNxCEVtbK3Jn6ltVhxyX5o2RBbroG
 DHHceUgDFwGHPn740YhOjzdXPNZQcrH4Kv1g9PU/4mi9lRUplXaHt71bJU1jLl9p11xf
 wuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AC5FWFmc+QTt0xSwIGW5Ve415efkuLFNzYSONRpyY3A=;
 b=KMBxk4LZhdB+uMURPQ3P/Fh03P9GDRBigQKOrZFZKZk17Lx6jJqwpS290bvPLTBDTS
 +Jyz26P+d1XKexkVY+jmt4hmfwLjqZVsGkgb/F17L7deG6QB13ygalGvbn0hQjsJRDfe
 0X9HCPzI7v5EnkXX+jRnFepXH+ZWnb5VKGD9nyWHqYDyXkjibKAo0UhKRyk3hUS0yrM/
 zKsAb9+1FCPYdvPUiSXYFYv09UMpg+PIQm3NY6MGy2FT6m2UwTm+C0EXIR+4V/gafb/3
 Td2SrMMWXB/kVG6b3Y58XDIR/cHx5AAnnA+qpPvpyRU9f7oHvdGPZhm8pd2CFbyifRLL
 auew==
X-Gm-Message-State: AOAM5313l2Epp+QpMsSId0vQn+x90tsU/al7KNBTHYlA/+4yoqHj/zeR
 ZuGHLzpeS/IpA/gYqBVzFZN+yvnhBqA=
X-Google-Smtp-Source: ABdhPJyg8dZx1Wx6RZW2DUzsycvLMXgXRa57jQLGpJv594NuwqT+1gHHzty/XrnPy/vGD3Kc0WjhEA==
X-Received: by 2002:a05:6402:17cb:: with SMTP id
 s11mr16034374edy.119.1610899807548; 
 Sun, 17 Jan 2021 08:10:07 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 dm6sm4885472ejc.32.2021.01.17.08.10.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Jan 2021 08:10:06 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: powerpc: Add a schema for the 'sleep'
 property
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
References: <20201008142420.2083861-1-robh@kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <752e9355-defb-6d3c-248b-f626247d4cee@gmail.com>
Date: Sun, 17 Jan 2021 17:10:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201008142420.2083861-1-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_111011_115728_F62BC5F0 
X-CRM114-Status: GOOD (  27.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

This patch generates notifications in the Rockchip ARM and arm64 tree.
Could you limit the scope to PowerPC only.

Kind regards,

Johan Jonker

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Example:

/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: pinctrl:
sleep: {'ddrio-pwroff': {'rockchip,pins': [[0, 1, 1, 168]]},
'ap-pwroff': {'rockchip,pins': [[1, 5, 1, 168]]}} is not of type 'array'
	From schema: /Documentation/devicetree/bindings/powerpc/sleep.yaml

On 10/8/20 4:24 PM, Rob Herring wrote:
> Document the PowerPC specific 'sleep' property as a schema. It is
> currently only documented in booting-without-of.rst which is getting
> removed.
> 
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: linuxppc-dev@lists.ozlabs.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/powerpc/sleep.yaml    | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/powerpc/sleep.yaml
> 
> diff --git a/Documentation/devicetree/bindings/powerpc/sleep.yaml b/Documentation/devicetree/bindings/powerpc/sleep.yaml
> new file mode 100644
> index 000000000000..6494c7d08b93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/powerpc/sleep.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/powerpc/sleep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PowerPC sleep property
> +
> +maintainers:
> +  - Rob Herring <robh@kernel.org>
> +
> +description: |
> +  Devices on SOCs often have mechanisms for placing devices into low-power
> +  states that are decoupled from the devices' own register blocks.  Sometimes,
> +  this information is more complicated than a cell-index property can
> +  reasonably describe.  Thus, each device controlled in such a manner
> +  may contain a "sleep" property which describes these connections.
> +
> +  The sleep property consists of one or more sleep resources, each of
> +  which consists of a phandle to a sleep controller, followed by a
> +  controller-specific sleep specifier of zero or more cells.
> +
> +  The semantics of what type of low power modes are possible are defined
> +  by the sleep controller.  Some examples of the types of low power modes
> +  that may be supported are:
> +
> +   - Dynamic: The device may be disabled or enabled at any time.
> +   - System Suspend: The device may request to be disabled or remain
> +     awake during system suspend, but will not be disabled until then.
> +   - Permanent: The device is disabled permanently (until the next hard
> +     reset).
> +
> +  Some devices may share a clock domain with each other, such that they should
> +  only be suspended when none of the devices are in use.  Where reasonable,
> +  such nodes should be placed on a virtual bus, where the bus has the sleep
> +  property.  If the clock domain is shared among devices that cannot be
> +  reasonably grouped in this manner, then create a virtual sleep controller
> +  (similar to an interrupt nexus, except that defining a standardized
> +  sleep-map should wait until its necessity is demonstrated).
> +
> +select: true
> +
> +properties:
> +  sleep:
> +    $ref: /schemas/types.yaml#definitions/phandle-array
> +
> +additionalProperties: true
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
